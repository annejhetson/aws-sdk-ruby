# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module DatabaseMigrationService
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :databasemigrationservice

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Adds metadata tags to a DMS resource, including replication instance,
      # endpoint, security group, and migration task. These tags can also be
      # used with cost allocation reporting to track cost associated with DMS
      # resources, or used in a Condition statement in an IAM policy for DMS.
      # @option params [required, String] :resource_arn
      #   The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to
      #   be added to. AWS DMS resources include a replication instance,
      #   endpoint, and a replication task.
      # @option params [required, Array<Types::Tag>] :tags
      #   The tag to be assigned to the DMS resource.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags_to_resource({
      #     resource_arn: "String", # required
      #     tags: [ # required
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_tags_to_resource(params = {}, options = {})
        req = build_request(:add_tags_to_resource, params)
        req.send_request(options)
      end

      # Creates an endpoint using the provided settings.
      # @option params [required, String] :endpoint_identifier
      #   The database endpoint identifier. Identifiers must begin with a
      #   letter; must contain only ASCII letters, digits, and hyphens; and must
      #   not end with a hyphen or contain two consecutive hyphens.
      # @option params [required, String] :endpoint_type
      #   The type of endpoint.
      # @option params [required, String] :engine_name
      #   The type of engine for the endpoint. Valid values include MYSQL,
      #   ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, and SQLSERVER.
      # @option params [required, String] :username
      #   The user name to be used to login to the endpoint database.
      # @option params [required, String] :password
      #   The password to be used to login to the endpoint database.
      # @option params [required, String] :server_name
      #   The name of the server where the endpoint database resides.
      # @option params [required, Integer] :port
      #   The port used by the endpoint database.
      # @option params [String] :database_name
      #   The name of the endpoint database.
      # @option params [String] :extra_connection_attributes
      #   Additional attributes associated with the connection.
      # @option params [String] :kms_key_id
      #   The KMS key identifier that will be used to encrypt the connection
      #   parameters. If you do not specify a value for the KmsKeyId parameter,
      #   then AWS DMS will use your default encryption key. AWS KMS creates the
      #   default encryption key for your AWS account. Your AWS account has a
      #   different default encryption key for each AWS region.
      # @option params [Array<Types::Tag>] :tags
      #   Tags to be added to the endpoint.
      # @option params [String] :certificate_arn
      #   The Amazon Resource Number (ARN) for the certificate.
      # @option params [String] :ssl_mode
      #   The SSL mode to use for the SSL connection.
      #
      #   SSL mode can be one of four values: none, require, verify-ca,
      #   verify-full.
      #
      #   The default value is none.
      # @return [Types::CreateEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateEndpointResponse#endpoint #Endpoint} => Types::Endpoint
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_endpoint({
      #     endpoint_identifier: "String", # required
      #     endpoint_type: "source", # required, accepts source, target
      #     engine_name: "String", # required
      #     username: "String", # required
      #     password: "SecretString", # required
      #     server_name: "String", # required
      #     port: 1, # required
      #     database_name: "String",
      #     extra_connection_attributes: "String",
      #     kms_key_id: "String",
      #     tags: [
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #     certificate_arn: "String",
      #     ssl_mode: "none", # accepts none, require, verify-ca, verify-full
      #   })
      #
      # @example Response structure
      #   resp.endpoint.endpoint_identifier #=> String
      #   resp.endpoint.endpoint_type #=> String, one of "source", "target"
      #   resp.endpoint.engine_name #=> String
      #   resp.endpoint.username #=> String
      #   resp.endpoint.server_name #=> String
      #   resp.endpoint.port #=> Integer
      #   resp.endpoint.database_name #=> String
      #   resp.endpoint.extra_connection_attributes #=> String
      #   resp.endpoint.status #=> String
      #   resp.endpoint.kms_key_id #=> String
      #   resp.endpoint.endpoint_arn #=> String
      #   resp.endpoint.certificate_arn #=> String
      #   resp.endpoint.ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_endpoint(params = {}, options = {})
        req = build_request(:create_endpoint, params)
        req.send_request(options)
      end

      # Creates the replication instance using the specified parameters.
      # @option params [required, String] :replication_instance_identifier
      #   The replication instance identifier. This parameter is stored as a
      #   lowercase string.
      #
      #   Constraints:
      #
      #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
      #
      #   * First character must be a letter.
      #
      #   * Cannot end with a hyphen or contain two consecutive hyphens.
      #
      #   Example: `myrepinstance`
      # @option params [Integer] :allocated_storage
      #   The amount of storage (in gigabytes) to be initially allocated for the
      #   replication instance.
      # @option params [required, String] :replication_instance_class
      #   The compute and memory capacity of the replication instance as
      #   specified by the replication instance class.
      #
      #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
      #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
      #   dms.c4.4xlarge `
      # @option params [Array<String>] :vpc_security_group_ids
      #   Specifies the VPC security group to be used with the replication
      #   instance. The VPC security group must work with the VPC containing the
      #   replication instance.
      # @option params [String] :availability_zone
      #   The EC2 Availability Zone that the replication instance will be
      #   created in.
      #
      #   Default: A random, system-chosen Availability Zone in the endpoint\'s
      #   region.
      #
      #   Example: `us-east-1d`
      # @option params [String] :replication_subnet_group_identifier
      #   A subnet group to associate with the replication instance.
      # @option params [String] :preferred_maintenance_window
      #   The weekly time range during which system maintenance can occur, in
      #   Universal Coordinated Time (UTC).
      #
      #   Format: `ddd:hh24:mi-ddd:hh24:mi`
      #
      #   Default: A 30-minute window selected at random from an 8-hour block of
      #   time per region, occurring on a random day of the week.
      #
      #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
      #
      #   Constraints: Minimum 30-minute window.
      # @option params [Boolean] :multi_az
      #   Specifies if the replication instance is a Multi-AZ deployment. You
      #   cannot set the `AvailabilityZone` parameter if the Multi-AZ parameter
      #   is set to `true`.
      # @option params [String] :engine_version
      #   The engine version number of the replication instance.
      # @option params [Boolean] :auto_minor_version_upgrade
      #   Indicates that minor engine upgrades will be applied automatically to
      #   the replication instance during the maintenance window.
      #
      #   Default: `true`
      # @option params [Array<Types::Tag>] :tags
      #   Tags to be associated with the replication instance.
      # @option params [String] :kms_key_id
      #   The KMS key identifier that will be used to encrypt the content on the
      #   replication instance. If you do not specify a value for the KmsKeyId
      #   parameter, then AWS DMS will use your default encryption key. AWS KMS
      #   creates the default encryption key for your AWS account. Your AWS
      #   account has a different default encryption key for each AWS region.
      # @option params [Boolean] :publicly_accessible
      #   Specifies the accessibility options for the replication instance. A
      #   value of `true` represents an instance with a public IP address. A
      #   value of `false` represents an instance with a private IP address. The
      #   default value is `true`.
      # @return [Types::CreateReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateReplicationInstanceResponse#replication_instance #ReplicationInstance} => Types::ReplicationInstance
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_replication_instance({
      #     replication_instance_identifier: "String", # required
      #     allocated_storage: 1,
      #     replication_instance_class: "String", # required
      #     vpc_security_group_ids: ["String"],
      #     availability_zone: "String",
      #     replication_subnet_group_identifier: "String",
      #     preferred_maintenance_window: "String",
      #     multi_az: false,
      #     engine_version: "String",
      #     auto_minor_version_upgrade: false,
      #     tags: [
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #     kms_key_id: "String",
      #     publicly_accessible: false,
      #   })
      #
      # @example Response structure
      #   resp.replication_instance.replication_instance_identifier #=> String
      #   resp.replication_instance.replication_instance_class #=> String
      #   resp.replication_instance.replication_instance_status #=> String
      #   resp.replication_instance.allocated_storage #=> Integer
      #   resp.replication_instance.instance_create_time #=> Time
      #   resp.replication_instance.vpc_security_groups #=> Array
      #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
      #   resp.replication_instance.vpc_security_groups[0].status #=> String
      #   resp.replication_instance.availability_zone #=> String
      #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
      #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
      #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
      #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
      #   resp.replication_instance.replication_subnet_group.subnets #=> Array
      #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
      #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
      #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
      #   resp.replication_instance.preferred_maintenance_window #=> String
      #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
      #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
      #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
      #   resp.replication_instance.pending_modified_values.engine_version #=> String
      #   resp.replication_instance.multi_az #=> Boolean
      #   resp.replication_instance.engine_version #=> String
      #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
      #   resp.replication_instance.kms_key_id #=> String
      #   resp.replication_instance.replication_instance_arn #=> String
      #   resp.replication_instance.replication_instance_public_ip_address #=> String
      #   resp.replication_instance.replication_instance_private_ip_address #=> String
      #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
      #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
      #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
      #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
      #   resp.replication_instance.publicly_accessible #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_replication_instance(params = {}, options = {})
        req = build_request(:create_replication_instance, params)
        req.send_request(options)
      end

      # Creates a replication subnet group given a list of the subnet IDs in a
      # VPC.
      # @option params [required, String] :replication_subnet_group_identifier
      #   The name for the replication subnet group. This value is stored as a
      #   lowercase string.
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters,
      #   periods, spaces, underscores, or hyphens. Must not be \"default\".
      #
      #   Example: `mySubnetgroup`
      # @option params [required, String] :replication_subnet_group_description
      #   The description for the subnet group.
      # @option params [required, Array<String>] :subnet_ids
      #   The EC2 subnet IDs for the subnet group.
      # @option params [Array<Types::Tag>] :tags
      #   The tag to be assigned to the subnet group.
      # @return [Types::CreateReplicationSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateReplicationSubnetGroupResponse#replication_subnet_group #ReplicationSubnetGroup} => Types::ReplicationSubnetGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_replication_subnet_group({
      #     replication_subnet_group_identifier: "String", # required
      #     replication_subnet_group_description: "String", # required
      #     subnet_ids: ["String"], # required
      #     tags: [
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.replication_subnet_group.replication_subnet_group_identifier #=> String
      #   resp.replication_subnet_group.replication_subnet_group_description #=> String
      #   resp.replication_subnet_group.vpc_id #=> String
      #   resp.replication_subnet_group.subnet_group_status #=> String
      #   resp.replication_subnet_group.subnets #=> Array
      #   resp.replication_subnet_group.subnets[0].subnet_identifier #=> String
      #   resp.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
      #   resp.replication_subnet_group.subnets[0].subnet_status #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_replication_subnet_group(params = {}, options = {})
        req = build_request(:create_replication_subnet_group, params)
        req.send_request(options)
      end

      # Creates a replication task using the specified parameters.
      # @option params [required, String] :replication_task_identifier
      #   The replication task identifier.
      #
      #   Constraints:
      #
      #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
      #
      #   * First character must be a letter.
      #
      #   * Cannot end with a hyphen or contain two consecutive hyphens.
      # @option params [required, String] :source_endpoint_arn
      #   The Amazon Resource Name (ARN) string that uniquely identifies the
      #   endpoint.
      # @option params [required, String] :target_endpoint_arn
      #   The Amazon Resource Name (ARN) string that uniquely identifies the
      #   endpoint.
      # @option params [required, String] :replication_instance_arn
      #   The Amazon Resource Name (ARN) of the replication instance.
      # @option params [required, String] :migration_type
      #   The migration type.
      # @option params [required, String] :table_mappings
      #   The path of the JSON file that contains the table mappings. Preceed
      #   the path with \"file://\".
      #
      #   For example, --table-mappings file://mappingfile.json
      # @option params [String] :replication_task_settings
      #   Settings for the task, such as target metadata settings.
      # @option params [Time,DateTime,Date,Integer,String] :cdc_start_time
      #   The start time for the Change Data Capture (CDC) operation.
      # @option params [Array<Types::Tag>] :tags
      #   Tags to be added to the replication instance.
      # @return [Types::CreateReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateReplicationTaskResponse#replication_task #ReplicationTask} => Types::ReplicationTask
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_replication_task({
      #     replication_task_identifier: "String", # required
      #     source_endpoint_arn: "String", # required
      #     target_endpoint_arn: "String", # required
      #     replication_instance_arn: "String", # required
      #     migration_type: "full-load", # required, accepts full-load, cdc, full-load-and-cdc
      #     table_mappings: "String", # required
      #     replication_task_settings: "String",
      #     cdc_start_time: Time.now,
      #     tags: [
      #       {
      #         key: "String",
      #         value: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.replication_task.replication_task_identifier #=> String
      #   resp.replication_task.source_endpoint_arn #=> String
      #   resp.replication_task.target_endpoint_arn #=> String
      #   resp.replication_task.replication_instance_arn #=> String
      #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
      #   resp.replication_task.table_mappings #=> String
      #   resp.replication_task.replication_task_settings #=> String
      #   resp.replication_task.status #=> String
      #   resp.replication_task.last_failure_message #=> String
      #   resp.replication_task.replication_task_creation_date #=> Time
      #   resp.replication_task.replication_task_start_date #=> Time
      #   resp.replication_task.replication_task_arn #=> String
      #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
      #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
      #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
      #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
      #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
      #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_replication_task(params = {}, options = {})
        req = build_request(:create_replication_task, params)
        req.send_request(options)
      end

      # Deletes the specified certificate.
      # @option params [required, String] :certificate_arn
      #   the Amazon Resource Name (ARN) of the deleted certificate.
      # @return [Types::DeleteCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteCertificateResponse#certificate #Certificate} => Types::Certificate
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_certificate({
      #     certificate_arn: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.certificate.certificate_identifier #=> String
      #   resp.certificate.certificate_creation_date #=> Time
      #   resp.certificate.certificate_pem #=> String
      #   resp.certificate.certificate_arn #=> String
      #   resp.certificate.certificate_owner #=> String
      #   resp.certificate.valid_from_date #=> Time
      #   resp.certificate.valid_to_date #=> Time
      #   resp.certificate.signing_algorithm #=> String
      #   resp.certificate.key_length #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_certificate(params = {}, options = {})
        req = build_request(:delete_certificate, params)
        req.send_request(options)
      end

      # Deletes the specified endpoint.
      #
      # <note markdown="1"> All tasks associated with the endpoint must be deleted before you can
      # delete the endpoint.
      #
      #  </note>
      # @option params [required, String] :endpoint_arn
      #   The Amazon Resource Name (ARN) string that uniquely identifies the
      #   endpoint.
      # @return [Types::DeleteEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteEndpointResponse#endpoint #Endpoint} => Types::Endpoint
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_endpoint({
      #     endpoint_arn: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.endpoint.endpoint_identifier #=> String
      #   resp.endpoint.endpoint_type #=> String, one of "source", "target"
      #   resp.endpoint.engine_name #=> String
      #   resp.endpoint.username #=> String
      #   resp.endpoint.server_name #=> String
      #   resp.endpoint.port #=> Integer
      #   resp.endpoint.database_name #=> String
      #   resp.endpoint.extra_connection_attributes #=> String
      #   resp.endpoint.status #=> String
      #   resp.endpoint.kms_key_id #=> String
      #   resp.endpoint.endpoint_arn #=> String
      #   resp.endpoint.certificate_arn #=> String
      #   resp.endpoint.ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_endpoint(params = {}, options = {})
        req = build_request(:delete_endpoint, params)
        req.send_request(options)
      end

      # Deletes the specified replication instance.
      #
      # <note markdown="1"> You must delete any migration tasks that are associated with the
      # replication instance before you can delete it.
      #
      #  </note>
      # @option params [required, String] :replication_instance_arn
      #   The Amazon Resource Name (ARN) of the replication instance to be
      #   deleted.
      # @return [Types::DeleteReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteReplicationInstanceResponse#replication_instance #ReplicationInstance} => Types::ReplicationInstance
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_replication_instance({
      #     replication_instance_arn: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.replication_instance.replication_instance_identifier #=> String
      #   resp.replication_instance.replication_instance_class #=> String
      #   resp.replication_instance.replication_instance_status #=> String
      #   resp.replication_instance.allocated_storage #=> Integer
      #   resp.replication_instance.instance_create_time #=> Time
      #   resp.replication_instance.vpc_security_groups #=> Array
      #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
      #   resp.replication_instance.vpc_security_groups[0].status #=> String
      #   resp.replication_instance.availability_zone #=> String
      #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
      #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
      #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
      #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
      #   resp.replication_instance.replication_subnet_group.subnets #=> Array
      #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
      #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
      #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
      #   resp.replication_instance.preferred_maintenance_window #=> String
      #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
      #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
      #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
      #   resp.replication_instance.pending_modified_values.engine_version #=> String
      #   resp.replication_instance.multi_az #=> Boolean
      #   resp.replication_instance.engine_version #=> String
      #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
      #   resp.replication_instance.kms_key_id #=> String
      #   resp.replication_instance.replication_instance_arn #=> String
      #   resp.replication_instance.replication_instance_public_ip_address #=> String
      #   resp.replication_instance.replication_instance_private_ip_address #=> String
      #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
      #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
      #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
      #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
      #   resp.replication_instance.publicly_accessible #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_replication_instance(params = {}, options = {})
        req = build_request(:delete_replication_instance, params)
        req.send_request(options)
      end

      # Deletes a subnet group.
      # @option params [required, String] :replication_subnet_group_identifier
      #   The subnet group name of the replication instance.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_replication_subnet_group({
      #     replication_subnet_group_identifier: "String", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_replication_subnet_group(params = {}, options = {})
        req = build_request(:delete_replication_subnet_group, params)
        req.send_request(options)
      end

      # Deletes the specified replication task.
      # @option params [required, String] :replication_task_arn
      #   The Amazon Resource Name (ARN) of the replication task to be deleted.
      # @return [Types::DeleteReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteReplicationTaskResponse#replication_task #ReplicationTask} => Types::ReplicationTask
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_replication_task({
      #     replication_task_arn: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.replication_task.replication_task_identifier #=> String
      #   resp.replication_task.source_endpoint_arn #=> String
      #   resp.replication_task.target_endpoint_arn #=> String
      #   resp.replication_task.replication_instance_arn #=> String
      #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
      #   resp.replication_task.table_mappings #=> String
      #   resp.replication_task.replication_task_settings #=> String
      #   resp.replication_task.status #=> String
      #   resp.replication_task.last_failure_message #=> String
      #   resp.replication_task.replication_task_creation_date #=> Time
      #   resp.replication_task.replication_task_start_date #=> Time
      #   resp.replication_task.replication_task_arn #=> String
      #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
      #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
      #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
      #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
      #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
      #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_replication_task(params = {}, options = {})
        req = build_request(:delete_replication_task, params)
        req.send_request(options)
      end

      # Lists all of the AWS DMS attributes for a customer account. The
      # attributes include AWS DMS quotas for the account, such as the number
      # of replication instances allowed. The description for a quota includes
      # the quota name, current usage toward that quota, and the quota\'s
      # maximum value.
      #
      # This command does not take any parameters.
      # @return [Types::DescribeAccountAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAccountAttributesResponse#account_quotas #AccountQuotas} => Array&lt;Types::AccountQuota&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_account_attributes()
      #
      # @example Response structure
      #   resp.account_quotas #=> Array
      #   resp.account_quotas[0].account_quota_name #=> String
      #   resp.account_quotas[0].used #=> Integer
      #   resp.account_quotas[0].max #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_account_attributes(params = {}, options = {})
        req = build_request(:describe_account_attributes, params)
        req.send_request(options)
      end

      # Provides a description of the certificate.
      # @option params [Array<Types::Filter>] :filters
      #   Filters applied to the certificate described in the form of key-value
      #   pairs.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a pagination
      #   token called a marker is included in the response so that the
      #   remaining results can be retrieved.
      #
      #   Default: 10
      # @option params [String] :marker
      #   An optional pagination token provided by a previous request. If this
      #   parameter is specified, the response includes only records beyond the
      #   marker, up to the value specified by `MaxRecords`.
      # @return [Types::DescribeCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeCertificatesResponse#marker #Marker} => String
      #   * {Types::DescribeCertificatesResponse#certificates #Certificates} => Array&lt;Types::Certificate&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_certificates({
      #     filters: [
      #       {
      #         name: "String", # required
      #         values: ["String"], # required
      #       },
      #     ],
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.certificates #=> Array
      #   resp.certificates[0].certificate_identifier #=> String
      #   resp.certificates[0].certificate_creation_date #=> Time
      #   resp.certificates[0].certificate_pem #=> String
      #   resp.certificates[0].certificate_arn #=> String
      #   resp.certificates[0].certificate_owner #=> String
      #   resp.certificates[0].valid_from_date #=> Time
      #   resp.certificates[0].valid_to_date #=> Time
      #   resp.certificates[0].signing_algorithm #=> String
      #   resp.certificates[0].key_length #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_certificates(params = {}, options = {})
        req = build_request(:describe_certificates, params)
        req.send_request(options)
      end

      # Describes the status of the connections that have been made between
      # the replication instance and an endpoint. Connections are created when
      # you test an endpoint.
      # @option params [Array<Types::Filter>] :filters
      #   The filters applied to the connection.
      #
      #   Valid filter names: endpoint-arn \| replication-instance-arn
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a pagination
      #   token called a marker is included in the response so that the
      #   remaining results can be retrieved.
      #
      #   Default: 100
      #
      #   Constraints: Minimum 20, maximum 100.
      # @option params [String] :marker
      #   An optional pagination token provided by a previous request. If this
      #   parameter is specified, the response includes only records beyond the
      #   marker, up to the value specified by `MaxRecords`.
      # @return [Types::DescribeConnectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeConnectionsResponse#marker #Marker} => String
      #   * {Types::DescribeConnectionsResponse#connections #Connections} => Array&lt;Types::Connection&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_connections({
      #     filters: [
      #       {
      #         name: "String", # required
      #         values: ["String"], # required
      #       },
      #     ],
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.connections #=> Array
      #   resp.connections[0].replication_instance_arn #=> String
      #   resp.connections[0].endpoint_arn #=> String
      #   resp.connections[0].status #=> String
      #   resp.connections[0].last_failure_message #=> String
      #   resp.connections[0].endpoint_identifier #=> String
      #   resp.connections[0].replication_instance_identifier #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_connections(params = {}, options = {})
        req = build_request(:describe_connections, params)
        req.send_request(options)
      end

      # Returns information about the type of endpoints available.
      # @option params [Array<Types::Filter>] :filters
      #   Filters applied to the describe action.
      #
      #   Valid filter names: engine-name \| endpoint-type
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a pagination
      #   token called a marker is included in the response so that the
      #   remaining results can be retrieved.
      #
      #   Default: 100
      #
      #   Constraints: Minimum 20, maximum 100.
      # @option params [String] :marker
      #   An optional pagination token provided by a previous request. If this
      #   parameter is specified, the response includes only records beyond the
      #   marker, up to the value specified by `MaxRecords`.
      # @return [Types::DescribeEndpointTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeEndpointTypesResponse#marker #Marker} => String
      #   * {Types::DescribeEndpointTypesResponse#supported_endpoint_types #SupportedEndpointTypes} => Array&lt;Types::SupportedEndpointType&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_endpoint_types({
      #     filters: [
      #       {
      #         name: "String", # required
      #         values: ["String"], # required
      #       },
      #     ],
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.supported_endpoint_types #=> Array
      #   resp.supported_endpoint_types[0].engine_name #=> String
      #   resp.supported_endpoint_types[0].supports_cdc #=> Boolean
      #   resp.supported_endpoint_types[0].endpoint_type #=> String, one of "source", "target"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_endpoint_types(params = {}, options = {})
        req = build_request(:describe_endpoint_types, params)
        req.send_request(options)
      end

      # Returns information about the endpoints for your account in the
      # current region.
      # @option params [Array<Types::Filter>] :filters
      #   Filters applied to the describe action.
      #
      #   Valid filter names: endpoint-arn \| endpoint-type \| endpoint-id \|
      #   engine-name
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a pagination
      #   token called a marker is included in the response so that the
      #   remaining results can be retrieved.
      #
      #   Default: 100
      #
      #   Constraints: Minimum 20, maximum 100.
      # @option params [String] :marker
      #   An optional pagination token provided by a previous request. If this
      #   parameter is specified, the response includes only records beyond the
      #   marker, up to the value specified by `MaxRecords`.
      # @return [Types::DescribeEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeEndpointsResponse#marker #Marker} => String
      #   * {Types::DescribeEndpointsResponse#endpoints #Endpoints} => Array&lt;Types::Endpoint&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_endpoints({
      #     filters: [
      #       {
      #         name: "String", # required
      #         values: ["String"], # required
      #       },
      #     ],
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.endpoints #=> Array
      #   resp.endpoints[0].endpoint_identifier #=> String
      #   resp.endpoints[0].endpoint_type #=> String, one of "source", "target"
      #   resp.endpoints[0].engine_name #=> String
      #   resp.endpoints[0].username #=> String
      #   resp.endpoints[0].server_name #=> String
      #   resp.endpoints[0].port #=> Integer
      #   resp.endpoints[0].database_name #=> String
      #   resp.endpoints[0].extra_connection_attributes #=> String
      #   resp.endpoints[0].status #=> String
      #   resp.endpoints[0].kms_key_id #=> String
      #   resp.endpoints[0].endpoint_arn #=> String
      #   resp.endpoints[0].certificate_arn #=> String
      #   resp.endpoints[0].ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_endpoints(params = {}, options = {})
        req = build_request(:describe_endpoints, params)
        req.send_request(options)
      end

      # Returns information about the replication instance types that can be
      # created in the specified region.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a pagination
      #   token called a marker is included in the response so that the
      #   remaining results can be retrieved.
      #
      #   Default: 100
      #
      #   Constraints: Minimum 20, maximum 100.
      # @option params [String] :marker
      #   An optional pagination token provided by a previous request. If this
      #   parameter is specified, the response includes only records beyond the
      #   marker, up to the value specified by `MaxRecords`.
      # @return [Types::DescribeOrderableReplicationInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeOrderableReplicationInstancesResponse#orderable_replication_instances #OrderableReplicationInstances} => Array&lt;Types::OrderableReplicationInstance&gt;
      #   * {Types::DescribeOrderableReplicationInstancesResponse#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_orderable_replication_instances({
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.orderable_replication_instances #=> Array
      #   resp.orderable_replication_instances[0].engine_version #=> String
      #   resp.orderable_replication_instances[0].replication_instance_class #=> String
      #   resp.orderable_replication_instances[0].storage_type #=> String
      #   resp.orderable_replication_instances[0].min_allocated_storage #=> Integer
      #   resp.orderable_replication_instances[0].max_allocated_storage #=> Integer
      #   resp.orderable_replication_instances[0].default_allocated_storage #=> Integer
      #   resp.orderable_replication_instances[0].included_allocated_storage #=> Integer
      #   resp.marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_orderable_replication_instances(params = {}, options = {})
        req = build_request(:describe_orderable_replication_instances, params)
        req.send_request(options)
      end

      # Returns the status of the RefreshSchemas operation.
      # @option params [required, String] :endpoint_arn
      #   The Amazon Resource Name (ARN) string that uniquely identifies the
      #   endpoint.
      # @return [Types::DescribeRefreshSchemasStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeRefreshSchemasStatusResponse#refresh_schemas_status #RefreshSchemasStatus} => Types::RefreshSchemasStatus
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_refresh_schemas_status({
      #     endpoint_arn: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.refresh_schemas_status.endpoint_arn #=> String
      #   resp.refresh_schemas_status.replication_instance_arn #=> String
      #   resp.refresh_schemas_status.status #=> String, one of "successful", "failed", "refreshing"
      #   resp.refresh_schemas_status.last_refresh_date #=> Time
      #   resp.refresh_schemas_status.last_failure_message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_refresh_schemas_status(params = {}, options = {})
        req = build_request(:describe_refresh_schemas_status, params)
        req.send_request(options)
      end

      # Returns information about replication instances for your account in
      # the current region.
      # @option params [Array<Types::Filter>] :filters
      #   Filters applied to the describe action.
      #
      #   Valid filter names: replication-instance-arn \|
      #   replication-instance-id \| replication-instance-class \|
      #   engine-version
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a pagination
      #   token called a marker is included in the response so that the
      #   remaining results can be retrieved.
      #
      #   Default: 100
      #
      #   Constraints: Minimum 20, maximum 100.
      # @option params [String] :marker
      #   An optional pagination token provided by a previous request. If this
      #   parameter is specified, the response includes only records beyond the
      #   marker, up to the value specified by `MaxRecords`.
      # @return [Types::DescribeReplicationInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeReplicationInstancesResponse#marker #Marker} => String
      #   * {Types::DescribeReplicationInstancesResponse#replication_instances #ReplicationInstances} => Array&lt;Types::ReplicationInstance&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_replication_instances({
      #     filters: [
      #       {
      #         name: "String", # required
      #         values: ["String"], # required
      #       },
      #     ],
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.replication_instances #=> Array
      #   resp.replication_instances[0].replication_instance_identifier #=> String
      #   resp.replication_instances[0].replication_instance_class #=> String
      #   resp.replication_instances[0].replication_instance_status #=> String
      #   resp.replication_instances[0].allocated_storage #=> Integer
      #   resp.replication_instances[0].instance_create_time #=> Time
      #   resp.replication_instances[0].vpc_security_groups #=> Array
      #   resp.replication_instances[0].vpc_security_groups[0].vpc_security_group_id #=> String
      #   resp.replication_instances[0].vpc_security_groups[0].status #=> String
      #   resp.replication_instances[0].availability_zone #=> String
      #   resp.replication_instances[0].replication_subnet_group.replication_subnet_group_identifier #=> String
      #   resp.replication_instances[0].replication_subnet_group.replication_subnet_group_description #=> String
      #   resp.replication_instances[0].replication_subnet_group.vpc_id #=> String
      #   resp.replication_instances[0].replication_subnet_group.subnet_group_status #=> String
      #   resp.replication_instances[0].replication_subnet_group.subnets #=> Array
      #   resp.replication_instances[0].replication_subnet_group.subnets[0].subnet_identifier #=> String
      #   resp.replication_instances[0].replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
      #   resp.replication_instances[0].replication_subnet_group.subnets[0].subnet_status #=> String
      #   resp.replication_instances[0].preferred_maintenance_window #=> String
      #   resp.replication_instances[0].pending_modified_values.replication_instance_class #=> String
      #   resp.replication_instances[0].pending_modified_values.allocated_storage #=> Integer
      #   resp.replication_instances[0].pending_modified_values.multi_az #=> Boolean
      #   resp.replication_instances[0].pending_modified_values.engine_version #=> String
      #   resp.replication_instances[0].multi_az #=> Boolean
      #   resp.replication_instances[0].engine_version #=> String
      #   resp.replication_instances[0].auto_minor_version_upgrade #=> Boolean
      #   resp.replication_instances[0].kms_key_id #=> String
      #   resp.replication_instances[0].replication_instance_arn #=> String
      #   resp.replication_instances[0].replication_instance_public_ip_address #=> String
      #   resp.replication_instances[0].replication_instance_private_ip_address #=> String
      #   resp.replication_instances[0].replication_instance_public_ip_addresses #=> Array
      #   resp.replication_instances[0].replication_instance_public_ip_addresses[0] #=> String
      #   resp.replication_instances[0].replication_instance_private_ip_addresses #=> Array
      #   resp.replication_instances[0].replication_instance_private_ip_addresses[0] #=> String
      #   resp.replication_instances[0].publicly_accessible #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_replication_instances(params = {}, options = {})
        req = build_request(:describe_replication_instances, params)
        req.send_request(options)
      end

      # Returns information about the replication subnet groups.
      # @option params [Array<Types::Filter>] :filters
      #   Filters applied to the describe action.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a pagination
      #   token called a marker is included in the response so that the
      #   remaining results can be retrieved.
      #
      #   Default: 100
      #
      #   Constraints: Minimum 20, maximum 100.
      # @option params [String] :marker
      #   An optional pagination token provided by a previous request. If this
      #   parameter is specified, the response includes only records beyond the
      #   marker, up to the value specified by `MaxRecords`.
      # @return [Types::DescribeReplicationSubnetGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeReplicationSubnetGroupsResponse#marker #Marker} => String
      #   * {Types::DescribeReplicationSubnetGroupsResponse#replication_subnet_groups #ReplicationSubnetGroups} => Array&lt;Types::ReplicationSubnetGroup&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_replication_subnet_groups({
      #     filters: [
      #       {
      #         name: "String", # required
      #         values: ["String"], # required
      #       },
      #     ],
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.replication_subnet_groups #=> Array
      #   resp.replication_subnet_groups[0].replication_subnet_group_identifier #=> String
      #   resp.replication_subnet_groups[0].replication_subnet_group_description #=> String
      #   resp.replication_subnet_groups[0].vpc_id #=> String
      #   resp.replication_subnet_groups[0].subnet_group_status #=> String
      #   resp.replication_subnet_groups[0].subnets #=> Array
      #   resp.replication_subnet_groups[0].subnets[0].subnet_identifier #=> String
      #   resp.replication_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
      #   resp.replication_subnet_groups[0].subnets[0].subnet_status #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_replication_subnet_groups(params = {}, options = {})
        req = build_request(:describe_replication_subnet_groups, params)
        req.send_request(options)
      end

      # Returns information about replication tasks for your account in the
      # current region.
      # @option params [Array<Types::Filter>] :filters
      #   Filters applied to the describe action.
      #
      #   Valid filter names: replication-task-arn \| replication-task-id \|
      #   migration-type \| endpoint-arn \| replication-instance-arn
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a pagination
      #   token called a marker is included in the response so that the
      #   remaining results can be retrieved.
      #
      #   Default: 100
      #
      #   Constraints: Minimum 20, maximum 100.
      # @option params [String] :marker
      #   An optional pagination token provided by a previous request. If this
      #   parameter is specified, the response includes only records beyond the
      #   marker, up to the value specified by `MaxRecords`.
      # @return [Types::DescribeReplicationTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeReplicationTasksResponse#marker #Marker} => String
      #   * {Types::DescribeReplicationTasksResponse#replication_tasks #ReplicationTasks} => Array&lt;Types::ReplicationTask&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_replication_tasks({
      #     filters: [
      #       {
      #         name: "String", # required
      #         values: ["String"], # required
      #       },
      #     ],
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.replication_tasks #=> Array
      #   resp.replication_tasks[0].replication_task_identifier #=> String
      #   resp.replication_tasks[0].source_endpoint_arn #=> String
      #   resp.replication_tasks[0].target_endpoint_arn #=> String
      #   resp.replication_tasks[0].replication_instance_arn #=> String
      #   resp.replication_tasks[0].migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
      #   resp.replication_tasks[0].table_mappings #=> String
      #   resp.replication_tasks[0].replication_task_settings #=> String
      #   resp.replication_tasks[0].status #=> String
      #   resp.replication_tasks[0].last_failure_message #=> String
      #   resp.replication_tasks[0].replication_task_creation_date #=> Time
      #   resp.replication_tasks[0].replication_task_start_date #=> Time
      #   resp.replication_tasks[0].replication_task_arn #=> String
      #   resp.replication_tasks[0].replication_task_stats.full_load_progress_percent #=> Integer
      #   resp.replication_tasks[0].replication_task_stats.elapsed_time_millis #=> Integer
      #   resp.replication_tasks[0].replication_task_stats.tables_loaded #=> Integer
      #   resp.replication_tasks[0].replication_task_stats.tables_loading #=> Integer
      #   resp.replication_tasks[0].replication_task_stats.tables_queued #=> Integer
      #   resp.replication_tasks[0].replication_task_stats.tables_errored #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_replication_tasks(params = {}, options = {})
        req = build_request(:describe_replication_tasks, params)
        req.send_request(options)
      end

      # Returns information about the schema for the specified endpoint.
      # @option params [required, String] :endpoint_arn
      #   The Amazon Resource Name (ARN) string that uniquely identifies the
      #   endpoint.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a pagination
      #   token called a marker is included in the response so that the
      #   remaining results can be retrieved.
      #
      #   Default: 100
      #
      #   Constraints: Minimum 20, maximum 100.
      # @option params [String] :marker
      #   An optional pagination token provided by a previous request. If this
      #   parameter is specified, the response includes only records beyond the
      #   marker, up to the value specified by `MaxRecords`.
      # @return [Types::DescribeSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeSchemasResponse#marker #Marker} => String
      #   * {Types::DescribeSchemasResponse#schemas #Schemas} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_schemas({
      #     endpoint_arn: "String", # required
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.marker #=> String
      #   resp.schemas #=> Array
      #   resp.schemas[0] #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_schemas(params = {}, options = {})
        req = build_request(:describe_schemas, params)
        req.send_request(options)
      end

      # Returns table statistics on the database migration task, including
      # table name, rows inserted, rows updated, and rows deleted.
      # @option params [required, String] :replication_task_arn
      #   The Amazon Resource Name (ARN) of the replication task.
      # @option params [Integer] :max_records
      #   The maximum number of records to include in the response. If more
      #   records exist than the specified `MaxRecords` value, a pagination
      #   token called a marker is included in the response so that the
      #   remaining results can be retrieved.
      #
      #   Default: 100
      #
      #   Constraints: Minimum 20, maximum 100.
      # @option params [String] :marker
      #   An optional pagination token provided by a previous request. If this
      #   parameter is specified, the response includes only records beyond the
      #   marker, up to the value specified by `MaxRecords`.
      # @return [Types::DescribeTableStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeTableStatisticsResponse#replication_task_arn #ReplicationTaskArn} => String
      #   * {Types::DescribeTableStatisticsResponse#table_statistics #TableStatistics} => Array&lt;Types::TableStatistics&gt;
      #   * {Types::DescribeTableStatisticsResponse#marker #Marker} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_table_statistics({
      #     replication_task_arn: "String", # required
      #     max_records: 1,
      #     marker: "String",
      #   })
      #
      # @example Response structure
      #   resp.replication_task_arn #=> String
      #   resp.table_statistics #=> Array
      #   resp.table_statistics[0].schema_name #=> String
      #   resp.table_statistics[0].table_name #=> String
      #   resp.table_statistics[0].inserts #=> Integer
      #   resp.table_statistics[0].deletes #=> Integer
      #   resp.table_statistics[0].updates #=> Integer
      #   resp.table_statistics[0].ddls #=> Integer
      #   resp.table_statistics[0].full_load_rows #=> Integer
      #   resp.table_statistics[0].last_update_time #=> Time
      #   resp.table_statistics[0].table_state #=> String
      #   resp.marker #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_table_statistics(params = {}, options = {})
        req = build_request(:describe_table_statistics, params)
        req.send_request(options)
      end

      # Uploads the specified certificate.
      # @option params [required, String] :certificate_identifier
      #   The customer-assigned name of the certificate. Valid characters are
      #   \[A-z\_0-9\].
      # @option params [String] :certificate_pem
      #   The contents of the .pem X.509 certificate file.
      # @return [Types::ImportCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ImportCertificateResponse#certificate #Certificate} => Types::Certificate
      #
      # @example Request syntax with placeholder values
      #   resp = client.import_certificate({
      #     certificate_identifier: "String", # required
      #     certificate_pem: "String",
      #   })
      #
      # @example Response structure
      #   resp.certificate.certificate_identifier #=> String
      #   resp.certificate.certificate_creation_date #=> Time
      #   resp.certificate.certificate_pem #=> String
      #   resp.certificate.certificate_arn #=> String
      #   resp.certificate.certificate_owner #=> String
      #   resp.certificate.valid_from_date #=> Time
      #   resp.certificate.valid_to_date #=> Time
      #   resp.certificate.signing_algorithm #=> String
      #   resp.certificate.key_length #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def import_certificate(params = {}, options = {})
        req = build_request(:import_certificate, params)
        req.send_request(options)
      end

      # Lists all tags for an AWS DMS resource.
      # @option params [required, String] :resource_arn
      #   The Amazon Resource Name (ARN) string that uniquely identifies the AWS
      #   DMS resource.
      # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsForResourceResponse#tag_list #TagList} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags_for_resource({
      #     resource_arn: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.tag_list #=> Array
      #   resp.tag_list[0].key #=> String
      #   resp.tag_list[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tags_for_resource(params = {}, options = {})
        req = build_request(:list_tags_for_resource, params)
        req.send_request(options)
      end

      # Modifies the specified endpoint.
      # @option params [required, String] :endpoint_arn
      #   The Amazon Resource Name (ARN) string that uniquely identifies the
      #   endpoint.
      # @option params [String] :endpoint_identifier
      #   The database endpoint identifier. Identifiers must begin with a
      #   letter; must contain only ASCII letters, digits, and hyphens; and must
      #   not end with a hyphen or contain two consecutive hyphens.
      # @option params [String] :endpoint_type
      #   The type of endpoint.
      # @option params [String] :engine_name
      #   The type of engine for the endpoint. Valid values include MYSQL,
      #   ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, and SQLSERVER.
      # @option params [String] :username
      #   The user name to be used to login to the endpoint database.
      # @option params [String] :password
      #   The password to be used to login to the endpoint database.
      # @option params [String] :server_name
      #   The name of the server where the endpoint database resides.
      # @option params [Integer] :port
      #   The port used by the endpoint database.
      # @option params [String] :database_name
      #   The name of the endpoint database.
      # @option params [String] :extra_connection_attributes
      #   Additional attributes associated with the connection.
      # @option params [String] :certificate_arn
      #   The Amazon Resource Name (ARN) of the certificate used for SSL
      #   connection.
      # @option params [String] :ssl_mode
      #   The SSL mode to be used.
      #
      #   SSL mode can be one of four values: none, require, verify-ca,
      #   verify-full.
      #
      #   The default value is none.
      # @return [Types::ModifyEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ModifyEndpointResponse#endpoint #Endpoint} => Types::Endpoint
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_endpoint({
      #     endpoint_arn: "String", # required
      #     endpoint_identifier: "String",
      #     endpoint_type: "source", # accepts source, target
      #     engine_name: "String",
      #     username: "String",
      #     password: "SecretString",
      #     server_name: "String",
      #     port: 1,
      #     database_name: "String",
      #     extra_connection_attributes: "String",
      #     certificate_arn: "String",
      #     ssl_mode: "none", # accepts none, require, verify-ca, verify-full
      #   })
      #
      # @example Response structure
      #   resp.endpoint.endpoint_identifier #=> String
      #   resp.endpoint.endpoint_type #=> String, one of "source", "target"
      #   resp.endpoint.engine_name #=> String
      #   resp.endpoint.username #=> String
      #   resp.endpoint.server_name #=> String
      #   resp.endpoint.port #=> Integer
      #   resp.endpoint.database_name #=> String
      #   resp.endpoint.extra_connection_attributes #=> String
      #   resp.endpoint.status #=> String
      #   resp.endpoint.kms_key_id #=> String
      #   resp.endpoint.endpoint_arn #=> String
      #   resp.endpoint.certificate_arn #=> String
      #   resp.endpoint.ssl_mode #=> String, one of "none", "require", "verify-ca", "verify-full"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def modify_endpoint(params = {}, options = {})
        req = build_request(:modify_endpoint, params)
        req.send_request(options)
      end

      # Modifies the replication instance to apply new settings. You can
      # change one or more parameters by specifying these parameters and the
      # new values in the request.
      #
      # Some settings are applied during the maintenance window.
      # @option params [required, String] :replication_instance_arn
      #   The Amazon Resource Name (ARN) of the replication instance.
      # @option params [Integer] :allocated_storage
      #   The amount of storage (in gigabytes) to be allocated for the
      #   replication instance.
      # @option params [Boolean] :apply_immediately
      #   Indicates whether the changes should be applied immediately or during
      #   the next maintenance window.
      # @option params [String] :replication_instance_class
      #   The compute and memory capacity of the replication instance.
      #
      #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
      #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
      #   dms.c4.4xlarge `
      # @option params [Array<String>] :vpc_security_group_ids
      #   Specifies the VPC security group to be used with the replication
      #   instance. The VPC security group must work with the VPC containing the
      #   replication instance.
      # @option params [String] :preferred_maintenance_window
      #   The weekly time range (in UTC) during which system maintenance can
      #   occur, which might result in an outage. Changing this parameter does
      #   not result in an outage, except in the following situation, and the
      #   change is asynchronously applied as soon as possible. If moving this
      #   window to the current time, there must be at least 30 minutes between
      #   the current time and end of the window to ensure pending changes are
      #   applied.
      #
      #   Default: Uses existing setting
      #
      #   Format: ddd:hh24:mi-ddd:hh24:mi
      #
      #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
      #
      #   Constraints: Must be at least 30 minutes
      # @option params [Boolean] :multi_az
      #   Specifies if the replication instance is a Multi-AZ deployment. You
      #   cannot set the `AvailabilityZone` parameter if the Multi-AZ parameter
      #   is set to `true`.
      # @option params [String] :engine_version
      #   The engine version number of the replication instance.
      # @option params [Boolean] :allow_major_version_upgrade
      #   Indicates that major version upgrades are allowed. Changing this
      #   parameter does not result in an outage and the change is
      #   asynchronously applied as soon as possible.
      #
      #   Constraints: This parameter must be set to true when specifying a
      #   value for the `EngineVersion` parameter that is a different major
      #   version than the replication instance\'s current version.
      # @option params [Boolean] :auto_minor_version_upgrade
      #   Indicates that minor version upgrades will be applied automatically to
      #   the replication instance during the maintenance window. Changing this
      #   parameter does not result in an outage except in the following case
      #   and the change is asynchronously applied as soon as possible. An
      #   outage will result if this parameter is set to `true` during the
      #   maintenance window, and a newer minor version is available, and AWS
      #   DMS has enabled auto patching for that engine version.
      # @option params [String] :replication_instance_identifier
      #   The replication instance identifier. This parameter is stored as a
      #   lowercase string.
      # @return [Types::ModifyReplicationInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ModifyReplicationInstanceResponse#replication_instance #ReplicationInstance} => Types::ReplicationInstance
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_replication_instance({
      #     replication_instance_arn: "String", # required
      #     allocated_storage: 1,
      #     apply_immediately: false,
      #     replication_instance_class: "String",
      #     vpc_security_group_ids: ["String"],
      #     preferred_maintenance_window: "String",
      #     multi_az: false,
      #     engine_version: "String",
      #     allow_major_version_upgrade: false,
      #     auto_minor_version_upgrade: false,
      #     replication_instance_identifier: "String",
      #   })
      #
      # @example Response structure
      #   resp.replication_instance.replication_instance_identifier #=> String
      #   resp.replication_instance.replication_instance_class #=> String
      #   resp.replication_instance.replication_instance_status #=> String
      #   resp.replication_instance.allocated_storage #=> Integer
      #   resp.replication_instance.instance_create_time #=> Time
      #   resp.replication_instance.vpc_security_groups #=> Array
      #   resp.replication_instance.vpc_security_groups[0].vpc_security_group_id #=> String
      #   resp.replication_instance.vpc_security_groups[0].status #=> String
      #   resp.replication_instance.availability_zone #=> String
      #   resp.replication_instance.replication_subnet_group.replication_subnet_group_identifier #=> String
      #   resp.replication_instance.replication_subnet_group.replication_subnet_group_description #=> String
      #   resp.replication_instance.replication_subnet_group.vpc_id #=> String
      #   resp.replication_instance.replication_subnet_group.subnet_group_status #=> String
      #   resp.replication_instance.replication_subnet_group.subnets #=> Array
      #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_identifier #=> String
      #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
      #   resp.replication_instance.replication_subnet_group.subnets[0].subnet_status #=> String
      #   resp.replication_instance.preferred_maintenance_window #=> String
      #   resp.replication_instance.pending_modified_values.replication_instance_class #=> String
      #   resp.replication_instance.pending_modified_values.allocated_storage #=> Integer
      #   resp.replication_instance.pending_modified_values.multi_az #=> Boolean
      #   resp.replication_instance.pending_modified_values.engine_version #=> String
      #   resp.replication_instance.multi_az #=> Boolean
      #   resp.replication_instance.engine_version #=> String
      #   resp.replication_instance.auto_minor_version_upgrade #=> Boolean
      #   resp.replication_instance.kms_key_id #=> String
      #   resp.replication_instance.replication_instance_arn #=> String
      #   resp.replication_instance.replication_instance_public_ip_address #=> String
      #   resp.replication_instance.replication_instance_private_ip_address #=> String
      #   resp.replication_instance.replication_instance_public_ip_addresses #=> Array
      #   resp.replication_instance.replication_instance_public_ip_addresses[0] #=> String
      #   resp.replication_instance.replication_instance_private_ip_addresses #=> Array
      #   resp.replication_instance.replication_instance_private_ip_addresses[0] #=> String
      #   resp.replication_instance.publicly_accessible #=> Boolean
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def modify_replication_instance(params = {}, options = {})
        req = build_request(:modify_replication_instance, params)
        req.send_request(options)
      end

      # Modifies the settings for the specified replication subnet group.
      # @option params [required, String] :replication_subnet_group_identifier
      #   The name of the replication instance subnet group.
      # @option params [String] :replication_subnet_group_description
      #   The description of the replication instance subnet group.
      # @option params [required, Array<String>] :subnet_ids
      #   A list of subnet IDs.
      # @return [Types::ModifyReplicationSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ModifyReplicationSubnetGroupResponse#replication_subnet_group #ReplicationSubnetGroup} => Types::ReplicationSubnetGroup
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_replication_subnet_group({
      #     replication_subnet_group_identifier: "String", # required
      #     replication_subnet_group_description: "String",
      #     subnet_ids: ["String"], # required
      #   })
      #
      # @example Response structure
      #   resp.replication_subnet_group.replication_subnet_group_identifier #=> String
      #   resp.replication_subnet_group.replication_subnet_group_description #=> String
      #   resp.replication_subnet_group.vpc_id #=> String
      #   resp.replication_subnet_group.subnet_group_status #=> String
      #   resp.replication_subnet_group.subnets #=> Array
      #   resp.replication_subnet_group.subnets[0].subnet_identifier #=> String
      #   resp.replication_subnet_group.subnets[0].subnet_availability_zone.name #=> String
      #   resp.replication_subnet_group.subnets[0].subnet_status #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def modify_replication_subnet_group(params = {}, options = {})
        req = build_request(:modify_replication_subnet_group, params)
        req.send_request(options)
      end

      # Populates the schema for the specified endpoint. This is an
      # asynchronous operation and can take several minutes. You can check the
      # status of this operation by calling the DescribeRefreshSchemasStatus
      # operation.
      # @option params [required, String] :endpoint_arn
      #   The Amazon Resource Name (ARN) string that uniquely identifies the
      #   endpoint.
      # @option params [required, String] :replication_instance_arn
      #   The Amazon Resource Name (ARN) of the replication instance.
      # @return [Types::RefreshSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RefreshSchemasResponse#refresh_schemas_status #RefreshSchemasStatus} => Types::RefreshSchemasStatus
      #
      # @example Request syntax with placeholder values
      #   resp = client.refresh_schemas({
      #     endpoint_arn: "String", # required
      #     replication_instance_arn: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.refresh_schemas_status.endpoint_arn #=> String
      #   resp.refresh_schemas_status.replication_instance_arn #=> String
      #   resp.refresh_schemas_status.status #=> String, one of "successful", "failed", "refreshing"
      #   resp.refresh_schemas_status.last_refresh_date #=> Time
      #   resp.refresh_schemas_status.last_failure_message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def refresh_schemas(params = {}, options = {})
        req = build_request(:refresh_schemas, params)
        req.send_request(options)
      end

      # Removes metadata tags from a DMS resource.
      # @option params [required, String] :resource_arn
      #   &gt;The Amazon Resource Name (ARN) of the AWS DMS resource the tag is
      #   to be removed from.
      # @option params [required, Array<String>] :tag_keys
      #   The tag key (name) of the tag to be removed.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags_from_resource({
      #     resource_arn: "String", # required
      #     tag_keys: ["String"], # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def remove_tags_from_resource(params = {}, options = {})
        req = build_request(:remove_tags_from_resource, params)
        req.send_request(options)
      end

      # Starts the replication task.
      # @option params [required, String] :replication_task_arn
      #   The Amazon Resource Number (ARN) of the replication task to be
      #   started.
      # @option params [required, String] :start_replication_task_type
      #   The type of replication task.
      # @option params [Time,DateTime,Date,Integer,String] :cdc_start_time
      #   The start time for the Change Data Capture (CDC) operation.
      # @return [Types::StartReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StartReplicationTaskResponse#replication_task #ReplicationTask} => Types::ReplicationTask
      #
      # @example Request syntax with placeholder values
      #   resp = client.start_replication_task({
      #     replication_task_arn: "String", # required
      #     start_replication_task_type: "start-replication", # required, accepts start-replication, resume-processing, reload-target
      #     cdc_start_time: Time.now,
      #   })
      #
      # @example Response structure
      #   resp.replication_task.replication_task_identifier #=> String
      #   resp.replication_task.source_endpoint_arn #=> String
      #   resp.replication_task.target_endpoint_arn #=> String
      #   resp.replication_task.replication_instance_arn #=> String
      #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
      #   resp.replication_task.table_mappings #=> String
      #   resp.replication_task.replication_task_settings #=> String
      #   resp.replication_task.status #=> String
      #   resp.replication_task.last_failure_message #=> String
      #   resp.replication_task.replication_task_creation_date #=> Time
      #   resp.replication_task.replication_task_start_date #=> Time
      #   resp.replication_task.replication_task_arn #=> String
      #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
      #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
      #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
      #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
      #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
      #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def start_replication_task(params = {}, options = {})
        req = build_request(:start_replication_task, params)
        req.send_request(options)
      end

      # Stops the replication task.
      # @option params [required, String] :replication_task_arn
      #   The Amazon Resource Number(ARN) of the replication task to be stopped.
      # @return [Types::StopReplicationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StopReplicationTaskResponse#replication_task #ReplicationTask} => Types::ReplicationTask
      #
      # @example Request syntax with placeholder values
      #   resp = client.stop_replication_task({
      #     replication_task_arn: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.replication_task.replication_task_identifier #=> String
      #   resp.replication_task.source_endpoint_arn #=> String
      #   resp.replication_task.target_endpoint_arn #=> String
      #   resp.replication_task.replication_instance_arn #=> String
      #   resp.replication_task.migration_type #=> String, one of "full-load", "cdc", "full-load-and-cdc"
      #   resp.replication_task.table_mappings #=> String
      #   resp.replication_task.replication_task_settings #=> String
      #   resp.replication_task.status #=> String
      #   resp.replication_task.last_failure_message #=> String
      #   resp.replication_task.replication_task_creation_date #=> Time
      #   resp.replication_task.replication_task_start_date #=> Time
      #   resp.replication_task.replication_task_arn #=> String
      #   resp.replication_task.replication_task_stats.full_load_progress_percent #=> Integer
      #   resp.replication_task.replication_task_stats.elapsed_time_millis #=> Integer
      #   resp.replication_task.replication_task_stats.tables_loaded #=> Integer
      #   resp.replication_task.replication_task_stats.tables_loading #=> Integer
      #   resp.replication_task.replication_task_stats.tables_queued #=> Integer
      #   resp.replication_task.replication_task_stats.tables_errored #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def stop_replication_task(params = {}, options = {})
        req = build_request(:stop_replication_task, params)
        req.send_request(options)
      end

      # Tests the connection between the replication instance and the
      # endpoint.
      # @option params [required, String] :replication_instance_arn
      #   The Amazon Resource Name (ARN) of the replication instance.
      # @option params [required, String] :endpoint_arn
      #   The Amazon Resource Name (ARN) string that uniquely identifies the
      #   endpoint.
      # @return [Types::TestConnectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::TestConnectionResponse#connection #Connection} => Types::Connection
      #
      # @example Request syntax with placeholder values
      #   resp = client.test_connection({
      #     replication_instance_arn: "String", # required
      #     endpoint_arn: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.connection.replication_instance_arn #=> String
      #   resp.connection.endpoint_arn #=> String
      #   resp.connection.status #=> String
      #   resp.connection.last_failure_message #=> String
      #   resp.connection.endpoint_identifier #=> String
      #   resp.connection.replication_instance_identifier #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def test_connection(params = {}, options = {})
        req = build_request(:test_connection, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end