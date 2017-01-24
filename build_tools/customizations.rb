module BuildTools
  module Customizations

    @api_customizations = {}
    @doc_customizations = {}

    class << self

      def api(svc_name, &block)
        @api_customizations[svc_name] = block
      end

      def doc(svc_name, &block)
        @doc_customizations[svc_name] = block
      end

      def apply_api_customizations(svc_name, api)
        @api_customizations[svc_name].call(api) if @api_customizations[svc_name]
      end

      def apply_doc_customizations(svc_name, docs)
        @doc_customizations[svc_name].call(docs) if @doc_customizations[svc_name]
      end

    end

    api('CloudFront') do |api|

      api['shapes'].each do |_, shape|
        if shape['members'] && shape['members']['MaxItems']
          shape['members']['MaxItems']['shape'] = 'integer'
        end
      end

      api['operations'].keys.each do |name|
        symbolized = name.sub(/\d{4}_\d{2}_\d{2}$/, '')
        api['operations'][symbolized] = api['operations'].delete(name)
      end

    end

    api('EC2') do |api|
      if ENV['DOCSTRINGS']
        members = api['shapes']['CopySnapshotRequest']['members']
        members.delete('DestinationRegion')
        members.delete('PresignedUrl')
      end
    end

    api('Glacier') do |api|
      api['shapes']['Timestamp'] = {
        'type' => 'timestamp',
        'timestampFormat' => 'iso8601',
      }
      api['shapes'].each do |_, shape|
        if shape['members']
          shape['members'].each do |name, ref|
            case name
            when /date/i then ref['shape'] = 'Timestamp'
            when 'limit' then ref['shape'] = 'Size'
            when 'partSize' then ref['shape'] = 'Size'
            when 'archiveSize' then ref['shape'] = 'Size'
            end
          end
        end
      end
    end

    api('ImportExport') do |api|
      api['operations'].each do |_, operation|
        operation['http']['requestUri'] = '/'
      end
    end

    api('IoTDataPlane') do |api|
      api['metadata'].delete('endpointPrefix')
    end

    %w(Lambda LambdaPreview).each do |svc_name|

      api(svc_name) do |api|
        api['shapes']['Timestamp']['type'] = 'timestamp'
      end

      doc('lambda') do |docs|
        docs['shapes']['Blob']['refs']['UpdateFunctionCodeRequest$ZipFile'] =
          "<p>.zip file containing your packaged source code.</p>"
      end

    end

    api('RDS') do |api|
      api['shapes']['CopyDBSnapshotMessage']['members']['DestinationRegion'] = {"shape" => "String"}
    end

    #doc('RDS') do |docs|
    #  docs['shapes']['String']['refs']['CopyDBSnapshotMessage$SourceRegion'] =
    #    "<p>The region which you are copying a snapshot from. If the snapshot is encrypted, this parameter is required.</p>"
    #end

    api('Route53') do |api|
      api['shapes']['PageMaxItems']['type'] = 'integer'
    end

    api('S3') do |api|
      api['metadata'].delete('signatureVersion')
      api['shapes']['ExpiresString'] = { 'type' => 'string' }
      %w(HeadObjectOutput GetObjectOutput).each do |shape|
        members = api['shapes'][shape]['members']
        # inject ExpiresString directly after Expires
        api['shapes'][shape]['members'] = members.inject({}) do |h, (k,v)|
          h[k] = v
          if k == 'Expires'
            h['ExpiresString'] = {
              'shape' => 'ExpiresString',
              'location' => 'header',
              'locationName' => 'Expires',
            }
          end
          h
        end
      end
    end

    api('SQS') do |api|
      api['metadata']['errorPrefix'] = 'AWS.SimpleQueueService.'
      api['shapes']['StringList']['flattened'] = true
      api['shapes']['BinaryList']['flattened'] = true
      api['shapes']['MessageAttributeValue']['members']['StringListValues'].delete('flattened')
      api['shapes']['MessageAttributeValue']['members']['BinaryListValues'].delete('flattened')
    end

    api('STS') do |api|
      operations = %w(AssumeRoleWithSAML AssumeRoleWithWebIdentity)
      operations.each do |operation|
        api['operations'][operation]['authtype'] = 'none'
      end
    end

    api('CognitoIdentity') do |api|
      operations = %w(
        GetCredentialsForIdentity
        GetId
        GetOpenIdToken
        UnlinkIdentity
      )
      operations.each do |operation|
        api['operations'][operation]['authtype'] = 'none'
      end
    end

  end
end