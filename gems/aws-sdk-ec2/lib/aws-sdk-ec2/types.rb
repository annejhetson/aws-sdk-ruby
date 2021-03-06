# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  module Types

    # Contains the parameters for accepting the quote.
    #
    # @note When making an API call, you may pass AcceptReservedInstancesExchangeQuoteRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         reserved_instance_ids: ["String"], # required
    #         target_configurations: [
    #           {
    #             instance_count: 1,
    #             offering_id: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] reserved_instance_ids
    #   The IDs of the Convertible Reserved Instances to exchange for other
    #   Convertible Reserved Instances of the same or higher value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_configurations
    #   The configurations of the Convertible Reserved Instance offerings
    #   that you are purchasing in this exchange.
    #   @return [Array<Types::TargetConfigurationRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AcceptReservedInstancesExchangeQuoteRequest AWS API Documentation
    #
    class AcceptReservedInstancesExchangeQuoteRequest < Struct.new(
      :dry_run,
      :reserved_instance_ids,
      :target_configurations)
      include Aws::Structure
    end

    # The result of the exchange and whether it was `successful`.
    #
    # @!attribute [rw] exchange_id
    #   The ID of the successful exchange.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AcceptReservedInstancesExchangeQuoteResult AWS API Documentation
    #
    class AcceptReservedInstancesExchangeQuoteResult < Struct.new(
      :exchange_id)
      include Aws::Structure
    end

    # Contains the parameters for AcceptVpcPeeringConnection.
    #
    # @note When making an API call, you may pass AcceptVpcPeeringConnectionRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         vpc_peering_connection_id: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AcceptVpcPeeringConnectionRequest AWS API Documentation
    #
    class AcceptVpcPeeringConnectionRequest < Struct.new(
      :dry_run,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # Contains the output of AcceptVpcPeeringConnection.
    #
    # @!attribute [rw] vpc_peering_connection
    #   Information about the VPC peering connection.
    #   @return [Types::VpcPeeringConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AcceptVpcPeeringConnectionResult AWS API Documentation
    #
    class AcceptVpcPeeringConnectionResult < Struct.new(
      :vpc_peering_connection)
      include Aws::Structure
    end

    # Describes an account attribute.
    #
    # @!attribute [rw] attribute_name
    #   The name of the account attribute.
    #   @return [String]
    #
    # @!attribute [rw] attribute_values
    #   One or more values for the account attribute.
    #   @return [Array<Types::AccountAttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AccountAttribute AWS API Documentation
    #
    class AccountAttribute < Struct.new(
      :attribute_name,
      :attribute_values)
      include Aws::Structure
    end

    # Describes a value of an account attribute.
    #
    # @!attribute [rw] attribute_value
    #   The value of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AccountAttributeValue AWS API Documentation
    #
    class AccountAttributeValue < Struct.new(
      :attribute_value)
      include Aws::Structure
    end

    # Describes a running instance in a Spot fleet.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] spot_instance_request_id
    #   The ID of the Spot instance request.
    #   @return [String]
    #
    # @!attribute [rw] instance_health
    #   The health status of the instance. If the status of either the
    #   instance status check or the system status check is `impaired`, the
    #   health status of the instance is `unhealthy`. Otherwise, the health
    #   status is `healthy`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ActiveInstance AWS API Documentation
    #
    class ActiveInstance < Struct.new(
      :instance_id,
      :instance_type,
      :spot_instance_request_id,
      :instance_health)
      include Aws::Structure
    end

    # Describes an Elastic IP address.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance that the address is associated with (if any).
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @!attribute [rw] allocation_id
    #   The ID representing the allocation of the address for use with
    #   EC2-VPC.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID representing the association of the address with an instance
    #   in a VPC.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Indicates whether this Elastic IP address is for use with instances
    #   in EC2-Classic (`standard`) or instances in a VPC (`vpc`).
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_owner_id
    #   The ID of the AWS account that owns the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address associated with the Elastic IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Address AWS API Documentation
    #
    class Address < Struct.new(
      :instance_id,
      :public_ip,
      :allocation_id,
      :association_id,
      :domain,
      :network_interface_id,
      :network_interface_owner_id,
      :private_ip_address)
      include Aws::Structure
    end

    # Contains the parameters for AllocateAddress.
    #
    # @note When making an API call, you may pass AllocateAddressRequest
    #   data as a hash:
    #
    #       {
    #         domain: "vpc", # accepts vpc, standard
    #         address: "String",
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] domain
    #   Set to `vpc` to allocate the address for use with instances in a
    #   VPC.
    #
    #   Default: The address is for use with instances in EC2-Classic.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   \[EC2-VPC\] The Elastic IP address to recover.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AllocateAddressRequest AWS API Documentation
    #
    class AllocateAddressRequest < Struct.new(
      :domain,
      :address,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of AllocateAddress.
    #
    # @!attribute [rw] public_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @!attribute [rw] allocation_id
    #   \[EC2-VPC\] The ID that AWS assigns to represent the allocation of
    #   the Elastic IP address for use with instances in a VPC.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Indicates whether this Elastic IP address is for use with instances
    #   in EC2-Classic (`standard`) or instances in a VPC (`vpc`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AllocateAddressResult AWS API Documentation
    #
    class AllocateAddressResult < Struct.new(
      :public_ip,
      :allocation_id,
      :domain)
      include Aws::Structure
    end

    # Contains the parameters for AllocateHosts.
    #
    # @note When making an API call, you may pass AllocateHostsRequest
    #   data as a hash:
    #
    #       {
    #         auto_placement: "on", # accepts on, off
    #         availability_zone: "String", # required
    #         client_token: "String",
    #         instance_type: "String", # required
    #         quantity: 1, # required
    #       }
    #
    # @!attribute [rw] auto_placement
    #   This is enabled by default. This property allows instances to be
    #   automatically placed onto available Dedicated Hosts, when you are
    #   launching instances without specifying a host ID.
    #
    #   Default: Enabled
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the Dedicated Hosts.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency
    #   of the request. For more information, see [How to Ensure
    #   Idempotency][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   Specify the instance type that you want your Dedicated Hosts to be
    #   configured for. When you specify the instance type, that is the only
    #   instance type that you can launch onto that host.
    #   @return [String]
    #
    # @!attribute [rw] quantity
    #   The number of Dedicated Hosts you want to allocate to your account
    #   with these parameters.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AllocateHostsRequest AWS API Documentation
    #
    class AllocateHostsRequest < Struct.new(
      :auto_placement,
      :availability_zone,
      :client_token,
      :instance_type,
      :quantity)
      include Aws::Structure
    end

    # Contains the output of AllocateHosts.
    #
    # @!attribute [rw] host_ids
    #   The ID of the allocated Dedicated Host. This is used when you want
    #   to launch an instance onto a specific host.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AllocateHostsResult AWS API Documentation
    #
    class AllocateHostsResult < Struct.new(
      :host_ids)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssignIpv6AddressesRequest
    #   data as a hash:
    #
    #       {
    #         ipv_6_address_count: 1,
    #         ipv_6_addresses: ["String"],
    #         network_interface_id: "String", # required
    #       }
    #
    # @!attribute [rw] ipv_6_address_count
    #   The number of IPv6 addresses to assign to the network interface.
    #   Amazon EC2 automatically selects the IPv6 addresses from the subnet
    #   range. You can't use this option if specifying specific IPv6
    #   addresses.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_6_addresses
    #   One or more specific IPv6 addresses to be assigned to the network
    #   interface. You can't use this option if you're specifying a number
    #   of IPv6 addresses.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssignIpv6AddressesRequest AWS API Documentation
    #
    class AssignIpv6AddressesRequest < Struct.new(
      :ipv_6_address_count,
      :ipv_6_addresses,
      :network_interface_id)
      include Aws::Structure
    end

    # @!attribute [rw] assigned_ipv_6_addresses
    #   The IPv6 addresses assigned to the network interface.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssignIpv6AddressesResult AWS API Documentation
    #
    class AssignIpv6AddressesResult < Struct.new(
      :assigned_ipv_6_addresses,
      :network_interface_id)
      include Aws::Structure
    end

    # Contains the parameters for AssignPrivateIpAddresses.
    #
    # @note When making an API call, you may pass AssignPrivateIpAddressesRequest
    #   data as a hash:
    #
    #       {
    #         allow_reassignment: false,
    #         network_interface_id: "String", # required
    #         private_ip_addresses: ["String"],
    #         secondary_private_ip_address_count: 1,
    #       }
    #
    # @!attribute [rw] allow_reassignment
    #   Indicates whether to allow an IP address that is already assigned to
    #   another network interface or instance to be reassigned to the
    #   specified network interface.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_addresses
    #   One or more IP addresses to be assigned as a secondary private IP
    #   address to the network interface. You can't specify this parameter
    #   when also specifying a number of secondary IP addresses.
    #
    #   If you don't specify an IP address, Amazon EC2 automatically
    #   selects an IP address within the subnet range.
    #   @return [Array<String>]
    #
    # @!attribute [rw] secondary_private_ip_address_count
    #   The number of secondary IP addresses to assign to the network
    #   interface. You can't specify this parameter when also specifying
    #   private IP addresses.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssignPrivateIpAddressesRequest AWS API Documentation
    #
    class AssignPrivateIpAddressesRequest < Struct.new(
      :allow_reassignment,
      :network_interface_id,
      :private_ip_addresses,
      :secondary_private_ip_address_count)
      include Aws::Structure
    end

    # Contains the parameters for AssociateAddress.
    #
    # @note When making an API call, you may pass AssociateAddressRequest
    #   data as a hash:
    #
    #       {
    #         allocation_id: "String",
    #         instance_id: "String",
    #         public_ip: "String",
    #         allow_reassociation: false,
    #         dry_run: false,
    #         network_interface_id: "String",
    #         private_ip_address: "String",
    #       }
    #
    # @!attribute [rw] allocation_id
    #   \[EC2-VPC\] The allocation ID. This is required for EC2-VPC.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance. This is required for EC2-Classic. For
    #   EC2-VPC, you can specify either the instance ID or the network
    #   interface ID, but not both. The operation fails if you specify an
    #   instance ID unless exactly one network interface is attached.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   The Elastic IP address. This is required for EC2-Classic.
    #   @return [String]
    #
    # @!attribute [rw] allow_reassociation
    #   \[EC2-VPC\] For a VPC in an EC2-Classic account, specify true to
    #   allow an Elastic IP address that is already associated with an
    #   instance or network interface to be reassociated with the specified
    #   instance or network interface. Otherwise, the operation fails. In a
    #   VPC in an EC2-VPC-only account, reassociation is automatic,
    #   therefore you can specify false to ensure the operation fails if the
    #   Elastic IP address is already associated with another resource.
    #   @return [Boolean]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_interface_id
    #   \[EC2-VPC\] The ID of the network interface. If the instance has
    #   more than one network interface, you must specify a network
    #   interface ID.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   \[EC2-VPC\] The primary or secondary private IP address to associate
    #   with the Elastic IP address. If no private IP address is specified,
    #   the Elastic IP address is associated with the primary private IP
    #   address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateAddressRequest AWS API Documentation
    #
    class AssociateAddressRequest < Struct.new(
      :allocation_id,
      :instance_id,
      :public_ip,
      :allow_reassociation,
      :dry_run,
      :network_interface_id,
      :private_ip_address)
      include Aws::Structure
    end

    # Contains the output of AssociateAddress.
    #
    # @!attribute [rw] association_id
    #   \[EC2-VPC\] The ID that represents the association of the Elastic IP
    #   address with an instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateAddressResult AWS API Documentation
    #
    class AssociateAddressResult < Struct.new(
      :association_id)
      include Aws::Structure
    end

    # Contains the parameters for AssociateDhcpOptions.
    #
    # @note When making an API call, you may pass AssociateDhcpOptionsRequest
    #   data as a hash:
    #
    #       {
    #         dhcp_options_id: "String", # required
    #         vpc_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] dhcp_options_id
    #   The ID of the DHCP options set, or `default` to associate no DHCP
    #   options with the VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateDhcpOptionsRequest AWS API Documentation
    #
    class AssociateDhcpOptionsRequest < Struct.new(
      :dhcp_options_id,
      :vpc_id,
      :dry_run)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateIamInstanceProfileRequest
    #   data as a hash:
    #
    #       {
    #         iam_instance_profile: { # required
    #           arn: "String",
    #           name: "String",
    #         },
    #         instance_id: "String", # required
    #       }
    #
    # @!attribute [rw] iam_instance_profile
    #   The IAM instance profile.
    #   @return [Types::IamInstanceProfileSpecification]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateIamInstanceProfileRequest AWS API Documentation
    #
    class AssociateIamInstanceProfileRequest < Struct.new(
      :iam_instance_profile,
      :instance_id)
      include Aws::Structure
    end

    # @!attribute [rw] iam_instance_profile_association
    #   Information about the IAM instance profile association.
    #   @return [Types::IamInstanceProfileAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateIamInstanceProfileResult AWS API Documentation
    #
    class AssociateIamInstanceProfileResult < Struct.new(
      :iam_instance_profile_association)
      include Aws::Structure
    end

    # Contains the parameters for AssociateRouteTable.
    #
    # @note When making an API call, you may pass AssociateRouteTableRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         route_table_id: "String", # required
    #         subnet_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateRouteTableRequest AWS API Documentation
    #
    class AssociateRouteTableRequest < Struct.new(
      :dry_run,
      :route_table_id,
      :subnet_id)
      include Aws::Structure
    end

    # Contains the output of AssociateRouteTable.
    #
    # @!attribute [rw] association_id
    #   The route table association ID (needed to disassociate the route
    #   table).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateRouteTableResult AWS API Documentation
    #
    class AssociateRouteTableResult < Struct.new(
      :association_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateSubnetCidrBlockRequest
    #   data as a hash:
    #
    #       {
    #         ipv_6_cidr_block: "String", # required
    #         subnet_id: "String", # required
    #       }
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 CIDR block for your subnet. The subnet must have a /64
    #   prefix length.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of your subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateSubnetCidrBlockRequest AWS API Documentation
    #
    class AssociateSubnetCidrBlockRequest < Struct.new(
      :ipv_6_cidr_block,
      :subnet_id)
      include Aws::Structure
    end

    # @!attribute [rw] ipv_6_cidr_block_association
    #   Information about the IPv6 CIDR block association.
    #   @return [Types::SubnetIpv6CidrBlockAssociation]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateSubnetCidrBlockResult AWS API Documentation
    #
    class AssociateSubnetCidrBlockResult < Struct.new(
      :ipv_6_cidr_block_association,
      :subnet_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateVpcCidrBlockRequest
    #   data as a hash:
    #
    #       {
    #         amazon_provided_ipv_6_cidr_block: false,
    #         cidr_block: "String",
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] amazon_provided_ipv_6_cidr_block
    #   Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length
    #   for the VPC. You cannot specify the range of IPv6 addresses, or the
    #   size of the CIDR block.
    #   @return [Boolean]
    #
    # @!attribute [rw] cidr_block
    #   An IPv4 CIDR block to associate with the VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateVpcCidrBlockRequest AWS API Documentation
    #
    class AssociateVpcCidrBlockRequest < Struct.new(
      :amazon_provided_ipv_6_cidr_block,
      :cidr_block,
      :vpc_id)
      include Aws::Structure
    end

    # @!attribute [rw] ipv_6_cidr_block_association
    #   Information about the IPv6 CIDR block association.
    #   @return [Types::VpcIpv6CidrBlockAssociation]
    #
    # @!attribute [rw] cidr_block_association
    #   Information about the IPv4 CIDR block association.
    #   @return [Types::VpcCidrBlockAssociation]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AssociateVpcCidrBlockResult AWS API Documentation
    #
    class AssociateVpcCidrBlockResult < Struct.new(
      :ipv_6_cidr_block_association,
      :cidr_block_association,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the parameters for AttachClassicLinkVpc.
    #
    # @note When making an API call, you may pass AttachClassicLinkVpcRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         groups: ["String"], # required
    #         instance_id: "String", # required
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   The ID of one or more of the VPC's security groups. You cannot
    #   specify security groups from a different VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_id
    #   The ID of an EC2-Classic instance to link to the ClassicLink-enabled
    #   VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of a ClassicLink-enabled VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachClassicLinkVpcRequest AWS API Documentation
    #
    class AttachClassicLinkVpcRequest < Struct.new(
      :dry_run,
      :groups,
      :instance_id,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the output of AttachClassicLinkVpc.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachClassicLinkVpcResult AWS API Documentation
    #
    class AttachClassicLinkVpcResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for AttachInternetGateway.
    #
    # @note When making an API call, you may pass AttachInternetGatewayRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         internet_gateway_id: "String", # required
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] internet_gateway_id
    #   The ID of the Internet gateway.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachInternetGatewayRequest AWS API Documentation
    #
    class AttachInternetGatewayRequest < Struct.new(
      :dry_run,
      :internet_gateway_id,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the parameters for AttachNetworkInterface.
    #
    # @note When making an API call, you may pass AttachNetworkInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         device_index: 1, # required
    #         dry_run: false,
    #         instance_id: "String", # required
    #         network_interface_id: "String", # required
    #       }
    #
    # @!attribute [rw] device_index
    #   The index of the device for the network interface attachment.
    #   @return [Integer]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachNetworkInterfaceRequest AWS API Documentation
    #
    class AttachNetworkInterfaceRequest < Struct.new(
      :device_index,
      :dry_run,
      :instance_id,
      :network_interface_id)
      include Aws::Structure
    end

    # Contains the output of AttachNetworkInterface.
    #
    # @!attribute [rw] attachment_id
    #   The ID of the network interface attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachNetworkInterfaceResult AWS API Documentation
    #
    class AttachNetworkInterfaceResult < Struct.new(
      :attachment_id)
      include Aws::Structure
    end

    # Contains the parameters for AttachVolume.
    #
    # @note When making an API call, you may pass AttachVolumeRequest
    #   data as a hash:
    #
    #       {
    #         device: "String", # required
    #         instance_id: "String", # required
    #         volume_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] device
    #   The device name to expose to the instance (for example, `/dev/sdh`
    #   or `xvdh`).
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The ID of the EBS volume. The volume and instance must be within the
    #   same Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachVolumeRequest AWS API Documentation
    #
    class AttachVolumeRequest < Struct.new(
      :device,
      :instance_id,
      :volume_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for AttachVpnGateway.
    #
    # @note When making an API call, you may pass AttachVpnGatewayRequest
    #   data as a hash:
    #
    #       {
    #         vpc_id: "String", # required
    #         vpn_gateway_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpn_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachVpnGatewayRequest AWS API Documentation
    #
    class AttachVpnGatewayRequest < Struct.new(
      :vpc_id,
      :vpn_gateway_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of AttachVpnGateway.
    #
    # @!attribute [rw] vpc_attachment
    #   Information about the attachment.
    #   @return [Types::VpcAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttachVpnGatewayResult AWS API Documentation
    #
    class AttachVpnGatewayResult < Struct.new(
      :vpc_attachment)
      include Aws::Structure
    end

    # Describes a value for a resource attribute that is a Boolean value.
    #
    # @note When making an API call, you may pass AttributeBooleanValue
    #   data as a hash:
    #
    #       {
    #         value: false,
    #       }
    #
    # @!attribute [rw] value
    #   The attribute value. The valid values are `true` or `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttributeBooleanValue AWS API Documentation
    #
    class AttributeBooleanValue < Struct.new(
      :value)
      include Aws::Structure
    end

    # Describes a value for a resource attribute that is a String.
    #
    # @note When making an API call, you may pass AttributeValue
    #   data as a hash:
    #
    #       {
    #         value: "String",
    #       }
    #
    # @!attribute [rw] value
    #   The attribute value. Note that the value is case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AttributeValue AWS API Documentation
    #
    class AttributeValue < Struct.new(
      :value)
      include Aws::Structure
    end

    # Contains the parameters for AuthorizeSecurityGroupEgress.
    #
    # @note When making an API call, you may pass AuthorizeSecurityGroupEgressRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         group_id: "String", # required
    #         ip_permissions: [
    #           {
    #             from_port: 1,
    #             ip_protocol: "String",
    #             ip_ranges: [
    #               {
    #                 cidr_ip: "String",
    #                 description: "String",
    #               },
    #             ],
    #             ipv_6_ranges: [
    #               {
    #                 cidr_ipv_6: "String",
    #                 description: "String",
    #               },
    #             ],
    #             prefix_list_ids: [
    #               {
    #                 description: "String",
    #                 prefix_list_id: "String",
    #               },
    #             ],
    #             to_port: 1,
    #             user_id_group_pairs: [
    #               {
    #                 description: "String",
    #                 group_id: "String",
    #                 group_name: "String",
    #                 peering_status: "String",
    #                 user_id: "String",
    #                 vpc_id: "String",
    #                 vpc_peering_connection_id: "String",
    #               },
    #             ],
    #           },
    #         ],
    #         cidr_ip: "String",
    #         from_port: 1,
    #         ip_protocol: "String",
    #         to_port: 1,
    #         source_security_group_name: "String",
    #         source_security_group_owner_id: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions
    #   A set of IP permissions. You can't specify a destination security
    #   group and a CIDR IP address range.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] cidr_ip
    #   The CIDR IPv4 address range. We recommend that you specify the CIDR
    #   range in a set of IP permissions instead.
    #   @return [String]
    #
    # @!attribute [rw] from_port
    #   The start of port range for the TCP and UDP protocols, or an ICMP
    #   type number. We recommend that you specify the port range in a set
    #   of IP permissions instead.
    #   @return [Integer]
    #
    # @!attribute [rw] ip_protocol
    #   The IP protocol name or number. We recommend that you specify the
    #   protocol in a set of IP permissions instead.
    #   @return [String]
    #
    # @!attribute [rw] to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP type
    #   number. We recommend that you specify the port range in a set of IP
    #   permissions instead.
    #   @return [Integer]
    #
    # @!attribute [rw] source_security_group_name
    #   The name of a destination security group. To authorize outbound
    #   access to a destination security group, we recommend that you use a
    #   set of IP permissions instead.
    #   @return [String]
    #
    # @!attribute [rw] source_security_group_owner_id
    #   The AWS account number for a destination security group. To
    #   authorize outbound access to a destination security group, we
    #   recommend that you use a set of IP permissions instead.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AuthorizeSecurityGroupEgressRequest AWS API Documentation
    #
    class AuthorizeSecurityGroupEgressRequest < Struct.new(
      :dry_run,
      :group_id,
      :ip_permissions,
      :cidr_ip,
      :from_port,
      :ip_protocol,
      :to_port,
      :source_security_group_name,
      :source_security_group_owner_id)
      include Aws::Structure
    end

    # Contains the parameters for AuthorizeSecurityGroupIngress.
    #
    # @note When making an API call, you may pass AuthorizeSecurityGroupIngressRequest
    #   data as a hash:
    #
    #       {
    #         cidr_ip: "String",
    #         from_port: 1,
    #         group_id: "String",
    #         group_name: "String",
    #         ip_permissions: [
    #           {
    #             from_port: 1,
    #             ip_protocol: "String",
    #             ip_ranges: [
    #               {
    #                 cidr_ip: "String",
    #                 description: "String",
    #               },
    #             ],
    #             ipv_6_ranges: [
    #               {
    #                 cidr_ipv_6: "String",
    #                 description: "String",
    #               },
    #             ],
    #             prefix_list_ids: [
    #               {
    #                 description: "String",
    #                 prefix_list_id: "String",
    #               },
    #             ],
    #             to_port: 1,
    #             user_id_group_pairs: [
    #               {
    #                 description: "String",
    #                 group_id: "String",
    #                 group_name: "String",
    #                 peering_status: "String",
    #                 user_id: "String",
    #                 vpc_id: "String",
    #                 vpc_peering_connection_id: "String",
    #               },
    #             ],
    #           },
    #         ],
    #         ip_protocol: "String",
    #         source_security_group_name: "String",
    #         source_security_group_owner_id: "String",
    #         to_port: 1,
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] cidr_ip
    #   The CIDR IPv4 address range. You can't specify this parameter when
    #   specifying a source security group.
    #   @return [String]
    #
    # @!attribute [rw] from_port
    #   The start of port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 type number. For the ICMP/ICMPv6 type number, use `-1`
    #   to specify all types. If you specify all ICMP/ICMPv6 types, you must
    #   specify all codes.
    #   @return [Integer]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group. You must specify either the security
    #   group ID or the security group name in the request. For security
    #   groups in a nondefault VPC, you must specify the security group ID.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   \[EC2-Classic, default VPC\] The name of the security group. You
    #   must specify either the security group ID or the security group name
    #   in the request.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions
    #   A set of IP permissions. Can be used to specify multiple rules in a
    #   single command.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol
    #   Numbers][1]). (VPC only) Use `-1` to specify all protocols. If you
    #   specify `-1`, or a protocol number other than `tcp`, `udp`, `icmp`,
    #   or `58` (ICMPv6), traffic on all ports is allowed, regardless of any
    #   ports you specify. For `tcp`, `udp`, and `icmp`, you must specify a
    #   port range. For protocol `58` (ICMPv6), you can optionally specify a
    #   port range; if you don't, traffic for all types and codes is
    #   allowed.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #   @return [String]
    #
    # @!attribute [rw] source_security_group_name
    #   \[EC2-Classic, default VPC\] The name of the source security group.
    #   You can't specify this parameter in combination with the following
    #   parameters: the CIDR IP address range, the start of the port range,
    #   the IP protocol, and the end of the port range. Creates rules that
    #   grant full ICMP, UDP, and TCP access. To create a rule with a
    #   specific IP protocol and port range, use a set of IP permissions
    #   instead. For EC2-VPC, the source security group must be in the same
    #   VPC.
    #   @return [String]
    #
    # @!attribute [rw] source_security_group_owner_id
    #   \[EC2-Classic\] The AWS account number for the source security
    #   group, if the source security group is in a different account. You
    #   can't specify this parameter in combination with the following
    #   parameters: the CIDR IP address range, the IP protocol, the start of
    #   the port range, and the end of the port range. Creates rules that
    #   grant full ICMP, UDP, and TCP access. To create a rule with a
    #   specific IP protocol and port range, use a set of IP permissions
    #   instead.
    #   @return [String]
    #
    # @!attribute [rw] to_port
    #   The end of port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 code number. For the ICMP/ICMPv6 code number, use `-1`
    #   to specify all codes. If you specify all ICMP/ICMPv6 types, you must
    #   specify all codes.
    #   @return [Integer]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AuthorizeSecurityGroupIngressRequest AWS API Documentation
    #
    class AuthorizeSecurityGroupIngressRequest < Struct.new(
      :cidr_ip,
      :from_port,
      :group_id,
      :group_name,
      :ip_permissions,
      :ip_protocol,
      :source_security_group_name,
      :source_security_group_owner_id,
      :to_port,
      :dry_run)
      include Aws::Structure
    end

    # Describes an Availability Zone.
    #
    # @!attribute [rw] state
    #   The state of the Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   Any messages about the Availability Zone.
    #   @return [Array<Types::AvailabilityZoneMessage>]
    #
    # @!attribute [rw] region_name
    #   The name of the region.
    #   @return [String]
    #
    # @!attribute [rw] zone_name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :state,
      :messages,
      :region_name,
      :zone_name)
      include Aws::Structure
    end

    # Describes a message about an Availability Zone.
    #
    # @!attribute [rw] message
    #   The message about the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AvailabilityZoneMessage AWS API Documentation
    #
    class AvailabilityZoneMessage < Struct.new(
      :message)
      include Aws::Structure
    end

    # The capacity information for instances launched onto the Dedicated
    # Host.
    #
    # @!attribute [rw] available_instance_capacity
    #   The total number of instances that the Dedicated Host supports.
    #   @return [Array<Types::InstanceCapacity>]
    #
    # @!attribute [rw] available_v_cpus
    #   The number of vCPUs available on the Dedicated Host.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/AvailableCapacity AWS API Documentation
    #
    class AvailableCapacity < Struct.new(
      :available_instance_capacity,
      :available_v_cpus)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BlobAttributeValue
    #   data as a hash:
    #
    #       {
    #         value: "data",
    #       }
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/BlobAttributeValue AWS API Documentation
    #
    class BlobAttributeValue < Struct.new(
      :value)
      include Aws::Structure
    end

    # Describes a block device mapping.
    #
    # @note When making an API call, you may pass BlockDeviceMapping
    #   data as a hash:
    #
    #       {
    #         device_name: "String",
    #         virtual_name: "String",
    #         ebs: {
    #           encrypted: false,
    #           delete_on_termination: false,
    #           iops: 1,
    #           snapshot_id: "String",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #         },
    #         no_device: "String",
    #       }
    #
    # @!attribute [rw] device_name
    #   The device name exposed to the instance (for example, `/dev/sdh` or
    #   `xvdh`).
    #   @return [String]
    #
    # @!attribute [rw] virtual_name
    #   The virtual device name (`ephemeral`N). Instance store volumes are
    #   numbered starting from 0. An instance type with 2 available instance
    #   store volumes can specify mappings for `ephemeral0` and
    #   `ephemeral1`.The number of available instance store volumes depends
    #   on the instance type. After you connect to the instance, you must
    #   mount the volume.
    #
    #   Constraints: For M3 instances, you must specify instance store
    #   volumes in the block device mapping for the instance. When you
    #   launch an M3 instance, we ignore any instance store volumes
    #   specified in the block device mapping for the AMI.
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   Parameters used to automatically set up EBS volumes when the
    #   instance is launched.
    #   @return [Types::EbsBlockDevice]
    #
    # @!attribute [rw] no_device
    #   Suppresses the specified device included in the block device mapping
    #   of the AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/BlockDeviceMapping AWS API Documentation
    #
    class BlockDeviceMapping < Struct.new(
      :device_name,
      :virtual_name,
      :ebs,
      :no_device)
      include Aws::Structure
    end

    # Contains the parameters for BundleInstance.
    #
    # @note When making an API call, you may pass BundleInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "String", # required
    #         storage: { # required
    #           s3: {
    #             aws_access_key_id: "String",
    #             bucket: "String",
    #             prefix: "String",
    #             upload_policy: "data",
    #             upload_policy_signature: "String",
    #           },
    #         },
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance to bundle.
    #
    #   Type: String
    #
    #   Default: None
    #
    #   Required: Yes
    #   @return [String]
    #
    # @!attribute [rw] storage
    #   The bucket in which to store the AMI. You can specify a bucket that
    #   you already own or a new bucket that Amazon EC2 creates on your
    #   behalf. If you specify a bucket that belongs to someone else, Amazon
    #   EC2 returns an error.
    #   @return [Types::Storage]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/BundleInstanceRequest AWS API Documentation
    #
    class BundleInstanceRequest < Struct.new(
      :instance_id,
      :storage,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of BundleInstance.
    #
    # @!attribute [rw] bundle_task
    #   Information about the bundle task.
    #   @return [Types::BundleTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/BundleInstanceResult AWS API Documentation
    #
    class BundleInstanceResult < Struct.new(
      :bundle_task)
      include Aws::Structure
    end

    # Describes a bundle task.
    #
    # @!attribute [rw] bundle_id
    #   The ID of the bundle task.
    #   @return [String]
    #
    # @!attribute [rw] bundle_task_error
    #   If the task fails, a description of the error.
    #   @return [Types::BundleTaskError]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance associated with this bundle task.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The level of task completion, as a percent (for example, 20%).
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time this task started.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the task.
    #   @return [String]
    #
    # @!attribute [rw] storage
    #   The Amazon S3 storage locations.
    #   @return [Types::Storage]
    #
    # @!attribute [rw] update_time
    #   The time of the most recent update for the task.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/BundleTask AWS API Documentation
    #
    class BundleTask < Struct.new(
      :bundle_id,
      :bundle_task_error,
      :instance_id,
      :progress,
      :start_time,
      :state,
      :storage,
      :update_time)
      include Aws::Structure
    end

    # Describes an error for BundleInstance.
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/BundleTaskError AWS API Documentation
    #
    class BundleTaskError < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # Contains the parameters for CancelBundleTask.
    #
    # @note When making an API call, you may pass CancelBundleTaskRequest
    #   data as a hash:
    #
    #       {
    #         bundle_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] bundle_id
    #   The ID of the bundle task.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelBundleTaskRequest AWS API Documentation
    #
    class CancelBundleTaskRequest < Struct.new(
      :bundle_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CancelBundleTask.
    #
    # @!attribute [rw] bundle_task
    #   Information about the bundle task.
    #   @return [Types::BundleTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelBundleTaskResult AWS API Documentation
    #
    class CancelBundleTaskResult < Struct.new(
      :bundle_task)
      include Aws::Structure
    end

    # Contains the parameters for CancelConversionTask.
    #
    # @note When making an API call, you may pass CancelConversionRequest
    #   data as a hash:
    #
    #       {
    #         conversion_task_id: "String", # required
    #         dry_run: false,
    #         reason_message: "String",
    #       }
    #
    # @!attribute [rw] conversion_task_id
    #   The ID of the conversion task.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] reason_message
    #   The reason for canceling the conversion task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelConversionRequest AWS API Documentation
    #
    class CancelConversionRequest < Struct.new(
      :conversion_task_id,
      :dry_run,
      :reason_message)
      include Aws::Structure
    end

    # Contains the parameters for CancelExportTask.
    #
    # @note When making an API call, you may pass CancelExportTaskRequest
    #   data as a hash:
    #
    #       {
    #         export_task_id: "String", # required
    #       }
    #
    # @!attribute [rw] export_task_id
    #   The ID of the export task. This is the ID returned by
    #   `CreateInstanceExportTask`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelExportTaskRequest AWS API Documentation
    #
    class CancelExportTaskRequest < Struct.new(
      :export_task_id)
      include Aws::Structure
    end

    # Contains the parameters for CancelImportTask.
    #
    # @note When making an API call, you may pass CancelImportTaskRequest
    #   data as a hash:
    #
    #       {
    #         cancel_reason: "String",
    #         dry_run: false,
    #         import_task_id: "String",
    #       }
    #
    # @!attribute [rw] cancel_reason
    #   The reason for canceling the task.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] import_task_id
    #   The ID of the import image or import snapshot task to be canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelImportTaskRequest AWS API Documentation
    #
    class CancelImportTaskRequest < Struct.new(
      :cancel_reason,
      :dry_run,
      :import_task_id)
      include Aws::Structure
    end

    # Contains the output for CancelImportTask.
    #
    # @!attribute [rw] import_task_id
    #   The ID of the task being canceled.
    #   @return [String]
    #
    # @!attribute [rw] previous_state
    #   The current state of the task being canceled.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the task being canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelImportTaskResult AWS API Documentation
    #
    class CancelImportTaskResult < Struct.new(
      :import_task_id,
      :previous_state,
      :state)
      include Aws::Structure
    end

    # Contains the parameters for CancelReservedInstancesListing.
    #
    # @note When making an API call, you may pass CancelReservedInstancesListingRequest
    #   data as a hash:
    #
    #       {
    #         reserved_instances_listing_id: "String", # required
    #       }
    #
    # @!attribute [rw] reserved_instances_listing_id
    #   The ID of the Reserved Instance listing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelReservedInstancesListingRequest AWS API Documentation
    #
    class CancelReservedInstancesListingRequest < Struct.new(
      :reserved_instances_listing_id)
      include Aws::Structure
    end

    # Contains the output of CancelReservedInstancesListing.
    #
    # @!attribute [rw] reserved_instances_listings
    #   The Reserved Instance listing.
    #   @return [Array<Types::ReservedInstancesListing>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelReservedInstancesListingResult AWS API Documentation
    #
    class CancelReservedInstancesListingResult < Struct.new(
      :reserved_instances_listings)
      include Aws::Structure
    end

    # Describes a Spot fleet error.
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The description for the error code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotFleetRequestsError AWS API Documentation
    #
    class CancelSpotFleetRequestsError < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # Describes a Spot fleet request that was not successfully canceled.
    #
    # @!attribute [rw] error
    #   The error.
    #   @return [Types::CancelSpotFleetRequestsError]
    #
    # @!attribute [rw] spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotFleetRequestsErrorItem AWS API Documentation
    #
    class CancelSpotFleetRequestsErrorItem < Struct.new(
      :error,
      :spot_fleet_request_id)
      include Aws::Structure
    end

    # Contains the parameters for CancelSpotFleetRequests.
    #
    # @note When making an API call, you may pass CancelSpotFleetRequestsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         spot_fleet_request_ids: ["String"], # required
    #         terminate_instances: false, # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] spot_fleet_request_ids
    #   The IDs of the Spot fleet requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] terminate_instances
    #   Indicates whether to terminate instances for a Spot fleet request if
    #   it is canceled successfully.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotFleetRequestsRequest AWS API Documentation
    #
    class CancelSpotFleetRequestsRequest < Struct.new(
      :dry_run,
      :spot_fleet_request_ids,
      :terminate_instances)
      include Aws::Structure
    end

    # Contains the output of CancelSpotFleetRequests.
    #
    # @!attribute [rw] successful_fleet_requests
    #   Information about the Spot fleet requests that are successfully
    #   canceled.
    #   @return [Array<Types::CancelSpotFleetRequestsSuccessItem>]
    #
    # @!attribute [rw] unsuccessful_fleet_requests
    #   Information about the Spot fleet requests that are not successfully
    #   canceled.
    #   @return [Array<Types::CancelSpotFleetRequestsErrorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotFleetRequestsResponse AWS API Documentation
    #
    class CancelSpotFleetRequestsResponse < Struct.new(
      :successful_fleet_requests,
      :unsuccessful_fleet_requests)
      include Aws::Structure
    end

    # Describes a Spot fleet request that was successfully canceled.
    #
    # @!attribute [rw] current_spot_fleet_request_state
    #   The current state of the Spot fleet request.
    #   @return [String]
    #
    # @!attribute [rw] previous_spot_fleet_request_state
    #   The previous state of the Spot fleet request.
    #   @return [String]
    #
    # @!attribute [rw] spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotFleetRequestsSuccessItem AWS API Documentation
    #
    class CancelSpotFleetRequestsSuccessItem < Struct.new(
      :current_spot_fleet_request_state,
      :previous_spot_fleet_request_state,
      :spot_fleet_request_id)
      include Aws::Structure
    end

    # Contains the parameters for CancelSpotInstanceRequests.
    #
    # @note When making an API call, you may pass CancelSpotInstanceRequestsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         spot_instance_request_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] spot_instance_request_ids
    #   One or more Spot instance request IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotInstanceRequestsRequest AWS API Documentation
    #
    class CancelSpotInstanceRequestsRequest < Struct.new(
      :dry_run,
      :spot_instance_request_ids)
      include Aws::Structure
    end

    # Contains the output of CancelSpotInstanceRequests.
    #
    # @!attribute [rw] cancelled_spot_instance_requests
    #   One or more Spot instance requests.
    #   @return [Array<Types::CancelledSpotInstanceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelSpotInstanceRequestsResult AWS API Documentation
    #
    class CancelSpotInstanceRequestsResult < Struct.new(
      :cancelled_spot_instance_requests)
      include Aws::Structure
    end

    # Describes a request to cancel a Spot instance.
    #
    # @!attribute [rw] spot_instance_request_id
    #   The ID of the Spot instance request.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the Spot instance request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CancelledSpotInstanceRequest AWS API Documentation
    #
    class CancelledSpotInstanceRequest < Struct.new(
      :spot_instance_request_id,
      :state)
      include Aws::Structure
    end

    # Describes an IPv4 CIDR block.
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 CIDR block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CidrBlock AWS API Documentation
    #
    class CidrBlock < Struct.new(
      :cidr_block)
      include Aws::Structure
    end

    # Describes the ClassicLink DNS support status of a VPC.
    #
    # @!attribute [rw] classic_link_dns_supported
    #   Indicates whether ClassicLink DNS support is enabled for the VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ClassicLinkDnsSupport AWS API Documentation
    #
    class ClassicLinkDnsSupport < Struct.new(
      :classic_link_dns_supported,
      :vpc_id)
      include Aws::Structure
    end

    # Describes a linked EC2-Classic instance.
    #
    # @!attribute [rw] groups
    #   A list of security groups.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the instance.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ClassicLinkInstance AWS API Documentation
    #
    class ClassicLinkInstance < Struct.new(
      :groups,
      :instance_id,
      :tags,
      :vpc_id)
      include Aws::Structure
    end

    # Describes the client-specific data.
    #
    # @note When making an API call, you may pass ClientData
    #   data as a hash:
    #
    #       {
    #         comment: "String",
    #         upload_end: Time.now,
    #         upload_size: 1.0,
    #         upload_start: Time.now,
    #       }
    #
    # @!attribute [rw] comment
    #   A user-defined comment about the disk upload.
    #   @return [String]
    #
    # @!attribute [rw] upload_end
    #   The time that the disk upload ends.
    #   @return [Time]
    #
    # @!attribute [rw] upload_size
    #   The size of the uploaded disk image, in GiB.
    #   @return [Float]
    #
    # @!attribute [rw] upload_start
    #   The time that the disk upload starts.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ClientData AWS API Documentation
    #
    class ClientData < Struct.new(
      :comment,
      :upload_end,
      :upload_size,
      :upload_start)
      include Aws::Structure
    end

    # Contains the parameters for ConfirmProductInstance.
    #
    # @note When making an API call, you may pass ConfirmProductInstanceRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "String", # required
    #         product_code: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] product_code
    #   The product code. This must be a product code that you own.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ConfirmProductInstanceRequest AWS API Documentation
    #
    class ConfirmProductInstanceRequest < Struct.new(
      :instance_id,
      :product_code,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of ConfirmProductInstance.
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the instance owner. This is only present if
    #   the product code is attached to the instance.
    #   @return [String]
    #
    # @!attribute [rw] return
    #   The return value of the request. Returns `true` if the specified
    #   product code is owned by the requester and associated with the
    #   specified instance.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ConfirmProductInstanceResult AWS API Documentation
    #
    class ConfirmProductInstanceResult < Struct.new(
      :owner_id,
      :return)
      include Aws::Structure
    end

    # Describes a conversion task.
    #
    # @!attribute [rw] conversion_task_id
    #   The ID of the conversion task.
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   The time when the task expires. If the upload isn't complete before
    #   the expiration time, we automatically cancel the task.
    #   @return [String]
    #
    # @!attribute [rw] import_instance
    #   If the task is for importing an instance, this contains information
    #   about the import instance task.
    #   @return [Types::ImportInstanceTaskDetails]
    #
    # @!attribute [rw] import_volume
    #   If the task is for importing a volume, this contains information
    #   about the import volume task.
    #   @return [Types::ImportVolumeTaskDetails]
    #
    # @!attribute [rw] state
    #   The state of the conversion task.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message related to the conversion task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the task.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ConversionTask AWS API Documentation
    #
    class ConversionTask < Struct.new(
      :conversion_task_id,
      :expiration_time,
      :import_instance,
      :import_volume,
      :state,
      :status_message,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopyFpgaImageRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         source_fpga_image_id: "String", # required
    #         description: "String",
    #         name: "String",
    #         source_region: "String", # required
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_fpga_image_id
    #   The ID of the source AFI.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the new AFI.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the new AFI. The default is the name of the source AFI.
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The region that contains the source AFI.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopyFpgaImageRequest AWS API Documentation
    #
    class CopyFpgaImageRequest < Struct.new(
      :dry_run,
      :source_fpga_image_id,
      :description,
      :name,
      :source_region,
      :client_token)
      include Aws::Structure
    end

    # @!attribute [rw] fpga_image_id
    #   The ID of the new AFI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopyFpgaImageResult AWS API Documentation
    #
    class CopyFpgaImageResult < Struct.new(
      :fpga_image_id)
      include Aws::Structure
    end

    # Contains the parameters for CopyImage.
    #
    # @note When making an API call, you may pass CopyImageRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         description: "String",
    #         encrypted: false,
    #         kms_key_id: "String",
    #         name: "String", # required
    #         source_image_id: "String", # required
    #         source_region: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency
    #   of the request. For more information, see [How to Ensure
    #   Idempotency][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the new AMI in the destination region.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether the destination snapshots of the copied image
    #   should be encrypted. The default CMK for EBS is used unless a
    #   non-default AWS Key Management Service (AWS KMS) CMK is specified
    #   with `KmsKeyId`. For more information, see [Amazon EBS
    #   Encryption][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The full ARN of the AWS Key Management Service (AWS KMS) CMK to use
    #   when encrypting the snapshots of an image during a copy operation.
    #   This parameter is only required if you want to use a non-default
    #   CMK; if this parameter is not specified, the default CMK for EBS is
    #   used. The ARN contains the `arn:aws:kms` namespace, followed by the
    #   region of the CMK, the AWS account ID of the CMK owner, the `key`
    #   namespace, and then the CMK ID. For example,
    #   arn:aws:kms:*us-east-1*\:*012345678910*\:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
    #   The specified CMK must exist in the region that the snapshot is
    #   being copied to. If a `KmsKeyId` is specified, the `Encrypted` flag
    #   must also be set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new AMI in the destination region.
    #   @return [String]
    #
    # @!attribute [rw] source_image_id
    #   The ID of the AMI to copy.
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The name of the region that contains the AMI to copy.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopyImageRequest AWS API Documentation
    #
    class CopyImageRequest < Struct.new(
      :client_token,
      :description,
      :encrypted,
      :kms_key_id,
      :name,
      :source_image_id,
      :source_region,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CopyImage.
    #
    # @!attribute [rw] image_id
    #   The ID of the new AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopyImageResult AWS API Documentation
    #
    class CopyImageResult < Struct.new(
      :image_id)
      include Aws::Structure
    end

    # Contains the parameters for CopySnapshot.
    #
    # @note When making an API call, you may pass CopySnapshotRequest
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         destination_region: "String",
    #         encrypted: false,
    #         kms_key_id: "String",
    #         presigned_url: "String",
    #         source_region: "String", # required
    #         source_snapshot_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] description
    #   A description for the EBS snapshot.
    #   @return [String]
    #
    # @!attribute [rw] destination_region
    #   The destination region to use in the `PresignedUrl` parameter of a
    #   snapshot copy operation. This parameter is only valid for specifying
    #   the destination region in a `PresignedUrl` parameter, where it is
    #   required.
    #
    #   <note markdown="1"> `CopySnapshot` sends the snapshot copy to the regional endpoint that
    #   you send the HTTP request to, such as `ec2.us-east-1.amazonaws.com`
    #   (in the AWS CLI, this is specified with the `--region` parameter or
    #   the default region in your AWS configuration file).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether the destination snapshot should be encrypted. You
    #   can encrypt a copy of an unencrypted snapshot using this flag, but
    #   you cannot use it to create an unencrypted copy from an encrypted
    #   snapshot. Your default CMK for EBS is used unless a non-default AWS
    #   Key Management Service (AWS KMS) CMK is specified with `KmsKeyId`.
    #   For more information, see [Amazon EBS Encryption][1] in the *Amazon
    #   Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The full ARN of the AWS Key Management Service (AWS KMS) CMK to use
    #   when creating the snapshot copy. This parameter is only required if
    #   you want to use a non-default CMK; if this parameter is not
    #   specified, the default CMK for EBS is used. The ARN contains the
    #   `arn:aws:kms` namespace, followed by the region of the CMK, the AWS
    #   account ID of the CMK owner, the `key` namespace, and then the CMK
    #   ID. For example,
    #   arn:aws:kms:*us-east-1*\:*012345678910*\:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
    #   The specified CMK must exist in the region that the snapshot is
    #   being copied to. If a `KmsKeyId` is specified, the `Encrypted` flag
    #   must also be set.
    #   @return [String]
    #
    # @!attribute [rw] presigned_url
    #   The pre-signed URL that facilitates copying an encrypted snapshot.
    #   This parameter is only required when copying an encrypted snapshot
    #   with the Amazon EC2 Query API; it is available as an optional
    #   parameter in all other cases. The `PresignedUrl` should use the
    #   snapshot source endpoint, the `CopySnapshot` action, and include the
    #   `SourceRegion`, `SourceSnapshotId`, and `DestinationRegion`
    #   parameters. The `PresignedUrl` must be signed using AWS Signature
    #   Version 4. Because EBS snapshots are stored in Amazon S3, the
    #   signing algorithm for this parameter uses the same logic that is
    #   described in [Authenticating Requests by Using Query Parameters (AWS
    #   Signature Version 4)][1] in the *Amazon Simple Storage Service API
    #   Reference*. An invalid or improperly signed `PresignedUrl` will
    #   cause the copy operation to fail asynchronously, and the snapshot
    #   will move to an `error` state.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The ID of the region that contains the snapshot to be copied.
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   The ID of the EBS snapshot to copy.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopySnapshotRequest AWS API Documentation
    #
    class CopySnapshotRequest < Struct.new(
      :description,
      :destination_region,
      :encrypted,
      :kms_key_id,
      :presigned_url,
      :source_region,
      :source_snapshot_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CopySnapshot.
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the new snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CopySnapshotResult AWS API Documentation
    #
    class CopySnapshotResult < Struct.new(
      :snapshot_id)
      include Aws::Structure
    end

    # Contains the parameters for CreateCustomerGateway.
    #
    # @note When making an API call, you may pass CreateCustomerGatewayRequest
    #   data as a hash:
    #
    #       {
    #         bgp_asn: 1, # required
    #         public_ip: "String", # required
    #         type: "ipsec.1", # required, accepts ipsec.1
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] bgp_asn
    #   For devices that support BGP, the customer gateway's BGP ASN.
    #
    #   Default: 65000
    #   @return [Integer]
    #
    # @!attribute [rw] public_ip
    #   The Internet-routable IP address for the customer gateway's outside
    #   interface. The address must be static.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of VPN connection that this customer gateway supports
    #   (`ipsec.1`).
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateCustomerGatewayRequest AWS API Documentation
    #
    class CreateCustomerGatewayRequest < Struct.new(
      :bgp_asn,
      :public_ip,
      :type,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CreateCustomerGateway.
    #
    # @!attribute [rw] customer_gateway
    #   Information about the customer gateway.
    #   @return [Types::CustomerGateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateCustomerGatewayResult AWS API Documentation
    #
    class CreateCustomerGatewayResult < Struct.new(
      :customer_gateway)
      include Aws::Structure
    end

    # Contains the parameters for CreateDefaultVpc.
    #
    # @note When making an API call, you may pass CreateDefaultVpcRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateDefaultVpcRequest AWS API Documentation
    #
    class CreateDefaultVpcRequest < Struct.new(
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CreateDefaultVpc.
    #
    # @!attribute [rw] vpc
    #   Information about the VPC.
    #   @return [Types::Vpc]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateDefaultVpcResult AWS API Documentation
    #
    class CreateDefaultVpcResult < Struct.new(
      :vpc)
      include Aws::Structure
    end

    # Contains the parameters for CreateDhcpOptions.
    #
    # @note When making an API call, you may pass CreateDhcpOptionsRequest
    #   data as a hash:
    #
    #       {
    #         dhcp_configurations: [ # required
    #           {
    #             key: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] dhcp_configurations
    #   A DHCP configuration option.
    #   @return [Array<Types::NewDhcpConfiguration>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateDhcpOptionsRequest AWS API Documentation
    #
    class CreateDhcpOptionsRequest < Struct.new(
      :dhcp_configurations,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CreateDhcpOptions.
    #
    # @!attribute [rw] dhcp_options
    #   A set of DHCP options.
    #   @return [Types::DhcpOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateDhcpOptionsResult AWS API Documentation
    #
    class CreateDhcpOptionsResult < Struct.new(
      :dhcp_options)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEgressOnlyInternetGatewayRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         dry_run: false,
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [How to Ensure
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for which to create the egress-only Internet
    #   gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateEgressOnlyInternetGatewayRequest AWS API Documentation
    #
    class CreateEgressOnlyInternetGatewayRequest < Struct.new(
      :client_token,
      :dry_run,
      :vpc_id)
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] egress_only_internet_gateway
    #   Information about the egress-only Internet gateway.
    #   @return [Types::EgressOnlyInternetGateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateEgressOnlyInternetGatewayResult AWS API Documentation
    #
    class CreateEgressOnlyInternetGatewayResult < Struct.new(
      :client_token,
      :egress_only_internet_gateway)
      include Aws::Structure
    end

    # Contains the parameters for CreateFlowLogs.
    #
    # @note When making an API call, you may pass CreateFlowLogsRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         deliver_logs_permission_arn: "String", # required
    #         log_group_name: "String", # required
    #         resource_ids: ["String"], # required
    #         resource_type: "VPC", # required, accepts VPC, Subnet, NetworkInterface
    #         traffic_type: "ACCEPT", # required, accepts ACCEPT, REJECT, ALL
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [How to Ensure
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] deliver_logs_permission_arn
    #   The ARN for the IAM role that's used to post flow logs to a
    #   CloudWatch Logs log group.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the CloudWatch log group.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   One or more subnet, network interface, or VPC IDs.
    #
    #   Constraints: Maximum of 1000 resources
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_type
    #   The type of resource on which to create the flow log.
    #   @return [String]
    #
    # @!attribute [rw] traffic_type
    #   The type of traffic to log.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateFlowLogsRequest AWS API Documentation
    #
    class CreateFlowLogsRequest < Struct.new(
      :client_token,
      :deliver_logs_permission_arn,
      :log_group_name,
      :resource_ids,
      :resource_type,
      :traffic_type)
      include Aws::Structure
    end

    # Contains the output of CreateFlowLogs.
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] flow_log_ids
    #   The IDs of the flow logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unsuccessful
    #   Information about the flow logs that could not be created
    #   successfully.
    #   @return [Array<Types::UnsuccessfulItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateFlowLogsResult AWS API Documentation
    #
    class CreateFlowLogsResult < Struct.new(
      :client_token,
      :flow_log_ids,
      :unsuccessful)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFpgaImageRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         input_storage_location: { # required
    #           bucket: "String",
    #           key: "String",
    #         },
    #         logs_storage_location: {
    #           bucket: "String",
    #           key: "String",
    #         },
    #         description: "String",
    #         name: "String",
    #         client_token: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] input_storage_location
    #   The location of the encrypted design checkpoint in Amazon S3. The
    #   input must be a tarball.
    #   @return [Types::StorageLocation]
    #
    # @!attribute [rw] logs_storage_location
    #   The location in Amazon S3 for the output logs.
    #   @return [Types::StorageLocation]
    #
    # @!attribute [rw] description
    #   A description for the AFI.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the AFI.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateFpgaImageRequest AWS API Documentation
    #
    class CreateFpgaImageRequest < Struct.new(
      :dry_run,
      :input_storage_location,
      :logs_storage_location,
      :description,
      :name,
      :client_token)
      include Aws::Structure
    end

    # @!attribute [rw] fpga_image_id
    #   The FPGA image identifier (AFI ID).
    #   @return [String]
    #
    # @!attribute [rw] fpga_image_global_id
    #   The global FPGA image identifier (AGFI ID).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateFpgaImageResult AWS API Documentation
    #
    class CreateFpgaImageResult < Struct.new(
      :fpga_image_id,
      :fpga_image_global_id)
      include Aws::Structure
    end

    # Contains the parameters for CreateImage.
    #
    # @note When making an API call, you may pass CreateImageRequest
    #   data as a hash:
    #
    #       {
    #         block_device_mappings: [
    #           {
    #             device_name: "String",
    #             virtual_name: "String",
    #             ebs: {
    #               encrypted: false,
    #               delete_on_termination: false,
    #               iops: 1,
    #               snapshot_id: "String",
    #               volume_size: 1,
    #               volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #             },
    #             no_device: "String",
    #           },
    #         ],
    #         description: "String",
    #         dry_run: false,
    #         instance_id: "String", # required
    #         name: "String", # required
    #         no_reboot: false,
    #       }
    #
    # @!attribute [rw] block_device_mappings
    #   Information about one or more block device mappings.
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] description
    #   A description for the new image.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the new image.
    #
    #   Constraints: 3-128 alphanumeric characters, parentheses (()), square
    #   brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-),
    #   single quotes ('), at-signs (@), or underscores(\_)
    #   @return [String]
    #
    # @!attribute [rw] no_reboot
    #   By default, Amazon EC2 attempts to shut down and reboot the instance
    #   before creating the image. If the 'No Reboot' option is set,
    #   Amazon EC2 doesn't shut down the instance before creating the
    #   image. When this option is used, file system integrity on the
    #   created image can't be guaranteed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateImageRequest AWS API Documentation
    #
    class CreateImageRequest < Struct.new(
      :block_device_mappings,
      :description,
      :dry_run,
      :instance_id,
      :name,
      :no_reboot)
      include Aws::Structure
    end

    # Contains the output of CreateImage.
    #
    # @!attribute [rw] image_id
    #   The ID of the new AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateImageResult AWS API Documentation
    #
    class CreateImageResult < Struct.new(
      :image_id)
      include Aws::Structure
    end

    # Contains the parameters for CreateInstanceExportTask.
    #
    # @note When making an API call, you may pass CreateInstanceExportTaskRequest
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         export_to_s3_task: {
    #           container_format: "ova", # accepts ova
    #           disk_image_format: "VMDK", # accepts VMDK, RAW, VHD
    #           s3_bucket: "String",
    #           s3_prefix: "String",
    #         },
    #         instance_id: "String", # required
    #         target_environment: "citrix", # accepts citrix, vmware, microsoft
    #       }
    #
    # @!attribute [rw] description
    #   A description for the conversion task or the resource being
    #   exported. The maximum length is 255 bytes.
    #   @return [String]
    #
    # @!attribute [rw] export_to_s3_task
    #   The format and location for an instance export task.
    #   @return [Types::ExportToS3TaskSpecification]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] target_environment
    #   The target virtualization environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateInstanceExportTaskRequest AWS API Documentation
    #
    class CreateInstanceExportTaskRequest < Struct.new(
      :description,
      :export_to_s3_task,
      :instance_id,
      :target_environment)
      include Aws::Structure
    end

    # Contains the output for CreateInstanceExportTask.
    #
    # @!attribute [rw] export_task
    #   Information about the instance export task.
    #   @return [Types::ExportTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateInstanceExportTaskResult AWS API Documentation
    #
    class CreateInstanceExportTaskResult < Struct.new(
      :export_task)
      include Aws::Structure
    end

    # Contains the parameters for CreateInternetGateway.
    #
    # @note When making an API call, you may pass CreateInternetGatewayRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateInternetGatewayRequest AWS API Documentation
    #
    class CreateInternetGatewayRequest < Struct.new(
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CreateInternetGateway.
    #
    # @!attribute [rw] internet_gateway
    #   Information about the Internet gateway.
    #   @return [Types::InternetGateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateInternetGatewayResult AWS API Documentation
    #
    class CreateInternetGatewayResult < Struct.new(
      :internet_gateway)
      include Aws::Structure
    end

    # Contains the parameters for CreateKeyPair.
    #
    # @note When making an API call, you may pass CreateKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         key_name: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] key_name
    #   A unique name for the key pair.
    #
    #   Constraints: Up to 255 ASCII characters
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateKeyPairRequest AWS API Documentation
    #
    class CreateKeyPairRequest < Struct.new(
      :key_name,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for CreateNatGateway.
    #
    # @note When making an API call, you may pass CreateNatGatewayRequest
    #   data as a hash:
    #
    #       {
    #         allocation_id: "String", # required
    #         client_token: "String",
    #         subnet_id: "String", # required
    #       }
    #
    # @!attribute [rw] allocation_id
    #   The allocation ID of an Elastic IP address to associate with the NAT
    #   gateway. If the Elastic IP address is associated with another
    #   resource, you must first disassociate it.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [How to Ensure
    #   Idempotency][1].
    #
    #   Constraint: Maximum 64 ASCII characters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The subnet in which to create the NAT gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNatGatewayRequest AWS API Documentation
    #
    class CreateNatGatewayRequest < Struct.new(
      :allocation_id,
      :client_token,
      :subnet_id)
      include Aws::Structure
    end

    # Contains the output of CreateNatGateway.
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier to ensure the idempotency of the
    #   request. Only returned if a client token was provided in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] nat_gateway
    #   Information about the NAT gateway.
    #   @return [Types::NatGateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNatGatewayResult AWS API Documentation
    #
    class CreateNatGatewayResult < Struct.new(
      :client_token,
      :nat_gateway)
      include Aws::Structure
    end

    # Contains the parameters for CreateNetworkAclEntry.
    #
    # @note When making an API call, you may pass CreateNetworkAclEntryRequest
    #   data as a hash:
    #
    #       {
    #         cidr_block: "String",
    #         dry_run: false,
    #         egress: false, # required
    #         icmp_type_code: {
    #           code: 1,
    #           type: 1,
    #         },
    #         ipv_6_cidr_block: "String",
    #         network_acl_id: "String", # required
    #         port_range: {
    #           from: 1,
    #           to: 1,
    #         },
    #         protocol: "String", # required
    #         rule_action: "allow", # required, accepts allow, deny
    #         rule_number: 1, # required
    #       }
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 network range to allow or deny, in CIDR notation (for
    #   example `172.16.0.0/24`).
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] egress
    #   Indicates whether this is an egress rule (rule is applied to traffic
    #   leaving the subnet).
    #   @return [Boolean]
    #
    # @!attribute [rw] icmp_type_code
    #   ICMP protocol: The ICMP or ICMPv6 type and code. Required if
    #   specifying the ICMP protocol, or protocol 58 (ICMPv6) with an IPv6
    #   CIDR block.
    #   @return [Types::IcmpTypeCode]
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 network range to allow or deny, in CIDR notation (for
    #   example `2001:db8:1234:1a00::/64`).
    #   @return [String]
    #
    # @!attribute [rw] network_acl_id
    #   The ID of the network ACL.
    #   @return [String]
    #
    # @!attribute [rw] port_range
    #   TCP or UDP protocols: The range of ports the rule applies to.
    #   @return [Types::PortRange]
    #
    # @!attribute [rw] protocol
    #   The protocol. A value of `-1` or `all` means all protocols. If you
    #   specify `all`, `-1`, or a protocol number other than `tcp`, `udp`,
    #   or `icmp`, traffic on all ports is allowed, regardless of any ports
    #   or ICMP types or codes you specify. If you specify protocol `58`
    #   (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types
    #   and codes allowed, regardless of any that you specify. If you
    #   specify protocol `58` (ICMPv6) and specify an IPv6 CIDR block, you
    #   must specify an ICMP type and code.
    #   @return [String]
    #
    # @!attribute [rw] rule_action
    #   Indicates whether to allow or deny the traffic that matches the
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_number
    #   The rule number for the entry (for example, 100). ACL entries are
    #   processed in ascending order by rule number.
    #
    #   Constraints: Positive integer from 1 to 32766. The range 32767 to
    #   65535 is reserved for internal use.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkAclEntryRequest AWS API Documentation
    #
    class CreateNetworkAclEntryRequest < Struct.new(
      :cidr_block,
      :dry_run,
      :egress,
      :icmp_type_code,
      :ipv_6_cidr_block,
      :network_acl_id,
      :port_range,
      :protocol,
      :rule_action,
      :rule_number)
      include Aws::Structure
    end

    # Contains the parameters for CreateNetworkAcl.
    #
    # @note When making an API call, you may pass CreateNetworkAclRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkAclRequest AWS API Documentation
    #
    class CreateNetworkAclRequest < Struct.new(
      :dry_run,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the output of CreateNetworkAcl.
    #
    # @!attribute [rw] network_acl
    #   Information about the network ACL.
    #   @return [Types::NetworkAcl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkAclResult AWS API Documentation
    #
    class CreateNetworkAclResult < Struct.new(
      :network_acl)
      include Aws::Structure
    end

    # Contains the parameters for CreateNetworkInterfacePermission.
    #
    # @note When making an API call, you may pass CreateNetworkInterfacePermissionRequest
    #   data as a hash:
    #
    #       {
    #         network_interface_id: "String", # required
    #         aws_account_id: "String",
    #         aws_service: "String",
    #         permission: "INSTANCE-ATTACH", # required, accepts INSTANCE-ATTACH, EIP-ASSOCIATE
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_service
    #   The AWS service. Currently not supported.
    #   @return [String]
    #
    # @!attribute [rw] permission
    #   The type of permission to grant.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkInterfacePermissionRequest AWS API Documentation
    #
    class CreateNetworkInterfacePermissionRequest < Struct.new(
      :network_interface_id,
      :aws_account_id,
      :aws_service,
      :permission,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CreateNetworkInterfacePermission.
    #
    # @!attribute [rw] interface_permission
    #   Information about the permission for the network interface.
    #   @return [Types::NetworkInterfacePermission]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkInterfacePermissionResult AWS API Documentation
    #
    class CreateNetworkInterfacePermissionResult < Struct.new(
      :interface_permission)
      include Aws::Structure
    end

    # Contains the parameters for CreateNetworkInterface.
    #
    # @note When making an API call, you may pass CreateNetworkInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         dry_run: false,
    #         groups: ["String"],
    #         ipv_6_address_count: 1,
    #         ipv_6_addresses: [
    #           {
    #             ipv_6_address: "String",
    #           },
    #         ],
    #         private_ip_address: "String",
    #         private_ip_addresses: [
    #           {
    #             primary: false,
    #             private_ip_address: "String", # required
    #           },
    #         ],
    #         secondary_private_ip_address_count: 1,
    #         subnet_id: "String", # required
    #       }
    #
    # @!attribute [rw] description
    #   A description for the network interface.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   The IDs of one or more security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ipv_6_address_count
    #   The number of IPv6 addresses to assign to a network interface.
    #   Amazon EC2 automatically selects the IPv6 addresses from the subnet
    #   range. You can't use this option if specifying specific IPv6
    #   addresses. If your subnet has the `AssignIpv6AddressOnCreation`
    #   attribute set to `true`, you can specify `0` to override this
    #   setting.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_6_addresses
    #   One or more specific IPv6 addresses from the IPv6 CIDR block range
    #   of your subnet. You can't use this option if you're specifying a
    #   number of IPv6 addresses.
    #   @return [Array<Types::InstanceIpv6Address>]
    #
    # @!attribute [rw] private_ip_address
    #   The primary private IPv4 address of the network interface. If you
    #   don't specify an IPv4 address, Amazon EC2 selects one for you from
    #   the subnet's IPv4 CIDR range. If you specify an IP address, you
    #   cannot indicate any IP addresses specified in `privateIpAddresses`
    #   as primary (only one IP address can be designated as primary).
    #   @return [String]
    #
    # @!attribute [rw] private_ip_addresses
    #   One or more private IPv4 addresses.
    #   @return [Array<Types::PrivateIpAddressSpecification>]
    #
    # @!attribute [rw] secondary_private_ip_address_count
    #   The number of secondary private IPv4 addresses to assign to a
    #   network interface. When you specify a number of secondary IPv4
    #   addresses, Amazon EC2 selects these IP addresses within the
    #   subnet's IPv4 CIDR range. You can't specify this option and
    #   specify more than one private IP address using `privateIpAddresses`.
    #
    #   The number of IP addresses you can assign to a network interface
    #   varies by instance type. For more information, see [IP Addresses Per
    #   ENI Per Instance Type][1] in the *Amazon Virtual Private Cloud User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet to associate with the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkInterfaceRequest AWS API Documentation
    #
    class CreateNetworkInterfaceRequest < Struct.new(
      :description,
      :dry_run,
      :groups,
      :ipv_6_address_count,
      :ipv_6_addresses,
      :private_ip_address,
      :private_ip_addresses,
      :secondary_private_ip_address_count,
      :subnet_id)
      include Aws::Structure
    end

    # Contains the output of CreateNetworkInterface.
    #
    # @!attribute [rw] network_interface
    #   Information about the network interface.
    #   @return [Types::NetworkInterface]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateNetworkInterfaceResult AWS API Documentation
    #
    class CreateNetworkInterfaceResult < Struct.new(
      :network_interface)
      include Aws::Structure
    end

    # Contains the parameters for CreatePlacementGroup.
    #
    # @note When making an API call, you may pass CreatePlacementGroupRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         group_name: "String", # required
    #         strategy: "cluster", # required, accepts cluster
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] group_name
    #   A name for the placement group.
    #
    #   Constraints: Up to 255 ASCII characters
    #   @return [String]
    #
    # @!attribute [rw] strategy
    #   The placement strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreatePlacementGroupRequest AWS API Documentation
    #
    class CreatePlacementGroupRequest < Struct.new(
      :dry_run,
      :group_name,
      :strategy)
      include Aws::Structure
    end

    # Contains the parameters for CreateReservedInstancesListing.
    #
    # @note When making an API call, you may pass CreateReservedInstancesListingRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "String", # required
    #         instance_count: 1, # required
    #         price_schedules: [ # required
    #           {
    #             currency_code: "USD", # accepts USD
    #             price: 1.0,
    #             term: 1,
    #           },
    #         ],
    #         reserved_instances_id: "String", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency
    #   of your listings. This helps avoid duplicate listings. For more
    #   information, see [Ensuring Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of instances that are a part of a Reserved Instance
    #   account to be listed in the Reserved Instance Marketplace. This
    #   number should be less than or equal to the instance count associated
    #   with the Reserved Instance ID specified in this call.
    #   @return [Integer]
    #
    # @!attribute [rw] price_schedules
    #   A list specifying the price of the Standard Reserved Instance for
    #   each month remaining in the Reserved Instance term.
    #   @return [Array<Types::PriceScheduleSpecification>]
    #
    # @!attribute [rw] reserved_instances_id
    #   The ID of the active Standard Reserved Instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateReservedInstancesListingRequest AWS API Documentation
    #
    class CreateReservedInstancesListingRequest < Struct.new(
      :client_token,
      :instance_count,
      :price_schedules,
      :reserved_instances_id)
      include Aws::Structure
    end

    # Contains the output of CreateReservedInstancesListing.
    #
    # @!attribute [rw] reserved_instances_listings
    #   Information about the Standard Reserved Instance listing.
    #   @return [Array<Types::ReservedInstancesListing>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateReservedInstancesListingResult AWS API Documentation
    #
    class CreateReservedInstancesListingResult < Struct.new(
      :reserved_instances_listings)
      include Aws::Structure
    end

    # Contains the parameters for CreateRoute.
    #
    # @note When making an API call, you may pass CreateRouteRequest
    #   data as a hash:
    #
    #       {
    #         destination_cidr_block: "String",
    #         destination_ipv_6_cidr_block: "String",
    #         dry_run: false,
    #         egress_only_internet_gateway_id: "String",
    #         gateway_id: "String",
    #         instance_id: "String",
    #         nat_gateway_id: "String",
    #         network_interface_id: "String",
    #         route_table_id: "String", # required
    #         vpc_peering_connection_id: "String",
    #       }
    #
    # @!attribute [rw] destination_cidr_block
    #   The IPv4 CIDR address block used for the destination match. Routing
    #   decisions are based on the most specific match.
    #   @return [String]
    #
    # @!attribute [rw] destination_ipv_6_cidr_block
    #   The IPv6 CIDR block used for the destination match. Routing
    #   decisions are based on the most specific match.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] egress_only_internet_gateway_id
    #   \[IPv6 traffic only\] The ID of an egress-only Internet gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The ID of an Internet gateway or virtual private gateway attached to
    #   your VPC.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of a NAT instance in your VPC. The operation fails if you
    #   specify an instance ID unless exactly one network interface is
    #   attached.
    #   @return [String]
    #
    # @!attribute [rw] nat_gateway_id
    #   \[IPv4 traffic only\] The ID of a NAT gateway.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of a network interface.
    #   @return [String]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table for the route.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of a VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateRouteRequest AWS API Documentation
    #
    class CreateRouteRequest < Struct.new(
      :destination_cidr_block,
      :destination_ipv_6_cidr_block,
      :dry_run,
      :egress_only_internet_gateway_id,
      :gateway_id,
      :instance_id,
      :nat_gateway_id,
      :network_interface_id,
      :route_table_id,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # Contains the output of CreateRoute.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateRouteResult AWS API Documentation
    #
    class CreateRouteResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for CreateRouteTable.
    #
    # @note When making an API call, you may pass CreateRouteTableRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateRouteTableRequest AWS API Documentation
    #
    class CreateRouteTableRequest < Struct.new(
      :dry_run,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the output of CreateRouteTable.
    #
    # @!attribute [rw] route_table
    #   Information about the route table.
    #   @return [Types::RouteTable]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateRouteTableResult AWS API Documentation
    #
    class CreateRouteTableResult < Struct.new(
      :route_table)
      include Aws::Structure
    end

    # Contains the parameters for CreateSecurityGroup.
    #
    # @note When making an API call, you may pass CreateSecurityGroupRequest
    #   data as a hash:
    #
    #       {
    #         description: "String", # required
    #         group_name: "String", # required
    #         vpc_id: "String",
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] description
    #   A description for the security group. This is informational only.
    #
    #   Constraints: Up to 255 characters in length
    #
    #   Constraints for EC2-Classic: ASCII characters
    #
    #   Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
    #   .\_-:/()#,@\[\]+=&amp;;\\\{\\}!$*
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #
    #   Constraints: Up to 255 characters in length
    #
    #   Constraints for EC2-Classic: ASCII characters
    #
    #   Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
    #   .\_-:/()#,@\[\]+=&amp;;\\\{\\}!$*
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   \[EC2-VPC\] The ID of the VPC. Required for EC2-VPC.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSecurityGroupRequest AWS API Documentation
    #
    class CreateSecurityGroupRequest < Struct.new(
      :description,
      :group_name,
      :vpc_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CreateSecurityGroup.
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSecurityGroupResult AWS API Documentation
    #
    class CreateSecurityGroupResult < Struct.new(
      :group_id)
      include Aws::Structure
    end

    # Contains the parameters for CreateSnapshot.
    #
    # @note When making an API call, you may pass CreateSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         volume_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] description
    #   A description for the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The ID of the EBS volume.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSnapshotRequest AWS API Documentation
    #
    class CreateSnapshotRequest < Struct.new(
      :description,
      :volume_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for CreateSpotDatafeedSubscription.
    #
    # @note When making an API call, you may pass CreateSpotDatafeedSubscriptionRequest
    #   data as a hash:
    #
    #       {
    #         bucket: "String", # required
    #         dry_run: false,
    #         prefix: "String",
    #       }
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket in which to store the Spot instance data feed.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] prefix
    #   A prefix for the data feed file names.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSpotDatafeedSubscriptionRequest AWS API Documentation
    #
    class CreateSpotDatafeedSubscriptionRequest < Struct.new(
      :bucket,
      :dry_run,
      :prefix)
      include Aws::Structure
    end

    # Contains the output of CreateSpotDatafeedSubscription.
    #
    # @!attribute [rw] spot_datafeed_subscription
    #   The Spot instance data feed subscription.
    #   @return [Types::SpotDatafeedSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSpotDatafeedSubscriptionResult AWS API Documentation
    #
    class CreateSpotDatafeedSubscriptionResult < Struct.new(
      :spot_datafeed_subscription)
      include Aws::Structure
    end

    # Contains the parameters for CreateSubnet.
    #
    # @note When making an API call, you may pass CreateSubnetRequest
    #   data as a hash:
    #
    #       {
    #         availability_zone: "String",
    #         cidr_block: "String", # required
    #         ipv_6_cidr_block: "String",
    #         vpc_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the subnet.
    #
    #   Default: AWS selects one for you. If you create more than one subnet
    #   in your VPC, we may not necessarily select a different zone for each
    #   subnet.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 network range for the subnet, in CIDR notation. For
    #   example, `10.0.0.0/24`.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 network range for the subnet, in CIDR notation. The subnet
    #   size must use a /64 prefix length.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSubnetRequest AWS API Documentation
    #
    class CreateSubnetRequest < Struct.new(
      :availability_zone,
      :cidr_block,
      :ipv_6_cidr_block,
      :vpc_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CreateSubnet.
    #
    # @!attribute [rw] subnet
    #   Information about the subnet.
    #   @return [Types::Subnet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateSubnetResult AWS API Documentation
    #
    class CreateSubnetResult < Struct.new(
      :subnet)
      include Aws::Structure
    end

    # Contains the parameters for CreateTags.
    #
    # @note When making an API call, you may pass CreateTagsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         resources: ["String"], # required
    #         tags: [ # required
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] resources
    #   The IDs of one or more resources to tag. For example, ami-1a2b3c4d.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   One or more tags. The `value` parameter is required, but if you
    #   don't want the tag to have a value, specify the parameter with no
    #   value, and we set the value to an empty string.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateTagsRequest AWS API Documentation
    #
    class CreateTagsRequest < Struct.new(
      :dry_run,
      :resources,
      :tags)
      include Aws::Structure
    end

    # Describes the user or group to be added or removed from the
    # permissions for a volume.
    #
    # @note When making an API call, you may pass CreateVolumePermission
    #   data as a hash:
    #
    #       {
    #         group: "all", # accepts all
    #         user_id: "String",
    #       }
    #
    # @!attribute [rw] group
    #   The specific group that is to be added or removed from a volume's
    #   list of create volume permissions.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The specific AWS account ID that is to be added or removed from a
    #   volume's list of create volume permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVolumePermission AWS API Documentation
    #
    class CreateVolumePermission < Struct.new(
      :group,
      :user_id)
      include Aws::Structure
    end

    # Describes modifications to the permissions for a volume.
    #
    # @note When making an API call, you may pass CreateVolumePermissionModifications
    #   data as a hash:
    #
    #       {
    #         add: [
    #           {
    #             group: "all", # accepts all
    #             user_id: "String",
    #           },
    #         ],
    #         remove: [
    #           {
    #             group: "all", # accepts all
    #             user_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] add
    #   Adds a specific AWS account ID or group to a volume's list of
    #   create volume permissions.
    #   @return [Array<Types::CreateVolumePermission>]
    #
    # @!attribute [rw] remove
    #   Removes a specific AWS account ID or group from a volume's list of
    #   create volume permissions.
    #   @return [Array<Types::CreateVolumePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVolumePermissionModifications AWS API Documentation
    #
    class CreateVolumePermissionModifications < Struct.new(
      :add,
      :remove)
      include Aws::Structure
    end

    # Contains the parameters for CreateVolume.
    #
    # @note When making an API call, you may pass CreateVolumeRequest
    #   data as a hash:
    #
    #       {
    #         availability_zone: "String", # required
    #         encrypted: false,
    #         iops: 1,
    #         kms_key_id: "String",
    #         size: 1,
    #         snapshot_id: "String",
    #         volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #         dry_run: false,
    #         tag_specifications: [
    #           {
    #             resource_type: "customer-gateway", # accepts customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which to create the volume. Use
    #   DescribeAvailabilityZones to list the Availability Zones that are
    #   currently available to you.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether the volume should be encrypted. Encrypted Amazon
    #   EBS volumes may only be attached to instances that support Amazon
    #   EBS encryption. Volumes that are created from encrypted snapshots
    #   are automatically encrypted. There is no way to create an encrypted
    #   volume from an unencrypted snapshot or vice versa. If your AMI uses
    #   encrypted volumes, you can only launch it on supported instance
    #   types. For more information, see [Amazon EBS Encryption][1] in the
    #   *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   Only valid for Provisioned IOPS SSD volumes. The number of I/O
    #   operations per second (IOPS) to provision for the volume, with a
    #   maximum ratio of 50 IOPS/GiB.
    #
    #   Constraint: Range is 100 to 20000 for Provisioned IOPS SSD volumes
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   The full ARN of the AWS Key Management Service (AWS KMS) customer
    #   master key (CMK) to use when creating the encrypted volume. This
    #   parameter is only required if you want to use a non-default CMK; if
    #   this parameter is not specified, the default CMK for EBS is used.
    #   The ARN contains the `arn:aws:kms` namespace, followed by the region
    #   of the CMK, the AWS account ID of the CMK owner, the `key`
    #   namespace, and then the CMK ID. For example,
    #   arn:aws:kms:*us-east-1*\:*012345678910*\:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
    #   If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the volume, in GiBs.
    #
    #   Constraints: 1-16384 for `gp2`, 4-16384 for `io1`, 500-16384 for
    #   `st1`, 500-16384 for `sc1`, and 1-1024 for `standard`. If you
    #   specify a snapshot, the volume size must be equal to or larger than
    #   the snapshot size.
    #
    #   Default: If you're creating the volume from a snapshot and don't
    #   specify a volume size, the default is the snapshot size.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot from which to create the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The volume type. This can be `gp2` for General Purpose SSD, `io1`
    #   for Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1`
    #   for Cold HDD, or `standard` for Magnetic volumes.
    #
    #   Default: `standard`
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tag_specifications
    #   The tags to apply to the volume during creation.
    #   @return [Array<Types::TagSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVolumeRequest AWS API Documentation
    #
    class CreateVolumeRequest < Struct.new(
      :availability_zone,
      :encrypted,
      :iops,
      :kms_key_id,
      :size,
      :snapshot_id,
      :volume_type,
      :dry_run,
      :tag_specifications)
      include Aws::Structure
    end

    # Contains the parameters for CreateVpcEndpoint.
    #
    # @note When making an API call, you may pass CreateVpcEndpointRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         dry_run: false,
    #         policy_document: "String",
    #         route_table_ids: ["String"],
    #         service_name: "String", # required
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [How to Ensure
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] policy_document
    #   A policy to attach to the endpoint that controls access to the
    #   service. The policy must be in valid JSON format. If this parameter
    #   is not specified, we attach a default policy that allows full access
    #   to the service.
    #   @return [String]
    #
    # @!attribute [rw] route_table_ids
    #   One or more route table IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_name
    #   The AWS service name, in the form `com.amazonaws.region.service `.
    #   To get a list of available services, use the
    #   DescribeVpcEndpointServices request.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC in which the endpoint will be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcEndpointRequest AWS API Documentation
    #
    class CreateVpcEndpointRequest < Struct.new(
      :client_token,
      :dry_run,
      :policy_document,
      :route_table_ids,
      :service_name,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the output of CreateVpcEndpoint.
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint
    #   Information about the endpoint.
    #   @return [Types::VpcEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcEndpointResult AWS API Documentation
    #
    class CreateVpcEndpointResult < Struct.new(
      :client_token,
      :vpc_endpoint)
      include Aws::Structure
    end

    # Contains the parameters for CreateVpcPeeringConnection.
    #
    # @note When making an API call, you may pass CreateVpcPeeringConnectionRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         peer_owner_id: "String",
    #         peer_vpc_id: "String",
    #         vpc_id: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] peer_owner_id
    #   The AWS account ID of the owner of the peer VPC.
    #
    #   Default: Your AWS account ID
    #   @return [String]
    #
    # @!attribute [rw] peer_vpc_id
    #   The ID of the VPC with which you are creating the VPC peering
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the requester VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcPeeringConnectionRequest AWS API Documentation
    #
    class CreateVpcPeeringConnectionRequest < Struct.new(
      :dry_run,
      :peer_owner_id,
      :peer_vpc_id,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the output of CreateVpcPeeringConnection.
    #
    # @!attribute [rw] vpc_peering_connection
    #   Information about the VPC peering connection.
    #   @return [Types::VpcPeeringConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcPeeringConnectionResult AWS API Documentation
    #
    class CreateVpcPeeringConnectionResult < Struct.new(
      :vpc_peering_connection)
      include Aws::Structure
    end

    # Contains the parameters for CreateVpc.
    #
    # @note When making an API call, you may pass CreateVpcRequest
    #   data as a hash:
    #
    #       {
    #         cidr_block: "String", # required
    #         amazon_provided_ipv_6_cidr_block: false,
    #         dry_run: false,
    #         instance_tenancy: "default", # accepts default, dedicated, host
    #       }
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 network range for the VPC, in CIDR notation. For example,
    #   `10.0.0.0/16`.
    #   @return [String]
    #
    # @!attribute [rw] amazon_provided_ipv_6_cidr_block
    #   Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length
    #   for the VPC. You cannot specify the range of IP addresses, or the
    #   size of the CIDR block.
    #   @return [Boolean]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_tenancy
    #   The tenancy options for instances launched into the VPC. For
    #   `default`, instances are launched with shared tenancy by default.
    #   You can launch instances with any tenancy into a shared tenancy VPC.
    #   For `dedicated`, instances are launched as dedicated tenancy
    #   instances by default. You can only launch instances with a tenancy
    #   of `dedicated` or `host` into a dedicated tenancy VPC.
    #
    #   **Important:** The `host` value cannot be used with this parameter.
    #   Use the `default` or `dedicated` values only.
    #
    #   Default: `default`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcRequest AWS API Documentation
    #
    class CreateVpcRequest < Struct.new(
      :cidr_block,
      :amazon_provided_ipv_6_cidr_block,
      :dry_run,
      :instance_tenancy)
      include Aws::Structure
    end

    # Contains the output of CreateVpc.
    #
    # @!attribute [rw] vpc
    #   Information about the VPC.
    #   @return [Types::Vpc]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpcResult AWS API Documentation
    #
    class CreateVpcResult < Struct.new(
      :vpc)
      include Aws::Structure
    end

    # Contains the parameters for CreateVpnConnection.
    #
    # @note When making an API call, you may pass CreateVpnConnectionRequest
    #   data as a hash:
    #
    #       {
    #         customer_gateway_id: "String", # required
    #         type: "String", # required
    #         vpn_gateway_id: "String", # required
    #         dry_run: false,
    #         options: {
    #           static_routes_only: false,
    #           tunnel_options: [
    #             {
    #               tunnel_inside_cidr: "String",
    #               pre_shared_key: "String",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] customer_gateway_id
    #   The ID of the customer gateway.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of VPN connection (`ipsec.1`).
    #   @return [String]
    #
    # @!attribute [rw] vpn_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] options
    #   The options for the VPN connection.
    #   @return [Types::VpnConnectionOptionsSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnConnectionRequest AWS API Documentation
    #
    class CreateVpnConnectionRequest < Struct.new(
      :customer_gateway_id,
      :type,
      :vpn_gateway_id,
      :dry_run,
      :options)
      include Aws::Structure
    end

    # Contains the output of CreateVpnConnection.
    #
    # @!attribute [rw] vpn_connection
    #   Information about the VPN connection.
    #   @return [Types::VpnConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnConnectionResult AWS API Documentation
    #
    class CreateVpnConnectionResult < Struct.new(
      :vpn_connection)
      include Aws::Structure
    end

    # Contains the parameters for CreateVpnConnectionRoute.
    #
    # @note When making an API call, you may pass CreateVpnConnectionRouteRequest
    #   data as a hash:
    #
    #       {
    #         destination_cidr_block: "String", # required
    #         vpn_connection_id: "String", # required
    #       }
    #
    # @!attribute [rw] destination_cidr_block
    #   The CIDR block associated with the local subnet of the customer
    #   network.
    #   @return [String]
    #
    # @!attribute [rw] vpn_connection_id
    #   The ID of the VPN connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnConnectionRouteRequest AWS API Documentation
    #
    class CreateVpnConnectionRouteRequest < Struct.new(
      :destination_cidr_block,
      :vpn_connection_id)
      include Aws::Structure
    end

    # Contains the parameters for CreateVpnGateway.
    #
    # @note When making an API call, you may pass CreateVpnGatewayRequest
    #   data as a hash:
    #
    #       {
    #         availability_zone: "String",
    #         type: "ipsec.1", # required, accepts ipsec.1
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of VPN connection this virtual private gateway supports.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnGatewayRequest AWS API Documentation
    #
    class CreateVpnGatewayRequest < Struct.new(
      :availability_zone,
      :type,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of CreateVpnGateway.
    #
    # @!attribute [rw] vpn_gateway
    #   Information about the virtual private gateway.
    #   @return [Types::VpnGateway]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CreateVpnGatewayResult AWS API Documentation
    #
    class CreateVpnGatewayResult < Struct.new(
      :vpn_gateway)
      include Aws::Structure
    end

    # Describes a customer gateway.
    #
    # @!attribute [rw] bgp_asn
    #   The customer gateway's Border Gateway Protocol (BGP) Autonomous
    #   System Number (ASN).
    #   @return [String]
    #
    # @!attribute [rw] customer_gateway_id
    #   The ID of the customer gateway.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The Internet-routable IP address of the customer gateway's outside
    #   interface.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the customer gateway (`pending | available |
    #   deleting | deleted`).
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of VPN connection the customer gateway supports
    #   (`ipsec.1`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the customer gateway.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/CustomerGateway AWS API Documentation
    #
    class CustomerGateway < Struct.new(
      :bgp_asn,
      :customer_gateway_id,
      :ip_address,
      :state,
      :type,
      :tags)
      include Aws::Structure
    end

    # Contains the parameters for DeleteCustomerGateway.
    #
    # @note When making an API call, you may pass DeleteCustomerGatewayRequest
    #   data as a hash:
    #
    #       {
    #         customer_gateway_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] customer_gateway_id
    #   The ID of the customer gateway.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteCustomerGatewayRequest AWS API Documentation
    #
    class DeleteCustomerGatewayRequest < Struct.new(
      :customer_gateway_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DeleteDhcpOptions.
    #
    # @note When making an API call, you may pass DeleteDhcpOptionsRequest
    #   data as a hash:
    #
    #       {
    #         dhcp_options_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] dhcp_options_id
    #   The ID of the DHCP options set.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteDhcpOptionsRequest AWS API Documentation
    #
    class DeleteDhcpOptionsRequest < Struct.new(
      :dhcp_options_id,
      :dry_run)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEgressOnlyInternetGatewayRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         egress_only_internet_gateway_id: "EgressOnlyInternetGatewayId", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] egress_only_internet_gateway_id
    #   The ID of the egress-only Internet gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteEgressOnlyInternetGatewayRequest AWS API Documentation
    #
    class DeleteEgressOnlyInternetGatewayRequest < Struct.new(
      :dry_run,
      :egress_only_internet_gateway_id)
      include Aws::Structure
    end

    # @!attribute [rw] return_code
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteEgressOnlyInternetGatewayResult AWS API Documentation
    #
    class DeleteEgressOnlyInternetGatewayResult < Struct.new(
      :return_code)
      include Aws::Structure
    end

    # Contains the parameters for DeleteFlowLogs.
    #
    # @note When making an API call, you may pass DeleteFlowLogsRequest
    #   data as a hash:
    #
    #       {
    #         flow_log_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] flow_log_ids
    #   One or more flow log IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteFlowLogsRequest AWS API Documentation
    #
    class DeleteFlowLogsRequest < Struct.new(
      :flow_log_ids)
      include Aws::Structure
    end

    # Contains the output of DeleteFlowLogs.
    #
    # @!attribute [rw] unsuccessful
    #   Information about the flow logs that could not be deleted
    #   successfully.
    #   @return [Array<Types::UnsuccessfulItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteFlowLogsResult AWS API Documentation
    #
    class DeleteFlowLogsResult < Struct.new(
      :unsuccessful)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFpgaImageRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         fpga_image_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] fpga_image_id
    #   The ID of the AFI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteFpgaImageRequest AWS API Documentation
    #
    class DeleteFpgaImageRequest < Struct.new(
      :dry_run,
      :fpga_image_id)
      include Aws::Structure
    end

    # @!attribute [rw] return
    #   Is `true` if the request succeeds, and an error otherwise.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteFpgaImageResult AWS API Documentation
    #
    class DeleteFpgaImageResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for DeleteInternetGateway.
    #
    # @note When making an API call, you may pass DeleteInternetGatewayRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         internet_gateway_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] internet_gateway_id
    #   The ID of the Internet gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteInternetGatewayRequest AWS API Documentation
    #
    class DeleteInternetGatewayRequest < Struct.new(
      :dry_run,
      :internet_gateway_id)
      include Aws::Structure
    end

    # Contains the parameters for DeleteKeyPair.
    #
    # @note When making an API call, you may pass DeleteKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         key_name: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] key_name
    #   The name of the key pair.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteKeyPairRequest AWS API Documentation
    #
    class DeleteKeyPairRequest < Struct.new(
      :key_name,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DeleteNatGateway.
    #
    # @note When making an API call, you may pass DeleteNatGatewayRequest
    #   data as a hash:
    #
    #       {
    #         nat_gateway_id: "String", # required
    #       }
    #
    # @!attribute [rw] nat_gateway_id
    #   The ID of the NAT gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNatGatewayRequest AWS API Documentation
    #
    class DeleteNatGatewayRequest < Struct.new(
      :nat_gateway_id)
      include Aws::Structure
    end

    # Contains the output of DeleteNatGateway.
    #
    # @!attribute [rw] nat_gateway_id
    #   The ID of the NAT gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNatGatewayResult AWS API Documentation
    #
    class DeleteNatGatewayResult < Struct.new(
      :nat_gateway_id)
      include Aws::Structure
    end

    # Contains the parameters for DeleteNetworkAclEntry.
    #
    # @note When making an API call, you may pass DeleteNetworkAclEntryRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         egress: false, # required
    #         network_acl_id: "String", # required
    #         rule_number: 1, # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] egress
    #   Indicates whether the rule is an egress rule.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_acl_id
    #   The ID of the network ACL.
    #   @return [String]
    #
    # @!attribute [rw] rule_number
    #   The rule number of the entry to delete.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkAclEntryRequest AWS API Documentation
    #
    class DeleteNetworkAclEntryRequest < Struct.new(
      :dry_run,
      :egress,
      :network_acl_id,
      :rule_number)
      include Aws::Structure
    end

    # Contains the parameters for DeleteNetworkAcl.
    #
    # @note When making an API call, you may pass DeleteNetworkAclRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         network_acl_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_acl_id
    #   The ID of the network ACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkAclRequest AWS API Documentation
    #
    class DeleteNetworkAclRequest < Struct.new(
      :dry_run,
      :network_acl_id)
      include Aws::Structure
    end

    # Contains the parameters for DeleteNetworkInterfacePermission.
    #
    # @note When making an API call, you may pass DeleteNetworkInterfacePermissionRequest
    #   data as a hash:
    #
    #       {
    #         network_interface_permission_id: "String", # required
    #         force: false,
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] network_interface_permission_id
    #   The ID of the network interface permission.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Specify `true` to remove the permission even if the network
    #   interface is attached to an instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkInterfacePermissionRequest AWS API Documentation
    #
    class DeleteNetworkInterfacePermissionRequest < Struct.new(
      :network_interface_permission_id,
      :force,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output for DeleteNetworkInterfacePermission.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds, otherwise returns an error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkInterfacePermissionResult AWS API Documentation
    #
    class DeleteNetworkInterfacePermissionResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for DeleteNetworkInterface.
    #
    # @note When making an API call, you may pass DeleteNetworkInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         network_interface_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteNetworkInterfaceRequest AWS API Documentation
    #
    class DeleteNetworkInterfaceRequest < Struct.new(
      :dry_run,
      :network_interface_id)
      include Aws::Structure
    end

    # Contains the parameters for DeletePlacementGroup.
    #
    # @note When making an API call, you may pass DeletePlacementGroupRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         group_name: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] group_name
    #   The name of the placement group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeletePlacementGroupRequest AWS API Documentation
    #
    class DeletePlacementGroupRequest < Struct.new(
      :dry_run,
      :group_name)
      include Aws::Structure
    end

    # Contains the parameters for DeleteRoute.
    #
    # @note When making an API call, you may pass DeleteRouteRequest
    #   data as a hash:
    #
    #       {
    #         destination_cidr_block: "String",
    #         destination_ipv_6_cidr_block: "String",
    #         dry_run: false,
    #         route_table_id: "String", # required
    #       }
    #
    # @!attribute [rw] destination_cidr_block
    #   The IPv4 CIDR range for the route. The value you specify must match
    #   the CIDR for the route exactly.
    #   @return [String]
    #
    # @!attribute [rw] destination_ipv_6_cidr_block
    #   The IPv6 CIDR range for the route. The value you specify must match
    #   the CIDR for the route exactly.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteRouteRequest AWS API Documentation
    #
    class DeleteRouteRequest < Struct.new(
      :destination_cidr_block,
      :destination_ipv_6_cidr_block,
      :dry_run,
      :route_table_id)
      include Aws::Structure
    end

    # Contains the parameters for DeleteRouteTable.
    #
    # @note When making an API call, you may pass DeleteRouteTableRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         route_table_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteRouteTableRequest AWS API Documentation
    #
    class DeleteRouteTableRequest < Struct.new(
      :dry_run,
      :route_table_id)
      include Aws::Structure
    end

    # Contains the parameters for DeleteSecurityGroup.
    #
    # @note When making an API call, you may pass DeleteSecurityGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_id: "String",
    #         group_name: "String",
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] group_id
    #   The ID of the security group. Required for a nondefault VPC.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   \[EC2-Classic, default VPC\] The name of the security group. You can
    #   specify either the security group name or the security group ID.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSecurityGroupRequest AWS API Documentation
    #
    class DeleteSecurityGroupRequest < Struct.new(
      :group_id,
      :group_name,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DeleteSnapshot.
    #
    # @note When making an API call, you may pass DeleteSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         snapshot_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the EBS snapshot.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSnapshotRequest AWS API Documentation
    #
    class DeleteSnapshotRequest < Struct.new(
      :snapshot_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DeleteSpotDatafeedSubscription.
    #
    # @note When making an API call, you may pass DeleteSpotDatafeedSubscriptionRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSpotDatafeedSubscriptionRequest AWS API Documentation
    #
    class DeleteSpotDatafeedSubscriptionRequest < Struct.new(
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DeleteSubnet.
    #
    # @note When making an API call, you may pass DeleteSubnetRequest
    #   data as a hash:
    #
    #       {
    #         subnet_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteSubnetRequest AWS API Documentation
    #
    class DeleteSubnetRequest < Struct.new(
      :subnet_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DeleteTags.
    #
    # @note When making an API call, you may pass DeleteTagsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         resources: ["String"], # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] resources
    #   The IDs of one or more resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   One or more tags to delete. If you omit this parameter, we delete
    #   all tags for the specified resources. Specify a tag key and an
    #   optional tag value to delete specific tags. If you specify a tag key
    #   without a tag value, we delete any tag with this key regardless of
    #   its value. If you specify a tag key with an empty string as the tag
    #   value, we delete the tag only if its value is an empty string.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteTagsRequest AWS API Documentation
    #
    class DeleteTagsRequest < Struct.new(
      :dry_run,
      :resources,
      :tags)
      include Aws::Structure
    end

    # Contains the parameters for DeleteVolume.
    #
    # @note When making an API call, you may pass DeleteVolumeRequest
    #   data as a hash:
    #
    #       {
    #         volume_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVolumeRequest AWS API Documentation
    #
    class DeleteVolumeRequest < Struct.new(
      :volume_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DeleteVpcEndpoints.
    #
    # @note When making an API call, you may pass DeleteVpcEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         vpc_endpoint_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_endpoint_ids
    #   One or more endpoint IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcEndpointsRequest AWS API Documentation
    #
    class DeleteVpcEndpointsRequest < Struct.new(
      :dry_run,
      :vpc_endpoint_ids)
      include Aws::Structure
    end

    # Contains the output of DeleteVpcEndpoints.
    #
    # @!attribute [rw] unsuccessful
    #   Information about the endpoints that were not successfully deleted.
    #   @return [Array<Types::UnsuccessfulItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcEndpointsResult AWS API Documentation
    #
    class DeleteVpcEndpointsResult < Struct.new(
      :unsuccessful)
      include Aws::Structure
    end

    # Contains the parameters for DeleteVpcPeeringConnection.
    #
    # @note When making an API call, you may pass DeleteVpcPeeringConnectionRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         vpc_peering_connection_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcPeeringConnectionRequest AWS API Documentation
    #
    class DeleteVpcPeeringConnectionRequest < Struct.new(
      :dry_run,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # Contains the output of DeleteVpcPeeringConnection.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcPeeringConnectionResult AWS API Documentation
    #
    class DeleteVpcPeeringConnectionResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for DeleteVpc.
    #
    # @note When making an API call, you may pass DeleteVpcRequest
    #   data as a hash:
    #
    #       {
    #         vpc_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpcRequest AWS API Documentation
    #
    class DeleteVpcRequest < Struct.new(
      :vpc_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DeleteVpnConnection.
    #
    # @note When making an API call, you may pass DeleteVpnConnectionRequest
    #   data as a hash:
    #
    #       {
    #         vpn_connection_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] vpn_connection_id
    #   The ID of the VPN connection.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpnConnectionRequest AWS API Documentation
    #
    class DeleteVpnConnectionRequest < Struct.new(
      :vpn_connection_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DeleteVpnConnectionRoute.
    #
    # @note When making an API call, you may pass DeleteVpnConnectionRouteRequest
    #   data as a hash:
    #
    #       {
    #         destination_cidr_block: "String", # required
    #         vpn_connection_id: "String", # required
    #       }
    #
    # @!attribute [rw] destination_cidr_block
    #   The CIDR block associated with the local subnet of the customer
    #   network.
    #   @return [String]
    #
    # @!attribute [rw] vpn_connection_id
    #   The ID of the VPN connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpnConnectionRouteRequest AWS API Documentation
    #
    class DeleteVpnConnectionRouteRequest < Struct.new(
      :destination_cidr_block,
      :vpn_connection_id)
      include Aws::Structure
    end

    # Contains the parameters for DeleteVpnGateway.
    #
    # @note When making an API call, you may pass DeleteVpnGatewayRequest
    #   data as a hash:
    #
    #       {
    #         vpn_gateway_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] vpn_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeleteVpnGatewayRequest AWS API Documentation
    #
    class DeleteVpnGatewayRequest < Struct.new(
      :vpn_gateway_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DeregisterImage.
    #
    # @note When making an API call, you may pass DeregisterImageRequest
    #   data as a hash:
    #
    #       {
    #         image_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DeregisterImageRequest AWS API Documentation
    #
    class DeregisterImageRequest < Struct.new(
      :image_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DescribeAccountAttributes.
    #
    # @note When making an API call, you may pass DescribeAccountAttributesRequest
    #   data as a hash:
    #
    #       {
    #         attribute_names: ["supported-platforms"], # accepts supported-platforms, default-vpc
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] attribute_names
    #   One or more account attribute names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAccountAttributesRequest AWS API Documentation
    #
    class DescribeAccountAttributesRequest < Struct.new(
      :attribute_names,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeAccountAttributes.
    #
    # @!attribute [rw] account_attributes
    #   Information about one or more account attributes.
    #   @return [Array<Types::AccountAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAccountAttributesResult AWS API Documentation
    #
    class DescribeAccountAttributesResult < Struct.new(
      :account_attributes)
      include Aws::Structure
    end

    # Contains the parameters for DescribeAddresses.
    #
    # @note When making an API call, you may pass DescribeAddressesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         public_ips: ["String"],
    #         allocation_ids: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters. Filter names and values are case-sensitive.
    #
    #   * `allocation-id` - \[EC2-VPC\] The allocation ID for the address.
    #
    #   * `association-id` - \[EC2-VPC\] The association ID for the address.
    #
    #   * `domain` - Indicates whether the address is for use in EC2-Classic
    #     (`standard`) or in a VPC (`vpc`).
    #
    #   * `instance-id` - The ID of the instance the address is associated
    #     with, if any.
    #
    #   * `network-interface-id` - \[EC2-VPC\] The ID of the network
    #     interface that the address is associated with, if any.
    #
    #   * `network-interface-owner-id` - The AWS account ID of the owner.
    #
    #   * `private-ip-address` - \[EC2-VPC\] The private IP address
    #     associated with the Elastic IP address.
    #
    #   * `public-ip` - The Elastic IP address.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] public_ips
    #   \[EC2-Classic\] One or more Elastic IP addresses.
    #
    #   Default: Describes all your Elastic IP addresses.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allocation_ids
    #   \[EC2-VPC\] One or more allocation IDs.
    #
    #   Default: Describes all your Elastic IP addresses.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAddressesRequest AWS API Documentation
    #
    class DescribeAddressesRequest < Struct.new(
      :filters,
      :public_ips,
      :allocation_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeAddresses.
    #
    # @!attribute [rw] addresses
    #   Information about one or more Elastic IP addresses.
    #   @return [Array<Types::Address>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAddressesResult AWS API Documentation
    #
    class DescribeAddressesResult < Struct.new(
      :addresses)
      include Aws::Structure
    end

    # Contains the parameters for DescribeAvailabilityZones.
    #
    # @note When making an API call, you may pass DescribeAvailabilityZonesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         zone_names: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `message` - Information about the Availability Zone.
    #
    #   * `region-name` - The name of the region for the Availability Zone
    #     (for example, `us-east-1`).
    #
    #   * `state` - The state of the Availability Zone (`available` \|
    #     `information` \| `impaired` \| `unavailable`).
    #
    #   * `zone-name` - The name of the Availability Zone (for example,
    #     `us-east-1a`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] zone_names
    #   The names of one or more Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAvailabilityZonesRequest AWS API Documentation
    #
    class DescribeAvailabilityZonesRequest < Struct.new(
      :filters,
      :zone_names,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeAvailabiltyZones.
    #
    # @!attribute [rw] availability_zones
    #   Information about one or more Availability Zones.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeAvailabilityZonesResult AWS API Documentation
    #
    class DescribeAvailabilityZonesResult < Struct.new(
      :availability_zones)
      include Aws::Structure
    end

    # Contains the parameters for DescribeBundleTasks.
    #
    # @note When making an API call, you may pass DescribeBundleTasksRequest
    #   data as a hash:
    #
    #       {
    #         bundle_ids: ["String"],
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] bundle_ids
    #   One or more bundle task IDs.
    #
    #   Default: Describes all your bundle tasks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `bundle-id` - The ID of the bundle task.
    #
    #   * `error-code` - If the task failed, the error code returned.
    #
    #   * `error-message` - If the task failed, the error message returned.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `progress` - The level of task completion, as a percentage (for
    #     example, 20%).
    #
    #   * `s3-bucket` - The Amazon S3 bucket to store the AMI.
    #
    #   * `s3-prefix` - The beginning of the AMI name.
    #
    #   * `start-time` - The time the task started (for example,
    #     2013-09-15T17:15:20.000Z).
    #
    #   * `state` - The state of the task (`pending` \|
    #     `waiting-for-shutdown` \| `bundling` \| `storing` \| `cancelling`
    #     \| `complete` \| `failed`).
    #
    #   * `update-time` - The time of the most recent update for the task.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeBundleTasksRequest AWS API Documentation
    #
    class DescribeBundleTasksRequest < Struct.new(
      :bundle_ids,
      :filters,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeBundleTasks.
    #
    # @!attribute [rw] bundle_tasks
    #   Information about one or more bundle tasks.
    #   @return [Array<Types::BundleTask>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeBundleTasksResult AWS API Documentation
    #
    class DescribeBundleTasksResult < Struct.new(
      :bundle_tasks)
      include Aws::Structure
    end

    # Contains the parameters for DescribeClassicLinkInstances.
    #
    # @note When making an API call, you may pass DescribeClassicLinkInstancesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #         instance_ids: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `group-id` - The ID of a VPC security group that's associated
    #     with the instance.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC that the instance is linked to.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_ids
    #   One or more instance IDs. Must be instances linked to a VPC through
    #   ClassicLink.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results of the initial request can be seen by
    #   sending another request with the returned `NextToken` value. This
    #   value can be between 5 and 1000; if `MaxResults` is given a value
    #   larger than 1000, only 1000 results are returned. You cannot specify
    #   this parameter and the instance IDs parameter in the same request.
    #
    #   Constraint: If the value is greater than 1000, we return only 1000
    #   items.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeClassicLinkInstancesRequest AWS API Documentation
    #
    class DescribeClassicLinkInstancesRequest < Struct.new(
      :filters,
      :dry_run,
      :instance_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Contains the output of DescribeClassicLinkInstances.
    #
    # @!attribute [rw] instances
    #   Information about one or more linked EC2-Classic instances.
    #   @return [Array<Types::ClassicLinkInstance>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeClassicLinkInstancesResult AWS API Documentation
    #
    class DescribeClassicLinkInstancesResult < Struct.new(
      :instances,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeConversionTasks.
    #
    # @note When making an API call, you may pass DescribeConversionTasksRequest
    #   data as a hash:
    #
    #       {
    #         conversion_task_ids: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] conversion_task_ids
    #   One or more conversion task IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeConversionTasksRequest AWS API Documentation
    #
    class DescribeConversionTasksRequest < Struct.new(
      :conversion_task_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output for DescribeConversionTasks.
    #
    # @!attribute [rw] conversion_tasks
    #   Information about the conversion tasks.
    #   @return [Array<Types::ConversionTask>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeConversionTasksResult AWS API Documentation
    #
    class DescribeConversionTasksResult < Struct.new(
      :conversion_tasks)
      include Aws::Structure
    end

    # Contains the parameters for DescribeCustomerGateways.
    #
    # @note When making an API call, you may pass DescribeCustomerGatewaysRequest
    #   data as a hash:
    #
    #       {
    #         customer_gateway_ids: ["String"],
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] customer_gateway_ids
    #   One or more customer gateway IDs.
    #
    #   Default: Describes all your customer gateways.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `bgp-asn` - The customer gateway's Border Gateway Protocol (BGP)
    #     Autonomous System Number (ASN).
    #
    #   * `customer-gateway-id` - The ID of the customer gateway.
    #
    #   * `ip-address` - The IP address of the customer gateway's
    #     Internet-routable external interface.
    #
    #   * `state` - The state of the customer gateway (`pending` \|
    #     `available` \| `deleting` \| `deleted`).
    #
    #   * `type` - The type of customer gateway. Currently, the only
    #     supported type is `ipsec.1`.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeCustomerGatewaysRequest AWS API Documentation
    #
    class DescribeCustomerGatewaysRequest < Struct.new(
      :customer_gateway_ids,
      :filters,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeCustomerGateways.
    #
    # @!attribute [rw] customer_gateways
    #   Information about one or more customer gateways.
    #   @return [Array<Types::CustomerGateway>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeCustomerGatewaysResult AWS API Documentation
    #
    class DescribeCustomerGatewaysResult < Struct.new(
      :customer_gateways)
      include Aws::Structure
    end

    # Contains the parameters for DescribeDhcpOptions.
    #
    # @note When making an API call, you may pass DescribeDhcpOptionsRequest
    #   data as a hash:
    #
    #       {
    #         dhcp_options_ids: ["String"],
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] dhcp_options_ids
    #   The IDs of one or more DHCP options sets.
    #
    #   Default: Describes all your DHCP options sets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `dhcp-options-id` - The ID of a set of DHCP options.
    #
    #   * `key` - The key for one of the options (for example,
    #     `domain-name`).
    #
    #   * `value` - The value for one of the options.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeDhcpOptionsRequest AWS API Documentation
    #
    class DescribeDhcpOptionsRequest < Struct.new(
      :dhcp_options_ids,
      :filters,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeDhcpOptions.
    #
    # @!attribute [rw] dhcp_options
    #   Information about one or more DHCP options sets.
    #   @return [Array<Types::DhcpOptions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeDhcpOptionsResult AWS API Documentation
    #
    class DescribeDhcpOptionsResult < Struct.new(
      :dhcp_options)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEgressOnlyInternetGatewaysRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         egress_only_internet_gateway_ids: ["EgressOnlyInternetGatewayId"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] egress_only_internet_gateway_ids
    #   One or more egress-only Internet gateway IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results can be seen by sending another request
    #   with the returned `NextToken` value. This value can be between 5 and
    #   1000; if `MaxResults` is given a value larger than 1000, only 1000
    #   results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeEgressOnlyInternetGatewaysRequest AWS API Documentation
    #
    class DescribeEgressOnlyInternetGatewaysRequest < Struct.new(
      :dry_run,
      :egress_only_internet_gateway_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] egress_only_internet_gateways
    #   Information about the egress-only Internet gateways.
    #   @return [Array<Types::EgressOnlyInternetGateway>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeEgressOnlyInternetGatewaysResult AWS API Documentation
    #
    class DescribeEgressOnlyInternetGatewaysResult < Struct.new(
      :egress_only_internet_gateways,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeElasticGpusRequest
    #   data as a hash:
    #
    #       {
    #         elastic_gpu_ids: ["String"],
    #         dry_run: false,
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] elastic_gpu_ids
    #   One or more Elastic GPU IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone in which the Elastic
    #     GPU resides.
    #
    #   * `elastic-gpu-health` - The status of the Elastic GPU (`OK` \|
    #     `IMPAIRED`).
    #
    #   * `elastic-gpu-state` - The state of the Elastic GPU (`ATTACHED`).
    #
    #   * `elastic-gpu-type` - The type of Elastic GPU; for example,
    #     `eg1.medium`.
    #
    #   * `instance-id` - The ID of the instance to which the Elastic GPU is
    #     associated.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value. This value can be between 5 and 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeElasticGpusRequest AWS API Documentation
    #
    class DescribeElasticGpusRequest < Struct.new(
      :elastic_gpu_ids,
      :dry_run,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] elastic_gpu_set
    #   Information about the Elastic GPUs.
    #   @return [Array<Types::ElasticGpus>]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return. If the total number of items
    #   available is more than the value specified in max-items then a
    #   Next-Token will be provided in the output that you can use to resume
    #   pagination.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeElasticGpusResult AWS API Documentation
    #
    class DescribeElasticGpusResult < Struct.new(
      :elastic_gpu_set,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeExportTasks.
    #
    # @note When making an API call, you may pass DescribeExportTasksRequest
    #   data as a hash:
    #
    #       {
    #         export_task_ids: ["String"],
    #       }
    #
    # @!attribute [rw] export_task_ids
    #   One or more export task IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeExportTasksRequest AWS API Documentation
    #
    class DescribeExportTasksRequest < Struct.new(
      :export_task_ids)
      include Aws::Structure
    end

    # Contains the output for DescribeExportTasks.
    #
    # @!attribute [rw] export_tasks
    #   Information about the export tasks.
    #   @return [Array<Types::ExportTask>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeExportTasksResult AWS API Documentation
    #
    class DescribeExportTasksResult < Struct.new(
      :export_tasks)
      include Aws::Structure
    end

    # Contains the parameters for DescribeFlowLogs.
    #
    # @note When making an API call, you may pass DescribeFlowLogsRequest
    #   data as a hash:
    #
    #       {
    #         filter: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         flow_log_ids: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filter
    #   One or more filters.
    #
    #   * `deliver-log-status` - The status of the logs delivery (`SUCCESS`
    #     \| `FAILED`).
    #
    #   * `flow-log-id` - The ID of the flow log.
    #
    #   * `log-group-name` - The name of the log group.
    #
    #   * `resource-id` - The ID of the VPC, subnet, or network interface.
    #
    #   * `traffic-type` - The type of traffic (`ACCEPT` \| `REJECT` \|
    #     `ALL`)
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] flow_log_ids
    #   One or more flow log IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results can be seen by sending another request
    #   with the returned `NextToken` value. This value can be between 5 and
    #   1000; if `MaxResults` is given a value larger than 1000, only 1000
    #   results are returned. You cannot specify this parameter and the flow
    #   log IDs parameter in the same request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFlowLogsRequest AWS API Documentation
    #
    class DescribeFlowLogsRequest < Struct.new(
      :filter,
      :flow_log_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Contains the output of DescribeFlowLogs.
    #
    # @!attribute [rw] flow_logs
    #   Information about the flow logs.
    #   @return [Array<Types::FlowLog>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFlowLogsResult AWS API Documentation
    #
    class DescribeFlowLogsResult < Struct.new(
      :flow_logs,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFpgaImageAttributeRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         fpga_image_id: "String", # required
    #         attribute: "description", # required, accepts description, name, loadPermission, productCodes
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] fpga_image_id
    #   The ID of the AFI.
    #   @return [String]
    #
    # @!attribute [rw] attribute
    #   The AFI attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFpgaImageAttributeRequest AWS API Documentation
    #
    class DescribeFpgaImageAttributeRequest < Struct.new(
      :dry_run,
      :fpga_image_id,
      :attribute)
      include Aws::Structure
    end

    # @!attribute [rw] fpga_image_attribute
    #   Information about the attribute.
    #   @return [Types::FpgaImageAttribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFpgaImageAttributeResult AWS API Documentation
    #
    class DescribeFpgaImageAttributeResult < Struct.new(
      :fpga_image_attribute)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFpgaImagesRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         fpga_image_ids: ["String"],
    #         owners: ["String"],
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] fpga_image_ids
    #   One or more AFI IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owners
    #   Filters the AFI by owner. Specify an AWS account ID, `self` (owner
    #   is the sender of the request), or an AWS owner alias (valid values
    #   are `amazon` \| `aws-marketplace`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `create-time` - The creation time of the AFI.
    #
    #   * `fpga-image-id` - The FPGA image identifier (AFI ID).
    #
    #   * `fpga-image-global-id` - The global FPGA image identifier (AGFI
    #     ID).
    #
    #   * `name` - The name of the AFI.
    #
    #   * `owner-id` - The AWS account ID of the AFI owner.
    #
    #   * `product-code` - The product code.
    #
    #   * `shell-version` - The version of the AWS Shell that was used to
    #     create the bitstream.
    #
    #   * `state` - The state of the AFI (`pending` \| `failed` \|
    #     `available` \| `unavailable`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `update-time` - The time of the most recent update.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFpgaImagesRequest AWS API Documentation
    #
    class DescribeFpgaImagesRequest < Struct.new(
      :dry_run,
      :fpga_image_ids,
      :owners,
      :filters,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] fpga_images
    #   Information about one or more FPGA images.
    #   @return [Array<Types::FpgaImage>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeFpgaImagesResult AWS API Documentation
    #
    class DescribeFpgaImagesResult < Struct.new(
      :fpga_images,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHostReservationOfferingsRequest
    #   data as a hash:
    #
    #       {
    #         filter: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         max_duration: 1,
    #         max_results: 1,
    #         min_duration: 1,
    #         next_token: "String",
    #         offering_id: "String",
    #       }
    #
    # @!attribute [rw] filter
    #   One or more filters.
    #
    #   * `instance-family` - The instance family of the offering (e.g.,
    #     `m4`).
    #
    #   * `payment-option` - The payment option (`NoUpfront` \|
    #     `PartialUpfront` \| `AllUpfront`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_duration
    #   This is the maximum duration of the reservation you'd like to
    #   purchase, specified in seconds. Reservations are available in
    #   one-year and three-year terms. The number of seconds specified must
    #   be the number of seconds in a year (365x24x60x60) times one of the
    #   supported durations (1 or 3). For example, specify 94608000 for
    #   three years.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results can be seen by sending another request
    #   with the returned `nextToken` value. This value can be between 5 and
    #   500; if `maxResults` is given a larger value than 500, you will
    #   receive an error.
    #   @return [Integer]
    #
    # @!attribute [rw] min_duration
    #   This is the minimum duration of the reservation you'd like to
    #   purchase, specified in seconds. Reservations are available in
    #   one-year and three-year terms. The number of seconds specified must
    #   be the number of seconds in a year (365x24x60x60) times one of the
    #   supported durations (1 or 3). For example, specify 31536000 for one
    #   year.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   The ID of the reservation offering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHostReservationOfferingsRequest AWS API Documentation
    #
    class DescribeHostReservationOfferingsRequest < Struct.new(
      :filter,
      :max_duration,
      :max_results,
      :min_duration,
      :next_token,
      :offering_id)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] offering_set
    #   Information about the offerings.
    #   @return [Array<Types::HostOffering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHostReservationOfferingsResult AWS API Documentation
    #
    class DescribeHostReservationOfferingsResult < Struct.new(
      :next_token,
      :offering_set)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHostReservationsRequest
    #   data as a hash:
    #
    #       {
    #         filter: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         host_reservation_id_set: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filter
    #   One or more filters.
    #
    #   * `instance-family` - The instance family (e.g., `m4`).
    #
    #   * `payment-option` - The payment option (`NoUpfront` \|
    #     `PartialUpfront` \| `AllUpfront`).
    #
    #   * `state` - The state of the reservation (`payment-pending` \|
    #     `payment-failed` \| `active` \| `retired`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] host_reservation_id_set
    #   One or more host reservation IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results can be seen by sending another request
    #   with the returned `nextToken` value. This value can be between 5 and
    #   500; if `maxResults` is given a larger value than 500, you will
    #   receive an error.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHostReservationsRequest AWS API Documentation
    #
    class DescribeHostReservationsRequest < Struct.new(
      :filter,
      :host_reservation_id_set,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] host_reservation_set
    #   Details about the reservation's configuration.
    #   @return [Array<Types::HostReservation>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHostReservationsResult AWS API Documentation
    #
    class DescribeHostReservationsResult < Struct.new(
      :host_reservation_set,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeHosts.
    #
    # @note When making an API call, you may pass DescribeHostsRequest
    #   data as a hash:
    #
    #       {
    #         filter: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         host_ids: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filter
    #   One or more filters.
    #
    #   * `instance-type` - The instance type size that the Dedicated Host
    #     is configured to support.
    #
    #   * `auto-placement` - Whether auto-placement is enabled or disabled
    #     (`on` \| `off`).
    #
    #   * `host-reservation-id` - The ID of the reservation assigned to this
    #     host.
    #
    #   * `client-token` - The idempotency token you provided when you
    #     launched the instance
    #
    #   * `state`- The allocation state of the Dedicated Host (`available`
    #     \| `under-assessment` \| `permanent-failure` \| `released` \|
    #     `released-permanent-failure`).
    #
    #   * `availability-zone` - The Availability Zone of the host.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] host_ids
    #   The IDs of the Dedicated Hosts. The IDs are used for targeted
    #   instance launches.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results can be seen by sending another request
    #   with the returned `nextToken` value. This value can be between 5 and
    #   500; if `maxResults` is given a larger value than 500, you will
    #   receive an error. You cannot specify this parameter and the host IDs
    #   parameter in the same request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHostsRequest AWS API Documentation
    #
    class DescribeHostsRequest < Struct.new(
      :filter,
      :host_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Contains the output of DescribeHosts.
    #
    # @!attribute [rw] hosts
    #   Information about the Dedicated Hosts.
    #   @return [Array<Types::Host>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeHostsResult AWS API Documentation
    #
    class DescribeHostsResult < Struct.new(
      :hosts,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeIamInstanceProfileAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         association_ids: ["String"],
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] association_ids
    #   One or more IAM instance profile associations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `state` - The state of the association (`associating` \|
    #     `associated` \| `disassociating` \| `disassociated`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIamInstanceProfileAssociationsRequest AWS API Documentation
    #
    class DescribeIamInstanceProfileAssociationsRequest < Struct.new(
      :association_ids,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] iam_instance_profile_associations
    #   Information about one or more IAM instance profile associations.
    #   @return [Array<Types::IamInstanceProfileAssociation>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIamInstanceProfileAssociationsResult AWS API Documentation
    #
    class DescribeIamInstanceProfileAssociationsResult < Struct.new(
      :iam_instance_profile_associations,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeIdFormat.
    #
    # @note When making an API call, you may pass DescribeIdFormatRequest
    #   data as a hash:
    #
    #       {
    #         resource: "String",
    #       }
    #
    # @!attribute [rw] resource
    #   The type of resource: `instance` \| `reservation` \| `snapshot` \|
    #   `volume`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIdFormatRequest AWS API Documentation
    #
    class DescribeIdFormatRequest < Struct.new(
      :resource)
      include Aws::Structure
    end

    # Contains the output of DescribeIdFormat.
    #
    # @!attribute [rw] statuses
    #   Information about the ID format for the resource.
    #   @return [Array<Types::IdFormat>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIdFormatResult AWS API Documentation
    #
    class DescribeIdFormatResult < Struct.new(
      :statuses)
      include Aws::Structure
    end

    # Contains the parameters for DescribeIdentityIdFormat.
    #
    # @note When making an API call, you may pass DescribeIdentityIdFormatRequest
    #   data as a hash:
    #
    #       {
    #         principal_arn: "String", # required
    #         resource: "String",
    #       }
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the principal, which can be an IAM role, IAM user, or the
    #   root user.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The type of resource: `instance` \| `reservation` \| `snapshot` \|
    #   `volume`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIdentityIdFormatRequest AWS API Documentation
    #
    class DescribeIdentityIdFormatRequest < Struct.new(
      :principal_arn,
      :resource)
      include Aws::Structure
    end

    # Contains the output of DescribeIdentityIdFormat.
    #
    # @!attribute [rw] statuses
    #   Information about the ID format for the resources.
    #   @return [Array<Types::IdFormat>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeIdentityIdFormatResult AWS API Documentation
    #
    class DescribeIdentityIdFormatResult < Struct.new(
      :statuses)
      include Aws::Structure
    end

    # Contains the parameters for DescribeImageAttribute.
    #
    # @note When making an API call, you may pass DescribeImageAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "description", # required, accepts description, kernel, ramdisk, launchPermission, productCodes, blockDeviceMapping, sriovNetSupport
    #         image_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] attribute
    #   The AMI attribute.
    #
    #   **Note**\: Depending on your account privileges, the
    #   `blockDeviceMapping` attribute may return a `Client.AuthFailure`
    #   error. If this happens, use DescribeImages to get information about
    #   the block device mapping for the AMI.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImageAttributeRequest AWS API Documentation
    #
    class DescribeImageAttributeRequest < Struct.new(
      :attribute,
      :image_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DescribeImages.
    #
    # @note When making an API call, you may pass DescribeImagesRequest
    #   data as a hash:
    #
    #       {
    #         executable_users: ["String"],
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         image_ids: ["String"],
    #         owners: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] executable_users
    #   Scopes the images by users with explicit launch permissions. Specify
    #   an AWS account ID, `self` (the sender of the request), or `all`
    #   (public AMIs).
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `architecture` - The image architecture (`i386` \| `x86_64`).
    #
    #   * `block-device-mapping.delete-on-termination` - A Boolean value
    #     that indicates whether the Amazon EBS volume is deleted on
    #     instance termination.
    #
    #   * `block-device-mapping.device-name` - The device name for the EBS
    #     volume (for example, `/dev/sdh`).
    #
    #   * `block-device-mapping.snapshot-id` - The ID of the snapshot used
    #     for the EBS volume.
    #
    #   * `block-device-mapping.volume-size` - The volume size of the EBS
    #     volume, in GiB.
    #
    #   * `block-device-mapping.volume-type` - The volume type of the EBS
    #     volume (`gp2` \| `io1` \| `st1 `\| `sc1` \| `standard`).
    #
    #   * `description` - The description of the image (provided during
    #     image creation).
    #
    #   * `ena-support` - A Boolean that indicates whether enhanced
    #     networking with ENA is enabled.
    #
    #   * `hypervisor` - The hypervisor type (`ovm` \| `xen`).
    #
    #   * `image-id` - The ID of the image.
    #
    #   * `image-type` - The image type (`machine` \| `kernel` \|
    #     `ramdisk`).
    #
    #   * `is-public` - A Boolean that indicates whether the image is
    #     public.
    #
    #   * `kernel-id` - The kernel ID.
    #
    #   * `manifest-location` - The location of the image manifest.
    #
    #   * `name` - The name of the AMI (provided during image creation).
    #
    #   * `owner-alias` - String value from an Amazon-maintained list
    #     (`amazon` \| `aws-marketplace` \| `microsoft`) of snapshot owners.
    #     Not to be confused with the user-configured AWS account alias,
    #     which is set from the IAM console.
    #
    #   * `owner-id` - The AWS account ID of the image owner.
    #
    #   * `platform` - The platform. To only list Windows-based AMIs, use
    #     `windows`.
    #
    #   * `product-code` - The product code.
    #
    #   * `product-code.type` - The type of the product code (`devpay` \|
    #     `marketplace`).
    #
    #   * `ramdisk-id` - The RAM disk ID.
    #
    #   * `root-device-name` - The name of the root device volume (for
    #     example, `/dev/sda1`).
    #
    #   * `root-device-type` - The type of the root device volume (`ebs` \|
    #     `instance-store`).
    #
    #   * `state` - The state of the image (`available` \| `pending` \|
    #     `failed`).
    #
    #   * `state-reason-code` - The reason code for the state change.
    #
    #   * `state-reason-message` - The message for the state change.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the tag-value filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `virtualization-type` - The virtualization type (`paravirtual` \|
    #     `hvm`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] image_ids
    #   One or more image IDs.
    #
    #   Default: Describes all images available to you.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owners
    #   Filters the images by the owner. Specify an AWS account ID, `self`
    #   (owner is the sender of the request), or an AWS owner alias (valid
    #   values are `amazon` \| `aws-marketplace` \| `microsoft`). Omitting
    #   this option returns all images for which you have launch
    #   permissions, regardless of ownership.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImagesRequest AWS API Documentation
    #
    class DescribeImagesRequest < Struct.new(
      :executable_users,
      :filters,
      :image_ids,
      :owners,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeImages.
    #
    # @!attribute [rw] images
    #   Information about one or more images.
    #   @return [Array<Types::Image>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImagesResult AWS API Documentation
    #
    class DescribeImagesResult < Struct.new(
      :images)
      include Aws::Structure
    end

    # Contains the parameters for DescribeImportImageTasks.
    #
    # @note When making an API call, you may pass DescribeImportImageTasksRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         import_task_ids: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   Filter tasks using the `task-state` filter and one of the following
    #   values: active, completed, deleting, deleted.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] import_task_ids
    #   A list of import image task IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImportImageTasksRequest AWS API Documentation
    #
    class DescribeImportImageTasksRequest < Struct.new(
      :dry_run,
      :filters,
      :import_task_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Contains the output for DescribeImportImageTasks.
    #
    # @!attribute [rw] import_image_tasks
    #   A list of zero or more import image tasks that are currently active
    #   or were completed or canceled in the previous 7 days.
    #   @return [Array<Types::ImportImageTask>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImportImageTasksResult AWS API Documentation
    #
    class DescribeImportImageTasksResult < Struct.new(
      :import_image_tasks,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeImportSnapshotTasks.
    #
    # @note When making an API call, you may pass DescribeImportSnapshotTasksRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         import_task_ids: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] import_task_ids
    #   A list of import snapshot task IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImportSnapshotTasksRequest AWS API Documentation
    #
    class DescribeImportSnapshotTasksRequest < Struct.new(
      :dry_run,
      :filters,
      :import_task_ids,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Contains the output for DescribeImportSnapshotTasks.
    #
    # @!attribute [rw] import_snapshot_tasks
    #   A list of zero or more import snapshot tasks that are currently
    #   active or were completed or canceled in the previous 7 days.
    #   @return [Array<Types::ImportSnapshotTask>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeImportSnapshotTasksResult AWS API Documentation
    #
    class DescribeImportSnapshotTasksResult < Struct.new(
      :import_snapshot_tasks,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeInstanceAttribute.
    #
    # @note When making an API call, you may pass DescribeInstanceAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "instanceType", # required, accepts instanceType, kernel, ramdisk, userData, disableApiTermination, instanceInitiatedShutdownBehavior, rootDeviceName, blockDeviceMapping, productCodes, sourceDestCheck, groupSet, ebsOptimized, sriovNetSupport, enaSupport
    #         dry_run: false,
    #         instance_id: "String", # required
    #       }
    #
    # @!attribute [rw] attribute
    #   The instance attribute.
    #
    #   Note: The `enaSupport` attribute is not supported at this time.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstanceAttributeRequest AWS API Documentation
    #
    class DescribeInstanceAttributeRequest < Struct.new(
      :attribute,
      :dry_run,
      :instance_id)
      include Aws::Structure
    end

    # Contains the parameters for DescribeInstanceStatus.
    #
    # @note When making an API call, you may pass DescribeInstanceStatusRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         instance_ids: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #         dry_run: false,
    #         include_all_instances: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone of the instance.
    #
    #   * `event.code` - The code for the scheduled event (`instance-reboot`
    #     \| `system-reboot` \| `system-maintenance` \|
    #     `instance-retirement` \| `instance-stop`).
    #
    #   * `event.description` - A description of the event.
    #
    #   * `event.not-after` - The latest end time for the scheduled event
    #     (for example, `2014-09-15T17:15:20.000Z`).
    #
    #   * `event.not-before` - The earliest start time for the scheduled
    #     event (for example, `2014-09-15T17:15:20.000Z`).
    #
    #   * `instance-state-code` - The code for the instance state, as a
    #     16-bit unsigned integer. The high byte is an opaque internal value
    #     and should be ignored. The low byte is set based on the state
    #     represented. The valid values are 0 (pending), 16 (running), 32
    #     (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
    #
    #   * `instance-state-name` - The state of the instance (`pending` \|
    #     `running` \| `shutting-down` \| `terminated` \| `stopping` \|
    #     `stopped`).
    #
    #   * `instance-status.reachability` - Filters on instance status where
    #     the name is `reachability` (`passed` \| `failed` \| `initializing`
    #     \| `insufficient-data`).
    #
    #   * `instance-status.status` - The status of the instance (`ok` \|
    #     `impaired` \| `initializing` \| `insufficient-data` \|
    #     `not-applicable`).
    #
    #   * `system-status.reachability` - Filters on system status where the
    #     name is `reachability` (`passed` \| `failed` \| `initializing` \|
    #     `insufficient-data`).
    #
    #   * `system-status.status` - The system status of the instance (`ok`
    #     \| `impaired` \| `initializing` \| `insufficient-data` \|
    #     `not-applicable`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] instance_ids
    #   One or more instance IDs.
    #
    #   Default: Describes all your instances.
    #
    #   Constraints: Maximum 100 explicitly specified instance IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value. This value can be between 5 and 1000. You cannot
    #   specify this parameter and the instance IDs parameter in the same
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_all_instances
    #   When `true`, includes the health status for all instances. When
    #   `false`, includes the health status for running instances only.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstanceStatusRequest AWS API Documentation
    #
    class DescribeInstanceStatusRequest < Struct.new(
      :filters,
      :instance_ids,
      :max_results,
      :next_token,
      :dry_run,
      :include_all_instances)
      include Aws::Structure
    end

    # Contains the output of DescribeInstanceStatus.
    #
    # @!attribute [rw] instance_statuses
    #   One or more instance status descriptions.
    #   @return [Array<Types::InstanceStatus>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstanceStatusResult AWS API Documentation
    #
    class DescribeInstanceStatusResult < Struct.new(
      :instance_statuses,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeInstances.
    #
    # @note When making an API call, you may pass DescribeInstancesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         instance_ids: ["String"],
    #         dry_run: false,
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `affinity` - The affinity setting for an instance running on a
    #     Dedicated Host (`default` \| `host`).
    #
    #   * `architecture` - The instance architecture (`i386` \| `x86_64`).
    #
    #   * `availability-zone` - The Availability Zone of the instance.
    #
    #   * `block-device-mapping.attach-time` - The attach time for an EBS
    #     volume mapped to the instance, for example,
    #     `2010-09-15T17:15:20.000Z`.
    #
    #   * `block-device-mapping.delete-on-termination` - A Boolean that
    #     indicates whether the EBS volume is deleted on instance
    #     termination.
    #
    #   * `block-device-mapping.device-name` - The device name for the EBS
    #     volume (for example, `/dev/sdh` or `xvdh`).
    #
    #   * `block-device-mapping.status` - The status for the EBS volume
    #     (`attaching` \| `attached` \| `detaching` \| `detached`).
    #
    #   * `block-device-mapping.volume-id` - The volume ID of the EBS
    #     volume.
    #
    #   * `client-token` - The idempotency token you provided when you
    #     launched the instance.
    #
    #   * `dns-name` - The public DNS name of the instance.
    #
    #   * `group-id` - The ID of the security group for the instance.
    #     EC2-Classic only.
    #
    #   * `group-name` - The name of the security group for the instance.
    #     EC2-Classic only.
    #
    #   * `host-id` - The ID of the Dedicated Host on which the instance is
    #     running, if applicable.
    #
    #   * `hypervisor` - The hypervisor type of the instance (`ovm` \|
    #     `xen`).
    #
    #   * `iam-instance-profile.arn` - The instance profile associated with
    #     the instance. Specified as an ARN.
    #
    #   * `image-id` - The ID of the image used to launch the instance.
    #
    #   * `instance-id` - The ID of the instance.
    #
    #   * `instance-lifecycle` - Indicates whether this is a Spot Instance
    #     or a Scheduled Instance (`spot` \| `scheduled`).
    #
    #   * `instance-state-code` - The state of the instance, as a 16-bit
    #     unsigned integer. The high byte is an opaque internal value and
    #     should be ignored. The low byte is set based on the state
    #     represented. The valid values are: 0 (pending), 16 (running), 32
    #     (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
    #
    #   * `instance-state-name` - The state of the instance (`pending` \|
    #     `running` \| `shutting-down` \| `terminated` \| `stopping` \|
    #     `stopped`).
    #
    #   * `instance-type` - The type of instance (for example, `t2.micro`).
    #
    #   * `instance.group-id` - The ID of the security group for the
    #     instance.
    #
    #   * `instance.group-name` - The name of the security group for the
    #     instance.
    #
    #   * `ip-address` - The public IPv4 address of the instance.
    #
    #   * `kernel-id` - The kernel ID.
    #
    #   * `key-name` - The name of the key pair used when the instance was
    #     launched.
    #
    #   * `launch-index` - When launching multiple instances, this is the
    #     index for the instance in the launch group (for example, 0, 1, 2,
    #     and so on).
    #
    #   * `launch-time` - The time when the instance was launched.
    #
    #   * `monitoring-state` - Indicates whether detailed monitoring is
    #     enabled (`disabled` \| `enabled`).
    #
    #   * `network-interface.addresses.private-ip-address` - The private
    #     IPv4 address associated with the network interface.
    #
    #   * `network-interface.addresses.primary` - Specifies whether the IPv4
    #     address of the network interface is the primary private IPv4
    #     address.
    #
    #   * `network-interface.addresses.association.public-ip` - The ID of
    #     the association of an Elastic IP address (IPv4) with a network
    #     interface.
    #
    #   * `network-interface.addresses.association.ip-owner-id` - The owner
    #     ID of the private IPv4 address associated with the network
    #     interface.
    #
    #   * `network-interface.association.public-ip` - The address of the
    #     Elastic IP address (IPv4) bound to the network interface.
    #
    #   * `network-interface.association.ip-owner-id` - The owner of the
    #     Elastic IP address (IPv4) associated with the network interface.
    #
    #   * `network-interface.association.allocation-id` - The allocation ID
    #     returned when you allocated the Elastic IP address (IPv4) for your
    #     network interface.
    #
    #   * `network-interface.association.association-id` - The association
    #     ID returned when the network interface was associated with an IPv4
    #     address.
    #
    #   * `network-interface.attachment.attachment-id` - The ID of the
    #     interface attachment.
    #
    #   * `network-interface.attachment.instance-id` - The ID of the
    #     instance to which the network interface is attached.
    #
    #   * `network-interface.attachment.instance-owner-id` - The owner ID of
    #     the instance to which the network interface is attached.
    #
    #   * `network-interface.attachment.device-index` - The device index to
    #     which the network interface is attached.
    #
    #   * `network-interface.attachment.status` - The status of the
    #     attachment (`attaching` \| `attached` \| `detaching` \|
    #     `detached`).
    #
    #   * `network-interface.attachment.attach-time` - The time that the
    #     network interface was attached to an instance.
    #
    #   * `network-interface.attachment.delete-on-termination` - Specifies
    #     whether the attachment is deleted when an instance is terminated.
    #
    #   * `network-interface.availability-zone` - The Availability Zone for
    #     the network interface.
    #
    #   * `network-interface.description` - The description of the network
    #     interface.
    #
    #   * `network-interface.group-id` - The ID of a security group
    #     associated with the network interface.
    #
    #   * `network-interface.group-name` - The name of a security group
    #     associated with the network interface.
    #
    #   * `network-interface.ipv6-addresses.ipv6-address` - The IPv6 address
    #     associated with the network interface.
    #
    #   * `network-interface.mac-address` - The MAC address of the network
    #     interface.
    #
    #   * `network-interface.network-interface-id` - The ID of the network
    #     interface.
    #
    #   * `network-interface.owner-id` - The ID of the owner of the network
    #     interface.
    #
    #   * `network-interface.private-dns-name` - The private DNS name of the
    #     network interface.
    #
    #   * `network-interface.requester-id` - The requester ID for the
    #     network interface.
    #
    #   * `network-interface.requester-managed` - Indicates whether the
    #     network interface is being managed by AWS.
    #
    #   * `network-interface.status` - The status of the network interface
    #     (`available`) \| `in-use`).
    #
    #   * `network-interface.source-dest-check` - Whether the network
    #     interface performs source/destination checking. A value of `true`
    #     means that checking is enabled, and `false` means that checking is
    #     disabled. The value must be `false` for the network interface to
    #     perform network address translation (NAT) in your VPC.
    #
    #   * `network-interface.subnet-id` - The ID of the subnet for the
    #     network interface.
    #
    #   * `network-interface.vpc-id` - The ID of the VPC for the network
    #     interface.
    #
    #   * `owner-id` - The AWS account ID of the instance owner.
    #
    #   * `placement-group-name` - The name of the placement group for the
    #     instance.
    #
    #   * `platform` - The platform. Use `windows` if you have Windows
    #     instances; otherwise, leave blank.
    #
    #   * `private-dns-name` - The private IPv4 DNS name of the instance.
    #
    #   * `private-ip-address` - The private IPv4 address of the instance.
    #
    #   * `product-code` - The product code associated with the AMI used to
    #     launch the instance.
    #
    #   * `product-code.type` - The type of product code (`devpay` \|
    #     `marketplace`).
    #
    #   * `ramdisk-id` - The RAM disk ID.
    #
    #   * `reason` - The reason for the current state of the instance (for
    #     example, shows "User Initiated \[date\]" when you stop or
    #     terminate the instance). Similar to the state-reason-code filter.
    #
    #   * `requester-id` - The ID of the entity that launched the instance
    #     on your behalf (for example, AWS Management Console, Auto Scaling,
    #     and so on).
    #
    #   * `reservation-id` - The ID of the instance's reservation. A
    #     reservation ID is created any time you launch an instance. A
    #     reservation ID has a one-to-one relationship with an instance
    #     launch request, but can be associated with more than one instance
    #     if you launch multiple instances using the same launch request.
    #     For example, if you launch one instance, you get one reservation
    #     ID. If you launch ten instances using the same launch request, you
    #     also get one reservation ID.
    #
    #   * `root-device-name` - The name of the root device for the instance
    #     (for example, `/dev/sda1` or `/dev/xvda`).
    #
    #   * `root-device-type` - The type of root device that the instance
    #     uses (`ebs` \| `instance-store`).
    #
    #   * `source-dest-check` - Indicates whether the instance performs
    #     source/destination checking. A value of `true` means that checking
    #     is enabled, and `false` means that checking is disabled. The value
    #     must be `false` for the instance to perform network address
    #     translation (NAT) in your VPC.
    #
    #   * `spot-instance-request-id` - The ID of the Spot Instance request.
    #
    #   * `state-reason-code` - The reason code for the state change.
    #
    #   * `state-reason-message` - A message that describes the state
    #     change.
    #
    #   * `subnet-id` - The ID of the subnet for the instance.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of the tag's key). If you want to list only
    #     resources where Purpose is X, see the `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `tenancy` - The tenancy of an instance (`dedicated` \| `default`
    #     \| `host`).
    #
    #   * `virtualization-type` - The virtualization type of the instance
    #     (`paravirtual` \| `hvm`).
    #
    #   * `vpc-id` - The ID of the VPC that the instance is running in.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] instance_ids
    #   One or more instance IDs.
    #
    #   Default: Describes all your instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value. This value can be between 5 and 1000. You cannot
    #   specify this parameter and the instance IDs parameter or tag filters
    #   in the same call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstancesRequest AWS API Documentation
    #
    class DescribeInstancesRequest < Struct.new(
      :filters,
      :instance_ids,
      :dry_run,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Contains the output of DescribeInstances.
    #
    # @!attribute [rw] reservations
    #   Zero or more reservations.
    #   @return [Array<Types::Reservation>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInstancesResult AWS API Documentation
    #
    class DescribeInstancesResult < Struct.new(
      :reservations,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeInternetGateways.
    #
    # @note When making an API call, you may pass DescribeInternetGatewaysRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #         internet_gateway_ids: ["String"],
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `attachment.state` - The current state of the attachment between
    #     the gateway and the VPC (`available`). Present only if a VPC is
    #     attached.
    #
    #   * `attachment.vpc-id` - The ID of an attached VPC.
    #
    #   * `internet-gateway-id` - The ID of the Internet gateway.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] internet_gateway_ids
    #   One or more Internet gateway IDs.
    #
    #   Default: Describes all your Internet gateways.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInternetGatewaysRequest AWS API Documentation
    #
    class DescribeInternetGatewaysRequest < Struct.new(
      :filters,
      :dry_run,
      :internet_gateway_ids)
      include Aws::Structure
    end

    # Contains the output of DescribeInternetGateways.
    #
    # @!attribute [rw] internet_gateways
    #   Information about one or more Internet gateways.
    #   @return [Array<Types::InternetGateway>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeInternetGatewaysResult AWS API Documentation
    #
    class DescribeInternetGatewaysResult < Struct.new(
      :internet_gateways)
      include Aws::Structure
    end

    # Contains the parameters for DescribeKeyPairs.
    #
    # @note When making an API call, you may pass DescribeKeyPairsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         key_names: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `fingerprint` - The fingerprint of the key pair.
    #
    #   * `key-name` - The name of the key pair.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] key_names
    #   One or more key pair names.
    #
    #   Default: Describes all your key pairs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeKeyPairsRequest AWS API Documentation
    #
    class DescribeKeyPairsRequest < Struct.new(
      :filters,
      :key_names,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeKeyPairs.
    #
    # @!attribute [rw] key_pairs
    #   Information about one or more key pairs.
    #   @return [Array<Types::KeyPairInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeKeyPairsResult AWS API Documentation
    #
    class DescribeKeyPairsResult < Struct.new(
      :key_pairs)
      include Aws::Structure
    end

    # Contains the parameters for DescribeMovingAddresses.
    #
    # @note When making an API call, you may pass DescribeMovingAddressesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #         max_results: 1,
    #         next_token: "String",
    #         public_ips: ["String"],
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `moving-status` - The status of the Elastic IP address
    #     (`MovingToVpc` \| `RestoringToClassic`).
    #
    #   ^
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results of the initial request can be seen by
    #   sending another request with the returned `NextToken` value. This
    #   value can be between 5 and 1000; if `MaxResults` is given a value
    #   outside of this range, an error is returned.
    #
    #   Default: If no value is provided, the default is 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] public_ips
    #   One or more Elastic IP addresses.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeMovingAddressesRequest AWS API Documentation
    #
    class DescribeMovingAddressesRequest < Struct.new(
      :filters,
      :dry_run,
      :max_results,
      :next_token,
      :public_ips)
      include Aws::Structure
    end

    # Contains the output of DescribeMovingAddresses.
    #
    # @!attribute [rw] moving_address_statuses
    #   The status for each Elastic IP address.
    #   @return [Array<Types::MovingAddressStatus>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeMovingAddressesResult AWS API Documentation
    #
    class DescribeMovingAddressesResult < Struct.new(
      :moving_address_statuses,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeNatGateways.
    #
    # @note When making an API call, you may pass DescribeNatGatewaysRequest
    #   data as a hash:
    #
    #       {
    #         filter: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         nat_gateway_ids: ["String"],
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filter
    #   One or more filters.
    #
    #   * `nat-gateway-id` - The ID of the NAT gateway.
    #
    #   * `state` - The state of the NAT gateway (`pending` \| `failed` \|
    #     `available` \| `deleting` \| `deleted`).
    #
    #   * `subnet-id` - The ID of the subnet in which the NAT gateway
    #     resides.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC in which the NAT gateway resides.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    #   Constraint: If the value specified is greater than 1000, we return
    #   only 1000 items.
    #   @return [Integer]
    #
    # @!attribute [rw] nat_gateway_ids
    #   One or more NAT gateway IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNatGatewaysRequest AWS API Documentation
    #
    class DescribeNatGatewaysRequest < Struct.new(
      :filter,
      :max_results,
      :nat_gateway_ids,
      :next_token)
      include Aws::Structure
    end

    # Contains the output of DescribeNatGateways.
    #
    # @!attribute [rw] nat_gateways
    #   Information about the NAT gateways.
    #   @return [Array<Types::NatGateway>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNatGatewaysResult AWS API Documentation
    #
    class DescribeNatGatewaysResult < Struct.new(
      :nat_gateways,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeNetworkAcls.
    #
    # @note When making an API call, you may pass DescribeNetworkAclsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #         network_acl_ids: ["String"],
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `association.association-id` - The ID of an association ID for the
    #     ACL.
    #
    #   * `association.network-acl-id` - The ID of the network ACL involved
    #     in the association.
    #
    #   * `association.subnet-id` - The ID of the subnet involved in the
    #     association.
    #
    #   * `default` - Indicates whether the ACL is the default network ACL
    #     for the VPC.
    #
    #   * `entry.cidr` - The IPv4 CIDR range specified in the entry.
    #
    #   * `entry.egress` - Indicates whether the entry applies to egress
    #     traffic.
    #
    #   * `entry.icmp.code` - The ICMP code specified in the entry, if any.
    #
    #   * `entry.icmp.type` - The ICMP type specified in the entry, if any.
    #
    #   * `entry.ipv6-cidr` - The IPv6 CIDR range specified in the entry.
    #
    #   * `entry.port-range.from` - The start of the port range specified in
    #     the entry.
    #
    #   * `entry.port-range.to` - The end of the port range specified in the
    #     entry.
    #
    #   * `entry.protocol` - The protocol specified in the entry (`tcp` \|
    #     `udp` \| `icmp` or a protocol number).
    #
    #   * `entry.rule-action` - Allows or denies the matching traffic
    #     (`allow` \| `deny`).
    #
    #   * `entry.rule-number` - The number of an entry (in other words,
    #     rule) in the ACL's set of entries.
    #
    #   * `network-acl-id` - The ID of the network ACL.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC for the network ACL.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_acl_ids
    #   One or more network ACL IDs.
    #
    #   Default: Describes all your network ACLs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkAclsRequest AWS API Documentation
    #
    class DescribeNetworkAclsRequest < Struct.new(
      :filters,
      :dry_run,
      :network_acl_ids)
      include Aws::Structure
    end

    # Contains the output of DescribeNetworkAcls.
    #
    # @!attribute [rw] network_acls
    #   Information about one or more network ACLs.
    #   @return [Array<Types::NetworkAcl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkAclsResult AWS API Documentation
    #
    class DescribeNetworkAclsResult < Struct.new(
      :network_acls)
      include Aws::Structure
    end

    # Contains the parameters for DescribeNetworkInterfaceAttribute.
    #
    # @note When making an API call, you may pass DescribeNetworkInterfaceAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "description", # accepts description, groupSet, sourceDestCheck, attachment
    #         dry_run: false,
    #         network_interface_id: "String", # required
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute of the network interface. This parameter is required.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfaceAttributeRequest AWS API Documentation
    #
    class DescribeNetworkInterfaceAttributeRequest < Struct.new(
      :attribute,
      :dry_run,
      :network_interface_id)
      include Aws::Structure
    end

    # Contains the output of DescribeNetworkInterfaceAttribute.
    #
    # @!attribute [rw] attachment
    #   The attachment (if any) of the network interface.
    #   @return [Types::NetworkInterfaceAttachment]
    #
    # @!attribute [rw] description
    #   The description of the network interface.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] groups
    #   The security groups associated with the network interface.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] source_dest_check
    #   Indicates whether source/destination checking is enabled.
    #   @return [Types::AttributeBooleanValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfaceAttributeResult AWS API Documentation
    #
    class DescribeNetworkInterfaceAttributeResult < Struct.new(
      :attachment,
      :description,
      :groups,
      :network_interface_id,
      :source_dest_check)
      include Aws::Structure
    end

    # Contains the parameters for DescribeNetworkInterfacePermissions.
    #
    # @note When making an API call, you may pass DescribeNetworkInterfacePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         network_interface_permission_ids: ["String"],
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] network_interface_permission_ids
    #   One or more network interface permission IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `network-interface-permission.network-interface-permission-id` -
    #     The ID of the permission.
    #
    #   * `network-interface-permission.network-interface-id` - The ID of
    #     the network interface.
    #
    #   * `network-interface-permission.aws-account-id` - The AWS account
    #     ID.
    #
    #   * `network-interface-permission.aws-service` - The AWS service.
    #
    #   * `network-interface-permission.permission` - The type of permission
    #     (`INSTANCE-ATTACH` \| `EIP-ASSOCIATE`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `NextToken` value. If this parameter is not specified, up to 50
    #   results are returned by default.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfacePermissionsRequest AWS API Documentation
    #
    class DescribeNetworkInterfacePermissionsRequest < Struct.new(
      :network_interface_permission_ids,
      :filters,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Contains the output for DescribeNetworkInterfacePermissions.
    #
    # @!attribute [rw] network_interface_permissions
    #   The network interface permissions.
    #   @return [Array<Types::NetworkInterfacePermission>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfacePermissionsResult AWS API Documentation
    #
    class DescribeNetworkInterfacePermissionsResult < Struct.new(
      :network_interface_permissions,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeNetworkInterfaces.
    #
    # @note When making an API call, you may pass DescribeNetworkInterfacesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #         network_interface_ids: ["String"],
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `addresses.private-ip-address` - The private IPv4 addresses
    #     associated with the network interface.
    #
    #   * `addresses.primary` - Whether the private IPv4 address is the
    #     primary IP address associated with the network interface.
    #
    #   * `addresses.association.public-ip` - The association ID returned
    #     when the network interface was associated with the Elastic IP
    #     address (IPv4).
    #
    #   * `addresses.association.owner-id` - The owner ID of the addresses
    #     associated with the network interface.
    #
    #   * `association.association-id` - The association ID returned when
    #     the network interface was associated with an IPv4 address.
    #
    #   * `association.allocation-id` - The allocation ID returned when you
    #     allocated the Elastic IP address (IPv4) for your network
    #     interface.
    #
    #   * `association.ip-owner-id` - The owner of the Elastic IP address
    #     (IPv4) associated with the network interface.
    #
    #   * `association.public-ip` - The address of the Elastic IP address
    #     (IPv4) bound to the network interface.
    #
    #   * `association.public-dns-name` - The public DNS name for the
    #     network interface (IPv4).
    #
    #   * `attachment.attachment-id` - The ID of the interface attachment.
    #
    #   * `attachment.attach.time` - The time that the network interface was
    #     attached to an instance.
    #
    #   * `attachment.delete-on-termination` - Indicates whether the
    #     attachment is deleted when an instance is terminated.
    #
    #   * `attachment.device-index` - The device index to which the network
    #     interface is attached.
    #
    #   * `attachment.instance-id` - The ID of the instance to which the
    #     network interface is attached.
    #
    #   * `attachment.instance-owner-id` - The owner ID of the instance to
    #     which the network interface is attached.
    #
    #   * `attachment.nat-gateway-id` - The ID of the NAT gateway to which
    #     the network interface is attached.
    #
    #   * `attachment.status` - The status of the attachment (`attaching` \|
    #     `attached` \| `detaching` \| `detached`).
    #
    #   * `availability-zone` - The Availability Zone of the network
    #     interface.
    #
    #   * `description` - The description of the network interface.
    #
    #   * `group-id` - The ID of a security group associated with the
    #     network interface.
    #
    #   * `group-name` - The name of a security group associated with the
    #     network interface.
    #
    #   * `ipv6-addresses.ipv6-address` - An IPv6 address associated with
    #     the network interface.
    #
    #   * `mac-address` - The MAC address of the network interface.
    #
    #   * `network-interface-id` - The ID of the network interface.
    #
    #   * `owner-id` - The AWS account ID of the network interface owner.
    #
    #   * `private-ip-address` - The private IPv4 address or addresses of
    #     the network interface.
    #
    #   * `private-dns-name` - The private DNS name of the network interface
    #     (IPv4).
    #
    #   * `requester-id` - The ID of the entity that launched the instance
    #     on your behalf (for example, AWS Management Console, Auto Scaling,
    #     and so on).
    #
    #   * `requester-managed` - Indicates whether the network interface is
    #     being managed by an AWS service (for example, AWS Management
    #     Console, Auto Scaling, and so on).
    #
    #   * `source-desk-check` - Indicates whether the network interface
    #     performs source/destination checking. A value of `true` means
    #     checking is enabled, and `false` means checking is disabled. The
    #     value must be `false` for the network interface to perform network
    #     address translation (NAT) in your VPC.
    #
    #   * `status` - The status of the network interface. If the network
    #     interface is not attached to an instance, the status is
    #     `available`; if a network interface is attached to an instance the
    #     status is `in-use`.
    #
    #   * `subnet-id` - The ID of the subnet for the network interface.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC for the network interface.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_interface_ids
    #   One or more network interface IDs.
    #
    #   Default: Describes all your network interfaces.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfacesRequest AWS API Documentation
    #
    class DescribeNetworkInterfacesRequest < Struct.new(
      :filters,
      :dry_run,
      :network_interface_ids)
      include Aws::Structure
    end

    # Contains the output of DescribeNetworkInterfaces.
    #
    # @!attribute [rw] network_interfaces
    #   Information about one or more network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeNetworkInterfacesResult AWS API Documentation
    #
    class DescribeNetworkInterfacesResult < Struct.new(
      :network_interfaces)
      include Aws::Structure
    end

    # Contains the parameters for DescribePlacementGroups.
    #
    # @note When making an API call, you may pass DescribePlacementGroupsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #         group_names: ["String"],
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `group-name` - The name of the placement group.
    #
    #   * `state` - The state of the placement group (`pending` \|
    #     `available` \| `deleting` \| `deleted`).
    #
    #   * `strategy` - The strategy of the placement group (`cluster`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] group_names
    #   One or more placement group names.
    #
    #   Default: Describes all your placement groups, or only those
    #   otherwise specified.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribePlacementGroupsRequest AWS API Documentation
    #
    class DescribePlacementGroupsRequest < Struct.new(
      :filters,
      :dry_run,
      :group_names)
      include Aws::Structure
    end

    # Contains the output of DescribePlacementGroups.
    #
    # @!attribute [rw] placement_groups
    #   One or more placement groups.
    #   @return [Array<Types::PlacementGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribePlacementGroupsResult AWS API Documentation
    #
    class DescribePlacementGroupsResult < Struct.new(
      :placement_groups)
      include Aws::Structure
    end

    # Contains the parameters for DescribePrefixLists.
    #
    # @note When making an API call, you may pass DescribePrefixListsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "String",
    #         prefix_list_ids: ["String"],
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `prefix-list-id`\: The ID of a prefix list.
    #
    #   * `prefix-list-name`\: The name of a prefix list.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    #   Constraint: If the value specified is greater than 1000, we return
    #   only 1000 items.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a prior call.)
    #   @return [String]
    #
    # @!attribute [rw] prefix_list_ids
    #   One or more prefix list IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribePrefixListsRequest AWS API Documentation
    #
    class DescribePrefixListsRequest < Struct.new(
      :dry_run,
      :filters,
      :max_results,
      :next_token,
      :prefix_list_ids)
      include Aws::Structure
    end

    # Contains the output of DescribePrefixLists.
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @!attribute [rw] prefix_lists
    #   All available prefix lists.
    #   @return [Array<Types::PrefixList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribePrefixListsResult AWS API Documentation
    #
    class DescribePrefixListsResult < Struct.new(
      :next_token,
      :prefix_lists)
      include Aws::Structure
    end

    # Contains the parameters for DescribeRegions.
    #
    # @note When making an API call, you may pass DescribeRegionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         region_names: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `endpoint` - The endpoint of the region (for example,
    #     `ec2.us-east-1.amazonaws.com`).
    #
    #   * `region-name` - The name of the region (for example, `us-east-1`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] region_names
    #   The names of one or more regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeRegionsRequest AWS API Documentation
    #
    class DescribeRegionsRequest < Struct.new(
      :filters,
      :region_names,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeRegions.
    #
    # @!attribute [rw] regions
    #   Information about one or more regions.
    #   @return [Array<Types::Region>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeRegionsResult AWS API Documentation
    #
    class DescribeRegionsResult < Struct.new(
      :regions)
      include Aws::Structure
    end

    # Contains the parameters for DescribeReservedInstancesListings.
    #
    # @note When making an API call, you may pass DescribeReservedInstancesListingsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         reserved_instances_id: "String",
    #         reserved_instances_listing_id: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `reserved-instances-id` - The ID of the Reserved Instances.
    #
    #   * `reserved-instances-listing-id` - The ID of the Reserved Instances
    #     listing.
    #
    #   * `status` - The status of the Reserved Instance listing (`pending`
    #     \| `active` \| `cancelled` \| `closed`).
    #
    #   * `status-message` - The reason for the status.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] reserved_instances_id
    #   One or more Reserved Instance IDs.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_listing_id
    #   One or more Reserved Instance listing IDs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesListingsRequest AWS API Documentation
    #
    class DescribeReservedInstancesListingsRequest < Struct.new(
      :filters,
      :reserved_instances_id,
      :reserved_instances_listing_id)
      include Aws::Structure
    end

    # Contains the output of DescribeReservedInstancesListings.
    #
    # @!attribute [rw] reserved_instances_listings
    #   Information about the Reserved Instance listing.
    #   @return [Array<Types::ReservedInstancesListing>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesListingsResult AWS API Documentation
    #
    class DescribeReservedInstancesListingsResult < Struct.new(
      :reserved_instances_listings)
      include Aws::Structure
    end

    # Contains the parameters for DescribeReservedInstancesModifications.
    #
    # @note When making an API call, you may pass DescribeReservedInstancesModificationsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         reserved_instances_modification_ids: ["String"],
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `client-token` - The idempotency token for the modification
    #     request.
    #
    #   * `create-date` - The time when the modification request was
    #     created.
    #
    #   * `effective-date` - The time when the modification becomes
    #     effective.
    #
    #   * `modification-result.reserved-instances-id` - The ID for the
    #     Reserved Instances created as part of the modification request.
    #     This ID is only available when the status of the modification is
    #     `fulfilled`.
    #
    #   * `modification-result.target-configuration.availability-zone` - The
    #     Availability Zone for the new Reserved Instances.
    #
    #   * `modification-result.target-configuration.instance-count ` - The
    #     number of new Reserved Instances.
    #
    #   * `modification-result.target-configuration.instance-type` - The
    #     instance type of the new Reserved Instances.
    #
    #   * `modification-result.target-configuration.platform` - The network
    #     platform of the new Reserved Instances (`EC2-Classic` \|
    #     `EC2-VPC`).
    #
    #   * `reserved-instances-id` - The ID of the Reserved Instances
    #     modified.
    #
    #   * `reserved-instances-modification-id` - The ID of the modification
    #     request.
    #
    #   * `status` - The status of the Reserved Instances modification
    #     request (`processing` \| `fulfilled` \| `failed`).
    #
    #   * `status-message` - The reason for the status.
    #
    #   * `update-date` - The time when the modification request was last
    #     updated.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] reserved_instances_modification_ids
    #   IDs for the submitted modification request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesModificationsRequest AWS API Documentation
    #
    class DescribeReservedInstancesModificationsRequest < Struct.new(
      :filters,
      :reserved_instances_modification_ids,
      :next_token)
      include Aws::Structure
    end

    # Contains the output of DescribeReservedInstancesModifications.
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_modifications
    #   The Reserved Instance modification information.
    #   @return [Array<Types::ReservedInstancesModification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesModificationsResult AWS API Documentation
    #
    class DescribeReservedInstancesModificationsResult < Struct.new(
      :next_token,
      :reserved_instances_modifications)
      include Aws::Structure
    end

    # Contains the parameters for DescribeReservedInstancesOfferings.
    #
    # @note When making an API call, you may pass DescribeReservedInstancesOfferingsRequest
    #   data as a hash:
    #
    #       {
    #         availability_zone: "String",
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         include_marketplace: false,
    #         instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #         max_duration: 1,
    #         max_instance_count: 1,
    #         min_duration: 1,
    #         offering_class: "standard", # accepts standard, convertible
    #         product_description: "Linux/UNIX", # accepts Linux/UNIX, Linux/UNIX (Amazon VPC), Windows, Windows (Amazon VPC)
    #         reserved_instances_offering_ids: ["String"],
    #         dry_run: false,
    #         instance_tenancy: "default", # accepts default, dedicated, host
    #         max_results: 1,
    #         next_token: "String",
    #         offering_type: "Heavy Utilization", # accepts Heavy Utilization, Medium Utilization, Light Utilization, No Upfront, Partial Upfront, All Upfront
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the Reserved Instance can be used.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone where the Reserved
    #     Instance can be used.
    #
    #   * `duration` - The duration of the Reserved Instance (for example,
    #     one year or three years), in seconds (`31536000` \| `94608000`).
    #
    #   * `fixed-price` - The purchase price of the Reserved Instance (for
    #     example, 9800.0).
    #
    #   * `instance-type` - The instance type that is covered by the
    #     reservation.
    #
    #   * `marketplace` - Set to `true` to show only Reserved Instance
    #     Marketplace offerings. When this filter is not used, which is the
    #     default behavior, all offerings from both AWS and the Reserved
    #     Instance Marketplace are listed.
    #
    #   * `product-description` - The Reserved Instance product platform
    #     description. Instances that include `(Amazon VPC)` in the product
    #     platform description will only be displayed to EC2-Classic account
    #     holders and are for use with Amazon VPC. (`Linux/UNIX` \|
    #     `Linux/UNIX (Amazon VPC)` \| `SUSE Linux` \| `SUSE Linux (Amazon
    #     VPC)` \| `Red Hat Enterprise Linux` \| `Red Hat Enterprise Linux
    #     (Amazon VPC)` \| `Windows` \| `Windows (Amazon VPC)` \| `Windows
    #     with SQL Server Standard` \| `Windows with SQL Server Standard
    #     (Amazon VPC)` \| `Windows with SQL Server Web` \| ` Windows with
    #     SQL Server Web (Amazon VPC)` \| `Windows with SQL Server
    #     Enterprise` \| `Windows with SQL Server Enterprise (Amazon VPC)`)
    #
    #   * `reserved-instances-offering-id` - The Reserved Instances offering
    #     ID.
    #
    #   * `scope` - The scope of the Reserved Instance (`Availability Zone`
    #     or `Region`).
    #
    #   * `usage-price` - The usage price of the Reserved Instance, per hour
    #     (for example, 0.84).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] include_marketplace
    #   Include Reserved Instance Marketplace offerings in the response.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_type
    #   The instance type that the reservation will cover (for example,
    #   `m1.small`). For more information, see [Instance Types][1] in the
    #   *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] max_duration
    #   The maximum duration (in seconds) to filter when searching for
    #   offerings.
    #
    #   Default: 94608000 (3 years)
    #   @return [Integer]
    #
    # @!attribute [rw] max_instance_count
    #   The maximum number of instances to filter when searching for
    #   offerings.
    #
    #   Default: 20
    #   @return [Integer]
    #
    # @!attribute [rw] min_duration
    #   The minimum duration (in seconds) to filter when searching for
    #   offerings.
    #
    #   Default: 2592000 (1 month)
    #   @return [Integer]
    #
    # @!attribute [rw] offering_class
    #   The offering class of the Reserved Instance. Can be `standard` or
    #   `convertible`.
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The Reserved Instance product platform description. Instances that
    #   include `(Amazon VPC)` in the description are for use with Amazon
    #   VPC.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_offering_ids
    #   One or more Reserved Instances offering IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_tenancy
    #   The tenancy of the instances covered by the reservation. A Reserved
    #   Instance with a tenancy of `dedicated` is applied to instances that
    #   run in a VPC on single-tenant hardware (i.e., Dedicated Instances).
    #
    #   **Important:** The `host` value cannot be used with this parameter.
    #   Use the `default` or `dedicated` values only.
    #
    #   Default: `default`
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for the request in a single
    #   page. The remaining results of the initial request can be seen by
    #   sending another request with the returned `NextToken` value. The
    #   maximum is 100.
    #
    #   Default: 100
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The Reserved Instance offering type. If you are using tools that
    #   predate the 2011-11-01 API version, you only have access to the
    #   `Medium Utilization` Reserved Instance offering type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesOfferingsRequest AWS API Documentation
    #
    class DescribeReservedInstancesOfferingsRequest < Struct.new(
      :availability_zone,
      :filters,
      :include_marketplace,
      :instance_type,
      :max_duration,
      :max_instance_count,
      :min_duration,
      :offering_class,
      :product_description,
      :reserved_instances_offering_ids,
      :dry_run,
      :instance_tenancy,
      :max_results,
      :next_token,
      :offering_type)
      include Aws::Structure
    end

    # Contains the output of DescribeReservedInstancesOfferings.
    #
    # @!attribute [rw] reserved_instances_offerings
    #   A list of Reserved Instances offerings.
    #   @return [Array<Types::ReservedInstancesOffering>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesOfferingsResult AWS API Documentation
    #
    class DescribeReservedInstancesOfferingsResult < Struct.new(
      :reserved_instances_offerings,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeReservedInstances.
    #
    # @note When making an API call, you may pass DescribeReservedInstancesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         offering_class: "standard", # accepts standard, convertible
    #         reserved_instances_ids: ["String"],
    #         dry_run: false,
    #         offering_type: "Heavy Utilization", # accepts Heavy Utilization, Medium Utilization, Light Utilization, No Upfront, Partial Upfront, All Upfront
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone where the Reserved
    #     Instance can be used.
    #
    #   * `duration` - The duration of the Reserved Instance (one year or
    #     three years), in seconds (`31536000` \| `94608000`).
    #
    #   * `end` - The time when the Reserved Instance expires (for example,
    #     2015-08-07T11:54:42.000Z).
    #
    #   * `fixed-price` - The purchase price of the Reserved Instance (for
    #     example, 9800.0).
    #
    #   * `instance-type` - The instance type that is covered by the
    #     reservation.
    #
    #   * `scope` - The scope of the Reserved Instance (`Region` or
    #     `Availability Zone`).
    #
    #   * `product-description` - The Reserved Instance product platform
    #     description. Instances that include `(Amazon VPC)` in the product
    #     platform description will only be displayed to EC2-Classic account
    #     holders and are for use with Amazon VPC (`Linux/UNIX` \|
    #     `Linux/UNIX (Amazon VPC)` \| `SUSE Linux` \| `SUSE Linux (Amazon
    #     VPC)` \| `Red Hat Enterprise Linux` \| `Red Hat Enterprise Linux
    #     (Amazon VPC)` \| `Windows` \| `Windows (Amazon VPC)` \| `Windows
    #     with SQL Server Standard` \| `Windows with SQL Server Standard
    #     (Amazon VPC)` \| `Windows with SQL Server Web` \| `Windows with
    #     SQL Server Web (Amazon VPC)` \| `Windows with SQL Server
    #     Enterprise` \| `Windows with SQL Server Enterprise (Amazon VPC)`).
    #
    #   * `reserved-instances-id` - The ID of the Reserved Instance.
    #
    #   * `start` - The time at which the Reserved Instance purchase request
    #     was placed (for example, 2014-08-07T11:54:42.000Z).
    #
    #   * `state` - The state of the Reserved Instance (`payment-pending` \|
    #     `active` \| `payment-failed` \| `retired`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `usage-price` - The usage price of the Reserved Instance, per hour
    #     (for example, 0.84).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] offering_class
    #   Describes whether the Reserved Instance is Standard or Convertible.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_ids
    #   One or more Reserved Instance IDs.
    #
    #   Default: Describes all your Reserved Instances, or only those
    #   otherwise specified.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] offering_type
    #   The Reserved Instance offering type. If you are using tools that
    #   predate the 2011-11-01 API version, you only have access to the
    #   `Medium Utilization` Reserved Instance offering type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesRequest AWS API Documentation
    #
    class DescribeReservedInstancesRequest < Struct.new(
      :filters,
      :offering_class,
      :reserved_instances_ids,
      :dry_run,
      :offering_type)
      include Aws::Structure
    end

    # Contains the output for DescribeReservedInstances.
    #
    # @!attribute [rw] reserved_instances
    #   A list of Reserved Instances.
    #   @return [Array<Types::ReservedInstances>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeReservedInstancesResult AWS API Documentation
    #
    class DescribeReservedInstancesResult < Struct.new(
      :reserved_instances)
      include Aws::Structure
    end

    # Contains the parameters for DescribeRouteTables.
    #
    # @note When making an API call, you may pass DescribeRouteTablesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #         route_table_ids: ["String"],
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `association.route-table-association-id` - The ID of an
    #     association ID for the route table.
    #
    #   * `association.route-table-id` - The ID of the route table involved
    #     in the association.
    #
    #   * `association.subnet-id` - The ID of the subnet involved in the
    #     association.
    #
    #   * `association.main` - Indicates whether the route table is the main
    #     route table for the VPC (`true` \| `false`). Route tables that do
    #     not have an association ID are not returned in the response.
    #
    #   * `route-table-id` - The ID of the route table.
    #
    #   * `route.destination-cidr-block` - The IPv4 CIDR range specified in
    #     a route in the table.
    #
    #   * `route.destination-ipv6-cidr-block` - The IPv6 CIDR range
    #     specified in a route in the route table.
    #
    #   * `route.destination-prefix-list-id` - The ID (prefix) of the AWS
    #     service specified in a route in the table.
    #
    #   * `route.egress-only-internet-gateway-id` - The ID of an egress-only
    #     Internet gateway specified in a route in the route table.
    #
    #   * `route.gateway-id` - The ID of a gateway specified in a route in
    #     the table.
    #
    #   * `route.instance-id` - The ID of an instance specified in a route
    #     in the table.
    #
    #   * `route.nat-gateway-id` - The ID of a NAT gateway.
    #
    #   * `route.origin` - Describes how the route was created.
    #     `CreateRouteTable` indicates that the route was automatically
    #     created when the route table was created; `CreateRoute` indicates
    #     that the route was manually added to the route table;
    #     `EnableVgwRoutePropagation` indicates that the route was
    #     propagated by route propagation.
    #
    #   * `route.state` - The state of a route in the route table (`active`
    #     \| `blackhole`). The blackhole state indicates that the route's
    #     target isn't available (for example, the specified gateway isn't
    #     attached to the VPC, the specified NAT instance has been
    #     terminated, and so on).
    #
    #   * `route.vpc-peering-connection-id` - The ID of a VPC peering
    #     connection specified in a route in the table.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC for the route table.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] route_table_ids
    #   One or more route table IDs.
    #
    #   Default: Describes all your route tables.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeRouteTablesRequest AWS API Documentation
    #
    class DescribeRouteTablesRequest < Struct.new(
      :filters,
      :dry_run,
      :route_table_ids)
      include Aws::Structure
    end

    # Contains the output of DescribeRouteTables.
    #
    # @!attribute [rw] route_tables
    #   Information about one or more route tables.
    #   @return [Array<Types::RouteTable>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeRouteTablesResult AWS API Documentation
    #
    class DescribeRouteTablesResult < Struct.new(
      :route_tables)
      include Aws::Structure
    end

    # Contains the parameters for DescribeScheduledInstanceAvailability.
    #
    # @note When making an API call, you may pass DescribeScheduledInstanceAvailabilityRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         first_slot_start_time_range: { # required
    #           earliest_time: Time.now, # required
    #           latest_time: Time.now, # required
    #         },
    #         max_results: 1,
    #         max_slot_duration_in_hours: 1,
    #         min_slot_duration_in_hours: 1,
    #         next_token: "String",
    #         recurrence: { # required
    #           frequency: "String",
    #           interval: 1,
    #           occurrence_days: [1],
    #           occurrence_relative_to_end: false,
    #           occurrence_unit: "String",
    #         },
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone (for example,
    #     `us-west-2a`).
    #
    #   * `instance-type` - The instance type (for example, `c4.large`).
    #
    #   * `network-platform` - The network platform (`EC2-Classic` or
    #     `EC2-VPC`).
    #
    #   * `platform` - The platform (`Linux/UNIX` or `Windows`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] first_slot_start_time_range
    #   The time period for the first schedule to start.
    #   @return [Types::SlotDateTimeRangeRequest]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. This value
    #   can be between 5 and 300. The default value is 300. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #   @return [Integer]
    #
    # @!attribute [rw] max_slot_duration_in_hours
    #   The maximum available duration, in hours. This value must be greater
    #   than `MinSlotDurationInHours` and less than 1,720.
    #   @return [Integer]
    #
    # @!attribute [rw] min_slot_duration_in_hours
    #   The minimum available duration, in hours. The minimum required
    #   duration is 1,200 hours per year. For example, the minimum daily
    #   schedule is 4 hours, the minimum weekly schedule is 24 hours, and
    #   the minimum monthly schedule is 100 hours.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] recurrence
    #   The schedule recurrence.
    #   @return [Types::ScheduledInstanceRecurrenceRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeScheduledInstanceAvailabilityRequest AWS API Documentation
    #
    class DescribeScheduledInstanceAvailabilityRequest < Struct.new(
      :dry_run,
      :filters,
      :first_slot_start_time_range,
      :max_results,
      :max_slot_duration_in_hours,
      :min_slot_duration_in_hours,
      :next_token,
      :recurrence)
      include Aws::Structure
    end

    # Contains the output of DescribeScheduledInstanceAvailability.
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_instance_availability_set
    #   Information about the available Scheduled Instances.
    #   @return [Array<Types::ScheduledInstanceAvailability>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeScheduledInstanceAvailabilityResult AWS API Documentation
    #
    class DescribeScheduledInstanceAvailabilityResult < Struct.new(
      :next_token,
      :scheduled_instance_availability_set)
      include Aws::Structure
    end

    # Contains the parameters for DescribeScheduledInstances.
    #
    # @note When making an API call, you may pass DescribeScheduledInstancesRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "String",
    #         scheduled_instance_ids: ["String"],
    #         slot_start_time_range: {
    #           earliest_time: Time.now,
    #           latest_time: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone (for example,
    #     `us-west-2a`).
    #
    #   * `instance-type` - The instance type (for example, `c4.large`).
    #
    #   * `network-platform` - The network platform (`EC2-Classic` or
    #     `EC2-VPC`).
    #
    #   * `platform` - The platform (`Linux/UNIX` or `Windows`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. This value
    #   can be between 5 and 300. The default value is 100. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_instance_ids
    #   One or more Scheduled Instance IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] slot_start_time_range
    #   The time period for the first schedule to start.
    #   @return [Types::SlotStartTimeRangeRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeScheduledInstancesRequest AWS API Documentation
    #
    class DescribeScheduledInstancesRequest < Struct.new(
      :dry_run,
      :filters,
      :max_results,
      :next_token,
      :scheduled_instance_ids,
      :slot_start_time_range)
      include Aws::Structure
    end

    # Contains the output of DescribeScheduledInstances.
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] scheduled_instance_set
    #   Information about the Scheduled Instances.
    #   @return [Array<Types::ScheduledInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeScheduledInstancesResult AWS API Documentation
    #
    class DescribeScheduledInstancesResult < Struct.new(
      :next_token,
      :scheduled_instance_set)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSecurityGroupReferencesRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         group_id: ["String"], # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   DryRunOperation. Otherwise, it is UnauthorizedOperation.
    #   @return [Boolean]
    #
    # @!attribute [rw] group_id
    #   One or more security group IDs in your account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSecurityGroupReferencesRequest AWS API Documentation
    #
    class DescribeSecurityGroupReferencesRequest < Struct.new(
      :dry_run,
      :group_id)
      include Aws::Structure
    end

    # @!attribute [rw] security_group_reference_set
    #   Information about the VPCs with the referencing security groups.
    #   @return [Array<Types::SecurityGroupReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSecurityGroupReferencesResult AWS API Documentation
    #
    class DescribeSecurityGroupReferencesResult < Struct.new(
      :security_group_reference_set)
      include Aws::Structure
    end

    # Contains the parameters for DescribeSecurityGroups.
    #
    # @note When making an API call, you may pass DescribeSecurityGroupsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         group_ids: ["String"],
    #         group_names: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters. If using multiple filters for rules, the
    #   results include security groups for which any combination of rules -
    #   not necessarily a single rule - match all filters.
    #
    #   * `description` - The description of the security group.
    #
    #   * `egress.ip-permission.prefix-list-id` - The ID (prefix) of the AWS
    #     service to which the security group allows access.
    #
    #   * `group-id` - The ID of the security group.
    #
    #   * `group-name` - The name of the security group.
    #
    #   * `ip-permission.cidr` - An IPv4 CIDR range that has been granted
    #     permission in a security group rule.
    #
    #   * `ip-permission.from-port` - The start of port range for the TCP
    #     and UDP protocols, or an ICMP type number.
    #
    #   * `ip-permission.group-id` - The ID of a security group that has
    #     been granted permission.
    #
    #   * `ip-permission.group-name` - The name of a security group that has
    #     been granted permission.
    #
    #   * `ip-permission.ipv6-cidr` - An IPv6 CIDR range that has been
    #     granted permission in a security group rule.
    #
    #   * `ip-permission.protocol` - The IP protocol for the permission
    #     (`tcp` \| `udp` \| `icmp` or a protocol number).
    #
    #   * `ip-permission.to-port` - The end of port range for the TCP and
    #     UDP protocols, or an ICMP code.
    #
    #   * `ip-permission.user-id` - The ID of an AWS account that has been
    #     granted permission.
    #
    #   * `owner-id` - The AWS account ID of the owner of the security
    #     group.
    #
    #   * `tag-key` - The key of a tag assigned to the security group.
    #
    #   * `tag-value` - The value of a tag assigned to the security group.
    #
    #   * `vpc-id` - The ID of the VPC specified when the security group was
    #     created.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] group_ids
    #   One or more security group IDs. Required for security groups in a
    #   nondefault VPC.
    #
    #   Default: Describes all your security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_names
    #   \[EC2-Classic and default VPC only\] One or more security group
    #   names. You can specify either the security group name or the
    #   security group ID. For security groups in a nondefault VPC, use the
    #   `group-name` filter to describe security groups by name.
    #
    #   Default: Describes all your security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSecurityGroupsRequest AWS API Documentation
    #
    class DescribeSecurityGroupsRequest < Struct.new(
      :filters,
      :group_ids,
      :group_names,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeSecurityGroups.
    #
    # @!attribute [rw] security_groups
    #   Information about one or more security groups.
    #   @return [Array<Types::SecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSecurityGroupsResult AWS API Documentation
    #
    class DescribeSecurityGroupsResult < Struct.new(
      :security_groups)
      include Aws::Structure
    end

    # Contains the parameters for DescribeSnapshotAttribute.
    #
    # @note When making an API call, you may pass DescribeSnapshotAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "productCodes", # required, accepts productCodes, createVolumePermission
    #         snapshot_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] attribute
    #   The snapshot attribute you would like to view.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the EBS snapshot.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSnapshotAttributeRequest AWS API Documentation
    #
    class DescribeSnapshotAttributeRequest < Struct.new(
      :attribute,
      :snapshot_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeSnapshotAttribute.
    #
    # @!attribute [rw] create_volume_permissions
    #   A list of permissions for creating volumes from the snapshot.
    #   @return [Array<Types::CreateVolumePermission>]
    #
    # @!attribute [rw] product_codes
    #   A list of product codes.
    #   @return [Array<Types::ProductCode>]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the EBS snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSnapshotAttributeResult AWS API Documentation
    #
    class DescribeSnapshotAttributeResult < Struct.new(
      :create_volume_permissions,
      :product_codes,
      :snapshot_id)
      include Aws::Structure
    end

    # Contains the parameters for DescribeSnapshots.
    #
    # @note When making an API call, you may pass DescribeSnapshotsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "String",
    #         owner_ids: ["String"],
    #         restorable_by_user_ids: ["String"],
    #         snapshot_ids: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `description` - A description of the snapshot.
    #
    #   * `owner-alias` - Value from an Amazon-maintained list (`amazon` \|
    #     `aws-marketplace` \| `microsoft`) of snapshot owners. Not to be
    #     confused with the user-configured AWS account alias, which is set
    #     from the IAM console.
    #
    #   * `owner-id` - The ID of the AWS account that owns the snapshot.
    #
    #   * `progress` - The progress of the snapshot, as a percentage (for
    #     example, 80%).
    #
    #   * `snapshot-id` - The snapshot ID.
    #
    #   * `start-time` - The time stamp when the snapshot was initiated.
    #
    #   * `status` - The status of the snapshot (`pending` \| `completed` \|
    #     `error`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `volume-id` - The ID of the volume the snapshot is for.
    #
    #   * `volume-size` - The size of the volume, in GiB.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of snapshot results returned by
    #   `DescribeSnapshots` in paginated output. When this parameter is
    #   used, `DescribeSnapshots` only returns `MaxResults` results in a
    #   single page along with a `NextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `DescribeSnapshots` request with the returned `NextToken` value.
    #   This value can be between 5 and 1000; if `MaxResults` is given a
    #   value larger than 1000, only 1000 results are returned. If this
    #   parameter is not used, then `DescribeSnapshots` returns all results.
    #   You cannot specify this parameter and the snapshot IDs parameter in
    #   the same request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `NextToken` value returned from a previous paginated
    #   `DescribeSnapshots` request where `MaxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `NextToken`
    #   value. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] owner_ids
    #   Returns the snapshots owned by the specified owner. Multiple owners
    #   can be specified.
    #   @return [Array<String>]
    #
    # @!attribute [rw] restorable_by_user_ids
    #   One or more AWS accounts IDs that can create volumes from the
    #   snapshot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_ids
    #   One or more snapshot IDs.
    #
    #   Default: Describes snapshots for which you have launch permissions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSnapshotsRequest AWS API Documentation
    #
    class DescribeSnapshotsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :owner_ids,
      :restorable_by_user_ids,
      :snapshot_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeSnapshots.
    #
    # @!attribute [rw] snapshots
    #   Information about the snapshots.
    #   @return [Array<Types::Snapshot>]
    #
    # @!attribute [rw] next_token
    #   The `NextToken` value to include in a future `DescribeSnapshots`
    #   request. When the results of a `DescribeSnapshots` request exceed
    #   `MaxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSnapshotsResult AWS API Documentation
    #
    class DescribeSnapshotsResult < Struct.new(
      :snapshots,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeSpotDatafeedSubscription.
    #
    # @note When making an API call, you may pass DescribeSpotDatafeedSubscriptionRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotDatafeedSubscriptionRequest AWS API Documentation
    #
    class DescribeSpotDatafeedSubscriptionRequest < Struct.new(
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeSpotDatafeedSubscription.
    #
    # @!attribute [rw] spot_datafeed_subscription
    #   The Spot instance data feed subscription.
    #   @return [Types::SpotDatafeedSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotDatafeedSubscriptionResult AWS API Documentation
    #
    class DescribeSpotDatafeedSubscriptionResult < Struct.new(
      :spot_datafeed_subscription)
      include Aws::Structure
    end

    # Contains the parameters for DescribeSpotFleetInstances.
    #
    # @note When making an API call, you may pass DescribeSpotFleetInstancesRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         max_results: 1,
    #         next_token: "String",
    #         spot_fleet_request_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Specify a
    #   value between 1 and 1000. The default value is 1000. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetInstancesRequest AWS API Documentation
    #
    class DescribeSpotFleetInstancesRequest < Struct.new(
      :dry_run,
      :max_results,
      :next_token,
      :spot_fleet_request_id)
      include Aws::Structure
    end

    # Contains the output of DescribeSpotFleetInstances.
    #
    # @!attribute [rw] active_instances
    #   The running instances. Note that this list is refreshed periodically
    #   and might be out of date.
    #   @return [Array<Types::ActiveInstance>]
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetInstancesResponse AWS API Documentation
    #
    class DescribeSpotFleetInstancesResponse < Struct.new(
      :active_instances,
      :next_token,
      :spot_fleet_request_id)
      include Aws::Structure
    end

    # Contains the parameters for DescribeSpotFleetRequestHistory.
    #
    # @note When making an API call, you may pass DescribeSpotFleetRequestHistoryRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         event_type: "instanceChange", # accepts instanceChange, fleetRequestChange, error
    #         max_results: 1,
    #         next_token: "String",
    #         spot_fleet_request_id: "String", # required
    #         start_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] event_type
    #   The type of events to describe. By default, all events are
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Specify a
    #   value between 1 and 1000. The default value is 1000. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The starting date and time for the events, in UTC format (for
    #   example, *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequestHistoryRequest AWS API Documentation
    #
    class DescribeSpotFleetRequestHistoryRequest < Struct.new(
      :dry_run,
      :event_type,
      :max_results,
      :next_token,
      :spot_fleet_request_id,
      :start_time)
      include Aws::Structure
    end

    # Contains the output of DescribeSpotFleetRequestHistory.
    #
    # @!attribute [rw] history_records
    #   Information about the events in the history of the Spot fleet
    #   request.
    #   @return [Array<Types::HistoryRecord>]
    #
    # @!attribute [rw] last_evaluated_time
    #   The last date and time for the events, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z). All records up to this time
    #   were retrieved.
    #
    #   If `nextToken` indicates that there are more results, this value is
    #   not present.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The starting date and time for the events, in UTC format (for
    #   example, *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequestHistoryResponse AWS API Documentation
    #
    class DescribeSpotFleetRequestHistoryResponse < Struct.new(
      :history_records,
      :last_evaluated_time,
      :next_token,
      :spot_fleet_request_id,
      :start_time)
      include Aws::Structure
    end

    # Contains the parameters for DescribeSpotFleetRequests.
    #
    # @note When making an API call, you may pass DescribeSpotFleetRequestsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         max_results: 1,
    #         next_token: "String",
    #         spot_fleet_request_ids: ["String"],
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Specify a
    #   value between 1 and 1000. The default value is 1000. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] spot_fleet_request_ids
    #   The IDs of the Spot fleet requests.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequestsRequest AWS API Documentation
    #
    class DescribeSpotFleetRequestsRequest < Struct.new(
      :dry_run,
      :max_results,
      :next_token,
      :spot_fleet_request_ids)
      include Aws::Structure
    end

    # Contains the output of DescribeSpotFleetRequests.
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] spot_fleet_request_configs
    #   Information about the configuration of your Spot fleet.
    #   @return [Array<Types::SpotFleetRequestConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotFleetRequestsResponse AWS API Documentation
    #
    class DescribeSpotFleetRequestsResponse < Struct.new(
      :next_token,
      :spot_fleet_request_configs)
      include Aws::Structure
    end

    # Contains the parameters for DescribeSpotInstanceRequests.
    #
    # @note When making an API call, you may pass DescribeSpotInstanceRequestsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #         spot_instance_request_ids: ["String"],
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `availability-zone-group` - The Availability Zone group.
    #
    #   * `create-time` - The time stamp when the Spot instance request was
    #     created.
    #
    #   * `fault-code` - The fault code related to the request.
    #
    #   * `fault-message` - The fault message related to the request.
    #
    #   * `instance-id` - The ID of the instance that fulfilled the request.
    #
    #   * `launch-group` - The Spot instance launch group.
    #
    #   * `launch.block-device-mapping.delete-on-termination` - Indicates
    #     whether the Amazon EBS volume is deleted on instance termination.
    #
    #   * `launch.block-device-mapping.device-name` - The device name for
    #     the Amazon EBS volume (for example, `/dev/sdh`).
    #
    #   * `launch.block-device-mapping.snapshot-id` - The ID of the snapshot
    #     used for the Amazon EBS volume.
    #
    #   * `launch.block-device-mapping.volume-size` - The size of the Amazon
    #     EBS volume, in GiB.
    #
    #   * `launch.block-device-mapping.volume-type` - The type of the Amazon
    #     EBS volume: `gp2` for General Purpose SSD, `io1` for Provisioned
    #     IOPS SSD, `st1` for Throughput Optimized HDD, `sc1`for Cold HDD,
    #     or `standard` for Magnetic.
    #
    #   * `launch.group-id` - The security group for the instance.
    #
    #   * `launch.image-id` - The ID of the AMI.
    #
    #   * `launch.instance-type` - The type of instance (for example,
    #     `m3.medium`).
    #
    #   * `launch.kernel-id` - The kernel ID.
    #
    #   * `launch.key-name` - The name of the key pair the instance launched
    #     with.
    #
    #   * `launch.monitoring-enabled` - Whether detailed monitoring is
    #     enabled for the Spot instance.
    #
    #   * `launch.ramdisk-id` - The RAM disk ID.
    #
    #   * `launched-availability-zone` - The Availability Zone in which the
    #     bid is launched.
    #
    #   * `network-interface.addresses.primary` - Indicates whether the IP
    #     address is the primary private IP address.
    #
    #   * `network-interface.delete-on-termination` - Indicates whether the
    #     network interface is deleted when the instance is terminated.
    #
    #   * `network-interface.description` - A description of the network
    #     interface.
    #
    #   * `network-interface.device-index` - The index of the device for the
    #     network interface attachment on the instance.
    #
    #   * `network-interface.group-id` - The ID of the security group
    #     associated with the network interface.
    #
    #   * `network-interface.network-interface-id` - The ID of the network
    #     interface.
    #
    #   * `network-interface.private-ip-address` - The primary private IP
    #     address of the network interface.
    #
    #   * `network-interface.subnet-id` - The ID of the subnet for the
    #     instance.
    #
    #   * `product-description` - The product description associated with
    #     the instance (`Linux/UNIX` \| `Windows`).
    #
    #   * `spot-instance-request-id` - The Spot instance request ID.
    #
    #   * `spot-price` - The maximum hourly price for any Spot instance
    #     launched to fulfill the request.
    #
    #   * `state` - The state of the Spot instance request (`open` \|
    #     `active` \| `closed` \| `cancelled` \| `failed`). Spot bid status
    #     information can help you track your Amazon EC2 Spot instance
    #     requests. For more information, see [Spot Bid Status][1] in the
    #     Amazon Elastic Compute Cloud User Guide.
    #
    #   * `status-code` - The short code describing the most recent
    #     evaluation of your Spot instance request.
    #
    #   * `status-message` - The message explaining the status of the Spot
    #     instance request.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `type` - The type of Spot instance request (`one-time` \|
    #     `persistent`).
    #
    #   * `valid-from` - The start date of the request.
    #
    #   * `valid-until` - The end date of the request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] spot_instance_request_ids
    #   One or more Spot instance request IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotInstanceRequestsRequest AWS API Documentation
    #
    class DescribeSpotInstanceRequestsRequest < Struct.new(
      :filters,
      :dry_run,
      :spot_instance_request_ids)
      include Aws::Structure
    end

    # Contains the output of DescribeSpotInstanceRequests.
    #
    # @!attribute [rw] spot_instance_requests
    #   One or more Spot instance requests.
    #   @return [Array<Types::SpotInstanceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotInstanceRequestsResult AWS API Documentation
    #
    class DescribeSpotInstanceRequestsResult < Struct.new(
      :spot_instance_requests)
      include Aws::Structure
    end

    # Contains the parameters for DescribeSpotPriceHistory.
    #
    # @note When making an API call, you may pass DescribeSpotPriceHistoryRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         availability_zone: "String",
    #         dry_run: false,
    #         end_time: Time.now,
    #         instance_types: ["t1.micro"], # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #         max_results: 1,
    #         next_token: "String",
    #         product_descriptions: ["String"],
    #         start_time: Time.now,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `availability-zone` - The Availability Zone for which prices
    #     should be returned.
    #
    #   * `instance-type` - The type of instance (for example, `m3.medium`).
    #
    #   * `product-description` - The product description for the Spot price
    #     (`Linux/UNIX` \| `SUSE Linux` \| `Windows` \| `Linux/UNIX (Amazon
    #     VPC)` \| `SUSE Linux (Amazon VPC)` \| `Windows (Amazon VPC)`).
    #
    #   * `spot-price` - The Spot price. The value must match exactly (or
    #     use wildcards; greater than or less than comparison is not
    #     supported).
    #
    #   * `timestamp` - The timestamp of the Spot price history, in UTC
    #     format (for example, *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z). You can
    #     use wildcards (* and ?). Greater than or less than comparison is
    #     not supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] availability_zone
    #   Filters the results by the specified Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] end_time
    #   The date and time, up to the current date, from which to stop
    #   retrieving the price history data, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #   @return [Time]
    #
    # @!attribute [rw] instance_types
    #   Filters the results by the specified instance types. Note that T2
    #   and HS1 instance types are not supported.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Specify a
    #   value between 1 and 1000. The default value is 1000. To retrieve the
    #   remaining results, make another call with the returned `NextToken`
    #   value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] product_descriptions
    #   Filters the results by the specified basic product descriptions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The date and time, up to the past 90 days, from which to start
    #   retrieving the price history data, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotPriceHistoryRequest AWS API Documentation
    #
    class DescribeSpotPriceHistoryRequest < Struct.new(
      :filters,
      :availability_zone,
      :dry_run,
      :end_time,
      :instance_types,
      :max_results,
      :next_token,
      :product_descriptions,
      :start_time)
      include Aws::Structure
    end

    # Contains the output of DescribeSpotPriceHistory.
    #
    # @!attribute [rw] next_token
    #   The token required to retrieve the next set of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] spot_price_history
    #   The historical Spot prices.
    #   @return [Array<Types::SpotPrice>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSpotPriceHistoryResult AWS API Documentation
    #
    class DescribeSpotPriceHistoryResult < Struct.new(
      :next_token,
      :spot_price_history)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStaleSecurityGroupsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         max_results: 1,
    #         next_token: "NextToken",
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   DryRunOperation. Otherwise, it is UnauthorizedOperation.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a prior call.)
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeStaleSecurityGroupsRequest AWS API Documentation
    #
    class DescribeStaleSecurityGroupsRequest < Struct.new(
      :dry_run,
      :max_results,
      :next_token,
      :vpc_id)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @!attribute [rw] stale_security_group_set
    #   Information about the stale security groups.
    #   @return [Array<Types::StaleSecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeStaleSecurityGroupsResult AWS API Documentation
    #
    class DescribeStaleSecurityGroupsResult < Struct.new(
      :next_token,
      :stale_security_group_set)
      include Aws::Structure
    end

    # Contains the parameters for DescribeSubnets.
    #
    # @note When making an API call, you may pass DescribeSubnetsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         subnet_ids: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `availabilityZone` - The Availability Zone for the subnet. You can
    #     also use `availability-zone` as the filter name.
    #
    #   * `available-ip-address-count` - The number of IPv4 addresses in the
    #     subnet that are available.
    #
    #   * `cidrBlock` - The IPv4 CIDR block of the subnet. The CIDR block
    #     you specify must exactly match the subnet's CIDR block for
    #     information to be returned for the subnet. You can also use `cidr`
    #     or `cidr-block` as the filter names.
    #
    #   * `defaultForAz` - Indicates whether this is the default subnet for
    #     the Availability Zone. You can also use `default-for-az` as the
    #     filter name.
    #
    #   * `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block
    #     associated with the subnet.
    #
    #   * `ipv6-cidr-block-association.association-id` - An association ID
    #     for an IPv6 CIDR block associated with the subnet.
    #
    #   * `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR
    #     block associated with the subnet.
    #
    #   * `state` - The state of the subnet (`pending` \| `available`).
    #
    #   * `subnet-id` - The ID of the subnet.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC for the subnet.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] subnet_ids
    #   One or more subnet IDs.
    #
    #   Default: Describes all your subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSubnetsRequest AWS API Documentation
    #
    class DescribeSubnetsRequest < Struct.new(
      :filters,
      :subnet_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeSubnets.
    #
    # @!attribute [rw] subnets
    #   Information about one or more subnets.
    #   @return [Array<Types::Subnet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeSubnetsResult AWS API Documentation
    #
    class DescribeSubnetsResult < Struct.new(
      :subnets)
      include Aws::Structure
    end

    # Contains the parameters for DescribeTags.
    #
    # @note When making an API call, you may pass DescribeTagsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `key` - The tag key.
    #
    #   * `resource-id` - The resource ID.
    #
    #   * `resource-type` - The resource type (`customer-gateway` \|
    #     `dhcp-options` \| `image` \| `instance` \| `internet-gateway` \|
    #     `network-acl` \| `network-interface` \| `reserved-instances` \|
    #     `route-table` \| `security-group` \| `snapshot` \|
    #     `spot-instances-request` \| `subnet` \| `volume` \| `vpc` \|
    #     `vpn-connection` \| `vpn-gateway`).
    #
    #   * `value` - The tag value.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. This value
    #   can be between 5 and 1000. To retrieve the remaining results, make
    #   another call with the returned `NextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeTagsRequest AWS API Documentation
    #
    class DescribeTagsRequest < Struct.new(
      :dry_run,
      :filters,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Contains the output of DescribeTags.
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return..
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags.
    #   @return [Array<Types::TagDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeTagsResult AWS API Documentation
    #
    class DescribeTagsResult < Struct.new(
      :next_token,
      :tags)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVolumeAttribute.
    #
    # @note When making an API call, you may pass DescribeVolumeAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "autoEnableIO", # accepts autoEnableIO, productCodes
    #         volume_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute of the volume. This parameter is required.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumeAttributeRequest AWS API Documentation
    #
    class DescribeVolumeAttributeRequest < Struct.new(
      :attribute,
      :volume_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeVolumeAttribute.
    #
    # @!attribute [rw] auto_enable_io
    #   The state of `autoEnableIO` attribute.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] product_codes
    #   A list of product codes.
    #   @return [Array<Types::ProductCode>]
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumeAttributeResult AWS API Documentation
    #
    class DescribeVolumeAttributeResult < Struct.new(
      :auto_enable_io,
      :product_codes,
      :volume_id)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVolumeStatus.
    #
    # @note When making an API call, you may pass DescribeVolumeStatusRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "String",
    #         volume_ids: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `action.code` - The action code for the event (for example,
    #     `enable-volume-io`).
    #
    #   * `action.description` - A description of the action.
    #
    #   * `action.event-id` - The event ID associated with the action.
    #
    #   * `availability-zone` - The Availability Zone of the instance.
    #
    #   * `event.description` - A description of the event.
    #
    #   * `event.event-id` - The event ID.
    #
    #   * `event.event-type` - The event type (for `io-enabled`\: `passed`
    #     \| `failed`; for `io-performance`\: `io-performance:degraded` \|
    #     `io-performance:severely-degraded` \| `io-performance:stalled`).
    #
    #   * `event.not-after` - The latest end time for the event.
    #
    #   * `event.not-before` - The earliest start time for the event.
    #
    #   * `volume-status.details-name` - The cause for
    #     `volume-status.status` (`io-enabled` \| `io-performance`).
    #
    #   * `volume-status.details-status` - The status of
    #     `volume-status.details-name` (for `io-enabled`\: `passed` \|
    #     `failed`; for `io-performance`\: `normal` \| `degraded` \|
    #     `severely-degraded` \| `stalled`).
    #
    #   * `volume-status.status` - The status of the volume (`ok` \|
    #     `impaired` \| `warning` \| `insufficient-data`).
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of volume results returned by
    #   `DescribeVolumeStatus` in paginated output. When this parameter is
    #   used, the request only returns `MaxResults` results in a single page
    #   along with a `NextToken` response element. The remaining results of
    #   the initial request can be seen by sending another request with the
    #   returned `NextToken` value. This value can be between 5 and 1000; if
    #   `MaxResults` is given a value larger than 1000, only 1000 results
    #   are returned. If this parameter is not used, then
    #   `DescribeVolumeStatus` returns all results. You cannot specify this
    #   parameter and the volume IDs parameter in the same request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `NextToken` value to include in a future `DescribeVolumeStatus`
    #   request. When the results of the request exceed `MaxResults`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] volume_ids
    #   One or more volume IDs.
    #
    #   Default: Describes all your volumes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumeStatusRequest AWS API Documentation
    #
    class DescribeVolumeStatusRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :volume_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeVolumeStatus.
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] volume_statuses
    #   A list of volumes.
    #   @return [Array<Types::VolumeStatusItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumeStatusResult AWS API Documentation
    #
    class DescribeVolumeStatusResult < Struct.new(
      :next_token,
      :volume_statuses)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeVolumesModificationsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         volume_ids: ["String"],
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_ids
    #   One or more volume IDs for which in-progress modifications will be
    #   described.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   One or more filters. Supported filters: `volume-id`,
    #   `modification-state`, `target-size`, `target-iops`,
    #   `target-volume-type`, `original-size`, `original-iops`,
    #   `original-volume-type`, `start-time`.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned by a previous paginated request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results (up to a limit of 500) to be returned
    #   in a paginated request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumesModificationsRequest AWS API Documentation
    #
    class DescribeVolumesModificationsRequest < Struct.new(
      :dry_run,
      :volume_ids,
      :filters,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] volumes_modifications
    #   A list of returned VolumeModification objects.
    #   @return [Array<Types::VolumeModification>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination, null if there are no more results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumesModificationsResult AWS API Documentation
    #
    class DescribeVolumesModificationsResult < Struct.new(
      :volumes_modifications,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVolumes.
    #
    # @note When making an API call, you may pass DescribeVolumesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         volume_ids: ["String"],
    #         dry_run: false,
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `attachment.attach-time` - The time stamp when the attachment
    #     initiated.
    #
    #   * `attachment.delete-on-termination` - Whether the volume is deleted
    #     on instance termination.
    #
    #   * `attachment.device` - The device name that is exposed to the
    #     instance (for example, `/dev/sda1`).
    #
    #   * `attachment.instance-id` - The ID of the instance the volume is
    #     attached to.
    #
    #   * `attachment.status` - The attachment state (`attaching` \|
    #     `attached` \| `detaching` \| `detached`).
    #
    #   * `availability-zone` - The Availability Zone in which the volume
    #     was created.
    #
    #   * `create-time` - The time stamp when the volume was created.
    #
    #   * `encrypted` - The encryption status of the volume.
    #
    #   * `size` - The size of the volume, in GiB.
    #
    #   * `snapshot-id` - The snapshot from which the volume was created.
    #
    #   * `status` - The status of the volume (`creating` \| `available` \|
    #     `in-use` \| `deleting` \| `deleted` \| `error`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `volume-id` - The volume ID.
    #
    #   * `volume-type` - The Amazon EBS volume type. This can be `gp2` for
    #     General Purpose SSD, `io1` for Provisioned IOPS SSD, `st1` for
    #     Throughput Optimized HDD, `sc1` for Cold HDD, or `standard` for
    #     Magnetic volumes.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] volume_ids
    #   One or more volume IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of volume results returned by `DescribeVolumes`
    #   in paginated output. When this parameter is used, `DescribeVolumes`
    #   only returns `MaxResults` results in a single page along with a
    #   `NextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `DescribeVolumes` request
    #   with the returned `NextToken` value. This value can be between 5 and
    #   500; if `MaxResults` is given a value larger than 500, only 500
    #   results are returned. If this parameter is not used, then
    #   `DescribeVolumes` returns all results. You cannot specify this
    #   parameter and the volume IDs parameter in the same request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `NextToken` value returned from a previous paginated
    #   `DescribeVolumes` request where `MaxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `NextToken`
    #   value. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumesRequest AWS API Documentation
    #
    class DescribeVolumesRequest < Struct.new(
      :filters,
      :volume_ids,
      :dry_run,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Contains the output of DescribeVolumes.
    #
    # @!attribute [rw] volumes
    #   Information about the volumes.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] next_token
    #   The `NextToken` value to include in a future `DescribeVolumes`
    #   request. When the results of a `DescribeVolumes` request exceed
    #   `MaxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVolumesResult AWS API Documentation
    #
    class DescribeVolumesResult < Struct.new(
      :volumes,
      :next_token)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVpcAttribute.
    #
    # @note When making an API call, you may pass DescribeVpcAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "enableDnsSupport", # required, accepts enableDnsSupport, enableDnsHostnames
    #         vpc_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] attribute
    #   The VPC attribute.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcAttributeRequest AWS API Documentation
    #
    class DescribeVpcAttributeRequest < Struct.new(
      :attribute,
      :vpc_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeVpcAttribute.
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] enable_dns_hostnames
    #   Indicates whether the instances launched in the VPC get DNS
    #   hostnames. If this attribute is `true`, instances in the VPC get DNS
    #   hostnames; otherwise, they do not.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] enable_dns_support
    #   Indicates whether DNS resolution is enabled for the VPC. If this
    #   attribute is `true`, the Amazon DNS server resolves DNS hostnames
    #   for your instances to their corresponding IP addresses; otherwise,
    #   it does not.
    #   @return [Types::AttributeBooleanValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcAttributeResult AWS API Documentation
    #
    class DescribeVpcAttributeResult < Struct.new(
      :vpc_id,
      :enable_dns_hostnames,
      :enable_dns_support)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVpcClassicLinkDnsSupport.
    #
    # @note When making an API call, you may pass DescribeVpcClassicLinkDnsSupportRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         vpc_ids: ["String"],
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a prior call.)
    #   @return [String]
    #
    # @!attribute [rw] vpc_ids
    #   One or more VPC IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcClassicLinkDnsSupportRequest AWS API Documentation
    #
    class DescribeVpcClassicLinkDnsSupportRequest < Struct.new(
      :max_results,
      :next_token,
      :vpc_ids)
      include Aws::Structure
    end

    # Contains the output of DescribeVpcClassicLinkDnsSupport.
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items.
    #   @return [String]
    #
    # @!attribute [rw] vpcs
    #   Information about the ClassicLink DNS support status of the VPCs.
    #   @return [Array<Types::ClassicLinkDnsSupport>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcClassicLinkDnsSupportResult AWS API Documentation
    #
    class DescribeVpcClassicLinkDnsSupportResult < Struct.new(
      :next_token,
      :vpcs)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVpcClassicLink.
    #
    # @note When making an API call, you may pass DescribeVpcClassicLinkRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #         vpc_ids: ["String"],
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `is-classic-link-enabled` - Whether the VPC is enabled for
    #     ClassicLink (`true` \| `false`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_ids
    #   One or more VPCs for which you want to describe the ClassicLink
    #   status.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcClassicLinkRequest AWS API Documentation
    #
    class DescribeVpcClassicLinkRequest < Struct.new(
      :filters,
      :dry_run,
      :vpc_ids)
      include Aws::Structure
    end

    # Contains the output of DescribeVpcClassicLink.
    #
    # @!attribute [rw] vpcs
    #   The ClassicLink status of one or more VPCs.
    #   @return [Array<Types::VpcClassicLink>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcClassicLinkResult AWS API Documentation
    #
    class DescribeVpcClassicLinkResult < Struct.new(
      :vpcs)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVpcEndpointServices.
    #
    # @note When making an API call, you may pass DescribeVpcEndpointServicesRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    #   Constraint: If the value is greater than 1000, we return only 1000
    #   items.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a prior call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpointServicesRequest AWS API Documentation
    #
    class DescribeVpcEndpointServicesRequest < Struct.new(
      :dry_run,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # Contains the output of DescribeVpcEndpointServices.
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @!attribute [rw] service_names
    #   A list of supported AWS services.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpointServicesResult AWS API Documentation
    #
    class DescribeVpcEndpointServicesResult < Struct.new(
      :next_token,
      :service_names)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVpcEndpoints.
    #
    # @note When making an API call, you may pass DescribeVpcEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "String",
    #         vpc_endpoint_ids: ["String"],
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `service-name`\: The name of the AWS service.
    #
    #   * `vpc-id`\: The ID of the VPC in which the endpoint resides.
    #
    #   * `vpc-endpoint-id`\: The ID of the endpoint.
    #
    #   * `vpc-endpoint-state`\: The state of the endpoint. (`pending` \|
    #     `available` \| `deleting` \| `deleted`)
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return for this request. The request
    #   returns a token that you can specify in a subsequent call to get the
    #   next set of results.
    #
    #   Constraint: If the value is greater than 1000, we return only 1000
    #   items.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. (You received this
    #   token from a prior call.)
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_ids
    #   One or more endpoint IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpointsRequest AWS API Documentation
    #
    class DescribeVpcEndpointsRequest < Struct.new(
      :dry_run,
      :filters,
      :max_results,
      :next_token,
      :vpc_endpoint_ids)
      include Aws::Structure
    end

    # Contains the output of DescribeVpcEndpoints.
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of items. If there are
    #   no additional items to return, the string is empty.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoints
    #   Information about the endpoints.
    #   @return [Array<Types::VpcEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcEndpointsResult AWS API Documentation
    #
    class DescribeVpcEndpointsResult < Struct.new(
      :next_token,
      :vpc_endpoints)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVpcPeeringConnections.
    #
    # @note When making an API call, you may pass DescribeVpcPeeringConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         dry_run: false,
    #         vpc_peering_connection_ids: ["String"],
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `accepter-vpc-info.cidr-block` - The IPv4 CIDR block of the peer
    #     VPC.
    #
    #   * `accepter-vpc-info.owner-id` - The AWS account ID of the owner of
    #     the peer VPC.
    #
    #   * `accepter-vpc-info.vpc-id` - The ID of the peer VPC.
    #
    #   * `expiration-time` - The expiration date and time for the VPC
    #     peering connection.
    #
    #   * `requester-vpc-info.cidr-block` - The IPv4 CIDR block of the
    #     requester's VPC.
    #
    #   * `requester-vpc-info.owner-id` - The AWS account ID of the owner of
    #     the requester VPC.
    #
    #   * `requester-vpc-info.vpc-id` - The ID of the requester VPC.
    #
    #   * `status-code` - The status of the VPC peering connection
    #     (`pending-acceptance` \| `failed` \| `expired` \| `provisioning`
    #     \| `active` \| `deleted` \| `rejected`).
    #
    #   * `status-message` - A message that provides more information about
    #     the status of the VPC peering connection, if applicable.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-peering-connection-id` - The ID of the VPC peering
    #     connection.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_peering_connection_ids
    #   One or more VPC peering connection IDs.
    #
    #   Default: Describes all your VPC peering connections.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcPeeringConnectionsRequest AWS API Documentation
    #
    class DescribeVpcPeeringConnectionsRequest < Struct.new(
      :filters,
      :dry_run,
      :vpc_peering_connection_ids)
      include Aws::Structure
    end

    # Contains the output of DescribeVpcPeeringConnections.
    #
    # @!attribute [rw] vpc_peering_connections
    #   Information about the VPC peering connections.
    #   @return [Array<Types::VpcPeeringConnection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcPeeringConnectionsResult AWS API Documentation
    #
    class DescribeVpcPeeringConnectionsResult < Struct.new(
      :vpc_peering_connections)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVpcs.
    #
    # @note When making an API call, you may pass DescribeVpcsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         vpc_ids: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `cidr` - The primary IPv4 CIDR block of the VPC. The CIDR block
    #     you specify must exactly match the VPC's CIDR block for
    #     information to be returned for the VPC. Must contain the slash
    #     followed by one or two digits (for example, `/28`).
    #
    #   * `cidr-block-association.cidr-block` - An IPv4 CIDR block
    #     associated with the VPC.
    #
    #   * `cidr-block-association.association-id` - The association ID for
    #     an IPv4 CIDR block associated with the VPC.
    #
    #   * `cidr-block-association.state` - The state of an IPv4 CIDR block
    #     associated with the VPC.
    #
    #   * `dhcp-options-id` - The ID of a set of DHCP options.
    #
    #   * `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block
    #     associated with the VPC.
    #
    #   * `ipv6-cidr-block-association.association-id` - The association ID
    #     for an IPv6 CIDR block associated with the VPC.
    #
    #   * `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR
    #     block associated with the VPC.
    #
    #   * `isDefault` - Indicates whether the VPC is the default VPC.
    #
    #   * `state` - The state of the VPC (`pending` \| `available`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `vpc-id` - The ID of the VPC.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] vpc_ids
    #   One or more VPC IDs.
    #
    #   Default: Describes all your VPCs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcsRequest AWS API Documentation
    #
    class DescribeVpcsRequest < Struct.new(
      :filters,
      :vpc_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeVpcs.
    #
    # @!attribute [rw] vpcs
    #   Information about one or more VPCs.
    #   @return [Array<Types::Vpc>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpcsResult AWS API Documentation
    #
    class DescribeVpcsResult < Struct.new(
      :vpcs)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVpnConnections.
    #
    # @note When making an API call, you may pass DescribeVpnConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         vpn_connection_ids: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `customer-gateway-configuration` - The configuration information
    #     for the customer gateway.
    #
    #   * `customer-gateway-id` - The ID of a customer gateway associated
    #     with the VPN connection.
    #
    #   * `state` - The state of the VPN connection (`pending` \|
    #     `available` \| `deleting` \| `deleted`).
    #
    #   * `option.static-routes-only` - Indicates whether the connection has
    #     static routes only. Used for devices that do not support Border
    #     Gateway Protocol (BGP).
    #
    #   * `route.destination-cidr-block` - The destination CIDR block. This
    #     corresponds to the subnet used in a customer data center.
    #
    #   * `bgp-asn` - The BGP Autonomous System Number (ASN) associated with
    #     a BGP device.
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `type` - The type of VPN connection. Currently the only supported
    #     type is `ipsec.1`.
    #
    #   * `vpn-connection-id` - The ID of the VPN connection.
    #
    #   * `vpn-gateway-id` - The ID of a virtual private gateway associated
    #     with the VPN connection.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] vpn_connection_ids
    #   One or more VPN connection IDs.
    #
    #   Default: Describes your VPN connections.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpnConnectionsRequest AWS API Documentation
    #
    class DescribeVpnConnectionsRequest < Struct.new(
      :filters,
      :vpn_connection_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeVpnConnections.
    #
    # @!attribute [rw] vpn_connections
    #   Information about one or more VPN connections.
    #   @return [Array<Types::VpnConnection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpnConnectionsResult AWS API Documentation
    #
    class DescribeVpnConnectionsResult < Struct.new(
      :vpn_connections)
      include Aws::Structure
    end

    # Contains the parameters for DescribeVpnGateways.
    #
    # @note When making an API call, you may pass DescribeVpnGatewaysRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String",
    #             values: ["String"],
    #           },
    #         ],
    #         vpn_gateway_ids: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] filters
    #   One or more filters.
    #
    #   * `attachment.state` - The current state of the attachment between
    #     the gateway and the VPC (`attaching` \| `attached` \| `detaching`
    #     \| `detached`).
    #
    #   * `attachment.vpc-id` - The ID of an attached VPC.
    #
    #   * `availability-zone` - The Availability Zone for the virtual
    #     private gateway (if applicable).
    #
    #   * `state` - The state of the virtual private gateway (`pending` \|
    #     `available` \| `deleting` \| `deleted`).
    #
    #   * `tag`\:*key*=*value* - The key/value combination of a tag assigned
    #     to the resource. Specify the key of the tag in the filter name and
    #     the value of the tag in the filter value. For example, for the tag
    #     Purpose=X, specify `tag:Purpose` for the filter name and `X` for
    #     the filter value.
    #
    #   * `tag-key` - The key of a tag assigned to the resource. This filter
    #     is independent of the `tag-value` filter. For example, if you use
    #     both the filter "tag-key=Purpose" and the filter
    #     "tag-value=X", you get any resources assigned both the tag key
    #     Purpose (regardless of what the tag's value is), and the tag
    #     value X (regardless of what the tag's key is). If you want to
    #     list only resources where Purpose is X, see the
    #     `tag`\:*key*=*value* filter.
    #
    #   * `tag-value` - The value of a tag assigned to the resource. This
    #     filter is independent of the `tag-key` filter.
    #
    #   * `type` - The type of virtual private gateway. Currently the only
    #     supported type is `ipsec.1`.
    #
    #   * `vpn-gateway-id` - The ID of the virtual private gateway.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] vpn_gateway_ids
    #   One or more virtual private gateway IDs.
    #
    #   Default: Describes all your virtual private gateways.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpnGatewaysRequest AWS API Documentation
    #
    class DescribeVpnGatewaysRequest < Struct.new(
      :filters,
      :vpn_gateway_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of DescribeVpnGateways.
    #
    # @!attribute [rw] vpn_gateways
    #   Information about one or more virtual private gateways.
    #   @return [Array<Types::VpnGateway>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DescribeVpnGatewaysResult AWS API Documentation
    #
    class DescribeVpnGatewaysResult < Struct.new(
      :vpn_gateways)
      include Aws::Structure
    end

    # Contains the parameters for DetachClassicLinkVpc.
    #
    # @note When making an API call, you may pass DetachClassicLinkVpcRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         instance_id: "String", # required
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance to unlink from the VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC to which the instance is linked.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachClassicLinkVpcRequest AWS API Documentation
    #
    class DetachClassicLinkVpcRequest < Struct.new(
      :dry_run,
      :instance_id,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the output of DetachClassicLinkVpc.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachClassicLinkVpcResult AWS API Documentation
    #
    class DetachClassicLinkVpcResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for DetachInternetGateway.
    #
    # @note When making an API call, you may pass DetachInternetGatewayRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         internet_gateway_id: "String", # required
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] internet_gateway_id
    #   The ID of the Internet gateway.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachInternetGatewayRequest AWS API Documentation
    #
    class DetachInternetGatewayRequest < Struct.new(
      :dry_run,
      :internet_gateway_id,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the parameters for DetachNetworkInterface.
    #
    # @note When making an API call, you may pass DetachNetworkInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         attachment_id: "String", # required
    #         dry_run: false,
    #         force: false,
    #       }
    #
    # @!attribute [rw] attachment_id
    #   The ID of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] force
    #   Specifies whether to force a detachment.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachNetworkInterfaceRequest AWS API Documentation
    #
    class DetachNetworkInterfaceRequest < Struct.new(
      :attachment_id,
      :dry_run,
      :force)
      include Aws::Structure
    end

    # Contains the parameters for DetachVolume.
    #
    # @note When making an API call, you may pass DetachVolumeRequest
    #   data as a hash:
    #
    #       {
    #         device: "String",
    #         force: false,
    #         instance_id: "String",
    #         volume_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] device
    #   The device name.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Forces detachment if the previous detachment attempt did not occur
    #   cleanly (for example, logging into an instance, unmounting the
    #   volume, and detaching normally). This option can lead to data loss
    #   or a corrupted file system. Use this option only as a last resort to
    #   detach a volume from a failed instance. The instance won't have an
    #   opportunity to flush file system caches or file system metadata. If
    #   you use this option, you must perform file system check and repair
    #   procedures.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachVolumeRequest AWS API Documentation
    #
    class DetachVolumeRequest < Struct.new(
      :device,
      :force,
      :instance_id,
      :volume_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for DetachVpnGateway.
    #
    # @note When making an API call, you may pass DetachVpnGatewayRequest
    #   data as a hash:
    #
    #       {
    #         vpc_id: "String", # required
    #         vpn_gateway_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpn_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DetachVpnGatewayRequest AWS API Documentation
    #
    class DetachVpnGatewayRequest < Struct.new(
      :vpc_id,
      :vpn_gateway_id,
      :dry_run)
      include Aws::Structure
    end

    # Describes a DHCP configuration option.
    #
    # @!attribute [rw] key
    #   The name of a DHCP option.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more values for the DHCP option.
    #   @return [Array<Types::AttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DhcpConfiguration AWS API Documentation
    #
    class DhcpConfiguration < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # Describes a set of DHCP options.
    #
    # @!attribute [rw] dhcp_configurations
    #   One or more DHCP options in the set.
    #   @return [Array<Types::DhcpConfiguration>]
    #
    # @!attribute [rw] dhcp_options_id
    #   The ID of the set of DHCP options.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the DHCP options set.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DhcpOptions AWS API Documentation
    #
    class DhcpOptions < Struct.new(
      :dhcp_configurations,
      :dhcp_options_id,
      :tags)
      include Aws::Structure
    end

    # Contains the parameters for DisableVgwRoutePropagation.
    #
    # @note When making an API call, you may pass DisableVgwRoutePropagationRequest
    #   data as a hash:
    #
    #       {
    #         gateway_id: "String", # required
    #         route_table_id: "String", # required
    #       }
    #
    # @!attribute [rw] gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVgwRoutePropagationRequest AWS API Documentation
    #
    class DisableVgwRoutePropagationRequest < Struct.new(
      :gateway_id,
      :route_table_id)
      include Aws::Structure
    end

    # Contains the parameters for DisableVpcClassicLinkDnsSupport.
    #
    # @note When making an API call, you may pass DisableVpcClassicLinkDnsSupportRequest
    #   data as a hash:
    #
    #       {
    #         vpc_id: "String",
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVpcClassicLinkDnsSupportRequest AWS API Documentation
    #
    class DisableVpcClassicLinkDnsSupportRequest < Struct.new(
      :vpc_id)
      include Aws::Structure
    end

    # Contains the output of DisableVpcClassicLinkDnsSupport.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVpcClassicLinkDnsSupportResult AWS API Documentation
    #
    class DisableVpcClassicLinkDnsSupportResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for DisableVpcClassicLink.
    #
    # @note When making an API call, you may pass DisableVpcClassicLinkRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVpcClassicLinkRequest AWS API Documentation
    #
    class DisableVpcClassicLinkRequest < Struct.new(
      :dry_run,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the output of DisableVpcClassicLink.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisableVpcClassicLinkResult AWS API Documentation
    #
    class DisableVpcClassicLinkResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for DisassociateAddress.
    #
    # @note When making an API call, you may pass DisassociateAddressRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "String",
    #         public_ip: "String",
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] association_id
    #   \[EC2-VPC\] The association ID. Required for EC2-VPC.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   \[EC2-Classic\] The Elastic IP address. Required for EC2-Classic.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateAddressRequest AWS API Documentation
    #
    class DisassociateAddressRequest < Struct.new(
      :association_id,
      :public_ip,
      :dry_run)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateIamInstanceProfileRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "String", # required
    #       }
    #
    # @!attribute [rw] association_id
    #   The ID of the IAM instance profile association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateIamInstanceProfileRequest AWS API Documentation
    #
    class DisassociateIamInstanceProfileRequest < Struct.new(
      :association_id)
      include Aws::Structure
    end

    # @!attribute [rw] iam_instance_profile_association
    #   Information about the IAM instance profile association.
    #   @return [Types::IamInstanceProfileAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateIamInstanceProfileResult AWS API Documentation
    #
    class DisassociateIamInstanceProfileResult < Struct.new(
      :iam_instance_profile_association)
      include Aws::Structure
    end

    # Contains the parameters for DisassociateRouteTable.
    #
    # @note When making an API call, you may pass DisassociateRouteTableRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] association_id
    #   The association ID representing the current association between the
    #   route table and subnet.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateRouteTableRequest AWS API Documentation
    #
    class DisassociateRouteTableRequest < Struct.new(
      :association_id,
      :dry_run)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateSubnetCidrBlockRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "String", # required
    #       }
    #
    # @!attribute [rw] association_id
    #   The association ID for the CIDR block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateSubnetCidrBlockRequest AWS API Documentation
    #
    class DisassociateSubnetCidrBlockRequest < Struct.new(
      :association_id)
      include Aws::Structure
    end

    # @!attribute [rw] ipv_6_cidr_block_association
    #   Information about the IPv6 CIDR block association.
    #   @return [Types::SubnetIpv6CidrBlockAssociation]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateSubnetCidrBlockResult AWS API Documentation
    #
    class DisassociateSubnetCidrBlockResult < Struct.new(
      :ipv_6_cidr_block_association,
      :subnet_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateVpcCidrBlockRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "String", # required
    #       }
    #
    # @!attribute [rw] association_id
    #   The association ID for the CIDR block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateVpcCidrBlockRequest AWS API Documentation
    #
    class DisassociateVpcCidrBlockRequest < Struct.new(
      :association_id)
      include Aws::Structure
    end

    # @!attribute [rw] ipv_6_cidr_block_association
    #   Information about the IPv6 CIDR block association.
    #   @return [Types::VpcIpv6CidrBlockAssociation]
    #
    # @!attribute [rw] cidr_block_association
    #   Information about the IPv4 CIDR block association.
    #   @return [Types::VpcCidrBlockAssociation]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DisassociateVpcCidrBlockResult AWS API Documentation
    #
    class DisassociateVpcCidrBlockResult < Struct.new(
      :ipv_6_cidr_block_association,
      :cidr_block_association,
      :vpc_id)
      include Aws::Structure
    end

    # Describes a disk image.
    #
    # @note When making an API call, you may pass DiskImage
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         image: {
    #           bytes: 1, # required
    #           format: "VMDK", # required, accepts VMDK, RAW, VHD
    #           import_manifest_url: "String", # required
    #         },
    #         volume: {
    #           size: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   A description of the disk image.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   Information about the disk image.
    #   @return [Types::DiskImageDetail]
    #
    # @!attribute [rw] volume
    #   Information about the volume.
    #   @return [Types::VolumeDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DiskImage AWS API Documentation
    #
    class DiskImage < Struct.new(
      :description,
      :image,
      :volume)
      include Aws::Structure
    end

    # Describes a disk image.
    #
    # @!attribute [rw] checksum
    #   The checksum computed for the disk image.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The disk image format.
    #   @return [String]
    #
    # @!attribute [rw] import_manifest_url
    #   A presigned URL for the import manifest stored in Amazon S3. For
    #   information about creating a presigned URL for an Amazon S3 object,
    #   read the "Query String Request Authentication Alternative" section
    #   of the [Authenticating REST Requests][1] topic in the *Amazon Simple
    #   Storage Service Developer Guide*.
    #
    #   For information about the import manifest referenced by this API
    #   action, see [VM Import Manifest][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html
    #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the disk image, in GiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DiskImageDescription AWS API Documentation
    #
    class DiskImageDescription < Struct.new(
      :checksum,
      :format,
      :import_manifest_url,
      :size)
      include Aws::Structure
    end

    # Describes a disk image.
    #
    # @note When making an API call, you may pass DiskImageDetail
    #   data as a hash:
    #
    #       {
    #         bytes: 1, # required
    #         format: "VMDK", # required, accepts VMDK, RAW, VHD
    #         import_manifest_url: "String", # required
    #       }
    #
    # @!attribute [rw] bytes
    #   The size of the disk image, in GiB.
    #   @return [Integer]
    #
    # @!attribute [rw] format
    #   The disk image format.
    #   @return [String]
    #
    # @!attribute [rw] import_manifest_url
    #   A presigned URL for the import manifest stored in Amazon S3 and
    #   presented here as an Amazon S3 presigned URL. For information about
    #   creating a presigned URL for an Amazon S3 object, read the "Query
    #   String Request Authentication Alternative" section of the
    #   [Authenticating REST Requests][1] topic in the *Amazon Simple
    #   Storage Service Developer Guide*.
    #
    #   For information about the import manifest referenced by this API
    #   action, see [VM Import Manifest][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html
    #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DiskImageDetail AWS API Documentation
    #
    class DiskImageDetail < Struct.new(
      :bytes,
      :format,
      :import_manifest_url)
      include Aws::Structure
    end

    # Describes a disk image volume.
    #
    # @!attribute [rw] id
    #   The volume identifier.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the volume, in GiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/DiskImageVolumeDescription AWS API Documentation
    #
    class DiskImageVolumeDescription < Struct.new(
      :id,
      :size)
      include Aws::Structure
    end

    # Describes a block device for an EBS volume.
    #
    # @note When making an API call, you may pass EbsBlockDevice
    #   data as a hash:
    #
    #       {
    #         encrypted: false,
    #         delete_on_termination: false,
    #         iops: 1,
    #         snapshot_id: "String",
    #         volume_size: 1,
    #         volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #       }
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the EBS volume is encrypted. Encrypted Amazon EBS
    #   volumes may only be attached to instances that support Amazon EBS
    #   encryption.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the EBS volume is deleted on instance termination.
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second (IOPS) that the volume
    #   supports. For `io1`, this represents the number of IOPS that are
    #   provisioned for the volume. For `gp2`, this represents the baseline
    #   performance of the volume and the rate at which the volume
    #   accumulates I/O credits for bursting. For more information about
    #   General Purpose SSD baseline performance, I/O credits, and bursting,
    #   see [Amazon EBS Volume Types][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
    #
    #   Constraint: Range is 100-20000 IOPS for `io1` volumes and 100-10000
    #   IOPS for `gp2` volumes.
    #
    #   Condition: This parameter is required for requests to create `io1`
    #   volumes; it is not used in requests to create `gp2`, `st1`, `sc1`,
    #   or `standard` volumes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   The size of the volume, in GiB.
    #
    #   Constraints: 1-16384 for General Purpose SSD (`gp2`), 4-16384 for
    #   Provisioned IOPS SSD (`io1`), 500-16384 for Throughput Optimized HDD
    #   (`st1`), 500-16384 for Cold HDD (`sc1`), and 1-1024 for Magnetic
    #   (`standard`) volumes. If you specify a snapshot, the volume size
    #   must be equal to or larger than the snapshot size.
    #
    #   Default: If you're creating the volume from a snapshot and don't
    #   specify a volume size, the default is the snapshot size.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   The volume type: `gp2`, `io1`, `st1`, `sc1`, or `standard`.
    #
    #   Default: `standard`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EbsBlockDevice AWS API Documentation
    #
    class EbsBlockDevice < Struct.new(
      :encrypted,
      :delete_on_termination,
      :iops,
      :snapshot_id,
      :volume_size,
      :volume_type)
      include Aws::Structure
    end

    # Describes a parameter used to set up an EBS volume in a block device
    # mapping.
    #
    # @!attribute [rw] attach_time
    #   The time stamp when the attachment initiated.
    #   @return [Time]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the volume is deleted on instance termination.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The attachment state.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The ID of the EBS volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EbsInstanceBlockDevice AWS API Documentation
    #
    class EbsInstanceBlockDevice < Struct.new(
      :attach_time,
      :delete_on_termination,
      :status,
      :volume_id)
      include Aws::Structure
    end

    # Describes information used to set up an EBS volume specified in a
    # block device mapping.
    #
    # @note When making an API call, you may pass EbsInstanceBlockDeviceSpecification
    #   data as a hash:
    #
    #       {
    #         delete_on_termination: false,
    #         volume_id: "String",
    #       }
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the volume is deleted on instance termination.
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_id
    #   The ID of the EBS volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EbsInstanceBlockDeviceSpecification AWS API Documentation
    #
    class EbsInstanceBlockDeviceSpecification < Struct.new(
      :delete_on_termination,
      :volume_id)
      include Aws::Structure
    end

    # Describes an egress-only Internet gateway.
    #
    # @!attribute [rw] attachments
    #   Information about the attachment of the egress-only Internet
    #   gateway.
    #   @return [Array<Types::InternetGatewayAttachment>]
    #
    # @!attribute [rw] egress_only_internet_gateway_id
    #   The ID of the egress-only Internet gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EgressOnlyInternetGateway AWS API Documentation
    #
    class EgressOnlyInternetGateway < Struct.new(
      :attachments,
      :egress_only_internet_gateway_id)
      include Aws::Structure
    end

    # Describes the association between an instance and an Elastic GPU.
    #
    # @!attribute [rw] elastic_gpu_id
    #   The ID of the Elastic GPU.
    #   @return [String]
    #
    # @!attribute [rw] elastic_gpu_association_id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] elastic_gpu_association_state
    #   The state of the association between the instance and the Elastic
    #   GPU.
    #   @return [String]
    #
    # @!attribute [rw] elastic_gpu_association_time
    #   The time the Elastic GPU was associated with the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ElasticGpuAssociation AWS API Documentation
    #
    class ElasticGpuAssociation < Struct.new(
      :elastic_gpu_id,
      :elastic_gpu_association_id,
      :elastic_gpu_association_state,
      :elastic_gpu_association_time)
      include Aws::Structure
    end

    # Describes the status of an Elastic GPU.
    #
    # @!attribute [rw] status
    #   The health status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ElasticGpuHealth AWS API Documentation
    #
    class ElasticGpuHealth < Struct.new(
      :status)
      include Aws::Structure
    end

    # A specification for an Elastic GPU.
    #
    # @note When making an API call, you may pass ElasticGpuSpecification
    #   data as a hash:
    #
    #       {
    #         type: "String", # required
    #       }
    #
    # @!attribute [rw] type
    #   The type of Elastic GPU.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ElasticGpuSpecification AWS API Documentation
    #
    class ElasticGpuSpecification < Struct.new(
      :type)
      include Aws::Structure
    end

    # Describes an Elastic GPU.
    #
    # @!attribute [rw] elastic_gpu_id
    #   The ID of the Elastic GPU.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in the which the Elastic GPU resides.
    #   @return [String]
    #
    # @!attribute [rw] elastic_gpu_type
    #   The type of Elastic GPU.
    #   @return [String]
    #
    # @!attribute [rw] elastic_gpu_health
    #   The status of the Elastic GPU.
    #   @return [Types::ElasticGpuHealth]
    #
    # @!attribute [rw] elastic_gpu_state
    #   The state of the Elastic GPU.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance to which the Elastic GPU is attached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ElasticGpus AWS API Documentation
    #
    class ElasticGpus < Struct.new(
      :elastic_gpu_id,
      :availability_zone,
      :elastic_gpu_type,
      :elastic_gpu_health,
      :elastic_gpu_state,
      :instance_id)
      include Aws::Structure
    end

    # Contains the parameters for EnableVgwRoutePropagation.
    #
    # @note When making an API call, you may pass EnableVgwRoutePropagationRequest
    #   data as a hash:
    #
    #       {
    #         gateway_id: "String", # required
    #         route_table_id: "String", # required
    #       }
    #
    # @!attribute [rw] gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVgwRoutePropagationRequest AWS API Documentation
    #
    class EnableVgwRoutePropagationRequest < Struct.new(
      :gateway_id,
      :route_table_id)
      include Aws::Structure
    end

    # Contains the parameters for EnableVolumeIO.
    #
    # @note When making an API call, you may pass EnableVolumeIORequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         volume_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVolumeIORequest AWS API Documentation
    #
    class EnableVolumeIORequest < Struct.new(
      :dry_run,
      :volume_id)
      include Aws::Structure
    end

    # Contains the parameters for EnableVpcClassicLinkDnsSupport.
    #
    # @note When making an API call, you may pass EnableVpcClassicLinkDnsSupportRequest
    #   data as a hash:
    #
    #       {
    #         vpc_id: "String",
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVpcClassicLinkDnsSupportRequest AWS API Documentation
    #
    class EnableVpcClassicLinkDnsSupportRequest < Struct.new(
      :vpc_id)
      include Aws::Structure
    end

    # Contains the output of EnableVpcClassicLinkDnsSupport.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVpcClassicLinkDnsSupportResult AWS API Documentation
    #
    class EnableVpcClassicLinkDnsSupportResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for EnableVpcClassicLink.
    #
    # @note When making an API call, you may pass EnableVpcClassicLinkRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVpcClassicLinkRequest AWS API Documentation
    #
    class EnableVpcClassicLinkRequest < Struct.new(
      :dry_run,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the output of EnableVpcClassicLink.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EnableVpcClassicLinkResult AWS API Documentation
    #
    class EnableVpcClassicLinkResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Describes a Spot fleet event.
    #
    # @!attribute [rw] event_description
    #   The description of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_sub_type
    #   The event.
    #
    #   The following are the `error` events.
    #
    #   * `iamFleetRoleInvalid` - The Spot fleet did not have the required
    #     permissions either to launch or terminate an instance.
    #
    #   * `launchSpecTemporarilyBlacklisted` - The configuration is not
    #     valid and several attempts to launch instances have failed. For
    #     more information, see the description of the event.
    #
    #   * `spotFleetRequestConfigurationInvalid` - The configuration is not
    #     valid. For more information, see the description of the event.
    #
    #   * `spotInstanceCountLimitExceeded` - You've reached the limit on
    #     the number of Spot instances that you can launch.
    #
    #   The following are the `fleetRequestChange` events.
    #
    #   * `active` - The Spot fleet has been validated and Amazon EC2 is
    #     attempting to maintain the target number of running Spot
    #     instances.
    #
    #   * `cancelled` - The Spot fleet is canceled and has no running Spot
    #     instances. The Spot fleet will be deleted two days after its
    #     instances were terminated.
    #
    #   * `cancelled_running` - The Spot fleet is canceled and will not
    #     launch additional Spot instances, but its existing Spot instances
    #     continue to run until they are interrupted or terminated.
    #
    #   * `cancelled_terminating` - The Spot fleet is canceled and its Spot
    #     instances are terminating.
    #
    #   * `expired` - The Spot fleet request has expired. A subsequent event
    #     indicates that the instances were terminated, if the request was
    #     created with `TerminateInstancesWithExpiration` set.
    #
    #   * `modify_in_progress` - A request to modify the Spot fleet request
    #     was accepted and is in progress.
    #
    #   * `modify_successful` - The Spot fleet request was modified.
    #
    #   * `price_update` - The bid price for a launch configuration was
    #     adjusted because it was too high. This change is permanent.
    #
    #   * `submitted` - The Spot fleet request is being evaluated and Amazon
    #     EC2 is preparing to launch the target number of Spot instances.
    #
    #   The following are the `instanceChange` events.
    #
    #   * `launched` - A bid was fulfilled and a new instance was launched.
    #
    #   * `terminated` - An instance was terminated by the user.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance. This information is available only for
    #   `instanceChange` events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/EventInformation AWS API Documentation
    #
    class EventInformation < Struct.new(
      :event_description,
      :event_sub_type,
      :instance_id)
      include Aws::Structure
    end

    # Describes an instance export task.
    #
    # @!attribute [rw] description
    #   A description of the resource being exported.
    #   @return [String]
    #
    # @!attribute [rw] export_task_id
    #   The ID of the export task.
    #   @return [String]
    #
    # @!attribute [rw] export_to_s3_task
    #   Information about the export task.
    #   @return [Types::ExportToS3Task]
    #
    # @!attribute [rw] instance_export_details
    #   Information about the instance to export.
    #   @return [Types::InstanceExportDetails]
    #
    # @!attribute [rw] state
    #   The state of the export task.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message related to the export task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ExportTask AWS API Documentation
    #
    class ExportTask < Struct.new(
      :description,
      :export_task_id,
      :export_to_s3_task,
      :instance_export_details,
      :state,
      :status_message)
      include Aws::Structure
    end

    # Describes the format and location for an instance export task.
    #
    # @!attribute [rw] container_format
    #   The container format used to combine disk images with metadata (such
    #   as OVF). If absent, only the disk image is exported.
    #   @return [String]
    #
    # @!attribute [rw] disk_image_format
    #   The format for the exported image.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket for the destination image. The destination bucket must
    #   exist and grant WRITE and READ\_ACP permissions to the AWS account
    #   `vm-import-export@amazon.com`.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The encryption key for your S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ExportToS3Task AWS API Documentation
    #
    class ExportToS3Task < Struct.new(
      :container_format,
      :disk_image_format,
      :s3_bucket,
      :s3_key)
      include Aws::Structure
    end

    # Describes an instance export task.
    #
    # @note When making an API call, you may pass ExportToS3TaskSpecification
    #   data as a hash:
    #
    #       {
    #         container_format: "ova", # accepts ova
    #         disk_image_format: "VMDK", # accepts VMDK, RAW, VHD
    #         s3_bucket: "String",
    #         s3_prefix: "String",
    #       }
    #
    # @!attribute [rw] container_format
    #   The container format used to combine disk images with metadata (such
    #   as OVF). If absent, only the disk image is exported.
    #   @return [String]
    #
    # @!attribute [rw] disk_image_format
    #   The format for the exported image.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket for the destination image. The destination bucket must
    #   exist and grant WRITE and READ\_ACP permissions to the AWS account
    #   `vm-import-export@amazon.com`.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The image is written to a single object in the S3 bucket at the S3
    #   key s3prefix + exportTaskId + '.' + diskImageFormat.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ExportToS3TaskSpecification AWS API Documentation
    #
    class ExportToS3TaskSpecification < Struct.new(
      :container_format,
      :disk_image_format,
      :s3_bucket,
      :s3_prefix)
      include Aws::Structure
    end

    # A filter name and value pair that is used to return a more specific
    # list of results. Filters can be used to match a set of resources by
    # various criteria, such as tags, attributes, or IDs.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "String",
    #         values: ["String"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter. Filter names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more filter values. Filter values are case-sensitive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

    # Describes a flow log.
    #
    # @!attribute [rw] creation_time
    #   The date and time the flow log was created.
    #   @return [Time]
    #
    # @!attribute [rw] deliver_logs_error_message
    #   Information about the error that occurred. `Rate limited` indicates
    #   that CloudWatch logs throttling has been applied for one or more
    #   network interfaces, or that you've reached the limit on the number
    #   of CloudWatch Logs log groups that you can create. `Access error`
    #   indicates that the IAM role associated with the flow log does not
    #   have sufficient permissions to publish to CloudWatch Logs. `Unknown
    #   error` indicates an internal error.
    #   @return [String]
    #
    # @!attribute [rw] deliver_logs_permission_arn
    #   The ARN of the IAM role that posts logs to CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] deliver_logs_status
    #   The status of the logs delivery (`SUCCESS` \| `FAILED`).
    #   @return [String]
    #
    # @!attribute [rw] flow_log_id
    #   The flow log ID.
    #   @return [String]
    #
    # @!attribute [rw] flow_log_status
    #   The status of the flow log (`ACTIVE`).
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The name of the flow log group.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource on which the flow log was created.
    #   @return [String]
    #
    # @!attribute [rw] traffic_type
    #   The type of traffic captured for the flow log.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/FlowLog AWS API Documentation
    #
    class FlowLog < Struct.new(
      :creation_time,
      :deliver_logs_error_message,
      :deliver_logs_permission_arn,
      :deliver_logs_status,
      :flow_log_id,
      :flow_log_status,
      :log_group_name,
      :resource_id,
      :traffic_type)
      include Aws::Structure
    end

    # Describes an Amazon FPGA image (AFI).
    #
    # @!attribute [rw] fpga_image_id
    #   The FPGA image identifier (AFI ID).
    #   @return [String]
    #
    # @!attribute [rw] fpga_image_global_id
    #   The global FPGA image identifier (AGFI ID).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AFI.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AFI.
    #   @return [String]
    #
    # @!attribute [rw] shell_version
    #   The version of the AWS Shell that was used to create the bitstream.
    #   @return [String]
    #
    # @!attribute [rw] pci_id
    #   Information about the PCI bus.
    #   @return [Types::PciId]
    #
    # @!attribute [rw] state
    #   Information about the state of the AFI.
    #   @return [Types::FpgaImageState]
    #
    # @!attribute [rw] create_time
    #   The date and time the AFI was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The time of the most recent update to the AFI.
    #   @return [Time]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the AFI owner.
    #   @return [String]
    #
    # @!attribute [rw] owner_alias
    #   The alias of the AFI owner. Possible values include `self`,
    #   `amazon`, and `aws-marketplace`.
    #   @return [String]
    #
    # @!attribute [rw] product_codes
    #   The product codes for the AFI.
    #   @return [Array<Types::ProductCode>]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the AFI.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] public
    #   Indicates whether the AFI is public.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/FpgaImage AWS API Documentation
    #
    class FpgaImage < Struct.new(
      :fpga_image_id,
      :fpga_image_global_id,
      :name,
      :description,
      :shell_version,
      :pci_id,
      :state,
      :create_time,
      :update_time,
      :owner_id,
      :owner_alias,
      :product_codes,
      :tags,
      :public)
      include Aws::Structure
    end

    # Describes an Amazon FPGA image (AFI) attribute.
    #
    # @!attribute [rw] fpga_image_id
    #   The ID of the AFI.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AFI.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AFI.
    #   @return [String]
    #
    # @!attribute [rw] load_permissions
    #   One or more load permissions.
    #   @return [Array<Types::LoadPermission>]
    #
    # @!attribute [rw] product_codes
    #   One or more product codes.
    #   @return [Array<Types::ProductCode>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/FpgaImageAttribute AWS API Documentation
    #
    class FpgaImageAttribute < Struct.new(
      :fpga_image_id,
      :name,
      :description,
      :load_permissions,
      :product_codes)
      include Aws::Structure
    end

    # Describes the state of the bitstream generation process for an Amazon
    # FPGA image (AFI).
    #
    # @!attribute [rw] code
    #   The state. The following are the possible values:
    #
    #   * `pending` - AFI bitstream generation is in progress.
    #
    #   * `available` - The AFI is available for use.
    #
    #   * `failed` - AFI bitstream generation failed.
    #
    #   * `unavailable` - The AFI is no longer available for use.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If the state is `failed`, this is the error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/FpgaImageState AWS API Documentation
    #
    class FpgaImageState < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # Contains the parameters for GetConsoleOutput.
    #
    # @note When making an API call, you may pass GetConsoleOutputRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetConsoleOutputRequest AWS API Documentation
    #
    class GetConsoleOutputRequest < Struct.new(
      :instance_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of GetConsoleOutput.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The console output, Base64-encoded. If using a command line tool,
    #   the tool decodes the output for you.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time the output was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetConsoleOutputResult AWS API Documentation
    #
    class GetConsoleOutputResult < Struct.new(
      :instance_id,
      :output,
      :timestamp)
      include Aws::Structure
    end

    # Contains the parameters for the request.
    #
    # @note When making an API call, you may pass GetConsoleScreenshotRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         instance_id: "String", # required
    #         wake_up: false,
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] wake_up
    #   When set to `true`, acts as keystroke input and wakes up an instance
    #   that's in standby or "sleep" mode.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetConsoleScreenshotRequest AWS API Documentation
    #
    class GetConsoleScreenshotRequest < Struct.new(
      :dry_run,
      :instance_id,
      :wake_up)
      include Aws::Structure
    end

    # Contains the output of the request.
    #
    # @!attribute [rw] image_data
    #   The data that comprises the image.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetConsoleScreenshotResult AWS API Documentation
    #
    class GetConsoleScreenshotResult < Struct.new(
      :image_data,
      :instance_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetHostReservationPurchasePreviewRequest
    #   data as a hash:
    #
    #       {
    #         host_id_set: ["String"], # required
    #         offering_id: "String", # required
    #       }
    #
    # @!attribute [rw] host_id_set
    #   The ID/s of the Dedicated Host/s that the reservation will be
    #   associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] offering_id
    #   The offering ID of the reservation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetHostReservationPurchasePreviewRequest AWS API Documentation
    #
    class GetHostReservationPurchasePreviewRequest < Struct.new(
      :host_id_set,
      :offering_id)
      include Aws::Structure
    end

    # @!attribute [rw] currency_code
    #   The currency in which the `totalUpfrontPrice` and `totalHourlyPrice`
    #   amounts are specified. At this time, the only supported currency is
    #   `USD`.
    #   @return [String]
    #
    # @!attribute [rw] purchase
    #   The purchase information of the Dedicated Host Reservation and the
    #   Dedicated Hosts associated with it.
    #   @return [Array<Types::Purchase>]
    #
    # @!attribute [rw] total_hourly_price
    #   The potential total hourly price of the reservation per hour.
    #   @return [String]
    #
    # @!attribute [rw] total_upfront_price
    #   The potential total upfront price. This is billed immediately.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetHostReservationPurchasePreviewResult AWS API Documentation
    #
    class GetHostReservationPurchasePreviewResult < Struct.new(
      :currency_code,
      :purchase,
      :total_hourly_price,
      :total_upfront_price)
      include Aws::Structure
    end

    # Contains the parameters for GetPasswordData.
    #
    # @note When making an API call, you may pass GetPasswordDataRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] instance_id
    #   The ID of the Windows instance.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetPasswordDataRequest AWS API Documentation
    #
    class GetPasswordDataRequest < Struct.new(
      :instance_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of GetPasswordData.
    #
    # @!attribute [rw] instance_id
    #   The ID of the Windows instance.
    #   @return [String]
    #
    # @!attribute [rw] password_data
    #   The password of the instance. Returns an empty string if the
    #   password is not available.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time the data was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetPasswordDataResult AWS API Documentation
    #
    class GetPasswordDataResult < Struct.new(
      :instance_id,
      :password_data,
      :timestamp)
      include Aws::Structure
    end

    # Contains the parameters for GetReservedInstanceExchangeQuote.
    #
    # @note When making an API call, you may pass GetReservedInstancesExchangeQuoteRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         reserved_instance_ids: ["String"], # required
    #         target_configurations: [
    #           {
    #             instance_count: 1,
    #             offering_id: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] reserved_instance_ids
    #   The IDs of the Convertible Reserved Instances to exchange.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_configurations
    #   The configuration requirements of the Convertible Reserved Instances
    #   to exchange for your current Convertible Reserved Instances.
    #   @return [Array<Types::TargetConfigurationRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetReservedInstancesExchangeQuoteRequest AWS API Documentation
    #
    class GetReservedInstancesExchangeQuoteRequest < Struct.new(
      :dry_run,
      :reserved_instance_ids,
      :target_configurations)
      include Aws::Structure
    end

    # Contains the output of GetReservedInstancesExchangeQuote.
    #
    # @!attribute [rw] currency_code
    #   The currency of the transaction.
    #   @return [String]
    #
    # @!attribute [rw] is_valid_exchange
    #   If `true`, the exchange is valid. If `false`, the exchange cannot be
    #   completed.
    #   @return [Boolean]
    #
    # @!attribute [rw] output_reserved_instances_will_expire_at
    #   The new end date of the reservation term.
    #   @return [Time]
    #
    # @!attribute [rw] payment_due
    #   The total true upfront charge for the exchange.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instance_value_rollup
    #   The cost associated with the Reserved Instance.
    #   @return [Types::ReservationValue]
    #
    # @!attribute [rw] reserved_instance_value_set
    #   The configuration of your Convertible Reserved Instances.
    #   @return [Array<Types::ReservedInstanceReservationValue>]
    #
    # @!attribute [rw] target_configuration_value_rollup
    #   The cost associated with the Reserved Instance.
    #   @return [Types::ReservationValue]
    #
    # @!attribute [rw] target_configuration_value_set
    #   The values of the target Convertible Reserved Instances.
    #   @return [Array<Types::TargetReservationValue>]
    #
    # @!attribute [rw] validation_failure_reason
    #   Describes the reason why the exchange cannot be completed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GetReservedInstancesExchangeQuoteResult AWS API Documentation
    #
    class GetReservedInstancesExchangeQuoteResult < Struct.new(
      :currency_code,
      :is_valid_exchange,
      :output_reserved_instances_will_expire_at,
      :payment_due,
      :reserved_instance_value_rollup,
      :reserved_instance_value_set,
      :target_configuration_value_rollup,
      :target_configuration_value_set,
      :validation_failure_reason)
      include Aws::Structure
    end

    # Describes a security group.
    #
    # @note When making an API call, you may pass GroupIdentifier
    #   data as a hash:
    #
    #       {
    #         group_name: "String",
    #         group_id: "String",
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/GroupIdentifier AWS API Documentation
    #
    class GroupIdentifier < Struct.new(
      :group_name,
      :group_id)
      include Aws::Structure
    end

    # Describes an event in the history of the Spot fleet request.
    #
    # @!attribute [rw] event_information
    #   Information about the event.
    #   @return [Types::EventInformation]
    #
    # @!attribute [rw] event_type
    #   The event type.
    #
    #   * `error` - Indicates an error with the Spot fleet request.
    #
    #   * `fleetRequestChange` - Indicates a change in the status or
    #     configuration of the Spot fleet request.
    #
    #   * `instanceChange` - Indicates that an instance was launched or
    #     terminated.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time of the event, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/HistoryRecord AWS API Documentation
    #
    class HistoryRecord < Struct.new(
      :event_information,
      :event_type,
      :timestamp)
      include Aws::Structure
    end

    # Describes the properties of the Dedicated Host.
    #
    # @!attribute [rw] auto_placement
    #   Whether auto-placement is on or off.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone of the Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] available_capacity
    #   The number of new instances that can be launched onto the Dedicated
    #   Host.
    #   @return [Types::AvailableCapacity]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency
    #   of the request. For more information, see [How to Ensure
    #   Idempotency][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] host_id
    #   The ID of the Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] host_properties
    #   The hardware specifications of the Dedicated Host.
    #   @return [Types::HostProperties]
    #
    # @!attribute [rw] host_reservation_id
    #   The reservation ID of the Dedicated Host. This returns a `null`
    #   response if the Dedicated Host doesn't have an associated
    #   reservation.
    #   @return [String]
    #
    # @!attribute [rw] instances
    #   The IDs and instance type that are currently running on the
    #   Dedicated Host.
    #   @return [Array<Types::HostInstance>]
    #
    # @!attribute [rw] state
    #   The Dedicated Host's state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Host AWS API Documentation
    #
    class Host < Struct.new(
      :auto_placement,
      :availability_zone,
      :available_capacity,
      :client_token,
      :host_id,
      :host_properties,
      :host_reservation_id,
      :instances,
      :state)
      include Aws::Structure
    end

    # Describes an instance running on a Dedicated Host.
    #
    # @!attribute [rw] instance_id
    #   the IDs of instances that are running on the Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type size (for example, `m3.medium`) of the running
    #   instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/HostInstance AWS API Documentation
    #
    class HostInstance < Struct.new(
      :instance_id,
      :instance_type)
      include Aws::Structure
    end

    # Details about the Dedicated Host Reservation offering.
    #
    # @!attribute [rw] currency_code
    #   The currency of the offering.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the offering (in seconds).
    #   @return [Integer]
    #
    # @!attribute [rw] hourly_price
    #   The hourly price of the offering.
    #   @return [String]
    #
    # @!attribute [rw] instance_family
    #   The instance family of the offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   The ID of the offering.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The available payment option.
    #   @return [String]
    #
    # @!attribute [rw] upfront_price
    #   The upfront price of the offering. Does not apply to No Upfront
    #   offerings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/HostOffering AWS API Documentation
    #
    class HostOffering < Struct.new(
      :currency_code,
      :duration,
      :hourly_price,
      :instance_family,
      :offering_id,
      :payment_option,
      :upfront_price)
      include Aws::Structure
    end

    # Describes properties of a Dedicated Host.
    #
    # @!attribute [rw] cores
    #   The number of cores on the Dedicated Host.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The instance type size that the Dedicated Host supports (for
    #   example, `m3.medium`).
    #   @return [String]
    #
    # @!attribute [rw] sockets
    #   The number of sockets on the Dedicated Host.
    #   @return [Integer]
    #
    # @!attribute [rw] total_v_cpus
    #   The number of vCPUs on the Dedicated Host.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/HostProperties AWS API Documentation
    #
    class HostProperties < Struct.new(
      :cores,
      :instance_type,
      :sockets,
      :total_v_cpus)
      include Aws::Structure
    end

    # Details about the Dedicated Host Reservation and associated Dedicated
    # Hosts.
    #
    # @!attribute [rw] count
    #   The number of Dedicated Hosts the reservation is associated with.
    #   @return [Integer]
    #
    # @!attribute [rw] currency_code
    #   The currency in which the `upfrontPrice` and `hourlyPrice` amounts
    #   are specified. At this time, the only supported currency is `USD`.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The length of the reservation's term, specified in seconds. Can be
    #   `31536000 (1 year)` \| `94608000 (3 years)`.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The date and time that the reservation ends.
    #   @return [Time]
    #
    # @!attribute [rw] host_id_set
    #   The IDs of the Dedicated Hosts associated with the reservation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] host_reservation_id
    #   The ID of the reservation that specifies the associated Dedicated
    #   Hosts.
    #   @return [String]
    #
    # @!attribute [rw] hourly_price
    #   The hourly price of the reservation.
    #   @return [String]
    #
    # @!attribute [rw] instance_family
    #   The instance family of the Dedicated Host Reservation. The instance
    #   family on the Dedicated Host must be the same in order for it to
    #   benefit from the reservation.
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   The ID of the reservation. This remains the same regardless of which
    #   Dedicated Hosts are associated with it.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option selected for this reservation.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The date and time that the reservation started.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the reservation.
    #   @return [String]
    #
    # @!attribute [rw] upfront_price
    #   The upfront price of the reservation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/HostReservation AWS API Documentation
    #
    class HostReservation < Struct.new(
      :count,
      :currency_code,
      :duration,
      :end,
      :host_id_set,
      :host_reservation_id,
      :hourly_price,
      :instance_family,
      :offering_id,
      :payment_option,
      :start,
      :state,
      :upfront_price)
      include Aws::Structure
    end

    # Describes an IAM instance profile.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the instance profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/IamInstanceProfile AWS API Documentation
    #
    class IamInstanceProfile < Struct.new(
      :arn,
      :id)
      include Aws::Structure
    end

    # Describes an association between an IAM instance profile and an
    # instance.
    #
    # @!attribute [rw] association_id
    #   The ID of the association.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile
    #   The IAM instance profile.
    #   @return [Types::IamInstanceProfile]
    #
    # @!attribute [rw] state
    #   The state of the association.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The time the IAM instance profile was associated with the instance.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/IamInstanceProfileAssociation AWS API Documentation
    #
    class IamInstanceProfileAssociation < Struct.new(
      :association_id,
      :instance_id,
      :iam_instance_profile,
      :state,
      :timestamp)
      include Aws::Structure
    end

    # Describes an IAM instance profile.
    #
    # @note When making an API call, you may pass IamInstanceProfileSpecification
    #   data as a hash:
    #
    #       {
    #         arn: "String",
    #         name: "String",
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the instance profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/IamInstanceProfileSpecification AWS API Documentation
    #
    class IamInstanceProfileSpecification < Struct.new(
      :arn,
      :name)
      include Aws::Structure
    end

    # Describes the ICMP type and code.
    #
    # @note When making an API call, you may pass IcmpTypeCode
    #   data as a hash:
    #
    #       {
    #         code: 1,
    #         type: 1,
    #       }
    #
    # @!attribute [rw] code
    #   The ICMP code. A value of -1 means all codes for the specified ICMP
    #   type.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The ICMP type. A value of -1 means all types.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/IcmpTypeCode AWS API Documentation
    #
    class IcmpTypeCode < Struct.new(
      :code,
      :type)
      include Aws::Structure
    end

    # Describes the ID format for a resource.
    #
    # @!attribute [rw] deadline
    #   The date in UTC at which you are permanently switched over to using
    #   longer IDs. If a deadline is not yet available for this resource
    #   type, this field is not returned.
    #   @return [Time]
    #
    # @!attribute [rw] resource
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] use_long_ids
    #   Indicates whether longer IDs (17-character IDs) are enabled for the
    #   resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/IdFormat AWS API Documentation
    #
    class IdFormat < Struct.new(
      :deadline,
      :resource,
      :use_long_ids)
      include Aws::Structure
    end

    # Describes an image.
    #
    # @!attribute [rw] architecture
    #   The architecture of the image.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time the image was created.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] image_location
    #   The location of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] image_type
    #   The type of image.
    #   @return [String]
    #
    # @!attribute [rw] public
    #   Indicates whether the image has public launch permissions. The value
    #   is `true` if this image has public launch permissions or `false` if
    #   it has only implicit and explicit launch permissions.
    #   @return [Boolean]
    #
    # @!attribute [rw] kernel_id
    #   The kernel associated with the image, if any. Only applicable for
    #   machine images.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the image owner.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The value is `Windows` for Windows AMIs; otherwise blank.
    #   @return [String]
    #
    # @!attribute [rw] product_codes
    #   Any product codes associated with the AMI.
    #   @return [Array<Types::ProductCode>]
    #
    # @!attribute [rw] ramdisk_id
    #   The RAM disk associated with the image, if any. Only applicable for
    #   machine images.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the AMI. If the state is `available`, the image
    #   is successfully registered and can be used to launch an instance.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   Any block device mapping entries.
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] description
    #   The description of the AMI that was provided during image creation.
    #   @return [String]
    #
    # @!attribute [rw] ena_support
    #   Specifies whether enhanced networking with ENA is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] hypervisor
    #   The hypervisor type of the image.
    #   @return [String]
    #
    # @!attribute [rw] image_owner_alias
    #   The AWS account alias (for example, `amazon`, `self`) or the AWS
    #   account ID of the AMI owner.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AMI that was provided during image creation.
    #   @return [String]
    #
    # @!attribute [rw] root_device_name
    #   The device name of the root device (for example, `/dev/sda1` or
    #   `/dev/xvda`).
    #   @return [String]
    #
    # @!attribute [rw] root_device_type
    #   The type of root device used by the AMI. The AMI can use an EBS
    #   volume or an instance store volume.
    #   @return [String]
    #
    # @!attribute [rw] sriov_net_support
    #   Specifies whether enhanced networking with the Intel 82599 Virtual
    #   Function interface is enabled.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the state change.
    #   @return [Types::StateReason]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the image.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] virtualization_type
    #   The type of virtualization of the AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Image AWS API Documentation
    #
    class Image < Struct.new(
      :architecture,
      :creation_date,
      :image_id,
      :image_location,
      :image_type,
      :public,
      :kernel_id,
      :owner_id,
      :platform,
      :product_codes,
      :ramdisk_id,
      :state,
      :block_device_mappings,
      :description,
      :ena_support,
      :hypervisor,
      :image_owner_alias,
      :name,
      :root_device_name,
      :root_device_type,
      :sriov_net_support,
      :state_reason,
      :tags,
      :virtualization_type)
      include Aws::Structure
    end

    # Describes an image attribute.
    #
    # @!attribute [rw] block_device_mappings
    #   One or more block device mapping entries.
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] launch_permissions
    #   One or more launch permissions.
    #   @return [Array<Types::LaunchPermission>]
    #
    # @!attribute [rw] product_codes
    #   One or more product codes.
    #   @return [Array<Types::ProductCode>]
    #
    # @!attribute [rw] description
    #   A description for the AMI.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] kernel_id
    #   The kernel ID.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] ramdisk_id
    #   The RAM disk ID.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] sriov_net_support
    #   Indicates whether enhanced networking with the Intel 82599 Virtual
    #   Function interface is enabled.
    #   @return [Types::AttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImageAttribute AWS API Documentation
    #
    class ImageAttribute < Struct.new(
      :block_device_mappings,
      :image_id,
      :launch_permissions,
      :product_codes,
      :description,
      :kernel_id,
      :ramdisk_id,
      :sriov_net_support)
      include Aws::Structure
    end

    # Describes the disk container object for an import image task.
    #
    # @note When making an API call, you may pass ImageDiskContainer
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         device_name: "String",
    #         format: "String",
    #         snapshot_id: "String",
    #         url: "String",
    #         user_bucket: {
    #           s3_bucket: "String",
    #           s3_key: "String",
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   The description of the disk image.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The block device mapping for the disk.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the disk image being imported.
    #
    #   Valid values: `RAW` \| `VHD` \| `VMDK` \| `OVA`
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the EBS snapshot to be used for importing the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to the Amazon S3-based disk image being imported. The URL
    #   can either be a https URL (https://..) or an Amazon S3 URL (s3://..)
    #   @return [String]
    #
    # @!attribute [rw] user_bucket
    #   The S3 bucket for the disk image.
    #   @return [Types::UserBucket]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImageDiskContainer AWS API Documentation
    #
    class ImageDiskContainer < Struct.new(
      :description,
      :device_name,
      :format,
      :snapshot_id,
      :url,
      :user_bucket)
      include Aws::Structure
    end

    # Contains the parameters for ImportImage.
    #
    # @note When making an API call, you may pass ImportImageRequest
    #   data as a hash:
    #
    #       {
    #         architecture: "String",
    #         client_data: {
    #           comment: "String",
    #           upload_end: Time.now,
    #           upload_size: 1.0,
    #           upload_start: Time.now,
    #         },
    #         client_token: "String",
    #         description: "String",
    #         disk_containers: [
    #           {
    #             description: "String",
    #             device_name: "String",
    #             format: "String",
    #             snapshot_id: "String",
    #             url: "String",
    #             user_bucket: {
    #               s3_bucket: "String",
    #               s3_key: "String",
    #             },
    #           },
    #         ],
    #         dry_run: false,
    #         hypervisor: "String",
    #         license_type: "String",
    #         platform: "String",
    #         role_name: "String",
    #       }
    #
    # @!attribute [rw] architecture
    #   The architecture of the virtual machine.
    #
    #   Valid values: `i386` \| `x86_64`
    #   @return [String]
    #
    # @!attribute [rw] client_data
    #   The client-specific data.
    #   @return [Types::ClientData]
    #
    # @!attribute [rw] client_token
    #   The token to enable idempotency for VM import requests.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description string for the import image task.
    #   @return [String]
    #
    # @!attribute [rw] disk_containers
    #   Information about the disk containers.
    #   @return [Array<Types::ImageDiskContainer>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] hypervisor
    #   The target hypervisor platform.
    #
    #   Valid values: `xen`
    #   @return [String]
    #
    # @!attribute [rw] license_type
    #   The license type to be used for the Amazon Machine Image (AMI) after
    #   importing.
    #
    #   **Note:** You may only use BYOL if you have existing licenses with
    #   rights to use these licenses in a third party cloud like AWS. For
    #   more information, see [Prerequisites][1] in the VM Import/Export
    #   User Guide.
    #
    #   Valid values: `AWS` \| `BYOL`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#prerequisites-image
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system of the virtual machine.
    #
    #   Valid values: `Windows` \| `Linux`
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the role to use when not using the default role,
    #   'vmimport'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportImageRequest AWS API Documentation
    #
    class ImportImageRequest < Struct.new(
      :architecture,
      :client_data,
      :client_token,
      :description,
      :disk_containers,
      :dry_run,
      :hypervisor,
      :license_type,
      :platform,
      :role_name)
      include Aws::Structure
    end

    # Contains the output for ImportImage.
    #
    # @!attribute [rw] architecture
    #   The architecture of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the import task.
    #   @return [String]
    #
    # @!attribute [rw] hypervisor
    #   The target hypervisor of the import task.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The ID of the Amazon Machine Image (AMI) created by the import task.
    #   @return [String]
    #
    # @!attribute [rw] import_task_id
    #   The task ID of the import image task.
    #   @return [String]
    #
    # @!attribute [rw] license_type
    #   The license type of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The progress of the task.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_details
    #   Information about the snapshots.
    #   @return [Array<Types::SnapshotDetail>]
    #
    # @!attribute [rw] status
    #   A brief status of the task.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed status message of the import task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportImageResult AWS API Documentation
    #
    class ImportImageResult < Struct.new(
      :architecture,
      :description,
      :hypervisor,
      :image_id,
      :import_task_id,
      :license_type,
      :platform,
      :progress,
      :snapshot_details,
      :status,
      :status_message)
      include Aws::Structure
    end

    # Describes an import image task.
    #
    # @!attribute [rw] architecture
    #   The architecture of the virtual machine.
    #
    #   Valid values: `i386` \| `x86_64`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the import task.
    #   @return [String]
    #
    # @!attribute [rw] hypervisor
    #   The target hypervisor for the import task.
    #
    #   Valid values: `xen`
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The ID of the Amazon Machine Image (AMI) of the imported virtual
    #   machine.
    #   @return [String]
    #
    # @!attribute [rw] import_task_id
    #   The ID of the import image task.
    #   @return [String]
    #
    # @!attribute [rw] license_type
    #   The license type of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The description string for the import image task.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The percentage of progress of the import image task.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_details
    #   Information about the snapshots.
    #   @return [Array<Types::SnapshotDetail>]
    #
    # @!attribute [rw] status
    #   A brief status for the import image task.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A descriptive status message for the import image task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportImageTask AWS API Documentation
    #
    class ImportImageTask < Struct.new(
      :architecture,
      :description,
      :hypervisor,
      :image_id,
      :import_task_id,
      :license_type,
      :platform,
      :progress,
      :snapshot_details,
      :status,
      :status_message)
      include Aws::Structure
    end

    # Describes the launch specification for VM import.
    #
    # @note When making an API call, you may pass ImportInstanceLaunchSpecification
    #   data as a hash:
    #
    #       {
    #         additional_info: "String",
    #         architecture: "i386", # accepts i386, x86_64
    #         group_ids: ["String"],
    #         group_names: ["String"],
    #         instance_initiated_shutdown_behavior: "stop", # accepts stop, terminate
    #         instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #         monitoring: false,
    #         placement: {
    #           availability_zone: "String",
    #           affinity: "String",
    #           group_name: "String",
    #           host_id: "String",
    #           tenancy: "default", # accepts default, dedicated, host
    #           spread_domain: "String",
    #         },
    #         private_ip_address: "String",
    #         subnet_id: "String",
    #         user_data: {
    #           data: "String",
    #         },
    #       }
    #
    # @!attribute [rw] additional_info
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architecture of the instance.
    #   @return [String]
    #
    # @!attribute [rw] group_ids
    #   One or more security group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_names
    #   One or more security group names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_initiated_shutdown_behavior
    #   Indicates whether an instance stops or terminates when you initiate
    #   shutdown from the instance (using the operating system command for
    #   system shutdown).
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type. For more information about the instance types
    #   that you can import, see [Instance Types][1] in the VM Import/Export
    #   User Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#vmimport-instance-types
    #   @return [String]
    #
    # @!attribute [rw] monitoring
    #   Indicates whether monitoring is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] placement
    #   The placement information for the instance.
    #   @return [Types::Placement]
    #
    # @!attribute [rw] private_ip_address
    #   \[EC2-VPC\] An available IP address from the IP address range of the
    #   subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   \[EC2-VPC\] The ID of the subnet in which to launch the instance.
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   The user data to make available to the instance. If you are using an
    #   AWS SDK or command line tool, Base64-encoding is performed for you,
    #   and you can load the text from a file. Otherwise, you must provide
    #   Base64-encoded text.
    #   @return [Types::UserData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportInstanceLaunchSpecification AWS API Documentation
    #
    class ImportInstanceLaunchSpecification < Struct.new(
      :additional_info,
      :architecture,
      :group_ids,
      :group_names,
      :instance_initiated_shutdown_behavior,
      :instance_type,
      :monitoring,
      :placement,
      :private_ip_address,
      :subnet_id,
      :user_data)
      include Aws::Structure
    end

    # Contains the parameters for ImportInstance.
    #
    # @note When making an API call, you may pass ImportInstanceRequest
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         disk_images: [
    #           {
    #             description: "String",
    #             image: {
    #               bytes: 1, # required
    #               format: "VMDK", # required, accepts VMDK, RAW, VHD
    #               import_manifest_url: "String", # required
    #             },
    #             volume: {
    #               size: 1, # required
    #             },
    #           },
    #         ],
    #         dry_run: false,
    #         launch_specification: {
    #           additional_info: "String",
    #           architecture: "i386", # accepts i386, x86_64
    #           group_ids: ["String"],
    #           group_names: ["String"],
    #           instance_initiated_shutdown_behavior: "stop", # accepts stop, terminate
    #           instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #           monitoring: false,
    #           placement: {
    #             availability_zone: "String",
    #             affinity: "String",
    #             group_name: "String",
    #             host_id: "String",
    #             tenancy: "default", # accepts default, dedicated, host
    #             spread_domain: "String",
    #           },
    #           private_ip_address: "String",
    #           subnet_id: "String",
    #           user_data: {
    #             data: "String",
    #           },
    #         },
    #         platform: "Windows", # required, accepts Windows
    #       }
    #
    # @!attribute [rw] description
    #   A description for the instance being imported.
    #   @return [String]
    #
    # @!attribute [rw] disk_images
    #   The disk image.
    #   @return [Array<Types::DiskImage>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] launch_specification
    #   The launch specification.
    #   @return [Types::ImportInstanceLaunchSpecification]
    #
    # @!attribute [rw] platform
    #   The instance operating system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportInstanceRequest AWS API Documentation
    #
    class ImportInstanceRequest < Struct.new(
      :description,
      :disk_images,
      :dry_run,
      :launch_specification,
      :platform)
      include Aws::Structure
    end

    # Contains the output for ImportInstance.
    #
    # @!attribute [rw] conversion_task
    #   Information about the conversion task.
    #   @return [Types::ConversionTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportInstanceResult AWS API Documentation
    #
    class ImportInstanceResult < Struct.new(
      :conversion_task)
      include Aws::Structure
    end

    # Describes an import instance task.
    #
    # @!attribute [rw] description
    #   A description of the task.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The instance operating system.
    #   @return [String]
    #
    # @!attribute [rw] volumes
    #   One or more volumes.
    #   @return [Array<Types::ImportInstanceVolumeDetailItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportInstanceTaskDetails AWS API Documentation
    #
    class ImportInstanceTaskDetails < Struct.new(
      :description,
      :instance_id,
      :platform,
      :volumes)
      include Aws::Structure
    end

    # Describes an import volume task.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the resulting instance will reside.
    #   @return [String]
    #
    # @!attribute [rw] bytes_converted
    #   The number of bytes converted so far.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the task.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image.
    #   @return [Types::DiskImageDescription]
    #
    # @!attribute [rw] status
    #   The status of the import of this particular disk image.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status information or errors related to the disk image.
    #   @return [String]
    #
    # @!attribute [rw] volume
    #   The volume.
    #   @return [Types::DiskImageVolumeDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportInstanceVolumeDetailItem AWS API Documentation
    #
    class ImportInstanceVolumeDetailItem < Struct.new(
      :availability_zone,
      :bytes_converted,
      :description,
      :image,
      :status,
      :status_message,
      :volume)
      include Aws::Structure
    end

    # Contains the parameters for ImportKeyPair.
    #
    # @note When making an API call, you may pass ImportKeyPairRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         key_name: "String", # required
    #         public_key_material: "data", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] key_name
    #   A unique name for the key pair.
    #   @return [String]
    #
    # @!attribute [rw] public_key_material
    #   The public key. For API calls, the text must be base64-encoded. For
    #   command line tools, base64 encoding is performed for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportKeyPairRequest AWS API Documentation
    #
    class ImportKeyPairRequest < Struct.new(
      :dry_run,
      :key_name,
      :public_key_material)
      include Aws::Structure
    end

    # Contains the output of ImportKeyPair.
    #
    # @!attribute [rw] key_fingerprint
    #   The MD5 public key fingerprint as specified in section 4 of RFC
    #   4716.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The key pair name you provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportKeyPairResult AWS API Documentation
    #
    class ImportKeyPairResult < Struct.new(
      :key_fingerprint,
      :key_name)
      include Aws::Structure
    end

    # Contains the parameters for ImportSnapshot.
    #
    # @note When making an API call, you may pass ImportSnapshotRequest
    #   data as a hash:
    #
    #       {
    #         client_data: {
    #           comment: "String",
    #           upload_end: Time.now,
    #           upload_size: 1.0,
    #           upload_start: Time.now,
    #         },
    #         client_token: "String",
    #         description: "String",
    #         disk_container: {
    #           description: "String",
    #           format: "String",
    #           url: "String",
    #           user_bucket: {
    #             s3_bucket: "String",
    #             s3_key: "String",
    #           },
    #         },
    #         dry_run: false,
    #         role_name: "String",
    #       }
    #
    # @!attribute [rw] client_data
    #   The client-specific data.
    #   @return [Types::ClientData]
    #
    # @!attribute [rw] client_token
    #   Token to enable idempotency for VM import requests.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description string for the import snapshot task.
    #   @return [String]
    #
    # @!attribute [rw] disk_container
    #   Information about the disk container.
    #   @return [Types::SnapshotDiskContainer]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_name
    #   The name of the role to use when not using the default role,
    #   'vmimport'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportSnapshotRequest AWS API Documentation
    #
    class ImportSnapshotRequest < Struct.new(
      :client_data,
      :client_token,
      :description,
      :disk_container,
      :dry_run,
      :role_name)
      include Aws::Structure
    end

    # Contains the output for ImportSnapshot.
    #
    # @!attribute [rw] description
    #   A description of the import snapshot task.
    #   @return [String]
    #
    # @!attribute [rw] import_task_id
    #   The ID of the import snapshot task.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_task_detail
    #   Information about the import snapshot task.
    #   @return [Types::SnapshotTaskDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportSnapshotResult AWS API Documentation
    #
    class ImportSnapshotResult < Struct.new(
      :description,
      :import_task_id,
      :snapshot_task_detail)
      include Aws::Structure
    end

    # Describes an import snapshot task.
    #
    # @!attribute [rw] description
    #   A description of the import snapshot task.
    #   @return [String]
    #
    # @!attribute [rw] import_task_id
    #   The ID of the import snapshot task.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_task_detail
    #   Describes an import snapshot task.
    #   @return [Types::SnapshotTaskDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportSnapshotTask AWS API Documentation
    #
    class ImportSnapshotTask < Struct.new(
      :description,
      :import_task_id,
      :snapshot_task_detail)
      include Aws::Structure
    end

    # Contains the parameters for ImportVolume.
    #
    # @note When making an API call, you may pass ImportVolumeRequest
    #   data as a hash:
    #
    #       {
    #         availability_zone: "String", # required
    #         description: "String",
    #         dry_run: false,
    #         image: { # required
    #           bytes: 1, # required
    #           format: "VMDK", # required, accepts VMDK, RAW, VHD
    #           import_manifest_url: "String", # required
    #         },
    #         volume: { # required
    #           size: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the resulting EBS volume.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the volume.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] image
    #   The disk image.
    #   @return [Types::DiskImageDetail]
    #
    # @!attribute [rw] volume
    #   The volume size.
    #   @return [Types::VolumeDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportVolumeRequest AWS API Documentation
    #
    class ImportVolumeRequest < Struct.new(
      :availability_zone,
      :description,
      :dry_run,
      :image,
      :volume)
      include Aws::Structure
    end

    # Contains the output for ImportVolume.
    #
    # @!attribute [rw] conversion_task
    #   Information about the conversion task.
    #   @return [Types::ConversionTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportVolumeResult AWS API Documentation
    #
    class ImportVolumeResult < Struct.new(
      :conversion_task)
      include Aws::Structure
    end

    # Describes an import volume task.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the resulting volume will reside.
    #   @return [String]
    #
    # @!attribute [rw] bytes_converted
    #   The number of bytes converted so far.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description you provided when starting the import volume task.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image.
    #   @return [Types::DiskImageDescription]
    #
    # @!attribute [rw] volume
    #   The volume.
    #   @return [Types::DiskImageVolumeDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ImportVolumeTaskDetails AWS API Documentation
    #
    class ImportVolumeTaskDetails < Struct.new(
      :availability_zone,
      :bytes_converted,
      :description,
      :image,
      :volume)
      include Aws::Structure
    end

    # Describes an instance.
    #
    # @!attribute [rw] ami_launch_index
    #   The AMI launch index, which can be used to find this instance in the
    #   launch group.
    #   @return [Integer]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI used to launch the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] kernel_id
    #   The kernel associated with this instance, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair, if this instance was launched with an
    #   associated key pair.
    #   @return [String]
    #
    # @!attribute [rw] launch_time
    #   The time the instance was launched.
    #   @return [Time]
    #
    # @!attribute [rw] monitoring
    #   The monitoring for the instance.
    #   @return [Types::Monitoring]
    #
    # @!attribute [rw] placement
    #   The location where the instance launched, if applicable.
    #   @return [Types::Placement]
    #
    # @!attribute [rw] platform
    #   The value is `Windows` for Windows instances; otherwise blank.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_name
    #   (IPv4 only) The private DNS hostname name assigned to the instance.
    #   This DNS hostname can only be used inside the Amazon EC2 network.
    #   This name is not available until the instance enters the `running`
    #   state.
    #
    #   \[EC2-VPC\] The Amazon-provided DNS server resolves Amazon-provided
    #   private DNS hostnames if you've enabled DNS resolution and DNS
    #   hostnames in your VPC. If you are not using the Amazon-provided DNS
    #   server in your VPC, your custom domain name servers must resolve the
    #   hostname as appropriate.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IPv4 address assigned to the instance.
    #   @return [String]
    #
    # @!attribute [rw] product_codes
    #   The product codes attached to this instance, if applicable.
    #   @return [Array<Types::ProductCode>]
    #
    # @!attribute [rw] public_dns_name
    #   (IPv4 only) The public DNS name assigned to the instance. This name
    #   is not available until the instance enters the `running` state. For
    #   EC2-VPC, this name is only available if you've enabled DNS
    #   hostnames for your VPC.
    #   @return [String]
    #
    # @!attribute [rw] public_ip_address
    #   The public IPv4 address assigned to the instance, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] ramdisk_id
    #   The RAM disk associated with this instance, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the instance.
    #   @return [Types::InstanceState]
    #
    # @!attribute [rw] state_transition_reason
    #   The reason for the most recent state transition. This might be an
    #   empty string.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   \[EC2-VPC\] The ID of the subnet in which the instance is running.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   \[EC2-VPC\] The ID of the VPC in which the instance is running.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architecture of the image.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   Any block device mapping entries for the instance.
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token you provided when you launched the instance,
    #   if applicable.
    #   @return [String]
    #
    # @!attribute [rw] ebs_optimized
    #   Indicates whether the instance is optimized for Amazon EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal I/O performance.
    #   This optimization isn't available with all instance types.
    #   Additional usage charges apply when using an EBS Optimized instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] ena_support
    #   Specifies whether enhanced networking with ENA is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] hypervisor
    #   The hypervisor type of the instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile
    #   The IAM instance profile associated with the instance, if
    #   applicable.
    #   @return [Types::IamInstanceProfile]
    #
    # @!attribute [rw] instance_lifecycle
    #   Indicates whether this is a Spot Instance or a Scheduled Instance.
    #   @return [String]
    #
    # @!attribute [rw] elastic_gpu_associations
    #   The Elastic GPU associated with the instance.
    #   @return [Array<Types::ElasticGpuAssociation>]
    #
    # @!attribute [rw] network_interfaces
    #   \[EC2-VPC\] One or more network interfaces for the instance.
    #   @return [Array<Types::InstanceNetworkInterface>]
    #
    # @!attribute [rw] root_device_name
    #   The root device name (for example, `/dev/sda1` or `/dev/xvda`).
    #   @return [String]
    #
    # @!attribute [rw] root_device_type
    #   The root device type used by the AMI. The AMI can use an EBS volume
    #   or an instance store volume.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   One or more security groups for the instance.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] source_dest_check
    #   Specifies whether to enable an instance launched in a VPC to perform
    #   NAT. This controls whether source/destination checking is enabled on
    #   the instance. A value of `true` means that checking is enabled, and
    #   `false` means that checking is disabled. The value must be `false`
    #   for the instance to perform NAT. For more information, see [NAT
    #   Instances][1] in the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html
    #   @return [Boolean]
    #
    # @!attribute [rw] spot_instance_request_id
    #   If the request is a Spot Instance request, the ID of the request.
    #   @return [String]
    #
    # @!attribute [rw] sriov_net_support
    #   Specifies whether enhanced networking with the Intel 82599 Virtual
    #   Function interface is enabled.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the most recent state transition.
    #   @return [Types::StateReason]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the instance.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] virtualization_type
    #   The virtualization type of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Instance AWS API Documentation
    #
    class Instance < Struct.new(
      :ami_launch_index,
      :image_id,
      :instance_id,
      :instance_type,
      :kernel_id,
      :key_name,
      :launch_time,
      :monitoring,
      :placement,
      :platform,
      :private_dns_name,
      :private_ip_address,
      :product_codes,
      :public_dns_name,
      :public_ip_address,
      :ramdisk_id,
      :state,
      :state_transition_reason,
      :subnet_id,
      :vpc_id,
      :architecture,
      :block_device_mappings,
      :client_token,
      :ebs_optimized,
      :ena_support,
      :hypervisor,
      :iam_instance_profile,
      :instance_lifecycle,
      :elastic_gpu_associations,
      :network_interfaces,
      :root_device_name,
      :root_device_type,
      :security_groups,
      :source_dest_check,
      :spot_instance_request_id,
      :sriov_net_support,
      :state_reason,
      :tags,
      :virtualization_type)
      include Aws::Structure
    end

    # Describes an instance attribute.
    #
    # @!attribute [rw] groups
    #   The security groups associated with the instance.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] block_device_mappings
    #   The block device mapping of the instance.
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    #
    # @!attribute [rw] disable_api_termination
    #   If the value is `true`, you can't terminate the instance through
    #   the Amazon EC2 console, CLI, or API; otherwise, you can.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] ena_support
    #   Indicates whether enhanced networking with ENA is enabled.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] ebs_optimized
    #   Indicates whether the instance is optimized for Amazon EBS I/O.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_initiated_shutdown_behavior
    #   Indicates whether an instance stops or terminates when you initiate
    #   shutdown from the instance (using the operating system command for
    #   system shutdown).
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] kernel_id
    #   The kernel ID.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] product_codes
    #   A list of product codes.
    #   @return [Array<Types::ProductCode>]
    #
    # @!attribute [rw] ramdisk_id
    #   The RAM disk ID.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] root_device_name
    #   The name of the root device (for example, `/dev/sda1` or
    #   `/dev/xvda`).
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] source_dest_check
    #   Indicates whether source/destination checking is enabled. A value of
    #   `true` means that checking is enabled, and `false` means that
    #   checking is disabled. This value must be `false` for a NAT instance
    #   to perform NAT.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] sriov_net_support
    #   Indicates whether enhanced networking with the Intel 82599 Virtual
    #   Function interface is enabled.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] user_data
    #   The user data.
    #   @return [Types::AttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceAttribute AWS API Documentation
    #
    class InstanceAttribute < Struct.new(
      :groups,
      :block_device_mappings,
      :disable_api_termination,
      :ena_support,
      :ebs_optimized,
      :instance_id,
      :instance_initiated_shutdown_behavior,
      :instance_type,
      :kernel_id,
      :product_codes,
      :ramdisk_id,
      :root_device_name,
      :source_dest_check,
      :sriov_net_support,
      :user_data)
      include Aws::Structure
    end

    # Describes a block device mapping.
    #
    # @!attribute [rw] device_name
    #   The device name exposed to the instance (for example, `/dev/sdh` or
    #   `xvdh`).
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   Parameters used to automatically set up EBS volumes when the
    #   instance is launched.
    #   @return [Types::EbsInstanceBlockDevice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceBlockDeviceMapping AWS API Documentation
    #
    class InstanceBlockDeviceMapping < Struct.new(
      :device_name,
      :ebs)
      include Aws::Structure
    end

    # Describes a block device mapping entry.
    #
    # @note When making an API call, you may pass InstanceBlockDeviceMappingSpecification
    #   data as a hash:
    #
    #       {
    #         device_name: "String",
    #         ebs: {
    #           delete_on_termination: false,
    #           volume_id: "String",
    #         },
    #         no_device: "String",
    #         virtual_name: "String",
    #       }
    #
    # @!attribute [rw] device_name
    #   The device name exposed to the instance (for example, `/dev/sdh` or
    #   `xvdh`).
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   Parameters used to automatically set up EBS volumes when the
    #   instance is launched.
    #   @return [Types::EbsInstanceBlockDeviceSpecification]
    #
    # @!attribute [rw] no_device
    #   suppress the specified device included in the block device mapping.
    #   @return [String]
    #
    # @!attribute [rw] virtual_name
    #   The virtual device name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceBlockDeviceMappingSpecification AWS API Documentation
    #
    class InstanceBlockDeviceMappingSpecification < Struct.new(
      :device_name,
      :ebs,
      :no_device,
      :virtual_name)
      include Aws::Structure
    end

    # Information about the instance type that the Dedicated Host supports.
    #
    # @!attribute [rw] available_capacity
    #   The number of instances that can still be launched onto the
    #   Dedicated Host.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The instance type size supported by the Dedicated Host.
    #   @return [String]
    #
    # @!attribute [rw] total_capacity
    #   The total number of instances that can be launched onto the
    #   Dedicated Host.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceCapacity AWS API Documentation
    #
    class InstanceCapacity < Struct.new(
      :available_capacity,
      :instance_type,
      :total_capacity)
      include Aws::Structure
    end

    # Describes a Reserved Instance listing state.
    #
    # @!attribute [rw] instance_count
    #   The number of listed Reserved Instances in the state specified by
    #   the `state`.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The states of the listed Reserved Instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceCount AWS API Documentation
    #
    class InstanceCount < Struct.new(
      :instance_count,
      :state)
      include Aws::Structure
    end

    # Describes an instance to export.
    #
    # @!attribute [rw] instance_id
    #   The ID of the resource being exported.
    #   @return [String]
    #
    # @!attribute [rw] target_environment
    #   The target virtualization environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceExportDetails AWS API Documentation
    #
    class InstanceExportDetails < Struct.new(
      :instance_id,
      :target_environment)
      include Aws::Structure
    end

    # Describes an IPv6 address.
    #
    # @note When making an API call, you may pass InstanceIpv6Address
    #   data as a hash:
    #
    #       {
    #         ipv_6_address: "String",
    #       }
    #
    # @!attribute [rw] ipv_6_address
    #   The IPv6 address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceIpv6Address AWS API Documentation
    #
    class InstanceIpv6Address < Struct.new(
      :ipv_6_address)
      include Aws::Structure
    end

    # Describes the monitoring of an instance.
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] monitoring
    #   The monitoring for the instance.
    #   @return [Types::Monitoring]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceMonitoring AWS API Documentation
    #
    class InstanceMonitoring < Struct.new(
      :instance_id,
      :monitoring)
      include Aws::Structure
    end

    # Describes a network interface.
    #
    # @!attribute [rw] association
    #   The association information for an Elastic IPv4 associated with the
    #   network interface.
    #   @return [Types::InstanceNetworkInterfaceAssociation]
    #
    # @!attribute [rw] attachment
    #   The network interface attachment.
    #   @return [Types::InstanceNetworkInterfaceAttachment]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   One or more security groups.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] ipv_6_addresses
    #   One or more IPv6 addresses associated with the network interface.
    #   @return [Array<Types::InstanceIpv6Address>]
    #
    # @!attribute [rw] mac_address
    #   The MAC address.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The ID of the AWS account that created the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_name
    #   The private DNS name.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The IPv4 address of the network interface within the subnet.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_addresses
    #   One or more private IPv4 addresses associated with the network
    #   interface.
    #   @return [Array<Types::InstancePrivateIpAddress>]
    #
    # @!attribute [rw] source_dest_check
    #   Indicates whether to validate network traffic to or from this
    #   network interface.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceNetworkInterface AWS API Documentation
    #
    class InstanceNetworkInterface < Struct.new(
      :association,
      :attachment,
      :description,
      :groups,
      :ipv_6_addresses,
      :mac_address,
      :network_interface_id,
      :owner_id,
      :private_dns_name,
      :private_ip_address,
      :private_ip_addresses,
      :source_dest_check,
      :status,
      :subnet_id,
      :vpc_id)
      include Aws::Structure
    end

    # Describes association information for an Elastic IP address (IPv4).
    #
    # @!attribute [rw] ip_owner_id
    #   The ID of the owner of the Elastic IP address.
    #   @return [String]
    #
    # @!attribute [rw] public_dns_name
    #   The public DNS name.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   The public IP address or Elastic IP address bound to the network
    #   interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceNetworkInterfaceAssociation AWS API Documentation
    #
    class InstanceNetworkInterfaceAssociation < Struct.new(
      :ip_owner_id,
      :public_dns_name,
      :public_ip)
      include Aws::Structure
    end

    # Describes a network interface attachment.
    #
    # @!attribute [rw] attach_time
    #   The time stamp when the attachment initiated.
    #   @return [Time]
    #
    # @!attribute [rw] attachment_id
    #   The ID of the network interface attachment.
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the network interface is deleted when the instance
    #   is terminated.
    #   @return [Boolean]
    #
    # @!attribute [rw] device_index
    #   The index of the device on the instance for the network interface
    #   attachment.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The attachment state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceNetworkInterfaceAttachment AWS API Documentation
    #
    class InstanceNetworkInterfaceAttachment < Struct.new(
      :attach_time,
      :attachment_id,
      :delete_on_termination,
      :device_index,
      :status)
      include Aws::Structure
    end

    # Describes a network interface.
    #
    # @note When making an API call, you may pass InstanceNetworkInterfaceSpecification
    #   data as a hash:
    #
    #       {
    #         associate_public_ip_address: false,
    #         delete_on_termination: false,
    #         description: "String",
    #         device_index: 1,
    #         groups: ["String"],
    #         ipv_6_address_count: 1,
    #         ipv_6_addresses: [
    #           {
    #             ipv_6_address: "String",
    #           },
    #         ],
    #         network_interface_id: "String",
    #         private_ip_address: "String",
    #         private_ip_addresses: [
    #           {
    #             primary: false,
    #             private_ip_address: "String", # required
    #           },
    #         ],
    #         secondary_private_ip_address_count: 1,
    #         subnet_id: "String",
    #       }
    #
    # @!attribute [rw] associate_public_ip_address
    #   Indicates whether to assign a public IPv4 address to an instance you
    #   launch in a VPC. The public IP address can only be assigned to a
    #   network interface for eth0, and can only be assigned to a new
    #   network interface, not an existing one. You cannot specify more than
    #   one network interface in the request. If launching into a default
    #   subnet, the default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_on_termination
    #   If set to `true`, the interface is deleted when the instance is
    #   terminated. You can specify `true` only if creating a new network
    #   interface when launching an instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description of the network interface. Applies only if creating a
    #   network interface when launching an instance.
    #   @return [String]
    #
    # @!attribute [rw] device_index
    #   The index of the device on the instance for the network interface
    #   attachment. If you are specifying a network interface in a
    #   RunInstances request, you must provide the device index.
    #   @return [Integer]
    #
    # @!attribute [rw] groups
    #   The IDs of the security groups for the network interface. Applies
    #   only if creating a network interface when launching an instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ipv_6_address_count
    #   A number of IPv6 addresses to assign to the network interface.
    #   Amazon EC2 chooses the IPv6 addresses from the range of the subnet.
    #   You cannot specify this option and the option to assign specific
    #   IPv6 addresses in the same request. You can specify this option if
    #   you've specified a minimum number of instances to launch.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_6_addresses
    #   One or more IPv6 addresses to assign to the network interface. You
    #   cannot specify this option and the option to assign a number of IPv6
    #   addresses in the same request. You cannot specify this option if
    #   you've specified a minimum number of instances to launch.
    #   @return [Array<Types::InstanceIpv6Address>]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IPv4 address of the network interface. Applies only if
    #   creating a network interface when launching an instance. You cannot
    #   specify this option if you're launching more than one instance in a
    #   RunInstances request.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_addresses
    #   One or more private IPv4 addresses to assign to the network
    #   interface. Only one private IPv4 address can be designated as
    #   primary. You cannot specify this option if you're launching more
    #   than one instance in a RunInstances request.
    #   @return [Array<Types::PrivateIpAddressSpecification>]
    #
    # @!attribute [rw] secondary_private_ip_address_count
    #   The number of secondary private IPv4 addresses. You can't specify
    #   this option and specify more than one private IP address using the
    #   private IP addresses option. You cannot specify this option if
    #   you're launching more than one instance in a RunInstances request.
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet associated with the network string. Applies
    #   only if creating a network interface when launching an instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceNetworkInterfaceSpecification AWS API Documentation
    #
    class InstanceNetworkInterfaceSpecification < Struct.new(
      :associate_public_ip_address,
      :delete_on_termination,
      :description,
      :device_index,
      :groups,
      :ipv_6_address_count,
      :ipv_6_addresses,
      :network_interface_id,
      :private_ip_address,
      :private_ip_addresses,
      :secondary_private_ip_address_count,
      :subnet_id)
      include Aws::Structure
    end

    # Describes a private IPv4 address.
    #
    # @!attribute [rw] association
    #   The association information for an Elastic IP address for the
    #   network interface.
    #   @return [Types::InstanceNetworkInterfaceAssociation]
    #
    # @!attribute [rw] primary
    #   Indicates whether this IPv4 address is the primary private IP
    #   address of the network interface.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_dns_name
    #   The private IPv4 DNS name.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IPv4 address of the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstancePrivateIpAddress AWS API Documentation
    #
    class InstancePrivateIpAddress < Struct.new(
      :association,
      :primary,
      :private_dns_name,
      :private_ip_address)
      include Aws::Structure
    end

    # Describes the current state of an instance.
    #
    # @!attribute [rw] code
    #   The low byte represents the state. The high byte is an opaque
    #   internal value and should be ignored.
    #
    #   * `0`\: `pending`
    #
    #   * `16`\: `running`
    #
    #   * `32`\: `shutting-down`
    #
    #   * `48`\: `terminated`
    #
    #   * `64`\: `stopping`
    #
    #   * `80`\: `stopped`
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The current state of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceState AWS API Documentation
    #
    class InstanceState < Struct.new(
      :code,
      :name)
      include Aws::Structure
    end

    # Describes an instance state change.
    #
    # @!attribute [rw] current_state
    #   The current state of the instance.
    #   @return [Types::InstanceState]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] previous_state
    #   The previous state of the instance.
    #   @return [Types::InstanceState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceStateChange AWS API Documentation
    #
    class InstanceStateChange < Struct.new(
      :current_state,
      :instance_id,
      :previous_state)
      include Aws::Structure
    end

    # Describes the status of an instance.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone of the instance.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   Any scheduled events associated with the instance.
    #   @return [Array<Types::InstanceStatusEvent>]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_state
    #   The intended state of the instance. DescribeInstanceStatus requires
    #   that an instance be in the `running` state.
    #   @return [Types::InstanceState]
    #
    # @!attribute [rw] instance_status
    #   Reports impaired functionality that stems from issues internal to
    #   the instance, such as impaired reachability.
    #   @return [Types::InstanceStatusSummary]
    #
    # @!attribute [rw] system_status
    #   Reports impaired functionality that stems from issues related to the
    #   systems that support an instance, such as hardware failures and
    #   network connectivity problems.
    #   @return [Types::InstanceStatusSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceStatus AWS API Documentation
    #
    class InstanceStatus < Struct.new(
      :availability_zone,
      :events,
      :instance_id,
      :instance_state,
      :instance_status,
      :system_status)
      include Aws::Structure
    end

    # Describes the instance status.
    #
    # @!attribute [rw] impaired_since
    #   The time when a status check failed. For an instance that was
    #   launched and impaired, this is the time when the instance was
    #   launched.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The type of instance status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceStatusDetails AWS API Documentation
    #
    class InstanceStatusDetails < Struct.new(
      :impaired_since,
      :name,
      :status)
      include Aws::Structure
    end

    # Describes a scheduled event for an instance.
    #
    # @!attribute [rw] code
    #   The event code.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the event.
    #
    #   After a scheduled event is completed, it can still be described for
    #   up to a week. If the event has been completed, this description
    #   starts with the following text: \[Completed\].
    #   @return [String]
    #
    # @!attribute [rw] not_after
    #   The latest scheduled end time for the event.
    #   @return [Time]
    #
    # @!attribute [rw] not_before
    #   The earliest scheduled start time for the event.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceStatusEvent AWS API Documentation
    #
    class InstanceStatusEvent < Struct.new(
      :code,
      :description,
      :not_after,
      :not_before)
      include Aws::Structure
    end

    # Describes the status of an instance.
    #
    # @!attribute [rw] details
    #   The system instance health or application instance health.
    #   @return [Array<Types::InstanceStatusDetails>]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InstanceStatusSummary AWS API Documentation
    #
    class InstanceStatusSummary < Struct.new(
      :details,
      :status)
      include Aws::Structure
    end

    # Describes an Internet gateway.
    #
    # @!attribute [rw] attachments
    #   Any VPCs attached to the Internet gateway.
    #   @return [Array<Types::InternetGatewayAttachment>]
    #
    # @!attribute [rw] internet_gateway_id
    #   The ID of the Internet gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the Internet gateway.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InternetGateway AWS API Documentation
    #
    class InternetGateway < Struct.new(
      :attachments,
      :internet_gateway_id,
      :tags)
      include Aws::Structure
    end

    # Describes the attachment of a VPC to an Internet gateway or an
    # egress-only Internet gateway.
    #
    # @!attribute [rw] state
    #   The current state of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/InternetGatewayAttachment AWS API Documentation
    #
    class InternetGatewayAttachment < Struct.new(
      :state,
      :vpc_id)
      include Aws::Structure
    end

    # Describes a security group rule.
    #
    # @note When making an API call, you may pass IpPermission
    #   data as a hash:
    #
    #       {
    #         from_port: 1,
    #         ip_protocol: "String",
    #         ip_ranges: [
    #           {
    #             cidr_ip: "String",
    #             description: "String",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "String",
    #             description: "String",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             description: "String",
    #             prefix_list_id: "String",
    #           },
    #         ],
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             description: "String",
    #             group_id: "String",
    #             group_name: "String",
    #             peering_status: "String",
    #             user_id: "String",
    #             vpc_id: "String",
    #             vpc_peering_connection_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] from_port
    #   The start of port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 type number. A value of `-1` indicates all ICMP/ICMPv6
    #   types. If you specify all ICMP/ICMPv6 types, you must specify all
    #   codes.
    #   @return [Integer]
    #
    # @!attribute [rw] ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol
    #   Numbers][1]).
    #
    #   \[EC2-VPC only\] Use `-1` to specify all protocols. When authorizing
    #   security group rules, specifying `-1` or a protocol number other
    #   than `tcp`, `udp`, `icmp`, or `58` (ICMPv6) allows traffic on all
    #   ports, regardless of any port range you specify. For `tcp`, `udp`,
    #   and `icmp`, you must specify a port range. For `58` (ICMPv6), you
    #   can optionally specify a port range; if you don't, traffic for all
    #   types and codes is allowed when authorizing rules.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #   @return [String]
    #
    # @!attribute [rw] ip_ranges
    #   One or more IPv4 ranges.
    #   @return [Array<Types::IpRange>]
    #
    # @!attribute [rw] ipv_6_ranges
    #   \[EC2-VPC only\] One or more IPv6 ranges.
    #   @return [Array<Types::Ipv6Range>]
    #
    # @!attribute [rw] prefix_list_ids
    #   (Valid for AuthorizeSecurityGroupEgress, RevokeSecurityGroupEgress
    #   and DescribeSecurityGroups only) One or more prefix list IDs for an
    #   AWS service. In an AuthorizeSecurityGroupEgress request, this is the
    #   AWS service that you want to access through a VPC endpoint from
    #   instances associated with the security group.
    #   @return [Array<Types::PrefixListId>]
    #
    # @!attribute [rw] to_port
    #   The end of port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 code. A value of `-1` indicates all ICMP/ICMPv6 codes
    #   for the specified ICMP type. If you specify all ICMP/ICMPv6 types,
    #   you must specify all codes.
    #   @return [Integer]
    #
    # @!attribute [rw] user_id_group_pairs
    #   One or more security group and AWS account ID pairs.
    #   @return [Array<Types::UserIdGroupPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/IpPermission AWS API Documentation
    #
    class IpPermission < Struct.new(
      :from_port,
      :ip_protocol,
      :ip_ranges,
      :ipv_6_ranges,
      :prefix_list_ids,
      :to_port,
      :user_id_group_pairs)
      include Aws::Structure
    end

    # Describes an IPv4 range.
    #
    # @note When making an API call, you may pass IpRange
    #   data as a hash:
    #
    #       {
    #         cidr_ip: "String",
    #         description: "String",
    #       }
    #
    # @!attribute [rw] cidr_ip
    #   The IPv4 CIDR range. You can either specify a CIDR range or a source
    #   security group, not both. To specify a single IPv4 address, use the
    #   /32 prefix.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the security group rule that references this IPv4
    #   address range.
    #
    #   Constraints: Up to 255 characters in length. Allowed characters are
    #   a-z, A-Z, 0-9, spaces, and .\_-:/()#,@\[\]+=;\\\{\\}!$*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/IpRange AWS API Documentation
    #
    class IpRange < Struct.new(
      :cidr_ip,
      :description)
      include Aws::Structure
    end

    # Describes an IPv6 CIDR block.
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 CIDR block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Ipv6CidrBlock AWS API Documentation
    #
    class Ipv6CidrBlock < Struct.new(
      :ipv_6_cidr_block)
      include Aws::Structure
    end

    # \[EC2-VPC only\] Describes an IPv6 range.
    #
    # @note When making an API call, you may pass Ipv6Range
    #   data as a hash:
    #
    #       {
    #         cidr_ipv_6: "String",
    #         description: "String",
    #       }
    #
    # @!attribute [rw] cidr_ipv_6
    #   The IPv6 CIDR range. You can either specify a CIDR range or a source
    #   security group, not both. To specify a single IPv6 address, use the
    #   /128 prefix.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the security group rule that references this IPv6
    #   address range.
    #
    #   Constraints: Up to 255 characters in length. Allowed characters are
    #   a-z, A-Z, 0-9, spaces, and .\_-:/()#,@\[\]+=;\\\{\\}!$*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Ipv6Range AWS API Documentation
    #
    class Ipv6Range < Struct.new(
      :cidr_ipv_6,
      :description)
      include Aws::Structure
    end

    # Describes a key pair.
    #
    # @!attribute [rw] key_fingerprint
    #   The SHA-1 digest of the DER encoded private key.
    #   @return [String]
    #
    # @!attribute [rw] key_material
    #   An unencrypted PEM encoded RSA private key.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/KeyPair AWS API Documentation
    #
    class KeyPair < Struct.new(
      :key_fingerprint,
      :key_material,
      :key_name)
      include Aws::Structure
    end

    # Describes a key pair.
    #
    # @!attribute [rw] key_fingerprint
    #   If you used CreateKeyPair to create the key pair, this is the SHA-1
    #   digest of the DER encoded private key. If you used ImportKeyPair to
    #   provide AWS the public key, this is the MD5 public key fingerprint
    #   as specified in section 4 of RFC4716.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/KeyPairInfo AWS API Documentation
    #
    class KeyPairInfo < Struct.new(
      :key_fingerprint,
      :key_name)
      include Aws::Structure
    end

    # Describes a launch permission.
    #
    # @note When making an API call, you may pass LaunchPermission
    #   data as a hash:
    #
    #       {
    #         group: "all", # accepts all
    #         user_id: "String",
    #       }
    #
    # @!attribute [rw] group
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/LaunchPermission AWS API Documentation
    #
    class LaunchPermission < Struct.new(
      :group,
      :user_id)
      include Aws::Structure
    end

    # Describes a launch permission modification.
    #
    # @note When making an API call, you may pass LaunchPermissionModifications
    #   data as a hash:
    #
    #       {
    #         add: [
    #           {
    #             group: "all", # accepts all
    #             user_id: "String",
    #           },
    #         ],
    #         remove: [
    #           {
    #             group: "all", # accepts all
    #             user_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] add
    #   The AWS account ID to add to the list of launch permissions for the
    #   AMI.
    #   @return [Array<Types::LaunchPermission>]
    #
    # @!attribute [rw] remove
    #   The AWS account ID to remove from the list of launch permissions for
    #   the AMI.
    #   @return [Array<Types::LaunchPermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/LaunchPermissionModifications AWS API Documentation
    #
    class LaunchPermissionModifications < Struct.new(
      :add,
      :remove)
      include Aws::Structure
    end

    # Describes the launch specification for an instance.
    #
    # @!attribute [rw] user_data
    #   The user data to make available to the instances. If you are using
    #   an AWS SDK or command line tool, Base64-encoding is performed for
    #   you, and you can load the text from a file. Otherwise, you must
    #   provide Base64-encoded text.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   One or more security groups. When requesting instances in a VPC, you
    #   must specify the IDs of the security groups. When requesting
    #   instances in EC2-Classic, you can specify the names or the IDs of
    #   the security groups.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] addressing_type
    #   Deprecated.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   One or more block device mapping entries.
    #
    #   Although you can specify encrypted EBS volumes in this block device
    #   mapping for your Spot Instances, these volumes are not encrypted.
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] ebs_optimized
    #   Indicates whether the instance is optimized for EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal EBS I/O
    #   performance. This optimization isn't available with all instance
    #   types. Additional usage charges apply when using an EBS Optimized
    #   instance.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] iam_instance_profile
    #   The IAM instance profile.
    #   @return [Types::IamInstanceProfileSpecification]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] kernel_id
    #   The ID of the kernel.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   One or more network interfaces. If you specify a network interface,
    #   you must specify subnet IDs and security group IDs using the network
    #   interface.
    #   @return [Array<Types::InstanceNetworkInterfaceSpecification>]
    #
    # @!attribute [rw] placement
    #   The placement information for the instance.
    #   @return [Types::SpotPlacement]
    #
    # @!attribute [rw] ramdisk_id
    #   The ID of the RAM disk.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet in which to launch the instance.
    #   @return [String]
    #
    # @!attribute [rw] monitoring
    #   Describes the monitoring of an instance.
    #   @return [Types::RunInstancesMonitoringEnabled]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/LaunchSpecification AWS API Documentation
    #
    class LaunchSpecification < Struct.new(
      :user_data,
      :security_groups,
      :addressing_type,
      :block_device_mappings,
      :ebs_optimized,
      :iam_instance_profile,
      :image_id,
      :instance_type,
      :kernel_id,
      :key_name,
      :network_interfaces,
      :placement,
      :ramdisk_id,
      :subnet_id,
      :monitoring)
      include Aws::Structure
    end

    # Describes a load permission.
    #
    # @!attribute [rw] user_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The name of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/LoadPermission AWS API Documentation
    #
    class LoadPermission < Struct.new(
      :user_id,
      :group)
      include Aws::Structure
    end

    # Describes modifications to the load permissions of an Amazon FPGA
    # image (AFI).
    #
    # @note When making an API call, you may pass LoadPermissionModifications
    #   data as a hash:
    #
    #       {
    #         add: [
    #           {
    #             group: "all", # accepts all
    #             user_id: "String",
    #           },
    #         ],
    #         remove: [
    #           {
    #             group: "all", # accepts all
    #             user_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] add
    #   The load permissions to add.
    #   @return [Array<Types::LoadPermissionRequest>]
    #
    # @!attribute [rw] remove
    #   The load permissions to remove.
    #   @return [Array<Types::LoadPermissionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/LoadPermissionModifications AWS API Documentation
    #
    class LoadPermissionModifications < Struct.new(
      :add,
      :remove)
      include Aws::Structure
    end

    # Describes a load permission.
    #
    # @note When making an API call, you may pass LoadPermissionRequest
    #   data as a hash:
    #
    #       {
    #         group: "all", # accepts all
    #         user_id: "String",
    #       }
    #
    # @!attribute [rw] group
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/LoadPermissionRequest AWS API Documentation
    #
    class LoadPermissionRequest < Struct.new(
      :group,
      :user_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyFpgaImageAttributeRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         fpga_image_id: "String", # required
    #         attribute: "description", # accepts description, name, loadPermission, productCodes
    #         operation_type: "add", # accepts add, remove
    #         user_ids: ["String"],
    #         user_groups: ["String"],
    #         product_codes: ["String"],
    #         load_permission: {
    #           add: [
    #             {
    #               group: "all", # accepts all
    #               user_id: "String",
    #             },
    #           ],
    #           remove: [
    #             {
    #               group: "all", # accepts all
    #               user_id: "String",
    #             },
    #           ],
    #         },
    #         description: "String",
    #         name: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] fpga_image_id
    #   The ID of the AFI.
    #   @return [String]
    #
    # @!attribute [rw] attribute
    #   The name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] operation_type
    #   The operation type.
    #   @return [String]
    #
    # @!attribute [rw] user_ids
    #   One or more AWS account IDs. This parameter is valid only when
    #   modifying the `loadPermission` attribute.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_groups
    #   One or more user groups. This parameter is valid only when modifying
    #   the `loadPermission` attribute.
    #   @return [Array<String>]
    #
    # @!attribute [rw] product_codes
    #   One or more product codes. After you add a product code to an AFI,
    #   it can't be removed. This parameter is valid only when modifying
    #   the `productCodes` attribute.
    #   @return [Array<String>]
    #
    # @!attribute [rw] load_permission
    #   The load permission for the AFI.
    #   @return [Types::LoadPermissionModifications]
    #
    # @!attribute [rw] description
    #   A description for the AFI.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the AFI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyFpgaImageAttributeRequest AWS API Documentation
    #
    class ModifyFpgaImageAttributeRequest < Struct.new(
      :dry_run,
      :fpga_image_id,
      :attribute,
      :operation_type,
      :user_ids,
      :user_groups,
      :product_codes,
      :load_permission,
      :description,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] fpga_image_attribute
    #   Information about the attribute.
    #   @return [Types::FpgaImageAttribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyFpgaImageAttributeResult AWS API Documentation
    #
    class ModifyFpgaImageAttributeResult < Struct.new(
      :fpga_image_attribute)
      include Aws::Structure
    end

    # Contains the parameters for ModifyHosts.
    #
    # @note When making an API call, you may pass ModifyHostsRequest
    #   data as a hash:
    #
    #       {
    #         auto_placement: "on", # required, accepts on, off
    #         host_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] auto_placement
    #   Specify whether to enable or disable auto-placement.
    #   @return [String]
    #
    # @!attribute [rw] host_ids
    #   The host IDs of the Dedicated Hosts you want to modify.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyHostsRequest AWS API Documentation
    #
    class ModifyHostsRequest < Struct.new(
      :auto_placement,
      :host_ids)
      include Aws::Structure
    end

    # Contains the output of ModifyHosts.
    #
    # @!attribute [rw] successful
    #   The IDs of the Dedicated Hosts that were successfully modified.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unsuccessful
    #   The IDs of the Dedicated Hosts that could not be modified. Check
    #   whether the setting you requested can be used.
    #   @return [Array<Types::UnsuccessfulItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyHostsResult AWS API Documentation
    #
    class ModifyHostsResult < Struct.new(
      :successful,
      :unsuccessful)
      include Aws::Structure
    end

    # Contains the parameters of ModifyIdFormat.
    #
    # @note When making an API call, you may pass ModifyIdFormatRequest
    #   data as a hash:
    #
    #       {
    #         resource: "String", # required
    #         use_long_ids: false, # required
    #       }
    #
    # @!attribute [rw] resource
    #   The type of resource: `instance` \| `reservation` \| `snapshot` \|
    #   `volume`
    #   @return [String]
    #
    # @!attribute [rw] use_long_ids
    #   Indicate whether the resource should use longer IDs (17-character
    #   IDs).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyIdFormatRequest AWS API Documentation
    #
    class ModifyIdFormatRequest < Struct.new(
      :resource,
      :use_long_ids)
      include Aws::Structure
    end

    # Contains the parameters of ModifyIdentityIdFormat.
    #
    # @note When making an API call, you may pass ModifyIdentityIdFormatRequest
    #   data as a hash:
    #
    #       {
    #         principal_arn: "String", # required
    #         resource: "String", # required
    #         use_long_ids: false, # required
    #       }
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the principal, which can be an IAM user, IAM role, or the
    #   root user. Specify `all` to modify the ID format for all IAM users,
    #   IAM roles, and the root user of the account.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The type of resource: `instance` \| `reservation` \| `snapshot` \|
    #   `volume`
    #   @return [String]
    #
    # @!attribute [rw] use_long_ids
    #   Indicates whether the resource should use longer IDs (17-character
    #   IDs)
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyIdentityIdFormatRequest AWS API Documentation
    #
    class ModifyIdentityIdFormatRequest < Struct.new(
      :principal_arn,
      :resource,
      :use_long_ids)
      include Aws::Structure
    end

    # Contains the parameters for ModifyImageAttribute.
    #
    # @note When making an API call, you may pass ModifyImageAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "String",
    #         description: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         image_id: "String", # required
    #         launch_permission: {
    #           add: [
    #             {
    #               group: "all", # accepts all
    #               user_id: "String",
    #             },
    #           ],
    #           remove: [
    #             {
    #               group: "all", # accepts all
    #               user_id: "String",
    #             },
    #           ],
    #         },
    #         operation_type: "add", # accepts add, remove
    #         product_codes: ["String"],
    #         user_groups: ["String"],
    #         user_ids: ["String"],
    #         value: "String",
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] attribute
    #   The name of the attribute to modify.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the AMI.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] launch_permission
    #   A launch permission modification.
    #   @return [Types::LaunchPermissionModifications]
    #
    # @!attribute [rw] operation_type
    #   The operation type.
    #   @return [String]
    #
    # @!attribute [rw] product_codes
    #   One or more product codes. After you add a product code to an AMI,
    #   it can't be removed. This is only valid when modifying the
    #   `productCodes` attribute.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_groups
    #   One or more user groups. This is only valid when modifying the
    #   `launchPermission` attribute.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_ids
    #   One or more AWS account IDs. This is only valid when modifying the
    #   `launchPermission` attribute.
    #   @return [Array<String>]
    #
    # @!attribute [rw] value
    #   The value of the attribute being modified. This is only valid when
    #   modifying the `description` attribute.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyImageAttributeRequest AWS API Documentation
    #
    class ModifyImageAttributeRequest < Struct.new(
      :attribute,
      :description,
      :image_id,
      :launch_permission,
      :operation_type,
      :product_codes,
      :user_groups,
      :user_ids,
      :value,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for ModifyInstanceAttribute.
    #
    # @note When making an API call, you may pass ModifyInstanceAttributeRequest
    #   data as a hash:
    #
    #       {
    #         source_dest_check: {
    #           value: false,
    #         },
    #         attribute: "instanceType", # accepts instanceType, kernel, ramdisk, userData, disableApiTermination, instanceInitiatedShutdownBehavior, rootDeviceName, blockDeviceMapping, productCodes, sourceDestCheck, groupSet, ebsOptimized, sriovNetSupport, enaSupport
    #         block_device_mappings: [
    #           {
    #             device_name: "String",
    #             ebs: {
    #               delete_on_termination: false,
    #               volume_id: "String",
    #             },
    #             no_device: "String",
    #             virtual_name: "String",
    #           },
    #         ],
    #         disable_api_termination: {
    #           value: false,
    #         },
    #         dry_run: false,
    #         ebs_optimized: {
    #           value: false,
    #         },
    #         ena_support: {
    #           value: false,
    #         },
    #         groups: ["String"],
    #         instance_id: "String", # required
    #         instance_initiated_shutdown_behavior: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         instance_type: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         kernel: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         ramdisk: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         sriov_net_support: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         user_data: {
    #           value: "data",
    #         },
    #         value: "String",
    #       }
    #
    # @!attribute [rw] source_dest_check
    #   Specifies whether source/destination checking is enabled. A value of
    #   `true` means that checking is enabled, and `false` means that
    #   checking is disabled. This value must be `false` for a NAT instance
    #   to perform NAT.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] attribute
    #   The name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   Modifies the `DeleteOnTermination` attribute for volumes that are
    #   currently attached. The volume must be owned by the caller. If no
    #   value is specified for `DeleteOnTermination`, the default is `true`
    #   and the volume is deleted when the instance is terminated.
    #
    #   To add instance store volumes to an Amazon EBS-backed instance, you
    #   must add them when you launch the instance. For more information,
    #   see [Updating the Block Device Mapping when Launching an
    #   Instance][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM
    #   @return [Array<Types::InstanceBlockDeviceMappingSpecification>]
    #
    # @!attribute [rw] disable_api_termination
    #   If the value is `true`, you can't terminate the instance using the
    #   Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use
    #   this parameter for Spot Instances.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] ebs_optimized
    #   Specifies whether the instance is optimized for Amazon EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal EBS I/O
    #   performance. This optimization isn't available with all instance
    #   types. Additional usage charges apply when using an EBS Optimized
    #   instance.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] ena_support
    #   Set to `true` to enable enhanced networking with ENA for the
    #   instance.
    #
    #   This option is supported only for HVM instances. Specifying this
    #   option with a PV instance can make it unreachable.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] groups
    #   \[EC2-VPC\] Changes the security groups of the instance. You must
    #   specify at least one security group, even if it's just the default
    #   security group for the VPC. You must specify the security group ID,
    #   not the security group name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_initiated_shutdown_behavior
    #   Specifies whether an instance stops or terminates when you initiate
    #   shutdown from the instance (using the operating system command for
    #   system shutdown).
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] instance_type
    #   Changes the instance type to the specified value. For more
    #   information, see [Instance Types][1]. If the instance type is not
    #   valid, the error returned is `InvalidInstanceAttributeValue`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] kernel
    #   Changes the instance's kernel to the specified value. We recommend
    #   that you use PV-GRUB instead of kernels and RAM disks. For more
    #   information, see [PV-GRUB][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] ramdisk
    #   Changes the instance's RAM disk to the specified value. We
    #   recommend that you use PV-GRUB instead of kernels and RAM disks. For
    #   more information, see [PV-GRUB][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] sriov_net_support
    #   Set to `simple` to enable enhanced networking with the Intel 82599
    #   Virtual Function interface for the instance.
    #
    #   There is no way to disable enhanced networking with the Intel 82599
    #   Virtual Function interface at this time.
    #
    #   This option is supported only for HVM instances. Specifying this
    #   option with a PV instance can make it unreachable.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] user_data
    #   Changes the instance's user data to the specified value. If you are
    #   using an AWS SDK or command line tool, base64-encoding is performed
    #   for you, and you can load the text from a file. Otherwise, you must
    #   provide base64-encoded text.
    #   @return [Types::BlobAttributeValue]
    #
    # @!attribute [rw] value
    #   A new value for the attribute. Use only with the `kernel`,
    #   `ramdisk`, `userData`, `disableApiTermination`, or
    #   `instanceInitiatedShutdownBehavior` attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyInstanceAttributeRequest AWS API Documentation
    #
    class ModifyInstanceAttributeRequest < Struct.new(
      :source_dest_check,
      :attribute,
      :block_device_mappings,
      :disable_api_termination,
      :dry_run,
      :ebs_optimized,
      :ena_support,
      :groups,
      :instance_id,
      :instance_initiated_shutdown_behavior,
      :instance_type,
      :kernel,
      :ramdisk,
      :sriov_net_support,
      :user_data,
      :value)
      include Aws::Structure
    end

    # Contains the parameters for ModifyInstancePlacement.
    #
    # @note When making an API call, you may pass ModifyInstancePlacementRequest
    #   data as a hash:
    #
    #       {
    #         affinity: "default", # accepts default, host
    #         host_id: "String",
    #         instance_id: "String", # required
    #         tenancy: "dedicated", # accepts dedicated, host
    #       }
    #
    # @!attribute [rw] affinity
    #   The new affinity setting for the instance.
    #   @return [String]
    #
    # @!attribute [rw] host_id
    #   The ID of the Dedicated Host that the instance will have affinity
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance that you are modifying.
    #   @return [String]
    #
    # @!attribute [rw] tenancy
    #   The tenancy of the instance that you are modifying.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyInstancePlacementRequest AWS API Documentation
    #
    class ModifyInstancePlacementRequest < Struct.new(
      :affinity,
      :host_id,
      :instance_id,
      :tenancy)
      include Aws::Structure
    end

    # Contains the output of ModifyInstancePlacement.
    #
    # @!attribute [rw] return
    #   Is `true` if the request succeeds, and an error otherwise.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyInstancePlacementResult AWS API Documentation
    #
    class ModifyInstancePlacementResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for ModifyNetworkInterfaceAttribute.
    #
    # @note When making an API call, you may pass ModifyNetworkInterfaceAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attachment: {
    #           attachment_id: "String",
    #           delete_on_termination: false,
    #         },
    #         description: "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         dry_run: false,
    #         groups: ["String"],
    #         network_interface_id: "String", # required
    #         source_dest_check: {
    #           value: false,
    #         },
    #       }
    #
    # @!attribute [rw] attachment
    #   Information about the interface attachment. If modifying the
    #   'delete on termination' attribute, you must specify the ID of the
    #   interface attachment.
    #   @return [Types::NetworkInterfaceAttachmentChanges]
    #
    # @!attribute [rw] description
    #   A description for the network interface.
    #   @return [Types::AttributeValue]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] groups
    #   Changes the security groups for the network interface. The new set
    #   of groups you specify replaces the current set. You must specify at
    #   least one group, even if it's just the default security group in
    #   the VPC. You must specify the ID of the security group, not the
    #   name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] source_dest_check
    #   Indicates whether source/destination checking is enabled. A value of
    #   `true` means checking is enabled, and `false` means checking is
    #   disabled. This value must be `false` for a NAT instance to perform
    #   NAT. For more information, see [NAT Instances][1] in the *Amazon
    #   Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html
    #   @return [Types::AttributeBooleanValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyNetworkInterfaceAttributeRequest AWS API Documentation
    #
    class ModifyNetworkInterfaceAttributeRequest < Struct.new(
      :attachment,
      :description,
      :dry_run,
      :groups,
      :network_interface_id,
      :source_dest_check)
      include Aws::Structure
    end

    # Contains the parameters for ModifyReservedInstances.
    #
    # @note When making an API call, you may pass ModifyReservedInstancesRequest
    #   data as a hash:
    #
    #       {
    #         reserved_instances_ids: ["String"], # required
    #         client_token: "String",
    #         target_configurations: [ # required
    #           {
    #             availability_zone: "String",
    #             instance_count: 1,
    #             instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #             platform: "String",
    #             scope: "Availability Zone", # accepts Availability Zone, Region
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] reserved_instances_ids
    #   The IDs of the Reserved Instances to modify.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token you provide to ensure idempotency of
    #   your modification request. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] target_configurations
    #   The configuration settings for the Reserved Instances to modify.
    #   @return [Array<Types::ReservedInstancesConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyReservedInstancesRequest AWS API Documentation
    #
    class ModifyReservedInstancesRequest < Struct.new(
      :reserved_instances_ids,
      :client_token,
      :target_configurations)
      include Aws::Structure
    end

    # Contains the output of ModifyReservedInstances.
    #
    # @!attribute [rw] reserved_instances_modification_id
    #   The ID for the modification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyReservedInstancesResult AWS API Documentation
    #
    class ModifyReservedInstancesResult < Struct.new(
      :reserved_instances_modification_id)
      include Aws::Structure
    end

    # Contains the parameters for ModifySnapshotAttribute.
    #
    # @note When making an API call, you may pass ModifySnapshotAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "productCodes", # accepts productCodes, createVolumePermission
    #         create_volume_permission: {
    #           add: [
    #             {
    #               group: "all", # accepts all
    #               user_id: "String",
    #             },
    #           ],
    #           remove: [
    #             {
    #               group: "all", # accepts all
    #               user_id: "String",
    #             },
    #           ],
    #         },
    #         group_names: ["String"],
    #         operation_type: "add", # accepts add, remove
    #         snapshot_id: "String", # required
    #         user_ids: ["String"],
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] attribute
    #   The snapshot attribute to modify.
    #
    #   <note markdown="1"> Only volume creation permissions may be modified at the customer
    #   level.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] create_volume_permission
    #   A JSON representation of the snapshot attribute modification.
    #   @return [Types::CreateVolumePermissionModifications]
    #
    # @!attribute [rw] group_names
    #   The group to modify for the snapshot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operation_type
    #   The type of operation to perform to the attribute.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] user_ids
    #   The account ID to modify for the snapshot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifySnapshotAttributeRequest AWS API Documentation
    #
    class ModifySnapshotAttributeRequest < Struct.new(
      :attribute,
      :create_volume_permission,
      :group_names,
      :operation_type,
      :snapshot_id,
      :user_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for ModifySpotFleetRequest.
    #
    # @note When making an API call, you may pass ModifySpotFleetRequestRequest
    #   data as a hash:
    #
    #       {
    #         excess_capacity_termination_policy: "noTermination", # accepts noTermination, default
    #         spot_fleet_request_id: "String", # required
    #         target_capacity: 1,
    #       }
    #
    # @!attribute [rw] excess_capacity_termination_policy
    #   Indicates whether running Spot instances should be terminated if the
    #   target capacity of the Spot fleet request is decreased below the
    #   current size of the Spot fleet.
    #   @return [String]
    #
    # @!attribute [rw] spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #   @return [String]
    #
    # @!attribute [rw] target_capacity
    #   The size of the fleet.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifySpotFleetRequestRequest AWS API Documentation
    #
    class ModifySpotFleetRequestRequest < Struct.new(
      :excess_capacity_termination_policy,
      :spot_fleet_request_id,
      :target_capacity)
      include Aws::Structure
    end

    # Contains the output of ModifySpotFleetRequest.
    #
    # @!attribute [rw] return
    #   Is `true` if the request succeeds, and an error otherwise.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifySpotFleetRequestResponse AWS API Documentation
    #
    class ModifySpotFleetRequestResponse < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for ModifySubnetAttribute.
    #
    # @note When making an API call, you may pass ModifySubnetAttributeRequest
    #   data as a hash:
    #
    #       {
    #         assign_ipv_6_address_on_creation: {
    #           value: false,
    #         },
    #         map_public_ip_on_launch: {
    #           value: false,
    #         },
    #         subnet_id: "String", # required
    #       }
    #
    # @!attribute [rw] assign_ipv_6_address_on_creation
    #   Specify `true` to indicate that network interfaces created in the
    #   specified subnet should be assigned an IPv6 address. This includes a
    #   network interface that's created when launching an instance into
    #   the subnet (the instance therefore receives an IPv6 address).
    #
    #   If you enable the IPv6 addressing feature for your subnet, your
    #   network interface or instance only receives an IPv6 address if it's
    #   created using version `2016-11-15` or later of the Amazon EC2 API.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] map_public_ip_on_launch
    #   Specify `true` to indicate that network interfaces created in the
    #   specified subnet should be assigned a public IPv4 address. This
    #   includes a network interface that's created when launching an
    #   instance into the subnet (the instance therefore receives a public
    #   IPv4 address).
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifySubnetAttributeRequest AWS API Documentation
    #
    class ModifySubnetAttributeRequest < Struct.new(
      :assign_ipv_6_address_on_creation,
      :map_public_ip_on_launch,
      :subnet_id)
      include Aws::Structure
    end

    # Contains the parameters for ModifyVolumeAttribute.
    #
    # @note When making an API call, you may pass ModifyVolumeAttributeRequest
    #   data as a hash:
    #
    #       {
    #         auto_enable_io: {
    #           value: false,
    #         },
    #         volume_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] auto_enable_io
    #   Indicates whether the volume should be auto-enabled for I/O
    #   operations.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVolumeAttributeRequest AWS API Documentation
    #
    class ModifyVolumeAttributeRequest < Struct.new(
      :auto_enable_io,
      :volume_id,
      :dry_run)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyVolumeRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         volume_id: "String", # required
    #         size: 1,
    #         volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #         iops: 1,
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] volume_id
    #   @return [String]
    #
    # @!attribute [rw] size
    #   Target size in GiB of the volume to be modified. Target volume size
    #   must be greater than or equal to than the existing size of the
    #   volume. For information about available EBS volume sizes, see
    #   [http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html][1].
    #
    #   Default: If no size is specified, the existing size is retained.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   Target EBS volume type of the volume to be modified
    #
    #   The API does not support modifications for volume type `standard`.
    #   You also cannot change the type of a volume to `standard`.
    #
    #   Default: If no type is specified, the existing type is retained.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Target IOPS rate of the volume to be modified.
    #
    #   Only valid for Provisioned IOPS SSD (`io1`) volumes. For more
    #   information about `io1` IOPS configuration, see
    #   [http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html#EBSVolumeTypes\_piops][1].
    #
    #   Default: If no IOPS value is specified, the existing value is
    #   retained.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html#EBSVolumeTypes_piops
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVolumeRequest AWS API Documentation
    #
    class ModifyVolumeRequest < Struct.new(
      :dry_run,
      :volume_id,
      :size,
      :volume_type,
      :iops)
      include Aws::Structure
    end

    # @!attribute [rw] volume_modification
    #   A VolumeModification object.
    #   @return [Types::VolumeModification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVolumeResult AWS API Documentation
    #
    class ModifyVolumeResult < Struct.new(
      :volume_modification)
      include Aws::Structure
    end

    # Contains the parameters for ModifyVpcAttribute.
    #
    # @note When making an API call, you may pass ModifyVpcAttributeRequest
    #   data as a hash:
    #
    #       {
    #         enable_dns_hostnames: {
    #           value: false,
    #         },
    #         enable_dns_support: {
    #           value: false,
    #         },
    #         vpc_id: "String", # required
    #       }
    #
    # @!attribute [rw] enable_dns_hostnames
    #   Indicates whether the instances launched in the VPC get DNS
    #   hostnames. If enabled, instances in the VPC get DNS hostnames;
    #   otherwise, they do not.
    #
    #   You cannot modify the DNS resolution and DNS hostnames attributes in
    #   the same request. Use separate requests for each attribute. You can
    #   only enable DNS hostnames if you've enabled DNS support.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] enable_dns_support
    #   Indicates whether the DNS resolution is supported for the VPC. If
    #   enabled, queries to the Amazon provided DNS server at the
    #   169.254.169.253 IP address, or the reserved IP address at the base
    #   of the VPC network range "plus two" will succeed. If disabled, the
    #   Amazon provided DNS service in the VPC that resolves public DNS
    #   hostnames to IP addresses is not enabled.
    #
    #   You cannot modify the DNS resolution and DNS hostnames attributes in
    #   the same request. Use separate requests for each attribute.
    #   @return [Types::AttributeBooleanValue]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcAttributeRequest AWS API Documentation
    #
    class ModifyVpcAttributeRequest < Struct.new(
      :enable_dns_hostnames,
      :enable_dns_support,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the parameters for ModifyVpcEndpoint.
    #
    # @note When making an API call, you may pass ModifyVpcEndpointRequest
    #   data as a hash:
    #
    #       {
    #         add_route_table_ids: ["String"],
    #         dry_run: false,
    #         policy_document: "String",
    #         remove_route_table_ids: ["String"],
    #         reset_policy: false,
    #         vpc_endpoint_id: "String", # required
    #       }
    #
    # @!attribute [rw] add_route_table_ids
    #   One or more route tables IDs to associate with the endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] policy_document
    #   A policy document to attach to the endpoint. The policy must be in
    #   valid JSON format.
    #   @return [String]
    #
    # @!attribute [rw] remove_route_table_ids
    #   One or more route table IDs to disassociate from the endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] reset_policy
    #   Specify `true` to reset the policy document to the default policy.
    #   The default policy allows access to the service.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcEndpointRequest AWS API Documentation
    #
    class ModifyVpcEndpointRequest < Struct.new(
      :add_route_table_ids,
      :dry_run,
      :policy_document,
      :remove_route_table_ids,
      :reset_policy,
      :vpc_endpoint_id)
      include Aws::Structure
    end

    # Contains the output of ModifyVpcEndpoint.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcEndpointResult AWS API Documentation
    #
    class ModifyVpcEndpointResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyVpcPeeringConnectionOptionsRequest
    #   data as a hash:
    #
    #       {
    #         accepter_peering_connection_options: {
    #           allow_dns_resolution_from_remote_vpc: false,
    #           allow_egress_from_local_classic_link_to_remote_vpc: false,
    #           allow_egress_from_local_vpc_to_remote_classic_link: false,
    #         },
    #         dry_run: false,
    #         requester_peering_connection_options: {
    #           allow_dns_resolution_from_remote_vpc: false,
    #           allow_egress_from_local_classic_link_to_remote_vpc: false,
    #           allow_egress_from_local_vpc_to_remote_classic_link: false,
    #         },
    #         vpc_peering_connection_id: "String", # required
    #       }
    #
    # @!attribute [rw] accepter_peering_connection_options
    #   The VPC peering connection options for the accepter VPC.
    #   @return [Types::PeeringConnectionOptionsRequest]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the operation,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] requester_peering_connection_options
    #   The VPC peering connection options for the requester VPC.
    #   @return [Types::PeeringConnectionOptionsRequest]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcPeeringConnectionOptionsRequest AWS API Documentation
    #
    class ModifyVpcPeeringConnectionOptionsRequest < Struct.new(
      :accepter_peering_connection_options,
      :dry_run,
      :requester_peering_connection_options,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # @!attribute [rw] accepter_peering_connection_options
    #   Information about the VPC peering connection options for the
    #   accepter VPC.
    #   @return [Types::PeeringConnectionOptions]
    #
    # @!attribute [rw] requester_peering_connection_options
    #   Information about the VPC peering connection options for the
    #   requester VPC.
    #   @return [Types::PeeringConnectionOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ModifyVpcPeeringConnectionOptionsResult AWS API Documentation
    #
    class ModifyVpcPeeringConnectionOptionsResult < Struct.new(
      :accepter_peering_connection_options,
      :requester_peering_connection_options)
      include Aws::Structure
    end

    # Contains the parameters for MonitorInstances.
    #
    # @note When making an API call, you may pass MonitorInstancesRequest
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["String"], # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] instance_ids
    #   One or more instance IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/MonitorInstancesRequest AWS API Documentation
    #
    class MonitorInstancesRequest < Struct.new(
      :instance_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of MonitorInstances.
    #
    # @!attribute [rw] instance_monitorings
    #   The monitoring information.
    #   @return [Array<Types::InstanceMonitoring>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/MonitorInstancesResult AWS API Documentation
    #
    class MonitorInstancesResult < Struct.new(
      :instance_monitorings)
      include Aws::Structure
    end

    # Describes the monitoring of an instance.
    #
    # @!attribute [rw] state
    #   Indicates whether detailed monitoring is enabled. Otherwise, basic
    #   monitoring is enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Monitoring AWS API Documentation
    #
    class Monitoring < Struct.new(
      :state)
      include Aws::Structure
    end

    # Contains the parameters for MoveAddressToVpc.
    #
    # @note When making an API call, you may pass MoveAddressToVpcRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         public_ip: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] public_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/MoveAddressToVpcRequest AWS API Documentation
    #
    class MoveAddressToVpcRequest < Struct.new(
      :dry_run,
      :public_ip)
      include Aws::Structure
    end

    # Contains the output of MoveAddressToVpc.
    #
    # @!attribute [rw] allocation_id
    #   The allocation ID for the Elastic IP address.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the move of the IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/MoveAddressToVpcResult AWS API Documentation
    #
    class MoveAddressToVpcResult < Struct.new(
      :allocation_id,
      :status)
      include Aws::Structure
    end

    # Describes the status of a moving Elastic IP address.
    #
    # @!attribute [rw] move_status
    #   The status of the Elastic IP address that's being moved to the
    #   EC2-VPC platform, or restored to the EC2-Classic platform.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/MovingAddressStatus AWS API Documentation
    #
    class MovingAddressStatus < Struct.new(
      :move_status,
      :public_ip)
      include Aws::Structure
    end

    # Describes a NAT gateway.
    #
    # @!attribute [rw] create_time
    #   The date and time the NAT gateway was created.
    #   @return [Time]
    #
    # @!attribute [rw] delete_time
    #   The date and time the NAT gateway was deleted, if applicable.
    #   @return [Time]
    #
    # @!attribute [rw] failure_code
    #   If the NAT gateway could not be created, specifies the error code
    #   for the failure. (`InsufficientFreeAddressesInSubnet` \|
    #   `Gateway.NotAttached` \| `InvalidAllocationID.NotFound` \|
    #   `Resource.AlreadyAssociated` \| `InternalError` \|
    #   `InvalidSubnetID.NotFound`)
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   If the NAT gateway could not be created, specifies the error message
    #   for the failure, that corresponds to the error code.
    #
    #   * For InsufficientFreeAddressesInSubnet: "Subnet has insufficient
    #     free addresses to create this NAT gateway"
    #
    #   * For Gateway.NotAttached: "Network vpc-xxxxxxxx has no Internet
    #     gateway attached"
    #
    #   * For InvalidAllocationID.NotFound: "Elastic IP address
    #     eipalloc-xxxxxxxx could not be associated with this NAT gateway"
    #
    #   * For Resource.AlreadyAssociated: "Elastic IP address
    #     eipalloc-xxxxxxxx is already associated"
    #
    #   * For InternalError: "Network interface eni-xxxxxxxx, created and
    #     used internally by this NAT gateway is in an invalid state. Please
    #     try again."
    #
    #   * For InvalidSubnetID.NotFound: "The specified subnet
    #     subnet-xxxxxxxx does not exist or could not be found."
    #   @return [String]
    #
    # @!attribute [rw] nat_gateway_addresses
    #   Information about the IP addresses and network interface associated
    #   with the NAT gateway.
    #   @return [Array<Types::NatGatewayAddress>]
    #
    # @!attribute [rw] nat_gateway_id
    #   The ID of the NAT gateway.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_bandwidth
    #   Reserved. If you need to sustain traffic greater than the
    #   [documented limits][1], contact us through the [Support Center][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html
    #   [2]: https://console.aws.amazon.com/support/home?
    #   @return [Types::ProvisionedBandwidth]
    #
    # @!attribute [rw] state
    #   The state of the NAT gateway.
    #
    #   * `pending`\: The NAT gateway is being created and is not ready to
    #     process traffic.
    #
    #   * `failed`\: The NAT gateway could not be created. Check the
    #     `failureCode` and `failureMessage` fields for the reason.
    #
    #   * `available`\: The NAT gateway is able to process traffic. This
    #     status remains until you delete the NAT gateway, and does not
    #     indicate the health of the NAT gateway.
    #
    #   * `deleting`\: The NAT gateway is in the process of being terminated
    #     and may still be processing traffic.
    #
    #   * `deleted`\: The NAT gateway has been terminated and is no longer
    #     processing traffic.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet in which the NAT gateway is located.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC in which the NAT gateway is located.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for the NAT gateway.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NatGateway AWS API Documentation
    #
    class NatGateway < Struct.new(
      :create_time,
      :delete_time,
      :failure_code,
      :failure_message,
      :nat_gateway_addresses,
      :nat_gateway_id,
      :provisioned_bandwidth,
      :state,
      :subnet_id,
      :vpc_id,
      :tags)
      include Aws::Structure
    end

    # Describes the IP addresses and network interface associated with a NAT
    # gateway.
    #
    # @!attribute [rw] allocation_id
    #   The allocation ID of the Elastic IP address that's associated with
    #   the NAT gateway.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface associated with the NAT gateway.
    #   @return [String]
    #
    # @!attribute [rw] private_ip
    #   The private IP address associated with the Elastic IP address.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   The Elastic IP address associated with the NAT gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NatGatewayAddress AWS API Documentation
    #
    class NatGatewayAddress < Struct.new(
      :allocation_id,
      :network_interface_id,
      :private_ip,
      :public_ip)
      include Aws::Structure
    end

    # Describes a network ACL.
    #
    # @!attribute [rw] associations
    #   Any associations between the network ACL and one or more subnets
    #   @return [Array<Types::NetworkAclAssociation>]
    #
    # @!attribute [rw] entries
    #   One or more entries (rules) in the network ACL.
    #   @return [Array<Types::NetworkAclEntry>]
    #
    # @!attribute [rw] is_default
    #   Indicates whether this is the default network ACL for the VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_acl_id
    #   The ID of the network ACL.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the network ACL.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the network ACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkAcl AWS API Documentation
    #
    class NetworkAcl < Struct.new(
      :associations,
      :entries,
      :is_default,
      :network_acl_id,
      :tags,
      :vpc_id)
      include Aws::Structure
    end

    # Describes an association between a network ACL and a subnet.
    #
    # @!attribute [rw] network_acl_association_id
    #   The ID of the association between a network ACL and a subnet.
    #   @return [String]
    #
    # @!attribute [rw] network_acl_id
    #   The ID of the network ACL.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkAclAssociation AWS API Documentation
    #
    class NetworkAclAssociation < Struct.new(
      :network_acl_association_id,
      :network_acl_id,
      :subnet_id)
      include Aws::Structure
    end

    # Describes an entry in a network ACL.
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 network range to allow or deny, in CIDR notation.
    #   @return [String]
    #
    # @!attribute [rw] egress
    #   Indicates whether the rule is an egress rule (applied to traffic
    #   leaving the subnet).
    #   @return [Boolean]
    #
    # @!attribute [rw] icmp_type_code
    #   ICMP protocol: The ICMP type and code.
    #   @return [Types::IcmpTypeCode]
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 network range to allow or deny, in CIDR notation.
    #   @return [String]
    #
    # @!attribute [rw] port_range
    #   TCP or UDP protocols: The range of ports the rule applies to.
    #   @return [Types::PortRange]
    #
    # @!attribute [rw] protocol
    #   The protocol. A value of `-1` means all protocols.
    #   @return [String]
    #
    # @!attribute [rw] rule_action
    #   Indicates whether to allow or deny the traffic that matches the
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_number
    #   The rule number for the entry. ACL entries are processed in
    #   ascending order by rule number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkAclEntry AWS API Documentation
    #
    class NetworkAclEntry < Struct.new(
      :cidr_block,
      :egress,
      :icmp_type_code,
      :ipv_6_cidr_block,
      :port_range,
      :protocol,
      :rule_action,
      :rule_number)
      include Aws::Structure
    end

    # Describes a network interface.
    #
    # @!attribute [rw] association
    #   The association information for an Elastic IP address (IPv4)
    #   associated with the network interface.
    #   @return [Types::NetworkInterfaceAssociation]
    #
    # @!attribute [rw] attachment
    #   The network interface attachment.
    #   @return [Types::NetworkInterfaceAttachment]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   Any security groups for the network interface.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] interface_type
    #   The type of interface.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_addresses
    #   The IPv6 addresses associated with the network interface.
    #   @return [Array<Types::NetworkInterfaceIpv6Address>]
    #
    # @!attribute [rw] mac_address
    #   The MAC address.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the owner of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_dns_name
    #   The private DNS name.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The IPv4 address of the network interface within the subnet.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_addresses
    #   The private IPv4 addresses associated with the network interface.
    #   @return [Array<Types::NetworkInterfacePrivateIpAddress>]
    #
    # @!attribute [rw] requester_id
    #   The ID of the entity that launched the instance on your behalf (for
    #   example, AWS Management Console or Auto Scaling).
    #   @return [String]
    #
    # @!attribute [rw] requester_managed
    #   Indicates whether the network interface is being managed by AWS.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_dest_check
    #   Indicates whether traffic to or from the instance is validated.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] tag_set
    #   Any tags assigned to the network interface.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :association,
      :attachment,
      :availability_zone,
      :description,
      :groups,
      :interface_type,
      :ipv_6_addresses,
      :mac_address,
      :network_interface_id,
      :owner_id,
      :private_dns_name,
      :private_ip_address,
      :private_ip_addresses,
      :requester_id,
      :requester_managed,
      :source_dest_check,
      :status,
      :subnet_id,
      :tag_set,
      :vpc_id)
      include Aws::Structure
    end

    # Describes association information for an Elastic IP address (IPv4
    # only).
    #
    # @!attribute [rw] allocation_id
    #   The allocation ID.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The association ID.
    #   @return [String]
    #
    # @!attribute [rw] ip_owner_id
    #   The ID of the Elastic IP address owner.
    #   @return [String]
    #
    # @!attribute [rw] public_dns_name
    #   The public DNS name.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   The address of the Elastic IP address bound to the network
    #   interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkInterfaceAssociation AWS API Documentation
    #
    class NetworkInterfaceAssociation < Struct.new(
      :allocation_id,
      :association_id,
      :ip_owner_id,
      :public_dns_name,
      :public_ip)
      include Aws::Structure
    end

    # Describes a network interface attachment.
    #
    # @!attribute [rw] attach_time
    #   The timestamp indicating when the attachment initiated.
    #   @return [Time]
    #
    # @!attribute [rw] attachment_id
    #   The ID of the network interface attachment.
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the network interface is deleted when the instance
    #   is terminated.
    #   @return [Boolean]
    #
    # @!attribute [rw] device_index
    #   The device index of the network interface attachment on the
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_owner_id
    #   The AWS account ID of the owner of the instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The attachment state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkInterfaceAttachment AWS API Documentation
    #
    class NetworkInterfaceAttachment < Struct.new(
      :attach_time,
      :attachment_id,
      :delete_on_termination,
      :device_index,
      :instance_id,
      :instance_owner_id,
      :status)
      include Aws::Structure
    end

    # Describes an attachment change.
    #
    # @note When making an API call, you may pass NetworkInterfaceAttachmentChanges
    #   data as a hash:
    #
    #       {
    #         attachment_id: "String",
    #         delete_on_termination: false,
    #       }
    #
    # @!attribute [rw] attachment_id
    #   The ID of the network interface attachment.
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the network interface is deleted when the instance
    #   is terminated.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkInterfaceAttachmentChanges AWS API Documentation
    #
    class NetworkInterfaceAttachmentChanges < Struct.new(
      :attachment_id,
      :delete_on_termination)
      include Aws::Structure
    end

    # Describes an IPv6 address associated with a network interface.
    #
    # @!attribute [rw] ipv_6_address
    #   The IPv6 address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkInterfaceIpv6Address AWS API Documentation
    #
    class NetworkInterfaceIpv6Address < Struct.new(
      :ipv_6_address)
      include Aws::Structure
    end

    # Describes a permission for a network interface.
    #
    # @!attribute [rw] network_interface_permission_id
    #   The ID of the network interface permission.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_service
    #   The AWS service.
    #   @return [String]
    #
    # @!attribute [rw] permission
    #   The type of permission.
    #   @return [String]
    #
    # @!attribute [rw] permission_state
    #   Information about the state of the permission.
    #   @return [Types::NetworkInterfacePermissionState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkInterfacePermission AWS API Documentation
    #
    class NetworkInterfacePermission < Struct.new(
      :network_interface_permission_id,
      :network_interface_id,
      :aws_account_id,
      :aws_service,
      :permission,
      :permission_state)
      include Aws::Structure
    end

    # Describes the state of a network interface permission.
    #
    # @!attribute [rw] state
    #   The state of the permission.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A status message, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkInterfacePermissionState AWS API Documentation
    #
    class NetworkInterfacePermissionState < Struct.new(
      :state,
      :status_message)
      include Aws::Structure
    end

    # Describes the private IPv4 address of a network interface.
    #
    # @!attribute [rw] association
    #   The association information for an Elastic IP address (IPv4)
    #   associated with the network interface.
    #   @return [Types::NetworkInterfaceAssociation]
    #
    # @!attribute [rw] primary
    #   Indicates whether this IPv4 address is the primary private IPv4
    #   address of the network interface.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_dns_name
    #   The private DNS name.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IPv4 address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NetworkInterfacePrivateIpAddress AWS API Documentation
    #
    class NetworkInterfacePrivateIpAddress < Struct.new(
      :association,
      :primary,
      :private_dns_name,
      :private_ip_address)
      include Aws::Structure
    end

    # @note When making an API call, you may pass NewDhcpConfiguration
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         values: ["String"],
    #       }
    #
    # @!attribute [rw] key
    #   @return [String]
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/NewDhcpConfiguration AWS API Documentation
    #
    class NewDhcpConfiguration < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # Describes the data that identifies an Amazon FPGA image (AFI) on the
    # PCI bus.
    #
    # @!attribute [rw] device_id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] vendor_id
    #   The ID of the vendor.
    #   @return [String]
    #
    # @!attribute [rw] subsystem_id
    #   The ID of the subsystem.
    #   @return [String]
    #
    # @!attribute [rw] subsystem_vendor_id
    #   The ID of the vendor for the subsystem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PciId AWS API Documentation
    #
    class PciId < Struct.new(
      :device_id,
      :vendor_id,
      :subsystem_id,
      :subsystem_vendor_id)
      include Aws::Structure
    end

    # Describes the VPC peering connection options.
    #
    # @!attribute [rw] allow_dns_resolution_from_remote_vpc
    #   If true, enables a local VPC to resolve public DNS hostnames to
    #   private IP addresses when queried from instances in the peer VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_egress_from_local_classic_link_to_remote_vpc
    #   If true, enables outbound communication from an EC2-Classic instance
    #   that's linked to a local VPC via ClassicLink to instances in a peer
    #   VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_egress_from_local_vpc_to_remote_classic_link
    #   If true, enables outbound communication from instances in a local
    #   VPC to an EC2-Classic instance that's linked to a peer VPC via
    #   ClassicLink.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PeeringConnectionOptions AWS API Documentation
    #
    class PeeringConnectionOptions < Struct.new(
      :allow_dns_resolution_from_remote_vpc,
      :allow_egress_from_local_classic_link_to_remote_vpc,
      :allow_egress_from_local_vpc_to_remote_classic_link)
      include Aws::Structure
    end

    # The VPC peering connection options.
    #
    # @note When making an API call, you may pass PeeringConnectionOptionsRequest
    #   data as a hash:
    #
    #       {
    #         allow_dns_resolution_from_remote_vpc: false,
    #         allow_egress_from_local_classic_link_to_remote_vpc: false,
    #         allow_egress_from_local_vpc_to_remote_classic_link: false,
    #       }
    #
    # @!attribute [rw] allow_dns_resolution_from_remote_vpc
    #   If true, enables a local VPC to resolve public DNS hostnames to
    #   private IP addresses when queried from instances in the peer VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_egress_from_local_classic_link_to_remote_vpc
    #   If true, enables outbound communication from an EC2-Classic instance
    #   that's linked to a local VPC via ClassicLink to instances in a peer
    #   VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_egress_from_local_vpc_to_remote_classic_link
    #   If true, enables outbound communication from instances in a local
    #   VPC to an EC2-Classic instance that's linked to a peer VPC via
    #   ClassicLink.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PeeringConnectionOptionsRequest AWS API Documentation
    #
    class PeeringConnectionOptionsRequest < Struct.new(
      :allow_dns_resolution_from_remote_vpc,
      :allow_egress_from_local_classic_link_to_remote_vpc,
      :allow_egress_from_local_vpc_to_remote_classic_link)
      include Aws::Structure
    end

    # Describes the placement of an instance.
    #
    # @note When making an API call, you may pass Placement
    #   data as a hash:
    #
    #       {
    #         availability_zone: "String",
    #         affinity: "String",
    #         group_name: "String",
    #         host_id: "String",
    #         tenancy: "default", # accepts default, dedicated, host
    #         spread_domain: "String",
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone of the instance.
    #   @return [String]
    #
    # @!attribute [rw] affinity
    #   The affinity setting for the instance on the Dedicated Host. This
    #   parameter is not supported for the ImportInstance command.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the placement group the instance is in (for cluster
    #   compute instances).
    #   @return [String]
    #
    # @!attribute [rw] host_id
    #   The ID of the Dedicated Host on which the instance resides. This
    #   parameter is not supported for the ImportInstance command.
    #   @return [String]
    #
    # @!attribute [rw] tenancy
    #   The tenancy of the instance (if the instance is running in a VPC).
    #   An instance with a tenancy of `dedicated` runs on single-tenant
    #   hardware. The `host` tenancy is not supported for the ImportInstance
    #   command.
    #   @return [String]
    #
    # @!attribute [rw] spread_domain
    #   Reserved for future use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Placement AWS API Documentation
    #
    class Placement < Struct.new(
      :availability_zone,
      :affinity,
      :group_name,
      :host_id,
      :tenancy,
      :spread_domain)
      include Aws::Structure
    end

    # Describes a placement group.
    #
    # @!attribute [rw] group_name
    #   The name of the placement group.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the placement group.
    #   @return [String]
    #
    # @!attribute [rw] strategy
    #   The placement strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PlacementGroup AWS API Documentation
    #
    class PlacementGroup < Struct.new(
      :group_name,
      :state,
      :strategy)
      include Aws::Structure
    end

    # Describes a range of ports.
    #
    # @note When making an API call, you may pass PortRange
    #   data as a hash:
    #
    #       {
    #         from: 1,
    #         to: 1,
    #       }
    #
    # @!attribute [rw] from
    #   The first port in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The last port in the range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PortRange AWS API Documentation
    #
    class PortRange < Struct.new(
      :from,
      :to)
      include Aws::Structure
    end

    # Describes prefixes for AWS services.
    #
    # @!attribute [rw] cidrs
    #   The IP address range of the AWS service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] prefix_list_id
    #   The ID of the prefix.
    #   @return [String]
    #
    # @!attribute [rw] prefix_list_name
    #   The name of the prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PrefixList AWS API Documentation
    #
    class PrefixList < Struct.new(
      :cidrs,
      :prefix_list_id,
      :prefix_list_name)
      include Aws::Structure
    end

    # The ID of the prefix.
    #
    # @note When making an API call, you may pass PrefixListId
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         prefix_list_id: "String",
    #       }
    #
    # @!attribute [rw] description
    #   A description for the security group rule that references this
    #   prefix list ID.
    #
    #   Constraints: Up to 255 characters in length. Allowed characters are
    #   a-z, A-Z, 0-9, spaces, and .\_-:/()#,@\[\]+=;\\\{\\}!$*
    #   @return [String]
    #
    # @!attribute [rw] prefix_list_id
    #   The ID of the prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PrefixListId AWS API Documentation
    #
    class PrefixListId < Struct.new(
      :description,
      :prefix_list_id)
      include Aws::Structure
    end

    # Describes the price for a Reserved Instance.
    #
    # @!attribute [rw] active
    #   The current price schedule, as determined by the term remaining for
    #   the Reserved Instance in the listing.
    #
    #   A specific price schedule is always in effect, but only one price
    #   schedule can be active at any time. Take, for example, a Reserved
    #   Instance listing that has five months remaining in its term. When
    #   you specify price schedules for five months and two months, this
    #   means that schedule 1, covering the first three months of the
    #   remaining term, will be active during months 5, 4, and 3. Then
    #   schedule 2, covering the last two months of the term, will be active
    #   for months 2 and 1.
    #   @return [Boolean]
    #
    # @!attribute [rw] currency_code
    #   The currency for transacting the Reserved Instance resale. At this
    #   time, the only supported currency is `USD`.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The fixed price for the term.
    #   @return [Float]
    #
    # @!attribute [rw] term
    #   The number of months remaining in the reservation. For example, 2 is
    #   the second to the last month before the capacity reservation
    #   expires.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PriceSchedule AWS API Documentation
    #
    class PriceSchedule < Struct.new(
      :active,
      :currency_code,
      :price,
      :term)
      include Aws::Structure
    end

    # Describes the price for a Reserved Instance.
    #
    # @note When making an API call, you may pass PriceScheduleSpecification
    #   data as a hash:
    #
    #       {
    #         currency_code: "USD", # accepts USD
    #         price: 1.0,
    #         term: 1,
    #       }
    #
    # @!attribute [rw] currency_code
    #   The currency for transacting the Reserved Instance resale. At this
    #   time, the only supported currency is `USD`.
    #   @return [String]
    #
    # @!attribute [rw] price
    #   The fixed price for the term.
    #   @return [Float]
    #
    # @!attribute [rw] term
    #   The number of months remaining in the reservation. For example, 2 is
    #   the second to the last month before the capacity reservation
    #   expires.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PriceScheduleSpecification AWS API Documentation
    #
    class PriceScheduleSpecification < Struct.new(
      :currency_code,
      :price,
      :term)
      include Aws::Structure
    end

    # Describes a Reserved Instance offering.
    #
    # @!attribute [rw] count
    #   The number of reservations available for the price.
    #   @return [Integer]
    #
    # @!attribute [rw] price
    #   The price per instance.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PricingDetail AWS API Documentation
    #
    class PricingDetail < Struct.new(
      :count,
      :price)
      include Aws::Structure
    end

    # Describes a secondary private IPv4 address for a network interface.
    #
    # @note When making an API call, you may pass PrivateIpAddressSpecification
    #   data as a hash:
    #
    #       {
    #         primary: false,
    #         private_ip_address: "String", # required
    #       }
    #
    # @!attribute [rw] primary
    #   Indicates whether the private IPv4 address is the primary private
    #   IPv4 address. Only one IPv4 address can be designated as primary.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_ip_address
    #   The private IPv4 addresses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PrivateIpAddressSpecification AWS API Documentation
    #
    class PrivateIpAddressSpecification < Struct.new(
      :primary,
      :private_ip_address)
      include Aws::Structure
    end

    # Describes a product code.
    #
    # @!attribute [rw] product_code_id
    #   The product code.
    #   @return [String]
    #
    # @!attribute [rw] product_code_type
    #   The type of product code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ProductCode AWS API Documentation
    #
    class ProductCode < Struct.new(
      :product_code_id,
      :product_code_type)
      include Aws::Structure
    end

    # Describes a virtual private gateway propagating route.
    #
    # @!attribute [rw] gateway_id
    #   The ID of the virtual private gateway (VGW).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PropagatingVgw AWS API Documentation
    #
    class PropagatingVgw < Struct.new(
      :gateway_id)
      include Aws::Structure
    end

    # Reserved. If you need to sustain traffic greater than the [documented
    # limits][1], contact us through the [Support Center][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html
    # [2]: https://console.aws.amazon.com/support/home?
    #
    # @!attribute [rw] provision_time
    #   Reserved. If you need to sustain traffic greater than the
    #   [documented limits][1], contact us through the [Support Center][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html
    #   [2]: https://console.aws.amazon.com/support/home?
    #   @return [Time]
    #
    # @!attribute [rw] provisioned
    #   Reserved. If you need to sustain traffic greater than the
    #   [documented limits][1], contact us through the [Support Center][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html
    #   [2]: https://console.aws.amazon.com/support/home?
    #   @return [String]
    #
    # @!attribute [rw] request_time
    #   Reserved. If you need to sustain traffic greater than the
    #   [documented limits][1], contact us through the [Support Center][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html
    #   [2]: https://console.aws.amazon.com/support/home?
    #   @return [Time]
    #
    # @!attribute [rw] requested
    #   Reserved. If you need to sustain traffic greater than the
    #   [documented limits][1], contact us through the [Support Center][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html
    #   [2]: https://console.aws.amazon.com/support/home?
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Reserved. If you need to sustain traffic greater than the
    #   [documented limits][1], contact us through the [Support Center][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html
    #   [2]: https://console.aws.amazon.com/support/home?
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ProvisionedBandwidth AWS API Documentation
    #
    class ProvisionedBandwidth < Struct.new(
      :provision_time,
      :provisioned,
      :request_time,
      :requested,
      :status)
      include Aws::Structure
    end

    # Describes the result of the purchase.
    #
    # @!attribute [rw] currency_code
    #   The currency in which the `UpfrontPrice` and `HourlyPrice` amounts
    #   are specified. At this time, the only supported currency is `USD`.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the reservation's term in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] host_id_set
    #   The IDs of the Dedicated Hosts associated with the reservation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] host_reservation_id
    #   The ID of the reservation.
    #   @return [String]
    #
    # @!attribute [rw] hourly_price
    #   The hourly price of the reservation per hour.
    #   @return [String]
    #
    # @!attribute [rw] instance_family
    #   The instance family on the Dedicated Host that the reservation can
    #   be associated with.
    #   @return [String]
    #
    # @!attribute [rw] payment_option
    #   The payment option for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] upfront_price
    #   The upfront price of the reservation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Purchase AWS API Documentation
    #
    class Purchase < Struct.new(
      :currency_code,
      :duration,
      :host_id_set,
      :host_reservation_id,
      :hourly_price,
      :instance_family,
      :payment_option,
      :upfront_price)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PurchaseHostReservationRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         currency_code: "USD", # accepts USD
    #         host_id_set: ["String"], # required
    #         limit_price: "String",
    #         offering_id: "String", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency
    #   of the request. For more information, see [How to Ensure
    #   Idempotency][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency in which the `totalUpfrontPrice`, `LimitPrice`, and
    #   `totalHourlyPrice` amounts are specified. At this time, the only
    #   supported currency is `USD`.
    #   @return [String]
    #
    # @!attribute [rw] host_id_set
    #   The ID/s of the Dedicated Host/s that the reservation will be
    #   associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] limit_price
    #   The specified limit is checked against the total upfront cost of the
    #   reservation (calculated as the offering's upfront cost multiplied
    #   by the host count). If the total upfront cost is greater than the
    #   specified price limit, the request will fail. This is used to ensure
    #   that the purchase does not exceed the expected upfront cost of the
    #   purchase. At this time, the only supported currency is `USD`. For
    #   example, to indicate a limit price of USD 100, specify 100.00.
    #   @return [String]
    #
    # @!attribute [rw] offering_id
    #   The ID of the offering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseHostReservationRequest AWS API Documentation
    #
    class PurchaseHostReservationRequest < Struct.new(
      :client_token,
      :currency_code,
      :host_id_set,
      :limit_price,
      :offering_id)
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency
    #   of the request. For more information, see [How to Ensure
    #   Idempotency][1] in the *Amazon Elastic Compute Cloud User Guide*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The currency in which the `totalUpfrontPrice` and `totalHourlyPrice`
    #   amounts are specified. At this time, the only supported currency is
    #   `USD`.
    #   @return [String]
    #
    # @!attribute [rw] purchase
    #   Describes the details of the purchase.
    #   @return [Array<Types::Purchase>]
    #
    # @!attribute [rw] total_hourly_price
    #   The total hourly price of the reservation calculated per hour.
    #   @return [String]
    #
    # @!attribute [rw] total_upfront_price
    #   The total amount that will be charged to your account when you
    #   purchase the reservation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseHostReservationResult AWS API Documentation
    #
    class PurchaseHostReservationResult < Struct.new(
      :client_token,
      :currency_code,
      :purchase,
      :total_hourly_price,
      :total_upfront_price)
      include Aws::Structure
    end

    # Describes a request to purchase Scheduled Instances.
    #
    # @note When making an API call, you may pass PurchaseRequest
    #   data as a hash:
    #
    #       {
    #         instance_count: 1, # required
    #         purchase_token: "String", # required
    #       }
    #
    # @!attribute [rw] instance_count
    #   The number of instances.
    #   @return [Integer]
    #
    # @!attribute [rw] purchase_token
    #   The purchase token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseRequest AWS API Documentation
    #
    class PurchaseRequest < Struct.new(
      :instance_count,
      :purchase_token)
      include Aws::Structure
    end

    # Contains the parameters for PurchaseReservedInstancesOffering.
    #
    # @note When making an API call, you may pass PurchaseReservedInstancesOfferingRequest
    #   data as a hash:
    #
    #       {
    #         instance_count: 1, # required
    #         reserved_instances_offering_id: "String", # required
    #         dry_run: false,
    #         limit_price: {
    #           amount: 1.0,
    #           currency_code: "USD", # accepts USD
    #         },
    #       }
    #
    # @!attribute [rw] instance_count
    #   The number of Reserved Instances to purchase.
    #   @return [Integer]
    #
    # @!attribute [rw] reserved_instances_offering_id
    #   The ID of the Reserved Instance offering to purchase.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] limit_price
    #   Specified for Reserved Instance Marketplace offerings to limit the
    #   total order and ensure that the Reserved Instances are not purchased
    #   at unexpected prices.
    #   @return [Types::ReservedInstanceLimitPrice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseReservedInstancesOfferingRequest AWS API Documentation
    #
    class PurchaseReservedInstancesOfferingRequest < Struct.new(
      :instance_count,
      :reserved_instances_offering_id,
      :dry_run,
      :limit_price)
      include Aws::Structure
    end

    # Contains the output of PurchaseReservedInstancesOffering.
    #
    # @!attribute [rw] reserved_instances_id
    #   The IDs of the purchased Reserved Instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseReservedInstancesOfferingResult AWS API Documentation
    #
    class PurchaseReservedInstancesOfferingResult < Struct.new(
      :reserved_instances_id)
      include Aws::Structure
    end

    # Contains the parameters for PurchaseScheduledInstances.
    #
    # @note When making an API call, you may pass PurchaseScheduledInstancesRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         dry_run: false,
    #         purchase_requests: [ # required
    #           {
    #             instance_count: 1, # required
    #             purchase_token: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of
    #   the request. For more information, see [Ensuring Idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] purchase_requests
    #   One or more purchase requests.
    #   @return [Array<Types::PurchaseRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseScheduledInstancesRequest AWS API Documentation
    #
    class PurchaseScheduledInstancesRequest < Struct.new(
      :client_token,
      :dry_run,
      :purchase_requests)
      include Aws::Structure
    end

    # Contains the output of PurchaseScheduledInstances.
    #
    # @!attribute [rw] scheduled_instance_set
    #   Information about the Scheduled Instances.
    #   @return [Array<Types::ScheduledInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/PurchaseScheduledInstancesResult AWS API Documentation
    #
    class PurchaseScheduledInstancesResult < Struct.new(
      :scheduled_instance_set)
      include Aws::Structure
    end

    # Contains the parameters for RebootInstances.
    #
    # @note When making an API call, you may pass RebootInstancesRequest
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["String"], # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] instance_ids
    #   One or more instance IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RebootInstancesRequest AWS API Documentation
    #
    class RebootInstancesRequest < Struct.new(
      :instance_ids,
      :dry_run)
      include Aws::Structure
    end

    # Describes a recurring charge.
    #
    # @!attribute [rw] amount
    #   The amount of the recurring charge.
    #   @return [Float]
    #
    # @!attribute [rw] frequency
    #   The frequency of the recurring charge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RecurringCharge AWS API Documentation
    #
    class RecurringCharge < Struct.new(
      :amount,
      :frequency)
      include Aws::Structure
    end

    # Describes a region.
    #
    # @!attribute [rw] endpoint
    #   The region service endpoint.
    #   @return [String]
    #
    # @!attribute [rw] region_name
    #   The name of the region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Region AWS API Documentation
    #
    class Region < Struct.new(
      :endpoint,
      :region_name)
      include Aws::Structure
    end

    # Contains the parameters for RegisterImage.
    #
    # @note When making an API call, you may pass RegisterImageRequest
    #   data as a hash:
    #
    #       {
    #         image_location: "String",
    #         architecture: "i386", # accepts i386, x86_64
    #         block_device_mappings: [
    #           {
    #             device_name: "String",
    #             virtual_name: "String",
    #             ebs: {
    #               encrypted: false,
    #               delete_on_termination: false,
    #               iops: 1,
    #               snapshot_id: "String",
    #               volume_size: 1,
    #               volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #             },
    #             no_device: "String",
    #           },
    #         ],
    #         description: "String",
    #         dry_run: false,
    #         ena_support: false,
    #         kernel_id: "String",
    #         name: "String", # required
    #         billing_products: ["String"],
    #         ramdisk_id: "String",
    #         root_device_name: "String",
    #         sriov_net_support: "String",
    #         virtualization_type: "String",
    #       }
    #
    # @!attribute [rw] image_location
    #   The full path to your AMI manifest in Amazon S3 storage.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architecture of the AMI.
    #
    #   Default: For Amazon EBS-backed AMIs, `i386`. For instance
    #   store-backed AMIs, the architecture specified in the manifest file.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   One or more block device mapping entries.
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] description
    #   A description for your AMI.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] ena_support
    #   Set to `true` to enable enhanced networking with ENA for the AMI and
    #   any instances that you launch from the AMI.
    #
    #   This option is supported only for HVM AMIs. Specifying this option
    #   with a PV AMI can make instances launched from the AMI unreachable.
    #   @return [Boolean]
    #
    # @!attribute [rw] kernel_id
    #   The ID of the kernel.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for your AMI.
    #
    #   Constraints: 3-128 alphanumeric characters, parentheses (()), square
    #   brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-),
    #   single quotes ('), at-signs (@), or underscores(\_)
    #   @return [String]
    #
    # @!attribute [rw] billing_products
    #   The billing product codes. Your account must be authorized to
    #   specify billing product codes. Otherwise, you can use the AWS
    #   Marketplace to bill for the use of an AMI.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ramdisk_id
    #   The ID of the RAM disk.
    #   @return [String]
    #
    # @!attribute [rw] root_device_name
    #   The name of the root device (for example, `/dev/sda1`, or
    #   `/dev/xvda`).
    #   @return [String]
    #
    # @!attribute [rw] sriov_net_support
    #   Set to `simple` to enable enhanced networking with the Intel 82599
    #   Virtual Function interface for the AMI and any instances that you
    #   launch from the AMI.
    #
    #   There is no way to disable `sriovNetSupport` at this time.
    #
    #   This option is supported only for HVM AMIs. Specifying this option
    #   with a PV AMI can make instances launched from the AMI unreachable.
    #   @return [String]
    #
    # @!attribute [rw] virtualization_type
    #   The type of virtualization.
    #
    #   Default: `paravirtual`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RegisterImageRequest AWS API Documentation
    #
    class RegisterImageRequest < Struct.new(
      :image_location,
      :architecture,
      :block_device_mappings,
      :description,
      :dry_run,
      :ena_support,
      :kernel_id,
      :name,
      :billing_products,
      :ramdisk_id,
      :root_device_name,
      :sriov_net_support,
      :virtualization_type)
      include Aws::Structure
    end

    # Contains the output of RegisterImage.
    #
    # @!attribute [rw] image_id
    #   The ID of the newly registered AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RegisterImageResult AWS API Documentation
    #
    class RegisterImageResult < Struct.new(
      :image_id)
      include Aws::Structure
    end

    # Contains the parameters for RejectVpcPeeringConnection.
    #
    # @note When making an API call, you may pass RejectVpcPeeringConnectionRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         vpc_peering_connection_id: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RejectVpcPeeringConnectionRequest AWS API Documentation
    #
    class RejectVpcPeeringConnectionRequest < Struct.new(
      :dry_run,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # Contains the output of RejectVpcPeeringConnection.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, it returns an
    #   error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RejectVpcPeeringConnectionResult AWS API Documentation
    #
    class RejectVpcPeeringConnectionResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for ReleaseAddress.
    #
    # @note When making an API call, you may pass ReleaseAddressRequest
    #   data as a hash:
    #
    #       {
    #         allocation_id: "String",
    #         public_ip: "String",
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] allocation_id
    #   \[EC2-VPC\] The allocation ID. Required for EC2-VPC.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   \[EC2-Classic\] The Elastic IP address. Required for EC2-Classic.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReleaseAddressRequest AWS API Documentation
    #
    class ReleaseAddressRequest < Struct.new(
      :allocation_id,
      :public_ip,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for ReleaseHosts.
    #
    # @note When making an API call, you may pass ReleaseHostsRequest
    #   data as a hash:
    #
    #       {
    #         host_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] host_ids
    #   The IDs of the Dedicated Hosts you want to release.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReleaseHostsRequest AWS API Documentation
    #
    class ReleaseHostsRequest < Struct.new(
      :host_ids)
      include Aws::Structure
    end

    # Contains the output of ReleaseHosts.
    #
    # @!attribute [rw] successful
    #   The IDs of the Dedicated Hosts that were successfully released.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unsuccessful
    #   The IDs of the Dedicated Hosts that could not be released, including
    #   an error message.
    #   @return [Array<Types::UnsuccessfulItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReleaseHostsResult AWS API Documentation
    #
    class ReleaseHostsResult < Struct.new(
      :successful,
      :unsuccessful)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ReplaceIamInstanceProfileAssociationRequest
    #   data as a hash:
    #
    #       {
    #         iam_instance_profile: { # required
    #           arn: "String",
    #           name: "String",
    #         },
    #         association_id: "String", # required
    #       }
    #
    # @!attribute [rw] iam_instance_profile
    #   The IAM instance profile.
    #   @return [Types::IamInstanceProfileSpecification]
    #
    # @!attribute [rw] association_id
    #   The ID of the existing IAM instance profile association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceIamInstanceProfileAssociationRequest AWS API Documentation
    #
    class ReplaceIamInstanceProfileAssociationRequest < Struct.new(
      :iam_instance_profile,
      :association_id)
      include Aws::Structure
    end

    # @!attribute [rw] iam_instance_profile_association
    #   Information about the IAM instance profile association.
    #   @return [Types::IamInstanceProfileAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceIamInstanceProfileAssociationResult AWS API Documentation
    #
    class ReplaceIamInstanceProfileAssociationResult < Struct.new(
      :iam_instance_profile_association)
      include Aws::Structure
    end

    # Contains the parameters for ReplaceNetworkAclAssociation.
    #
    # @note When making an API call, you may pass ReplaceNetworkAclAssociationRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "String", # required
    #         dry_run: false,
    #         network_acl_id: "String", # required
    #       }
    #
    # @!attribute [rw] association_id
    #   The ID of the current association between the original network ACL
    #   and the subnet.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_acl_id
    #   The ID of the new network ACL to associate with the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceNetworkAclAssociationRequest AWS API Documentation
    #
    class ReplaceNetworkAclAssociationRequest < Struct.new(
      :association_id,
      :dry_run,
      :network_acl_id)
      include Aws::Structure
    end

    # Contains the output of ReplaceNetworkAclAssociation.
    #
    # @!attribute [rw] new_association_id
    #   The ID of the new association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceNetworkAclAssociationResult AWS API Documentation
    #
    class ReplaceNetworkAclAssociationResult < Struct.new(
      :new_association_id)
      include Aws::Structure
    end

    # Contains the parameters for ReplaceNetworkAclEntry.
    #
    # @note When making an API call, you may pass ReplaceNetworkAclEntryRequest
    #   data as a hash:
    #
    #       {
    #         cidr_block: "String",
    #         dry_run: false,
    #         egress: false, # required
    #         icmp_type_code: {
    #           code: 1,
    #           type: 1,
    #         },
    #         ipv_6_cidr_block: "String",
    #         network_acl_id: "String", # required
    #         port_range: {
    #           from: 1,
    #           to: 1,
    #         },
    #         protocol: "String", # required
    #         rule_action: "allow", # required, accepts allow, deny
    #         rule_number: 1, # required
    #       }
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 network range to allow or deny, in CIDR notation (for
    #   example `172.16.0.0/24`).
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] egress
    #   Indicates whether to replace the egress rule.
    #
    #   Default: If no value is specified, we replace the ingress rule.
    #   @return [Boolean]
    #
    # @!attribute [rw] icmp_type_code
    #   ICMP protocol: The ICMP or ICMPv6 type and code. Required if
    #   specifying the ICMP (1) protocol, or protocol 58 (ICMPv6) with an
    #   IPv6 CIDR block.
    #   @return [Types::IcmpTypeCode]
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 network range to allow or deny, in CIDR notation (for
    #   example `2001:bd8:1234:1a00::/64`).
    #   @return [String]
    #
    # @!attribute [rw] network_acl_id
    #   The ID of the ACL.
    #   @return [String]
    #
    # @!attribute [rw] port_range
    #   TCP or UDP protocols: The range of ports the rule applies to.
    #   Required if specifying TCP (6) or UDP (17) for the protocol.
    #   @return [Types::PortRange]
    #
    # @!attribute [rw] protocol
    #   The IP protocol. You can specify `all` or `-1` to mean all
    #   protocols. If you specify `all`, `-1`, or a protocol number other
    #   than `tcp`, `udp`, or `icmp`, traffic on all ports is allowed,
    #   regardless of any ports or ICMP types or codes you specify. If you
    #   specify protocol `58` (ICMPv6) and specify an IPv4 CIDR block,
    #   traffic for all ICMP types and codes allowed, regardless of any that
    #   you specify. If you specify protocol `58` (ICMPv6) and specify an
    #   IPv6 CIDR block, you must specify an ICMP type and code.
    #   @return [String]
    #
    # @!attribute [rw] rule_action
    #   Indicates whether to allow or deny the traffic that matches the
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_number
    #   The rule number of the entry to replace.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceNetworkAclEntryRequest AWS API Documentation
    #
    class ReplaceNetworkAclEntryRequest < Struct.new(
      :cidr_block,
      :dry_run,
      :egress,
      :icmp_type_code,
      :ipv_6_cidr_block,
      :network_acl_id,
      :port_range,
      :protocol,
      :rule_action,
      :rule_number)
      include Aws::Structure
    end

    # Contains the parameters for ReplaceRoute.
    #
    # @note When making an API call, you may pass ReplaceRouteRequest
    #   data as a hash:
    #
    #       {
    #         destination_cidr_block: "String",
    #         destination_ipv_6_cidr_block: "String",
    #         dry_run: false,
    #         egress_only_internet_gateway_id: "String",
    #         gateway_id: "String",
    #         instance_id: "String",
    #         nat_gateway_id: "String",
    #         network_interface_id: "String",
    #         route_table_id: "String", # required
    #         vpc_peering_connection_id: "String",
    #       }
    #
    # @!attribute [rw] destination_cidr_block
    #   The IPv4 CIDR address block used for the destination match. The
    #   value you provide must match the CIDR of an existing route in the
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] destination_ipv_6_cidr_block
    #   The IPv6 CIDR address block used for the destination match. The
    #   value you provide must match the CIDR of an existing route in the
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] egress_only_internet_gateway_id
    #   \[IPv6 traffic only\] The ID of an egress-only Internet gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The ID of an Internet gateway or virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of a NAT instance in your VPC.
    #   @return [String]
    #
    # @!attribute [rw] nat_gateway_id
    #   \[IPv4 traffic only\] The ID of a NAT gateway.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of a network interface.
    #   @return [String]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of a VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceRouteRequest AWS API Documentation
    #
    class ReplaceRouteRequest < Struct.new(
      :destination_cidr_block,
      :destination_ipv_6_cidr_block,
      :dry_run,
      :egress_only_internet_gateway_id,
      :gateway_id,
      :instance_id,
      :nat_gateway_id,
      :network_interface_id,
      :route_table_id,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # Contains the parameters for ReplaceRouteTableAssociation.
    #
    # @note When making an API call, you may pass ReplaceRouteTableAssociationRequest
    #   data as a hash:
    #
    #       {
    #         association_id: "String", # required
    #         dry_run: false,
    #         route_table_id: "String", # required
    #       }
    #
    # @!attribute [rw] association_id
    #   The association ID.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the new route table to associate with the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceRouteTableAssociationRequest AWS API Documentation
    #
    class ReplaceRouteTableAssociationRequest < Struct.new(
      :association_id,
      :dry_run,
      :route_table_id)
      include Aws::Structure
    end

    # Contains the output of ReplaceRouteTableAssociation.
    #
    # @!attribute [rw] new_association_id
    #   The ID of the new association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReplaceRouteTableAssociationResult AWS API Documentation
    #
    class ReplaceRouteTableAssociationResult < Struct.new(
      :new_association_id)
      include Aws::Structure
    end

    # Contains the parameters for ReportInstanceStatus.
    #
    # @note When making an API call, you may pass ReportInstanceStatusRequest
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         dry_run: false,
    #         end_time: Time.now,
    #         instances: ["String"], # required
    #         reason_codes: ["instance-stuck-in-state"], # required, accepts instance-stuck-in-state, unresponsive, not-accepting-credentials, password-not-available, performance-network, performance-instance-store, performance-ebs-volume, performance-other, other
    #         start_time: Time.now,
    #         status: "ok", # required, accepts ok, impaired
    #       }
    #
    # @!attribute [rw] description
    #   Descriptive text about the health state of your instance.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] end_time
    #   The time at which the reported instance health state ended.
    #   @return [Time]
    #
    # @!attribute [rw] instances
    #   One or more instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] reason_codes
    #   One or more reason codes that describe the health state of your
    #   instance.
    #
    #   * `instance-stuck-in-state`\: My instance is stuck in a state.
    #
    #   * `unresponsive`\: My instance is unresponsive.
    #
    #   * `not-accepting-credentials`\: My instance is not accepting my
    #     credentials.
    #
    #   * `password-not-available`\: A password is not available for my
    #     instance.
    #
    #   * `performance-network`\: My instance is experiencing performance
    #     problems that I believe are network related.
    #
    #   * `performance-instance-store`\: My instance is experiencing
    #     performance problems that I believe are related to the instance
    #     stores.
    #
    #   * `performance-ebs-volume`\: My instance is experiencing performance
    #     problems that I believe are related to an EBS volume.
    #
    #   * `performance-other`\: My instance is experiencing performance
    #     problems.
    #
    #   * `other`\: \[explain using the description parameter\]
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The time at which the reported instance health state began.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of all instances listed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReportInstanceStatusRequest AWS API Documentation
    #
    class ReportInstanceStatusRequest < Struct.new(
      :description,
      :dry_run,
      :end_time,
      :instances,
      :reason_codes,
      :start_time,
      :status)
      include Aws::Structure
    end

    # Contains the parameters for RequestSpotFleet.
    #
    # @note When making an API call, you may pass RequestSpotFleetRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         spot_fleet_request_config: { # required
    #           allocation_strategy: "lowestPrice", # accepts lowestPrice, diversified
    #           client_token: "String",
    #           excess_capacity_termination_policy: "noTermination", # accepts noTermination, default
    #           fulfilled_capacity: 1.0,
    #           iam_fleet_role: "String", # required
    #           launch_specifications: [ # required
    #             {
    #               security_groups: [
    #                 {
    #                   group_name: "String",
    #                   group_id: "String",
    #                 },
    #               ],
    #               addressing_type: "String",
    #               block_device_mappings: [
    #                 {
    #                   device_name: "String",
    #                   virtual_name: "String",
    #                   ebs: {
    #                     encrypted: false,
    #                     delete_on_termination: false,
    #                     iops: 1,
    #                     snapshot_id: "String",
    #                     volume_size: 1,
    #                     volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #                   },
    #                   no_device: "String",
    #                 },
    #               ],
    #               ebs_optimized: false,
    #               iam_instance_profile: {
    #                 arn: "String",
    #                 name: "String",
    #               },
    #               image_id: "String",
    #               instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #               kernel_id: "String",
    #               key_name: "String",
    #               monitoring: {
    #                 enabled: false,
    #               },
    #               network_interfaces: [
    #                 {
    #                   associate_public_ip_address: false,
    #                   delete_on_termination: false,
    #                   description: "String",
    #                   device_index: 1,
    #                   groups: ["String"],
    #                   ipv_6_address_count: 1,
    #                   ipv_6_addresses: [
    #                     {
    #                       ipv_6_address: "String",
    #                     },
    #                   ],
    #                   network_interface_id: "String",
    #                   private_ip_address: "String",
    #                   private_ip_addresses: [
    #                     {
    #                       primary: false,
    #                       private_ip_address: "String", # required
    #                     },
    #                   ],
    #                   secondary_private_ip_address_count: 1,
    #                   subnet_id: "String",
    #                 },
    #               ],
    #               placement: {
    #                 availability_zone: "String",
    #                 group_name: "String",
    #                 tenancy: "default", # accepts default, dedicated, host
    #               },
    #               ramdisk_id: "String",
    #               spot_price: "String",
    #               subnet_id: "String",
    #               user_data: "String",
    #               weighted_capacity: 1.0,
    #               tag_specifications: [
    #                 {
    #                   resource_type: "customer-gateway", # accepts customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #                   tags: [
    #                     {
    #                       key: "String",
    #                       value: "String",
    #                     },
    #                   ],
    #                 },
    #               ],
    #             },
    #           ],
    #           spot_price: "String", # required
    #           target_capacity: 1, # required
    #           terminate_instances_with_expiration: false,
    #           type: "request", # accepts request, maintain
    #           valid_from: Time.now,
    #           valid_until: Time.now,
    #           replace_unhealthy_instances: false,
    #           instance_interruption_behavior: "stop", # accepts stop, terminate
    #         },
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] spot_fleet_request_config
    #   The configuration for the Spot fleet request.
    #   @return [Types::SpotFleetRequestConfigData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RequestSpotFleetRequest AWS API Documentation
    #
    class RequestSpotFleetRequest < Struct.new(
      :dry_run,
      :spot_fleet_request_config)
      include Aws::Structure
    end

    # Contains the output of RequestSpotFleet.
    #
    # @!attribute [rw] spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RequestSpotFleetResponse AWS API Documentation
    #
    class RequestSpotFleetResponse < Struct.new(
      :spot_fleet_request_id)
      include Aws::Structure
    end

    # Contains the parameters for RequestSpotInstances.
    #
    # @note When making an API call, you may pass RequestSpotInstancesRequest
    #   data as a hash:
    #
    #       {
    #         availability_zone_group: "String",
    #         block_duration_minutes: 1,
    #         client_token: "String",
    #         dry_run: false,
    #         instance_count: 1,
    #         launch_group: "String",
    #         launch_specification: {
    #           security_group_ids: ["String"],
    #           security_groups: ["String"],
    #           addressing_type: "String",
    #           block_device_mappings: [
    #             {
    #               device_name: "String",
    #               virtual_name: "String",
    #               ebs: {
    #                 encrypted: false,
    #                 delete_on_termination: false,
    #                 iops: 1,
    #                 snapshot_id: "String",
    #                 volume_size: 1,
    #                 volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #               },
    #               no_device: "String",
    #             },
    #           ],
    #           ebs_optimized: false,
    #           iam_instance_profile: {
    #             arn: "String",
    #             name: "String",
    #           },
    #           image_id: "String",
    #           instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #           kernel_id: "String",
    #           key_name: "String",
    #           monitoring: {
    #             enabled: false, # required
    #           },
    #           network_interfaces: [
    #             {
    #               associate_public_ip_address: false,
    #               delete_on_termination: false,
    #               description: "String",
    #               device_index: 1,
    #               groups: ["String"],
    #               ipv_6_address_count: 1,
    #               ipv_6_addresses: [
    #                 {
    #                   ipv_6_address: "String",
    #                 },
    #               ],
    #               network_interface_id: "String",
    #               private_ip_address: "String",
    #               private_ip_addresses: [
    #                 {
    #                   primary: false,
    #                   private_ip_address: "String", # required
    #                 },
    #               ],
    #               secondary_private_ip_address_count: 1,
    #               subnet_id: "String",
    #             },
    #           ],
    #           placement: {
    #             availability_zone: "String",
    #             group_name: "String",
    #             tenancy: "default", # accepts default, dedicated, host
    #           },
    #           ramdisk_id: "String",
    #           subnet_id: "String",
    #           user_data: "String",
    #         },
    #         spot_price: "String", # required
    #         type: "one-time", # accepts one-time, persistent
    #         valid_from: Time.now,
    #         valid_until: Time.now,
    #         instance_interruption_behavior: "stop", # accepts stop, terminate
    #       }
    #
    # @!attribute [rw] availability_zone_group
    #   The user-specified name for a logical grouping of bids.
    #
    #   When you specify an Availability Zone group in a Spot Instance
    #   request, all Spot instances in the request are launched in the same
    #   Availability Zone. Instance proximity is maintained with this
    #   parameter, but the choice of Availability Zone is not. The group
    #   applies only to bids for Spot Instances of the same instance type.
    #   Any additional Spot instance requests that are specified with the
    #   same Availability Zone group name are launched in that same
    #   Availability Zone, as long as at least one instance from the group
    #   is still active.
    #
    #   If there is no active instance running in the Availability Zone
    #   group that you specify for a new Spot instance request (all
    #   instances are terminated, the bid is expired, or the bid falls below
    #   current market), then Amazon EC2 launches the instance in any
    #   Availability Zone where the constraint can be met. Consequently, the
    #   subsequent set of Spot instances could be placed in a different zone
    #   from the original request, even if you specified the same
    #   Availability Zone group.
    #
    #   Default: Instances are launched in any available Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] block_duration_minutes
    #   The required duration for the Spot instances (also known as Spot
    #   blocks), in minutes. This value must be a multiple of 60 (60, 120,
    #   180, 240, 300, or 360).
    #
    #   The duration period starts as soon as your Spot instance receives
    #   its instance ID. At the end of the duration period, Amazon EC2 marks
    #   the Spot instance for termination and provides a Spot instance
    #   termination notice, which gives the instance a two-minute warning
    #   before it terminates.
    #
    #   Note that you can't specify an Availability Zone group or a launch
    #   group if you specify a duration.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. For more information, see [How to Ensure
    #   Idempotency][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_count
    #   The maximum number of Spot instances to launch.
    #
    #   Default: 1
    #   @return [Integer]
    #
    # @!attribute [rw] launch_group
    #   The instance launch group. Launch groups are Spot instances that
    #   launch together and terminate together.
    #
    #   Default: Instances are launched and terminated individually
    #   @return [String]
    #
    # @!attribute [rw] launch_specification
    #   The launch specification.
    #   @return [Types::RequestSpotLaunchSpecification]
    #
    # @!attribute [rw] spot_price
    #   The maximum hourly price (bid) for any Spot instance launched to
    #   fulfill the request.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The Spot instance request type.
    #
    #   Default: `one-time`
    #   @return [String]
    #
    # @!attribute [rw] valid_from
    #   The start date of the request. If this is a one-time request, the
    #   request becomes active at this date and time and remains active
    #   until all instances launch, the request expires, or the request is
    #   canceled. If the request is persistent, the request becomes active
    #   at this date and time and remains active until it expires or is
    #   canceled.
    #
    #   Default: The request is effective indefinitely.
    #   @return [Time]
    #
    # @!attribute [rw] valid_until
    #   The end date of the request. If this is a one-time request, the
    #   request remains active until all instances launch, the request is
    #   canceled, or this date is reached. If the request is persistent, it
    #   remains active until it is canceled or this date and time is
    #   reached.
    #
    #   Default: The request is effective indefinitely.
    #   @return [Time]
    #
    # @!attribute [rw] instance_interruption_behavior
    #   Indicates whether a Spot instance stops or terminates when it is
    #   interrupted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RequestSpotInstancesRequest AWS API Documentation
    #
    class RequestSpotInstancesRequest < Struct.new(
      :availability_zone_group,
      :block_duration_minutes,
      :client_token,
      :dry_run,
      :instance_count,
      :launch_group,
      :launch_specification,
      :spot_price,
      :type,
      :valid_from,
      :valid_until,
      :instance_interruption_behavior)
      include Aws::Structure
    end

    # Contains the output of RequestSpotInstances.
    #
    # @!attribute [rw] spot_instance_requests
    #   One or more Spot instance requests.
    #   @return [Array<Types::SpotInstanceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RequestSpotInstancesResult AWS API Documentation
    #
    class RequestSpotInstancesResult < Struct.new(
      :spot_instance_requests)
      include Aws::Structure
    end

    # Describes the launch specification for an instance.
    #
    # @note When making an API call, you may pass RequestSpotLaunchSpecification
    #   data as a hash:
    #
    #       {
    #         security_group_ids: ["String"],
    #         security_groups: ["String"],
    #         addressing_type: "String",
    #         block_device_mappings: [
    #           {
    #             device_name: "String",
    #             virtual_name: "String",
    #             ebs: {
    #               encrypted: false,
    #               delete_on_termination: false,
    #               iops: 1,
    #               snapshot_id: "String",
    #               volume_size: 1,
    #               volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #             },
    #             no_device: "String",
    #           },
    #         ],
    #         ebs_optimized: false,
    #         iam_instance_profile: {
    #           arn: "String",
    #           name: "String",
    #         },
    #         image_id: "String",
    #         instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #         kernel_id: "String",
    #         key_name: "String",
    #         monitoring: {
    #           enabled: false, # required
    #         },
    #         network_interfaces: [
    #           {
    #             associate_public_ip_address: false,
    #             delete_on_termination: false,
    #             description: "String",
    #             device_index: 1,
    #             groups: ["String"],
    #             ipv_6_address_count: 1,
    #             ipv_6_addresses: [
    #               {
    #                 ipv_6_address: "String",
    #               },
    #             ],
    #             network_interface_id: "String",
    #             private_ip_address: "String",
    #             private_ip_addresses: [
    #               {
    #                 primary: false,
    #                 private_ip_address: "String", # required
    #               },
    #             ],
    #             secondary_private_ip_address_count: 1,
    #             subnet_id: "String",
    #           },
    #         ],
    #         placement: {
    #           availability_zone: "String",
    #           group_name: "String",
    #           tenancy: "default", # accepts default, dedicated, host
    #         },
    #         ramdisk_id: "String",
    #         subnet_id: "String",
    #         user_data: "String",
    #       }
    #
    # @!attribute [rw] security_group_ids
    #   One or more security group IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   One or more security groups. When requesting instances in a VPC, you
    #   must specify the IDs of the security groups. When requesting
    #   instances in EC2-Classic, you can specify the names or the IDs of
    #   the security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] addressing_type
    #   Deprecated.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   One or more block device mapping entries.
    #
    #   Although you can specify encrypted EBS volumes in this block device
    #   mapping for your Spot Instances, these volumes are not encrypted.
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] ebs_optimized
    #   Indicates whether the instance is optimized for EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal EBS I/O
    #   performance. This optimization isn't available with all instance
    #   types. Additional usage charges apply when using an EBS Optimized
    #   instance.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] iam_instance_profile
    #   The IAM instance profile.
    #   @return [Types::IamInstanceProfileSpecification]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] kernel_id
    #   The ID of the kernel.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair.
    #   @return [String]
    #
    # @!attribute [rw] monitoring
    #   Indicates whether basic or detailed monitoring is enabled for the
    #   instance.
    #
    #   Default: Disabled
    #   @return [Types::RunInstancesMonitoringEnabled]
    #
    # @!attribute [rw] network_interfaces
    #   One or more network interfaces. If you specify a network interface,
    #   you must specify subnet IDs and security group IDs using the network
    #   interface.
    #   @return [Array<Types::InstanceNetworkInterfaceSpecification>]
    #
    # @!attribute [rw] placement
    #   The placement information for the instance.
    #   @return [Types::SpotPlacement]
    #
    # @!attribute [rw] ramdisk_id
    #   The ID of the RAM disk.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet in which to launch the instance.
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   The user data to make available to the instances. If you are using
    #   an AWS SDK or command line tool, Base64-encoding is performed for
    #   you, and you can load the text from a file. Otherwise, you must
    #   provide Base64-encoded text.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RequestSpotLaunchSpecification AWS API Documentation
    #
    class RequestSpotLaunchSpecification < Struct.new(
      :security_group_ids,
      :security_groups,
      :addressing_type,
      :block_device_mappings,
      :ebs_optimized,
      :iam_instance_profile,
      :image_id,
      :instance_type,
      :kernel_id,
      :key_name,
      :monitoring,
      :network_interfaces,
      :placement,
      :ramdisk_id,
      :subnet_id,
      :user_data)
      include Aws::Structure
    end

    # Describes a reservation.
    #
    # @!attribute [rw] groups
    #   \[EC2-Classic only\] One or more security groups.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] instances
    #   One or more instances.
    #   @return [Array<Types::Instance>]
    #
    # @!attribute [rw] owner_id
    #   The ID of the AWS account that owns the reservation.
    #   @return [String]
    #
    # @!attribute [rw] requester_id
    #   The ID of the requester that launched the instances on your behalf
    #   (for example, AWS Management Console or Auto Scaling).
    #   @return [String]
    #
    # @!attribute [rw] reservation_id
    #   The ID of the reservation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Reservation AWS API Documentation
    #
    class Reservation < Struct.new(
      :groups,
      :instances,
      :owner_id,
      :requester_id,
      :reservation_id)
      include Aws::Structure
    end

    # The cost associated with the Reserved Instance.
    #
    # @!attribute [rw] hourly_price
    #   The hourly rate of the reservation.
    #   @return [String]
    #
    # @!attribute [rw] remaining_total_value
    #   The balance of the total value (the sum of remainingUpfrontValue +
    #   hourlyPrice * number of hours remaining).
    #   @return [String]
    #
    # @!attribute [rw] remaining_upfront_value
    #   The remaining upfront cost of the reservation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReservationValue AWS API Documentation
    #
    class ReservationValue < Struct.new(
      :hourly_price,
      :remaining_total_value,
      :remaining_upfront_value)
      include Aws::Structure
    end

    # Describes the limit price of a Reserved Instance offering.
    #
    # @note When making an API call, you may pass ReservedInstanceLimitPrice
    #   data as a hash:
    #
    #       {
    #         amount: 1.0,
    #         currency_code: "USD", # accepts USD
    #       }
    #
    # @!attribute [rw] amount
    #   Used for Reserved Instance Marketplace offerings. Specifies the
    #   limit price on the total order (instanceCount * price).
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency in which the `limitPrice` amount is specified. At this
    #   time, the only supported currency is `USD`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReservedInstanceLimitPrice AWS API Documentation
    #
    class ReservedInstanceLimitPrice < Struct.new(
      :amount,
      :currency_code)
      include Aws::Structure
    end

    # The total value of the Convertible Reserved Instance.
    #
    # @!attribute [rw] reservation_value
    #   The total value of the Convertible Reserved Instance that you are
    #   exchanging.
    #   @return [Types::ReservationValue]
    #
    # @!attribute [rw] reserved_instance_id
    #   The ID of the Convertible Reserved Instance that you are exchanging.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReservedInstanceReservationValue AWS API Documentation
    #
    class ReservedInstanceReservationValue < Struct.new(
      :reservation_value,
      :reserved_instance_id)
      include Aws::Structure
    end

    # Describes a Reserved Instance.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the Reserved Instance can be used.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the Reserved Instance, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The time when the Reserved Instance expires.
    #   @return [Time]
    #
    # @!attribute [rw] fixed_price
    #   The purchase price of the Reserved Instance.
    #   @return [Float]
    #
    # @!attribute [rw] instance_count
    #   The number of reservations purchased.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The instance type on which the Reserved Instance can be used.
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The Reserved Instance product platform description.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_id
    #   The ID of the Reserved Instance.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The date and time the Reserved Instance started.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the Reserved Instance purchase.
    #   @return [String]
    #
    # @!attribute [rw] usage_price
    #   The usage price of the Reserved Instance, per hour.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency of the Reserved Instance. It's specified using ISO
    #   4217 standard currency codes. At this time, the only supported
    #   currency is `USD`.
    #   @return [String]
    #
    # @!attribute [rw] instance_tenancy
    #   The tenancy of the instance.
    #   @return [String]
    #
    # @!attribute [rw] offering_class
    #   The offering class of the Reserved Instance.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The Reserved Instance offering type.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring charge tag assigned to the resource.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @!attribute [rw] scope
    #   The scope of the Reserved Instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReservedInstances AWS API Documentation
    #
    class ReservedInstances < Struct.new(
      :availability_zone,
      :duration,
      :end,
      :fixed_price,
      :instance_count,
      :instance_type,
      :product_description,
      :reserved_instances_id,
      :start,
      :state,
      :usage_price,
      :currency_code,
      :instance_tenancy,
      :offering_class,
      :offering_type,
      :recurring_charges,
      :scope,
      :tags)
      include Aws::Structure
    end

    # Describes the configuration settings for the modified Reserved
    # Instances.
    #
    # @note When making an API call, you may pass ReservedInstancesConfiguration
    #   data as a hash:
    #
    #       {
    #         availability_zone: "String",
    #         instance_count: 1,
    #         instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #         platform: "String",
    #         scope: "Availability Zone", # accepts Availability Zone, Region
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the modified Reserved Instances.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of modified Reserved Instances.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The instance type for the modified Reserved Instances.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The network platform of the modified Reserved Instances, which is
    #   either EC2-Classic or EC2-VPC.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Whether the Reserved Instance is applied to instances in a region or
    #   instances in a specific Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReservedInstancesConfiguration AWS API Documentation
    #
    class ReservedInstancesConfiguration < Struct.new(
      :availability_zone,
      :instance_count,
      :instance_type,
      :platform,
      :scope)
      include Aws::Structure
    end

    # Describes the ID of a Reserved Instance.
    #
    # @!attribute [rw] reserved_instances_id
    #   The ID of the Reserved Instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReservedInstancesId AWS API Documentation
    #
    class ReservedInstancesId < Struct.new(
      :reserved_instances_id)
      include Aws::Structure
    end

    # Describes a Reserved Instance listing.
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive key supplied by the client to ensure that
    #   the request is idempotent. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The time the listing was created.
    #   @return [Time]
    #
    # @!attribute [rw] instance_counts
    #   The number of instances in this state.
    #   @return [Array<Types::InstanceCount>]
    #
    # @!attribute [rw] price_schedules
    #   The price of the Reserved Instance listing.
    #   @return [Array<Types::PriceSchedule>]
    #
    # @!attribute [rw] reserved_instances_id
    #   The ID of the Reserved Instance.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_listing_id
    #   The ID of the Reserved Instance listing.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Reserved Instance listing.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The reason for the current status of the Reserved Instance listing.
    #   The response can be blank.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] update_date
    #   The last modified timestamp of the listing.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReservedInstancesListing AWS API Documentation
    #
    class ReservedInstancesListing < Struct.new(
      :client_token,
      :create_date,
      :instance_counts,
      :price_schedules,
      :reserved_instances_id,
      :reserved_instances_listing_id,
      :status,
      :status_message,
      :tags,
      :update_date)
      include Aws::Structure
    end

    # Describes a Reserved Instance modification.
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive key supplied by the client to ensure that
    #   the request is idempotent. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The time when the modification request was created.
    #   @return [Time]
    #
    # @!attribute [rw] effective_date
    #   The time for the modification to become effective.
    #   @return [Time]
    #
    # @!attribute [rw] modification_results
    #   Contains target configurations along with their corresponding new
    #   Reserved Instance IDs.
    #   @return [Array<Types::ReservedInstancesModificationResult>]
    #
    # @!attribute [rw] reserved_instances_ids
    #   The IDs of one or more Reserved Instances.
    #   @return [Array<Types::ReservedInstancesId>]
    #
    # @!attribute [rw] reserved_instances_modification_id
    #   A unique ID for the Reserved Instance modification.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Reserved Instances modification request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The reason for the status.
    #   @return [String]
    #
    # @!attribute [rw] update_date
    #   The time when the modification request was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReservedInstancesModification AWS API Documentation
    #
    class ReservedInstancesModification < Struct.new(
      :client_token,
      :create_date,
      :effective_date,
      :modification_results,
      :reserved_instances_ids,
      :reserved_instances_modification_id,
      :status,
      :status_message,
      :update_date)
      include Aws::Structure
    end

    # Describes the modification request/s.
    #
    # @!attribute [rw] reserved_instances_id
    #   The ID for the Reserved Instances that were created as part of the
    #   modification request. This field is only available when the
    #   modification is fulfilled.
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   The target Reserved Instances configurations supplied as part of the
    #   modification request.
    #   @return [Types::ReservedInstancesConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReservedInstancesModificationResult AWS API Documentation
    #
    class ReservedInstancesModificationResult < Struct.new(
      :reserved_instances_id,
      :target_configuration)
      include Aws::Structure
    end

    # Describes a Reserved Instance offering.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the Reserved Instance can be used.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the Reserved Instance, in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The purchase price of the Reserved Instance.
    #   @return [Float]
    #
    # @!attribute [rw] instance_type
    #   The instance type on which the Reserved Instance can be used.
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The Reserved Instance product platform description.
    #   @return [String]
    #
    # @!attribute [rw] reserved_instances_offering_id
    #   The ID of the Reserved Instance offering. This is the offering ID
    #   used in GetReservedInstancesExchangeQuote to confirm that an
    #   exchange can be made.
    #   @return [String]
    #
    # @!attribute [rw] usage_price
    #   The usage price of the Reserved Instance, per hour.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency of the Reserved Instance offering you are purchasing.
    #   It's specified using ISO 4217 standard currency codes. At this
    #   time, the only supported currency is `USD`.
    #   @return [String]
    #
    # @!attribute [rw] instance_tenancy
    #   The tenancy of the instance.
    #   @return [String]
    #
    # @!attribute [rw] marketplace
    #   Indicates whether the offering is available through the Reserved
    #   Instance Marketplace (resale) or AWS. If it's a Reserved Instance
    #   Marketplace offering, this is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] offering_class
    #   If `convertible` it can be exchanged for Reserved Instances of the
    #   same or higher monetary value, with different configurations. If
    #   `standard`, it is not possible to perform an exchange.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The Reserved Instance offering type.
    #   @return [String]
    #
    # @!attribute [rw] pricing_details
    #   The pricing details of the Reserved Instance offering.
    #   @return [Array<Types::PricingDetail>]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring charge tag assigned to the resource.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @!attribute [rw] scope
    #   Whether the Reserved Instance is applied to instances in a region or
    #   an Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ReservedInstancesOffering AWS API Documentation
    #
    class ReservedInstancesOffering < Struct.new(
      :availability_zone,
      :duration,
      :fixed_price,
      :instance_type,
      :product_description,
      :reserved_instances_offering_id,
      :usage_price,
      :currency_code,
      :instance_tenancy,
      :marketplace,
      :offering_class,
      :offering_type,
      :pricing_details,
      :recurring_charges,
      :scope)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResetFpgaImageAttributeRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         fpga_image_id: "String", # required
    #         attribute: "loadPermission", # accepts loadPermission
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] fpga_image_id
    #   The ID of the AFI.
    #   @return [String]
    #
    # @!attribute [rw] attribute
    #   The attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetFpgaImageAttributeRequest AWS API Documentation
    #
    class ResetFpgaImageAttributeRequest < Struct.new(
      :dry_run,
      :fpga_image_id,
      :attribute)
      include Aws::Structure
    end

    # @!attribute [rw] return
    #   Is `true` if the request succeeds, and an error otherwise.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetFpgaImageAttributeResult AWS API Documentation
    #
    class ResetFpgaImageAttributeResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for ResetImageAttribute.
    #
    # @note When making an API call, you may pass ResetImageAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "launchPermission", # required, accepts launchPermission
    #         image_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to reset (currently you can only reset the launch
    #   permission attribute).
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetImageAttributeRequest AWS API Documentation
    #
    class ResetImageAttributeRequest < Struct.new(
      :attribute,
      :image_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for ResetInstanceAttribute.
    #
    # @note When making an API call, you may pass ResetInstanceAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "instanceType", # required, accepts instanceType, kernel, ramdisk, userData, disableApiTermination, instanceInitiatedShutdownBehavior, rootDeviceName, blockDeviceMapping, productCodes, sourceDestCheck, groupSet, ebsOptimized, sriovNetSupport, enaSupport
    #         dry_run: false,
    #         instance_id: "String", # required
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to reset.
    #
    #   You can only reset the following attributes: `kernel` \| `ramdisk`
    #   \| `sourceDestCheck`. To change an instance attribute, use
    #   ModifyInstanceAttribute.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetInstanceAttributeRequest AWS API Documentation
    #
    class ResetInstanceAttributeRequest < Struct.new(
      :attribute,
      :dry_run,
      :instance_id)
      include Aws::Structure
    end

    # Contains the parameters for ResetNetworkInterfaceAttribute.
    #
    # @note When making an API call, you may pass ResetNetworkInterfaceAttributeRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         network_interface_id: "String", # required
    #         source_dest_check: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] source_dest_check
    #   The source/destination checking attribute. Resets the value to
    #   `true`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetNetworkInterfaceAttributeRequest AWS API Documentation
    #
    class ResetNetworkInterfaceAttributeRequest < Struct.new(
      :dry_run,
      :network_interface_id,
      :source_dest_check)
      include Aws::Structure
    end

    # Contains the parameters for ResetSnapshotAttribute.
    #
    # @note When making an API call, you may pass ResetSnapshotAttributeRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "productCodes", # required, accepts productCodes, createVolumePermission
    #         snapshot_id: "String", # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to reset. Currently, only the attribute for permission
    #   to create volumes can be reset.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ResetSnapshotAttributeRequest AWS API Documentation
    #
    class ResetSnapshotAttributeRequest < Struct.new(
      :attribute,
      :snapshot_id,
      :dry_run)
      include Aws::Structure
    end

    # Contains the parameters for RestoreAddressToClassic.
    #
    # @note When making an API call, you may pass RestoreAddressToClassicRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         public_ip: "String", # required
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] public_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RestoreAddressToClassicRequest AWS API Documentation
    #
    class RestoreAddressToClassicRequest < Struct.new(
      :dry_run,
      :public_ip)
      include Aws::Structure
    end

    # Contains the output of RestoreAddressToClassic.
    #
    # @!attribute [rw] public_ip
    #   The Elastic IP address.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The move status for the IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RestoreAddressToClassicResult AWS API Documentation
    #
    class RestoreAddressToClassicResult < Struct.new(
      :public_ip,
      :status)
      include Aws::Structure
    end

    # Contains the parameters for RevokeSecurityGroupEgress.
    #
    # @note When making an API call, you may pass RevokeSecurityGroupEgressRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         group_id: "String", # required
    #         ip_permissions: [
    #           {
    #             from_port: 1,
    #             ip_protocol: "String",
    #             ip_ranges: [
    #               {
    #                 cidr_ip: "String",
    #                 description: "String",
    #               },
    #             ],
    #             ipv_6_ranges: [
    #               {
    #                 cidr_ipv_6: "String",
    #                 description: "String",
    #               },
    #             ],
    #             prefix_list_ids: [
    #               {
    #                 description: "String",
    #                 prefix_list_id: "String",
    #               },
    #             ],
    #             to_port: 1,
    #             user_id_group_pairs: [
    #               {
    #                 description: "String",
    #                 group_id: "String",
    #                 group_name: "String",
    #                 peering_status: "String",
    #                 user_id: "String",
    #                 vpc_id: "String",
    #                 vpc_peering_connection_id: "String",
    #               },
    #             ],
    #           },
    #         ],
    #         cidr_ip: "String",
    #         from_port: 1,
    #         ip_protocol: "String",
    #         to_port: 1,
    #         source_security_group_name: "String",
    #         source_security_group_owner_id: "String",
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions
    #   A set of IP permissions. You can't specify a destination security
    #   group and a CIDR IP address range.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] cidr_ip
    #   The CIDR IP address range. We recommend that you specify the CIDR
    #   range in a set of IP permissions instead.
    #   @return [String]
    #
    # @!attribute [rw] from_port
    #   The start of port range for the TCP and UDP protocols, or an ICMP
    #   type number. We recommend that you specify the port range in a set
    #   of IP permissions instead.
    #   @return [Integer]
    #
    # @!attribute [rw] ip_protocol
    #   The IP protocol name or number. We recommend that you specify the
    #   protocol in a set of IP permissions instead.
    #   @return [String]
    #
    # @!attribute [rw] to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP type
    #   number. We recommend that you specify the port range in a set of IP
    #   permissions instead.
    #   @return [Integer]
    #
    # @!attribute [rw] source_security_group_name
    #   The name of a destination security group. To revoke outbound access
    #   to a destination security group, we recommend that you use a set of
    #   IP permissions instead.
    #   @return [String]
    #
    # @!attribute [rw] source_security_group_owner_id
    #   The AWS account number for a destination security group. To revoke
    #   outbound access to a destination security group, we recommend that
    #   you use a set of IP permissions instead.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RevokeSecurityGroupEgressRequest AWS API Documentation
    #
    class RevokeSecurityGroupEgressRequest < Struct.new(
      :dry_run,
      :group_id,
      :ip_permissions,
      :cidr_ip,
      :from_port,
      :ip_protocol,
      :to_port,
      :source_security_group_name,
      :source_security_group_owner_id)
      include Aws::Structure
    end

    # Contains the parameters for RevokeSecurityGroupIngress.
    #
    # @note When making an API call, you may pass RevokeSecurityGroupIngressRequest
    #   data as a hash:
    #
    #       {
    #         cidr_ip: "String",
    #         from_port: 1,
    #         group_id: "String",
    #         group_name: "String",
    #         ip_permissions: [
    #           {
    #             from_port: 1,
    #             ip_protocol: "String",
    #             ip_ranges: [
    #               {
    #                 cidr_ip: "String",
    #                 description: "String",
    #               },
    #             ],
    #             ipv_6_ranges: [
    #               {
    #                 cidr_ipv_6: "String",
    #                 description: "String",
    #               },
    #             ],
    #             prefix_list_ids: [
    #               {
    #                 description: "String",
    #                 prefix_list_id: "String",
    #               },
    #             ],
    #             to_port: 1,
    #             user_id_group_pairs: [
    #               {
    #                 description: "String",
    #                 group_id: "String",
    #                 group_name: "String",
    #                 peering_status: "String",
    #                 user_id: "String",
    #                 vpc_id: "String",
    #                 vpc_peering_connection_id: "String",
    #               },
    #             ],
    #           },
    #         ],
    #         ip_protocol: "String",
    #         source_security_group_name: "String",
    #         source_security_group_owner_id: "String",
    #         to_port: 1,
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] cidr_ip
    #   The CIDR IP address range. You can't specify this parameter when
    #   specifying a source security group.
    #   @return [String]
    #
    # @!attribute [rw] from_port
    #   The start of port range for the TCP and UDP protocols, or an ICMP
    #   type number. For the ICMP type number, use `-1` to specify all ICMP
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group. Required for a security group in a
    #   nondefault VPC.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   \[EC2-Classic, default VPC\] The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions
    #   A set of IP permissions. You can't specify a source security group
    #   and a CIDR IP address range.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol
    #   Numbers][1]). Use `-1` to specify all.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #   @return [String]
    #
    # @!attribute [rw] source_security_group_name
    #   \[EC2-Classic, default VPC\] The name of the source security group.
    #   You can't specify this parameter in combination with the following
    #   parameters: the CIDR IP address range, the start of the port range,
    #   the IP protocol, and the end of the port range. For EC2-VPC, the
    #   source security group must be in the same VPC. To revoke a specific
    #   rule for an IP protocol and port range, use a set of IP permissions
    #   instead.
    #   @return [String]
    #
    # @!attribute [rw] source_security_group_owner_id
    #   \[EC2-Classic\] The AWS account ID of the source security group, if
    #   the source security group is in a different account. You can't
    #   specify this parameter in combination with the following parameters:
    #   the CIDR IP address range, the IP protocol, the start of the port
    #   range, and the end of the port range. To revoke a specific rule for
    #   an IP protocol and port range, use a set of IP permissions instead.
    #   @return [String]
    #
    # @!attribute [rw] to_port
    #   The end of port range for the TCP and UDP protocols, or an ICMP code
    #   number. For the ICMP code number, use `-1` to specify all ICMP codes
    #   for the ICMP type.
    #   @return [Integer]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RevokeSecurityGroupIngressRequest AWS API Documentation
    #
    class RevokeSecurityGroupIngressRequest < Struct.new(
      :cidr_ip,
      :from_port,
      :group_id,
      :group_name,
      :ip_permissions,
      :ip_protocol,
      :source_security_group_name,
      :source_security_group_owner_id,
      :to_port,
      :dry_run)
      include Aws::Structure
    end

    # Describes a route in a route table.
    #
    # @!attribute [rw] destination_cidr_block
    #   The IPv4 CIDR block used for the destination match.
    #   @return [String]
    #
    # @!attribute [rw] destination_ipv_6_cidr_block
    #   The IPv6 CIDR block used for the destination match.
    #   @return [String]
    #
    # @!attribute [rw] destination_prefix_list_id
    #   The prefix of the AWS service.
    #   @return [String]
    #
    # @!attribute [rw] egress_only_internet_gateway_id
    #   The ID of the egress-only Internet gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The ID of a gateway attached to your VPC.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of a NAT instance in your VPC.
    #   @return [String]
    #
    # @!attribute [rw] instance_owner_id
    #   The AWS account ID of the owner of the instance.
    #   @return [String]
    #
    # @!attribute [rw] nat_gateway_id
    #   The ID of a NAT gateway.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Describes how the route was created.
    #
    #   * `CreateRouteTable` - The route was automatically created when the
    #     route table was created.
    #
    #   * `CreateRoute` - The route was manually added to the route table.
    #
    #   * `EnableVgwRoutePropagation` - The route was propagated by route
    #     propagation.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the route. The `blackhole` state indicates that the
    #   route's target isn't available (for example, the specified gateway
    #   isn't attached to the VPC, or the specified NAT instance has been
    #   terminated).
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Route AWS API Documentation
    #
    class Route < Struct.new(
      :destination_cidr_block,
      :destination_ipv_6_cidr_block,
      :destination_prefix_list_id,
      :egress_only_internet_gateway_id,
      :gateway_id,
      :instance_id,
      :instance_owner_id,
      :nat_gateway_id,
      :network_interface_id,
      :origin,
      :state,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # Describes a route table.
    #
    # @!attribute [rw] associations
    #   The associations between the route table and one or more subnets.
    #   @return [Array<Types::RouteTableAssociation>]
    #
    # @!attribute [rw] propagating_vgws
    #   Any virtual private gateway (VGW) propagating routes.
    #   @return [Array<Types::PropagatingVgw>]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @!attribute [rw] routes
    #   The routes in the route table.
    #   @return [Array<Types::Route>]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the route table.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RouteTable AWS API Documentation
    #
    class RouteTable < Struct.new(
      :associations,
      :propagating_vgws,
      :route_table_id,
      :routes,
      :tags,
      :vpc_id)
      include Aws::Structure
    end

    # Describes an association between a route table and a subnet.
    #
    # @!attribute [rw] main
    #   Indicates whether this is the main route table.
    #   @return [Boolean]
    #
    # @!attribute [rw] route_table_association_id
    #   The ID of the association between a route table and a subnet.
    #   @return [String]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet. A subnet ID is not returned for an implicit
    #   association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RouteTableAssociation AWS API Documentation
    #
    class RouteTableAssociation < Struct.new(
      :main,
      :route_table_association_id,
      :route_table_id,
      :subnet_id)
      include Aws::Structure
    end

    # Describes the monitoring of an instance.
    #
    # @note When making an API call, you may pass RunInstancesMonitoringEnabled
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether detailed monitoring is enabled. Otherwise, basic
    #   monitoring is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RunInstancesMonitoringEnabled AWS API Documentation
    #
    class RunInstancesMonitoringEnabled < Struct.new(
      :enabled)
      include Aws::Structure
    end

    # Contains the parameters for RunInstances.
    #
    # @note When making an API call, you may pass RunInstancesRequest
    #   data as a hash:
    #
    #       {
    #         block_device_mappings: [
    #           {
    #             device_name: "String",
    #             virtual_name: "String",
    #             ebs: {
    #               encrypted: false,
    #               delete_on_termination: false,
    #               iops: 1,
    #               snapshot_id: "String",
    #               volume_size: 1,
    #               volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #             },
    #             no_device: "String",
    #           },
    #         ],
    #         image_id: "String", # required
    #         instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #         ipv_6_address_count: 1,
    #         ipv_6_addresses: [
    #           {
    #             ipv_6_address: "String",
    #           },
    #         ],
    #         kernel_id: "String",
    #         key_name: "String",
    #         max_count: 1, # required
    #         min_count: 1, # required
    #         monitoring: {
    #           enabled: false, # required
    #         },
    #         placement: {
    #           availability_zone: "String",
    #           affinity: "String",
    #           group_name: "String",
    #           host_id: "String",
    #           tenancy: "default", # accepts default, dedicated, host
    #           spread_domain: "String",
    #         },
    #         ramdisk_id: "String",
    #         security_group_ids: ["String"],
    #         security_groups: ["String"],
    #         subnet_id: "String",
    #         user_data: "String",
    #         additional_info: "String",
    #         client_token: "String",
    #         disable_api_termination: false,
    #         dry_run: false,
    #         ebs_optimized: false,
    #         iam_instance_profile: {
    #           arn: "String",
    #           name: "String",
    #         },
    #         instance_initiated_shutdown_behavior: "stop", # accepts stop, terminate
    #         network_interfaces: [
    #           {
    #             associate_public_ip_address: false,
    #             delete_on_termination: false,
    #             description: "String",
    #             device_index: 1,
    #             groups: ["String"],
    #             ipv_6_address_count: 1,
    #             ipv_6_addresses: [
    #               {
    #                 ipv_6_address: "String",
    #               },
    #             ],
    #             network_interface_id: "String",
    #             private_ip_address: "String",
    #             private_ip_addresses: [
    #               {
    #                 primary: false,
    #                 private_ip_address: "String", # required
    #               },
    #             ],
    #             secondary_private_ip_address_count: 1,
    #             subnet_id: "String",
    #           },
    #         ],
    #         private_ip_address: "String",
    #         elastic_gpu_specification: [
    #           {
    #             type: "String", # required
    #           },
    #         ],
    #         tag_specifications: [
    #           {
    #             resource_type: "customer-gateway", # accepts customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] block_device_mappings
    #   The block device mapping.
    #
    #   Supplying both a snapshot ID and an encryption value as arguments
    #   for block-device mapping results in an error. This is because only
    #   blank volumes can be encrypted on start, and these are not created
    #   from a snapshot. If a snapshot is the basis for the volume, it
    #   contains data by definition and its encryption status cannot be
    #   changed using this action.
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI, which you can get by calling DescribeImages.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type. For more information, see [Instance Types][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*.
    #
    #   Default: `m1.small`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_address_count
    #   \[EC2-VPC\] A number of IPv6 addresses to associate with the primary
    #   network interface. Amazon EC2 chooses the IPv6 addresses from the
    #   range of your subnet. You cannot specify this option and the option
    #   to assign specific IPv6 addresses in the same request. You can
    #   specify this option if you've specified a minimum number of
    #   instances to launch.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_6_addresses
    #   \[EC2-VPC\] Specify one or more IPv6 addresses from the range of the
    #   subnet to associate with the primary network interface. You cannot
    #   specify this option and the option to assign a number of IPv6
    #   addresses in the same request. You cannot specify this option if
    #   you've specified a minimum number of instances to launch.
    #   @return [Array<Types::InstanceIpv6Address>]
    #
    # @!attribute [rw] kernel_id
    #   The ID of the kernel.
    #
    #   We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [ PV-GRUB][1] in the *Amazon Elastic
    #   Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair. You can create a key pair using
    #   CreateKeyPair or ImportKeyPair.
    #
    #   If you do not specify a key pair, you can't connect to the instance
    #   unless you choose an AMI that is configured to allow users another
    #   way to log in.
    #   @return [String]
    #
    # @!attribute [rw] max_count
    #   The maximum number of instances to launch. If you specify more
    #   instances than Amazon EC2 can launch in the target Availability
    #   Zone, Amazon EC2 launches the largest possible number of instances
    #   above `MinCount`.
    #
    #   Constraints: Between 1 and the maximum number you're allowed for
    #   the specified instance type. For more information about the default
    #   limits, and how to request an increase, see [How many instances can
    #   I run in Amazon EC2][1] in the Amazon EC2 FAQ.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2
    #   @return [Integer]
    #
    # @!attribute [rw] min_count
    #   The minimum number of instances to launch. If you specify a minimum
    #   that is more instances than Amazon EC2 can launch in the target
    #   Availability Zone, Amazon EC2 launches no instances.
    #
    #   Constraints: Between 1 and the maximum number you're allowed for
    #   the specified instance type. For more information about the default
    #   limits, and how to request an increase, see [How many instances can
    #   I run in Amazon EC2][1] in the Amazon EC2 General FAQ.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring
    #   The monitoring for the instance.
    #   @return [Types::RunInstancesMonitoringEnabled]
    #
    # @!attribute [rw] placement
    #   The placement for the instance.
    #   @return [Types::Placement]
    #
    # @!attribute [rw] ramdisk_id
    #   The ID of the RAM disk.
    #
    #   We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [ PV-GRUB][1] in the *Amazon Elastic
    #   Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   One or more security group IDs. You can create a security group
    #   using CreateSecurityGroup.
    #
    #   Default: Amazon EC2 uses the default security group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   \[EC2-Classic, default VPC\] One or more security group names. For a
    #   nondefault VPC, you must use security group IDs instead.
    #
    #   Default: Amazon EC2 uses the default security group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   \[EC2-VPC\] The ID of the subnet to launch the instance into.
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   The user data to make available to the instance. For more
    #   information, see [Running Commands on Your Linux Instance at
    #   Launch][1] (Linux) and [Adding User Data][2] (Windows). If you are
    #   using an AWS SDK or command line tool, base64-encoding is performed
    #   for you, and you can load the text from a file. Otherwise, you must
    #   provide base64-encoded text.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
    #   [2]: http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data
    #   @return [String]
    #
    # @!attribute [rw] additional_info
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. For more information, see [Ensuring
    #   Idempotency][1].
    #
    #   Constraints: Maximum 64 ASCII characters
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] disable_api_termination
    #   If you set this parameter to `true`, you can't terminate the
    #   instance using the Amazon EC2 console, CLI, or API; otherwise, you
    #   can. To change this attribute to `false` after launch, use
    #   ModifyInstanceAttribute. Alternatively, if you set
    #   `InstanceInitiatedShutdownBehavior` to `terminate`, you can
    #   terminate the instance by running the shutdown command from the
    #   instance.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] ebs_optimized
    #   Indicates whether the instance is optimized for Amazon EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal Amazon EBS I/O
    #   performance. This optimization isn't available with all instance
    #   types. Additional usage charges apply when using an EBS-optimized
    #   instance.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] iam_instance_profile
    #   The IAM instance profile.
    #   @return [Types::IamInstanceProfileSpecification]
    #
    # @!attribute [rw] instance_initiated_shutdown_behavior
    #   Indicates whether an instance stops or terminates when you initiate
    #   shutdown from the instance (using the operating system command for
    #   system shutdown).
    #
    #   Default: `stop`
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   One or more network interfaces.
    #   @return [Array<Types::InstanceNetworkInterfaceSpecification>]
    #
    # @!attribute [rw] private_ip_address
    #   \[EC2-VPC\] The primary IPv4 address. You must specify a value from
    #   the IPv4 address range of the subnet.
    #
    #   Only one private IP address can be designated as primary. You can't
    #   specify this option if you've specified the option to designate a
    #   private IP address as the primary IP address in a network interface
    #   specification. You cannot specify this option if you're launching
    #   more than one instance in the request.
    #   @return [String]
    #
    # @!attribute [rw] elastic_gpu_specification
    #   An Elastic GPU to associate with the instance.
    #   @return [Array<Types::ElasticGpuSpecification>]
    #
    # @!attribute [rw] tag_specifications
    #   The tags to apply to the resources during launch. You can tag
    #   instances and volumes. The specified tags are applied to all
    #   instances or volumes that are created during launch.
    #   @return [Array<Types::TagSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RunInstancesRequest AWS API Documentation
    #
    class RunInstancesRequest < Struct.new(
      :block_device_mappings,
      :image_id,
      :instance_type,
      :ipv_6_address_count,
      :ipv_6_addresses,
      :kernel_id,
      :key_name,
      :max_count,
      :min_count,
      :monitoring,
      :placement,
      :ramdisk_id,
      :security_group_ids,
      :security_groups,
      :subnet_id,
      :user_data,
      :additional_info,
      :client_token,
      :disable_api_termination,
      :dry_run,
      :ebs_optimized,
      :iam_instance_profile,
      :instance_initiated_shutdown_behavior,
      :network_interfaces,
      :private_ip_address,
      :elastic_gpu_specification,
      :tag_specifications)
      include Aws::Structure
    end

    # Contains the parameters for RunScheduledInstances.
    #
    # @note When making an API call, you may pass RunScheduledInstancesRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         dry_run: false,
    #         instance_count: 1,
    #         launch_specification: { # required
    #           block_device_mappings: [
    #             {
    #               device_name: "String",
    #               ebs: {
    #                 delete_on_termination: false,
    #                 encrypted: false,
    #                 iops: 1,
    #                 snapshot_id: "String",
    #                 volume_size: 1,
    #                 volume_type: "String",
    #               },
    #               no_device: "String",
    #               virtual_name: "String",
    #             },
    #           ],
    #           ebs_optimized: false,
    #           iam_instance_profile: {
    #             arn: "String",
    #             name: "String",
    #           },
    #           image_id: "String", # required
    #           instance_type: "String",
    #           kernel_id: "String",
    #           key_name: "String",
    #           monitoring: {
    #             enabled: false,
    #           },
    #           network_interfaces: [
    #             {
    #               associate_public_ip_address: false,
    #               delete_on_termination: false,
    #               description: "String",
    #               device_index: 1,
    #               groups: ["String"],
    #               ipv_6_address_count: 1,
    #               ipv_6_addresses: [
    #                 {
    #                   ipv_6_address: "Ipv6Address",
    #                 },
    #               ],
    #               network_interface_id: "String",
    #               private_ip_address: "String",
    #               private_ip_address_configs: [
    #                 {
    #                   primary: false,
    #                   private_ip_address: "String",
    #                 },
    #               ],
    #               secondary_private_ip_address_count: 1,
    #               subnet_id: "String",
    #             },
    #           ],
    #           placement: {
    #             availability_zone: "String",
    #             group_name: "String",
    #           },
    #           ramdisk_id: "String",
    #           security_group_ids: ["String"],
    #           subnet_id: "String",
    #           user_data: "String",
    #         },
    #         scheduled_instance_id: "String", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of
    #   the request. For more information, see [Ensuring Idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_count
    #   The number of instances.
    #
    #   Default: 1
    #   @return [Integer]
    #
    # @!attribute [rw] launch_specification
    #   The launch specification. You must match the instance type,
    #   Availability Zone, network, and platform of the schedule that you
    #   purchased.
    #   @return [Types::ScheduledInstancesLaunchSpecification]
    #
    # @!attribute [rw] scheduled_instance_id
    #   The Scheduled Instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RunScheduledInstancesRequest AWS API Documentation
    #
    class RunScheduledInstancesRequest < Struct.new(
      :client_token,
      :dry_run,
      :instance_count,
      :launch_specification,
      :scheduled_instance_id)
      include Aws::Structure
    end

    # Contains the output of RunScheduledInstances.
    #
    # @!attribute [rw] instance_id_set
    #   The IDs of the newly launched instances.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/RunScheduledInstancesResult AWS API Documentation
    #
    class RunScheduledInstancesResult < Struct.new(
      :instance_id_set)
      include Aws::Structure
    end

    # Describes the storage parameters for S3 and S3 buckets for an instance
    # store-backed AMI.
    #
    # @note When making an API call, you may pass S3Storage
    #   data as a hash:
    #
    #       {
    #         aws_access_key_id: "String",
    #         bucket: "String",
    #         prefix: "String",
    #         upload_policy: "data",
    #         upload_policy_signature: "String",
    #       }
    #
    # @!attribute [rw] aws_access_key_id
    #   The access key ID of the owner of the bucket. Before you specify a
    #   value for your access key ID, review and follow the guidance in
    #   [Best Practices for Managing AWS Access Keys][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The bucket in which to store the AMI. You can specify a bucket that
    #   you already own or a new bucket that Amazon EC2 creates on your
    #   behalf. If you specify a bucket that belongs to someone else, Amazon
    #   EC2 returns an error.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The beginning of the file name of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] upload_policy
    #   An Amazon S3 upload policy that gives Amazon EC2 permission to
    #   upload items into Amazon S3 on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] upload_policy_signature
    #   The signature of the JSON document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/S3Storage AWS API Documentation
    #
    class S3Storage < Struct.new(
      :aws_access_key_id,
      :bucket,
      :prefix,
      :upload_policy,
      :upload_policy_signature)
      include Aws::Structure
    end

    # Describes a Scheduled Instance.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date when the Scheduled Instance was purchased.
    #   @return [Time]
    #
    # @!attribute [rw] hourly_price
    #   The hourly price for a single instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_count
    #   The number of instances.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] network_platform
    #   The network platform (`EC2-Classic` or `EC2-VPC`).
    #   @return [String]
    #
    # @!attribute [rw] next_slot_start_time
    #   The time for the next schedule to start.
    #   @return [Time]
    #
    # @!attribute [rw] platform
    #   The platform (`Linux/UNIX` or `Windows`).
    #   @return [String]
    #
    # @!attribute [rw] previous_slot_end_time
    #   The time that the previous schedule ended or will end.
    #   @return [Time]
    #
    # @!attribute [rw] recurrence
    #   The schedule recurrence.
    #   @return [Types::ScheduledInstanceRecurrence]
    #
    # @!attribute [rw] scheduled_instance_id
    #   The Scheduled Instance ID.
    #   @return [String]
    #
    # @!attribute [rw] slot_duration_in_hours
    #   The number of hours in the schedule.
    #   @return [Integer]
    #
    # @!attribute [rw] term_end_date
    #   The end date for the Scheduled Instance.
    #   @return [Time]
    #
    # @!attribute [rw] term_start_date
    #   The start date for the Scheduled Instance.
    #   @return [Time]
    #
    # @!attribute [rw] total_scheduled_instance_hours
    #   The total number of hours for a single instance for the entire term.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstance AWS API Documentation
    #
    class ScheduledInstance < Struct.new(
      :availability_zone,
      :create_date,
      :hourly_price,
      :instance_count,
      :instance_type,
      :network_platform,
      :next_slot_start_time,
      :platform,
      :previous_slot_end_time,
      :recurrence,
      :scheduled_instance_id,
      :slot_duration_in_hours,
      :term_end_date,
      :term_start_date,
      :total_scheduled_instance_hours)
      include Aws::Structure
    end

    # Describes a schedule that is available for your Scheduled Instances.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] available_instance_count
    #   The number of available instances.
    #   @return [Integer]
    #
    # @!attribute [rw] first_slot_start_time
    #   The time period for the first schedule to start.
    #   @return [Time]
    #
    # @!attribute [rw] hourly_price
    #   The hourly price for a single instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type. You can specify one of the C3, C4, M4, or R3
    #   instance types.
    #   @return [String]
    #
    # @!attribute [rw] max_term_duration_in_days
    #   The maximum term. The only possible value is 365 days.
    #   @return [Integer]
    #
    # @!attribute [rw] min_term_duration_in_days
    #   The minimum term. The only possible value is 365 days.
    #   @return [Integer]
    #
    # @!attribute [rw] network_platform
    #   The network platform (`EC2-Classic` or `EC2-VPC`).
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform (`Linux/UNIX` or `Windows`).
    #   @return [String]
    #
    # @!attribute [rw] purchase_token
    #   The purchase token. This token expires in two hours.
    #   @return [String]
    #
    # @!attribute [rw] recurrence
    #   The schedule recurrence.
    #   @return [Types::ScheduledInstanceRecurrence]
    #
    # @!attribute [rw] slot_duration_in_hours
    #   The number of hours in the schedule.
    #   @return [Integer]
    #
    # @!attribute [rw] total_scheduled_instance_hours
    #   The total number of hours for a single instance for the entire term.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstanceAvailability AWS API Documentation
    #
    class ScheduledInstanceAvailability < Struct.new(
      :availability_zone,
      :available_instance_count,
      :first_slot_start_time,
      :hourly_price,
      :instance_type,
      :max_term_duration_in_days,
      :min_term_duration_in_days,
      :network_platform,
      :platform,
      :purchase_token,
      :recurrence,
      :slot_duration_in_hours,
      :total_scheduled_instance_hours)
      include Aws::Structure
    end

    # Describes the recurring schedule for a Scheduled Instance.
    #
    # @!attribute [rw] frequency
    #   The frequency (`Daily`, `Weekly`, or `Monthly`).
    #   @return [String]
    #
    # @!attribute [rw] interval
    #   The interval quantity. The interval unit depends on the value of
    #   `frequency`. For example, every 2 weeks or every 2 months.
    #   @return [Integer]
    #
    # @!attribute [rw] occurrence_day_set
    #   The days. For a monthly schedule, this is one or more days of the
    #   month (1-31). For a weekly schedule, this is one or more days of the
    #   week (1-7, where 1 is Sunday).
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] occurrence_relative_to_end
    #   Indicates whether the occurrence is relative to the end of the
    #   specified week or month.
    #   @return [Boolean]
    #
    # @!attribute [rw] occurrence_unit
    #   The unit for `occurrenceDaySet` (`DayOfWeek` or `DayOfMonth`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstanceRecurrence AWS API Documentation
    #
    class ScheduledInstanceRecurrence < Struct.new(
      :frequency,
      :interval,
      :occurrence_day_set,
      :occurrence_relative_to_end,
      :occurrence_unit)
      include Aws::Structure
    end

    # Describes the recurring schedule for a Scheduled Instance.
    #
    # @note When making an API call, you may pass ScheduledInstanceRecurrenceRequest
    #   data as a hash:
    #
    #       {
    #         frequency: "String",
    #         interval: 1,
    #         occurrence_days: [1],
    #         occurrence_relative_to_end: false,
    #         occurrence_unit: "String",
    #       }
    #
    # @!attribute [rw] frequency
    #   The frequency (`Daily`, `Weekly`, or `Monthly`).
    #   @return [String]
    #
    # @!attribute [rw] interval
    #   The interval quantity. The interval unit depends on the value of
    #   `Frequency`. For example, every 2 weeks or every 2 months.
    #   @return [Integer]
    #
    # @!attribute [rw] occurrence_days
    #   The days. For a monthly schedule, this is one or more days of the
    #   month (1-31). For a weekly schedule, this is one or more days of the
    #   week (1-7, where 1 is Sunday). You can't specify this value with a
    #   daily schedule. If the occurrence is relative to the end of the
    #   month, you can specify only a single day.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] occurrence_relative_to_end
    #   Indicates whether the occurrence is relative to the end of the
    #   specified week or month. You can't specify this value with a daily
    #   schedule.
    #   @return [Boolean]
    #
    # @!attribute [rw] occurrence_unit
    #   The unit for `OccurrenceDays` (`DayOfWeek` or `DayOfMonth`). This
    #   value is required for a monthly schedule. You can't specify
    #   `DayOfWeek` with a weekly schedule. You can't specify this value
    #   with a daily schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstanceRecurrenceRequest AWS API Documentation
    #
    class ScheduledInstanceRecurrenceRequest < Struct.new(
      :frequency,
      :interval,
      :occurrence_days,
      :occurrence_relative_to_end,
      :occurrence_unit)
      include Aws::Structure
    end

    # Describes a block device mapping for a Scheduled Instance.
    #
    # @note When making an API call, you may pass ScheduledInstancesBlockDeviceMapping
    #   data as a hash:
    #
    #       {
    #         device_name: "String",
    #         ebs: {
    #           delete_on_termination: false,
    #           encrypted: false,
    #           iops: 1,
    #           snapshot_id: "String",
    #           volume_size: 1,
    #           volume_type: "String",
    #         },
    #         no_device: "String",
    #         virtual_name: "String",
    #       }
    #
    # @!attribute [rw] device_name
    #   The device name exposed to the instance (for example, `/dev/sdh` or
    #   `xvdh`).
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   Parameters used to set up EBS volumes automatically when the
    #   instance is launched.
    #   @return [Types::ScheduledInstancesEbs]
    #
    # @!attribute [rw] no_device
    #   Suppresses the specified device included in the block device mapping
    #   of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] virtual_name
    #   The virtual device name (`ephemeral`N). Instance store volumes are
    #   numbered starting from 0. An instance type with two available
    #   instance store volumes can specify mappings for `ephemeral0` and
    #   `ephemeral1`.The number of available instance store volumes depends
    #   on the instance type. After you connect to the instance, you must
    #   mount the volume.
    #
    #   Constraints: For M3 instances, you must specify instance store
    #   volumes in the block device mapping for the instance. When you
    #   launch an M3 instance, we ignore any instance store volumes
    #   specified in the block device mapping for the AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstancesBlockDeviceMapping AWS API Documentation
    #
    class ScheduledInstancesBlockDeviceMapping < Struct.new(
      :device_name,
      :ebs,
      :no_device,
      :virtual_name)
      include Aws::Structure
    end

    # Describes an EBS volume for a Scheduled Instance.
    #
    # @note When making an API call, you may pass ScheduledInstancesEbs
    #   data as a hash:
    #
    #       {
    #         delete_on_termination: false,
    #         encrypted: false,
    #         iops: 1,
    #         snapshot_id: "String",
    #         volume_size: 1,
    #         volume_type: "String",
    #       }
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the volume is deleted on instance termination.
    #   @return [Boolean]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the volume is encrypted. You can attached
    #   encrypted volumes only to instances that support them.
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second (IOPS) that the volume
    #   supports. For io1 volumes, this represents the number of IOPS that
    #   are provisioned for the volume. For `gp2` volumes, this represents
    #   the baseline performance of the volume and the rate at which the
    #   volume accumulates I/O credits for bursting. For more information
    #   about `gp2` baseline performance, I/O credits, and bursting, see
    #   [Amazon EBS Volume Types][1] in the *Amazon Elastic Compute Cloud
    #   User Guide*.
    #
    #   Constraint: Range is 100-20000 IOPS for `io1` volumes and 100-10000
    #   IOPS for `gp2` volumes.
    #
    #   Condition: This parameter is required for requests to create
    #   `io1`volumes; it is not used in requests to create `gp2`, `st1`,
    #   `sc1`, or `standard` volumes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   The size of the volume, in GiB.
    #
    #   Default: If you're creating the volume from a snapshot and don't
    #   specify a volume size, the default is the snapshot size.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   The volume type. `gp2` for General Purpose SSD, `io1` for
    #   Provisioned IOPS SSD, Throughput Optimized HDD for `st1`, Cold HDD
    #   for `sc1`, or `standard` for Magnetic.
    #
    #   Default: `standard`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstancesEbs AWS API Documentation
    #
    class ScheduledInstancesEbs < Struct.new(
      :delete_on_termination,
      :encrypted,
      :iops,
      :snapshot_id,
      :volume_size,
      :volume_type)
      include Aws::Structure
    end

    # Describes an IAM instance profile for a Scheduled Instance.
    #
    # @note When making an API call, you may pass ScheduledInstancesIamInstanceProfile
    #   data as a hash:
    #
    #       {
    #         arn: "String",
    #         name: "String",
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstancesIamInstanceProfile AWS API Documentation
    #
    class ScheduledInstancesIamInstanceProfile < Struct.new(
      :arn,
      :name)
      include Aws::Structure
    end

    # Describes an IPv6 address.
    #
    # @note When making an API call, you may pass ScheduledInstancesIpv6Address
    #   data as a hash:
    #
    #       {
    #         ipv_6_address: "Ipv6Address",
    #       }
    #
    # @!attribute [rw] ipv_6_address
    #   The IPv6 address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstancesIpv6Address AWS API Documentation
    #
    class ScheduledInstancesIpv6Address < Struct.new(
      :ipv_6_address)
      include Aws::Structure
    end

    # Describes the launch specification for a Scheduled Instance.
    #
    # If you are launching the Scheduled Instance in EC2-VPC, you must
    # specify the ID of the subnet. You can specify the subnet using either
    # `SubnetId` or `NetworkInterface`.
    #
    # @note When making an API call, you may pass ScheduledInstancesLaunchSpecification
    #   data as a hash:
    #
    #       {
    #         block_device_mappings: [
    #           {
    #             device_name: "String",
    #             ebs: {
    #               delete_on_termination: false,
    #               encrypted: false,
    #               iops: 1,
    #               snapshot_id: "String",
    #               volume_size: 1,
    #               volume_type: "String",
    #             },
    #             no_device: "String",
    #             virtual_name: "String",
    #           },
    #         ],
    #         ebs_optimized: false,
    #         iam_instance_profile: {
    #           arn: "String",
    #           name: "String",
    #         },
    #         image_id: "String", # required
    #         instance_type: "String",
    #         kernel_id: "String",
    #         key_name: "String",
    #         monitoring: {
    #           enabled: false,
    #         },
    #         network_interfaces: [
    #           {
    #             associate_public_ip_address: false,
    #             delete_on_termination: false,
    #             description: "String",
    #             device_index: 1,
    #             groups: ["String"],
    #             ipv_6_address_count: 1,
    #             ipv_6_addresses: [
    #               {
    #                 ipv_6_address: "Ipv6Address",
    #               },
    #             ],
    #             network_interface_id: "String",
    #             private_ip_address: "String",
    #             private_ip_address_configs: [
    #               {
    #                 primary: false,
    #                 private_ip_address: "String",
    #               },
    #             ],
    #             secondary_private_ip_address_count: 1,
    #             subnet_id: "String",
    #           },
    #         ],
    #         placement: {
    #           availability_zone: "String",
    #           group_name: "String",
    #         },
    #         ramdisk_id: "String",
    #         security_group_ids: ["String"],
    #         subnet_id: "String",
    #         user_data: "String",
    #       }
    #
    # @!attribute [rw] block_device_mappings
    #   One or more block device mapping entries.
    #   @return [Array<Types::ScheduledInstancesBlockDeviceMapping>]
    #
    # @!attribute [rw] ebs_optimized
    #   Indicates whether the instances are optimized for EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal EBS I/O
    #   performance. This optimization isn't available with all instance
    #   types. Additional usage charges apply when using an EBS-optimized
    #   instance.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] iam_instance_profile
    #   The IAM instance profile.
    #   @return [Types::ScheduledInstancesIamInstanceProfile]
    #
    # @!attribute [rw] image_id
    #   The ID of the Amazon Machine Image (AMI).
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type.
    #   @return [String]
    #
    # @!attribute [rw] kernel_id
    #   The ID of the kernel.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair.
    #   @return [String]
    #
    # @!attribute [rw] monitoring
    #   Enable or disable monitoring for the instances.
    #   @return [Types::ScheduledInstancesMonitoring]
    #
    # @!attribute [rw] network_interfaces
    #   One or more network interfaces.
    #   @return [Array<Types::ScheduledInstancesNetworkInterface>]
    #
    # @!attribute [rw] placement
    #   The placement information.
    #   @return [Types::ScheduledInstancesPlacement]
    #
    # @!attribute [rw] ramdisk_id
    #   The ID of the RAM disk.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The IDs of one or more security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet in which to launch the instances.
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   The base64-encoded MIME user data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstancesLaunchSpecification AWS API Documentation
    #
    class ScheduledInstancesLaunchSpecification < Struct.new(
      :block_device_mappings,
      :ebs_optimized,
      :iam_instance_profile,
      :image_id,
      :instance_type,
      :kernel_id,
      :key_name,
      :monitoring,
      :network_interfaces,
      :placement,
      :ramdisk_id,
      :security_group_ids,
      :subnet_id,
      :user_data)
      include Aws::Structure
    end

    # Describes whether monitoring is enabled for a Scheduled Instance.
    #
    # @note When making an API call, you may pass ScheduledInstancesMonitoring
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether monitoring is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstancesMonitoring AWS API Documentation
    #
    class ScheduledInstancesMonitoring < Struct.new(
      :enabled)
      include Aws::Structure
    end

    # Describes a network interface for a Scheduled Instance.
    #
    # @note When making an API call, you may pass ScheduledInstancesNetworkInterface
    #   data as a hash:
    #
    #       {
    #         associate_public_ip_address: false,
    #         delete_on_termination: false,
    #         description: "String",
    #         device_index: 1,
    #         groups: ["String"],
    #         ipv_6_address_count: 1,
    #         ipv_6_addresses: [
    #           {
    #             ipv_6_address: "Ipv6Address",
    #           },
    #         ],
    #         network_interface_id: "String",
    #         private_ip_address: "String",
    #         private_ip_address_configs: [
    #           {
    #             primary: false,
    #             private_ip_address: "String",
    #           },
    #         ],
    #         secondary_private_ip_address_count: 1,
    #         subnet_id: "String",
    #       }
    #
    # @!attribute [rw] associate_public_ip_address
    #   Indicates whether to assign a public IPv4 address to instances
    #   launched in a VPC. The public IPv4 address can only be assigned to a
    #   network interface for eth0, and can only be assigned to a new
    #   network interface, not an existing one. You cannot specify more than
    #   one network interface in the request. If launching into a default
    #   subnet, the default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether to delete the interface when the instance is
    #   terminated.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] device_index
    #   The index of the device for the network interface attachment.
    #   @return [Integer]
    #
    # @!attribute [rw] groups
    #   The IDs of one or more security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ipv_6_address_count
    #   The number of IPv6 addresses to assign to the network interface. The
    #   IPv6 addresses are automatically selected from the subnet range.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_6_addresses
    #   One or more specific IPv6 addresses from the subnet range.
    #   @return [Array<Types::ScheduledInstancesIpv6Address>]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The IPv4 address of the network interface within the subnet.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address_configs
    #   The private IPv4 addresses.
    #   @return [Array<Types::ScheduledInstancesPrivateIpAddressConfig>]
    #
    # @!attribute [rw] secondary_private_ip_address_count
    #   The number of secondary private IPv4 addresses.
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstancesNetworkInterface AWS API Documentation
    #
    class ScheduledInstancesNetworkInterface < Struct.new(
      :associate_public_ip_address,
      :delete_on_termination,
      :description,
      :device_index,
      :groups,
      :ipv_6_address_count,
      :ipv_6_addresses,
      :network_interface_id,
      :private_ip_address,
      :private_ip_address_configs,
      :secondary_private_ip_address_count,
      :subnet_id)
      include Aws::Structure
    end

    # Describes the placement for a Scheduled Instance.
    #
    # @note When making an API call, you may pass ScheduledInstancesPlacement
    #   data as a hash:
    #
    #       {
    #         availability_zone: "String",
    #         group_name: "String",
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the placement group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstancesPlacement AWS API Documentation
    #
    class ScheduledInstancesPlacement < Struct.new(
      :availability_zone,
      :group_name)
      include Aws::Structure
    end

    # Describes a private IPv4 address for a Scheduled Instance.
    #
    # @note When making an API call, you may pass ScheduledInstancesPrivateIpAddressConfig
    #   data as a hash:
    #
    #       {
    #         primary: false,
    #         private_ip_address: "String",
    #       }
    #
    # @!attribute [rw] primary
    #   Indicates whether this is a primary IPv4 address. Otherwise, this is
    #   a secondary IPv4 address.
    #   @return [Boolean]
    #
    # @!attribute [rw] private_ip_address
    #   The IPv4 address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/ScheduledInstancesPrivateIpAddressConfig AWS API Documentation
    #
    class ScheduledInstancesPrivateIpAddressConfig < Struct.new(
      :primary,
      :private_ip_address)
      include Aws::Structure
    end

    # Describes a security group
    #
    # @!attribute [rw] description
    #   A description of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions
    #   One or more inbound rules associated with the security group.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the owner of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions_egress
    #   \[EC2-VPC\] One or more outbound rules associated with the security
    #   group.
    #   @return [Array<Types::IpPermission>]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the security group.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_id
    #   \[EC2-VPC\] The ID of the VPC for the security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SecurityGroup AWS API Documentation
    #
    class SecurityGroup < Struct.new(
      :description,
      :group_name,
      :ip_permissions,
      :owner_id,
      :group_id,
      :ip_permissions_egress,
      :tags,
      :vpc_id)
      include Aws::Structure
    end

    # Describes a VPC with a security group that references your security
    # group.
    #
    # @!attribute [rw] group_id
    #   The ID of your security group.
    #   @return [String]
    #
    # @!attribute [rw] referencing_vpc_id
    #   The ID of the VPC with the referencing security group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SecurityGroupReference AWS API Documentation
    #
    class SecurityGroupReference < Struct.new(
      :group_id,
      :referencing_vpc_id,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # Describes the time period for a Scheduled Instance to start its first
    # schedule. The time period must span less than one day.
    #
    # @note When making an API call, you may pass SlotDateTimeRangeRequest
    #   data as a hash:
    #
    #       {
    #         earliest_time: Time.now, # required
    #         latest_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] earliest_time
    #   The earliest date and time, in UTC, for the Scheduled Instance to
    #   start.
    #   @return [Time]
    #
    # @!attribute [rw] latest_time
    #   The latest date and time, in UTC, for the Scheduled Instance to
    #   start. This value must be later than or equal to the earliest date
    #   and at most three months in the future.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SlotDateTimeRangeRequest AWS API Documentation
    #
    class SlotDateTimeRangeRequest < Struct.new(
      :earliest_time,
      :latest_time)
      include Aws::Structure
    end

    # Describes the time period for a Scheduled Instance to start its first
    # schedule.
    #
    # @note When making an API call, you may pass SlotStartTimeRangeRequest
    #   data as a hash:
    #
    #       {
    #         earliest_time: Time.now,
    #         latest_time: Time.now,
    #       }
    #
    # @!attribute [rw] earliest_time
    #   The earliest date and time, in UTC, for the Scheduled Instance to
    #   start.
    #   @return [Time]
    #
    # @!attribute [rw] latest_time
    #   The latest date and time, in UTC, for the Scheduled Instance to
    #   start.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SlotStartTimeRangeRequest AWS API Documentation
    #
    class SlotStartTimeRangeRequest < Struct.new(
      :earliest_time,
      :latest_time)
      include Aws::Structure
    end

    # Describes a snapshot.
    #
    # @!attribute [rw] data_encryption_key_id
    #   The data encryption key identifier for the snapshot. This value is a
    #   unique identifier that corresponds to the data encryption key that
    #   was used to encrypt the original volume or snapshot copy. Because
    #   data encryption keys are inherited by volumes created from
    #   snapshots, and vice versa, if snapshots share the same data
    #   encryption key identifier, then they belong to the same
    #   volume/snapshot lineage. This parameter is only returned by the
    #   DescribeSnapshots API operation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the snapshot is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The full ARN of the AWS Key Management Service (AWS KMS) customer
    #   master key (CMK) that was used to protect the volume encryption key
    #   for the parent volume.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the EBS snapshot owner.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The progress of the snapshot, as a percentage.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The ID of the snapshot. Each snapshot receives a unique identifier
    #   when it is created.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time stamp when the snapshot was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The snapshot state.
    #   @return [String]
    #
    # @!attribute [rw] state_message
    #   Encrypted Amazon EBS snapshots are copied asynchronously. If a
    #   snapshot copy operation fails (for example, if the proper AWS Key
    #   Management Service (AWS KMS) permissions are not obtained) this
    #   field displays error state details to help you diagnose why the
    #   error occurred. This parameter is only returned by the
    #   DescribeSnapshots API operation.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume that was used to create the snapshot. Snapshots
    #   created by the CopySnapshot action have an arbitrary volume ID that
    #   should not be used for any purpose.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   The size of the volume, in GiB.
    #   @return [Integer]
    #
    # @!attribute [rw] owner_alias
    #   Value from an Amazon-maintained list (`amazon` \| `aws-marketplace`
    #   \| `microsoft`) of snapshot owners. Not to be confused with the
    #   user-configured AWS account alias, which is set from the IAM
    #   console.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the snapshot.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Snapshot AWS API Documentation
    #
    class Snapshot < Struct.new(
      :data_encryption_key_id,
      :description,
      :encrypted,
      :kms_key_id,
      :owner_id,
      :progress,
      :snapshot_id,
      :start_time,
      :state,
      :state_message,
      :volume_id,
      :volume_size,
      :owner_alias,
      :tags)
      include Aws::Structure
    end

    # Describes the snapshot created from the imported disk.
    #
    # @!attribute [rw] description
    #   A description for the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The block device mapping for the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] disk_image_size
    #   The size of the disk in the snapshot, in GiB.
    #   @return [Float]
    #
    # @!attribute [rw] format
    #   The format of the disk image from which the snapshot is created.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The percentage of progress for the task.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID of the disk being imported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A brief status of the snapshot creation.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed status message for the snapshot creation.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL used to access the disk image.
    #   @return [String]
    #
    # @!attribute [rw] user_bucket
    #   The S3 bucket for the disk image.
    #   @return [Types::UserBucketDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SnapshotDetail AWS API Documentation
    #
    class SnapshotDetail < Struct.new(
      :description,
      :device_name,
      :disk_image_size,
      :format,
      :progress,
      :snapshot_id,
      :status,
      :status_message,
      :url,
      :user_bucket)
      include Aws::Structure
    end

    # The disk container object for the import snapshot request.
    #
    # @note When making an API call, you may pass SnapshotDiskContainer
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         format: "String",
    #         url: "String",
    #         user_bucket: {
    #           s3_bucket: "String",
    #           s3_key: "String",
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   The description of the disk image being imported.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the disk image being imported.
    #
    #   Valid values: `RAW` \| `VHD` \| `VMDK` \| `OVA`
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to the Amazon S3-based disk image being imported. It can
    #   either be a https URL (https://..) or an Amazon S3 URL (s3://..).
    #   @return [String]
    #
    # @!attribute [rw] user_bucket
    #   The S3 bucket for the disk image.
    #   @return [Types::UserBucket]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SnapshotDiskContainer AWS API Documentation
    #
    class SnapshotDiskContainer < Struct.new(
      :description,
      :format,
      :url,
      :user_bucket)
      include Aws::Structure
    end

    # Details about the import snapshot task.
    #
    # @!attribute [rw] description
    #   The description of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] disk_image_size
    #   The size of the disk in the snapshot, in GiB.
    #   @return [Float]
    #
    # @!attribute [rw] format
    #   The format of the disk image from which the snapshot is created.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   The percentage of completion for the import snapshot task.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot ID of the disk being imported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A brief status for the import snapshot task.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed status message for the import snapshot task.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the disk image from which the snapshot is created.
    #   @return [String]
    #
    # @!attribute [rw] user_bucket
    #   The S3 bucket for the disk image.
    #   @return [Types::UserBucketDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SnapshotTaskDetail AWS API Documentation
    #
    class SnapshotTaskDetail < Struct.new(
      :description,
      :disk_image_size,
      :format,
      :progress,
      :snapshot_id,
      :status,
      :status_message,
      :url,
      :user_bucket)
      include Aws::Structure
    end

    # Describes the data feed for a Spot instance.
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket where the Spot instance data feed is located.
    #   @return [String]
    #
    # @!attribute [rw] fault
    #   The fault codes for the Spot instance request, if any.
    #   @return [Types::SpotInstanceStateFault]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the account.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix that is prepended to data feed files.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the Spot instance data feed subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotDatafeedSubscription AWS API Documentation
    #
    class SpotDatafeedSubscription < Struct.new(
      :bucket,
      :fault,
      :owner_id,
      :prefix,
      :state)
      include Aws::Structure
    end

    # Describes the launch specification for one or more Spot instances.
    #
    # @note When making an API call, you may pass SpotFleetLaunchSpecification
    #   data as a hash:
    #
    #       {
    #         security_groups: [
    #           {
    #             group_name: "String",
    #             group_id: "String",
    #           },
    #         ],
    #         addressing_type: "String",
    #         block_device_mappings: [
    #           {
    #             device_name: "String",
    #             virtual_name: "String",
    #             ebs: {
    #               encrypted: false,
    #               delete_on_termination: false,
    #               iops: 1,
    #               snapshot_id: "String",
    #               volume_size: 1,
    #               volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #             },
    #             no_device: "String",
    #           },
    #         ],
    #         ebs_optimized: false,
    #         iam_instance_profile: {
    #           arn: "String",
    #           name: "String",
    #         },
    #         image_id: "String",
    #         instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #         kernel_id: "String",
    #         key_name: "String",
    #         monitoring: {
    #           enabled: false,
    #         },
    #         network_interfaces: [
    #           {
    #             associate_public_ip_address: false,
    #             delete_on_termination: false,
    #             description: "String",
    #             device_index: 1,
    #             groups: ["String"],
    #             ipv_6_address_count: 1,
    #             ipv_6_addresses: [
    #               {
    #                 ipv_6_address: "String",
    #               },
    #             ],
    #             network_interface_id: "String",
    #             private_ip_address: "String",
    #             private_ip_addresses: [
    #               {
    #                 primary: false,
    #                 private_ip_address: "String", # required
    #               },
    #             ],
    #             secondary_private_ip_address_count: 1,
    #             subnet_id: "String",
    #           },
    #         ],
    #         placement: {
    #           availability_zone: "String",
    #           group_name: "String",
    #           tenancy: "default", # accepts default, dedicated, host
    #         },
    #         ramdisk_id: "String",
    #         spot_price: "String",
    #         subnet_id: "String",
    #         user_data: "String",
    #         weighted_capacity: 1.0,
    #         tag_specifications: [
    #           {
    #             resource_type: "customer-gateway", # accepts customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] security_groups
    #   One or more security groups. When requesting instances in a VPC, you
    #   must specify the IDs of the security groups. When requesting
    #   instances in EC2-Classic, you can specify the names or the IDs of
    #   the security groups.
    #   @return [Array<Types::GroupIdentifier>]
    #
    # @!attribute [rw] addressing_type
    #   Deprecated.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   One or more block device mapping entries.
    #   @return [Array<Types::BlockDeviceMapping>]
    #
    # @!attribute [rw] ebs_optimized
    #   Indicates whether the instances are optimized for EBS I/O. This
    #   optimization provides dedicated throughput to Amazon EBS and an
    #   optimized configuration stack to provide optimal EBS I/O
    #   performance. This optimization isn't available with all instance
    #   types. Additional usage charges apply when using an EBS Optimized
    #   instance.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] iam_instance_profile
    #   The IAM instance profile.
    #   @return [Types::IamInstanceProfileSpecification]
    #
    # @!attribute [rw] image_id
    #   The ID of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type. Note that T2 and HS1 instance types are not
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] kernel_id
    #   The ID of the kernel.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   The name of the key pair.
    #   @return [String]
    #
    # @!attribute [rw] monitoring
    #   Enable or disable monitoring for the instances.
    #   @return [Types::SpotFleetMonitoring]
    #
    # @!attribute [rw] network_interfaces
    #   One or more network interfaces. If you specify a network interface,
    #   you must specify subnet IDs and security group IDs using the network
    #   interface.
    #   @return [Array<Types::InstanceNetworkInterfaceSpecification>]
    #
    # @!attribute [rw] placement
    #   The placement information.
    #   @return [Types::SpotPlacement]
    #
    # @!attribute [rw] ramdisk_id
    #   The ID of the RAM disk.
    #   @return [String]
    #
    # @!attribute [rw] spot_price
    #   The bid price per unit hour for the specified instance type. If this
    #   value is not specified, the default is the Spot bid price specified
    #   for the fleet. To determine the bid price per unit hour, divide the
    #   Spot bid price by the value of `WeightedCapacity`.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet in which to launch the instances. To specify
    #   multiple subnets, separate them using commas; for example,
    #   "subnet-a61dafcf, subnet-65ea5f08".
    #   @return [String]
    #
    # @!attribute [rw] user_data
    #   The user data to make available to the instances. If you are using
    #   an AWS SDK or command line tool, Base64-encoding is performed for
    #   you, and you can load the text from a file. Otherwise, you must
    #   provide Base64-encoded text.
    #   @return [String]
    #
    # @!attribute [rw] weighted_capacity
    #   The number of units provided by the specified instance type. These
    #   are the same units that you chose to set the target capacity in
    #   terms (instances or a performance characteristic such as vCPUs,
    #   memory, or I/O).
    #
    #   If the target capacity divided by this value is not a whole number,
    #   we round the number of instances to the next whole number. If this
    #   value is not specified, the default is 1.
    #   @return [Float]
    #
    # @!attribute [rw] tag_specifications
    #   The tags to apply during creation.
    #   @return [Array<Types::SpotFleetTagSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotFleetLaunchSpecification AWS API Documentation
    #
    class SpotFleetLaunchSpecification < Struct.new(
      :security_groups,
      :addressing_type,
      :block_device_mappings,
      :ebs_optimized,
      :iam_instance_profile,
      :image_id,
      :instance_type,
      :kernel_id,
      :key_name,
      :monitoring,
      :network_interfaces,
      :placement,
      :ramdisk_id,
      :spot_price,
      :subnet_id,
      :user_data,
      :weighted_capacity,
      :tag_specifications)
      include Aws::Structure
    end

    # Describes whether monitoring is enabled.
    #
    # @note When making an API call, you may pass SpotFleetMonitoring
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Enables monitoring for the instance.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotFleetMonitoring AWS API Documentation
    #
    class SpotFleetMonitoring < Struct.new(
      :enabled)
      include Aws::Structure
    end

    # Describes a Spot fleet request.
    #
    # @!attribute [rw] activity_status
    #   The progress of the Spot fleet request. If there is an error, the
    #   status is `error`. After all bids are placed, the status is
    #   `pending_fulfillment`. If the size of the fleet is equal to or
    #   greater than its target capacity, the status is `fulfilled`. If the
    #   size of the fleet is decreased, the status is `pending_termination`
    #   while Spot instances are terminating.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The creation date and time of the request.
    #   @return [Time]
    #
    # @!attribute [rw] spot_fleet_request_config
    #   Information about the configuration of the Spot fleet request.
    #   @return [Types::SpotFleetRequestConfigData]
    #
    # @!attribute [rw] spot_fleet_request_id
    #   The ID of the Spot fleet request.
    #   @return [String]
    #
    # @!attribute [rw] spot_fleet_request_state
    #   The state of the Spot fleet request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotFleetRequestConfig AWS API Documentation
    #
    class SpotFleetRequestConfig < Struct.new(
      :activity_status,
      :create_time,
      :spot_fleet_request_config,
      :spot_fleet_request_id,
      :spot_fleet_request_state)
      include Aws::Structure
    end

    # Describes the configuration of a Spot fleet request.
    #
    # @note When making an API call, you may pass SpotFleetRequestConfigData
    #   data as a hash:
    #
    #       {
    #         allocation_strategy: "lowestPrice", # accepts lowestPrice, diversified
    #         client_token: "String",
    #         excess_capacity_termination_policy: "noTermination", # accepts noTermination, default
    #         fulfilled_capacity: 1.0,
    #         iam_fleet_role: "String", # required
    #         launch_specifications: [ # required
    #           {
    #             security_groups: [
    #               {
    #                 group_name: "String",
    #                 group_id: "String",
    #               },
    #             ],
    #             addressing_type: "String",
    #             block_device_mappings: [
    #               {
    #                 device_name: "String",
    #                 virtual_name: "String",
    #                 ebs: {
    #                   encrypted: false,
    #                   delete_on_termination: false,
    #                   iops: 1,
    #                   snapshot_id: "String",
    #                   volume_size: 1,
    #                   volume_type: "standard", # accepts standard, io1, gp2, sc1, st1
    #                 },
    #                 no_device: "String",
    #               },
    #             ],
    #             ebs_optimized: false,
    #             iam_instance_profile: {
    #               arn: "String",
    #               name: "String",
    #             },
    #             image_id: "String",
    #             instance_type: "t1.micro", # accepts t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, x1.16xlarge, x1.32xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.16xlarge
    #             kernel_id: "String",
    #             key_name: "String",
    #             monitoring: {
    #               enabled: false,
    #             },
    #             network_interfaces: [
    #               {
    #                 associate_public_ip_address: false,
    #                 delete_on_termination: false,
    #                 description: "String",
    #                 device_index: 1,
    #                 groups: ["String"],
    #                 ipv_6_address_count: 1,
    #                 ipv_6_addresses: [
    #                   {
    #                     ipv_6_address: "String",
    #                   },
    #                 ],
    #                 network_interface_id: "String",
    #                 private_ip_address: "String",
    #                 private_ip_addresses: [
    #                   {
    #                     primary: false,
    #                     private_ip_address: "String", # required
    #                   },
    #                 ],
    #                 secondary_private_ip_address_count: 1,
    #                 subnet_id: "String",
    #               },
    #             ],
    #             placement: {
    #               availability_zone: "String",
    #               group_name: "String",
    #               tenancy: "default", # accepts default, dedicated, host
    #             },
    #             ramdisk_id: "String",
    #             spot_price: "String",
    #             subnet_id: "String",
    #             user_data: "String",
    #             weighted_capacity: 1.0,
    #             tag_specifications: [
    #               {
    #                 resource_type: "customer-gateway", # accepts customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #                 tags: [
    #                   {
    #                     key: "String",
    #                     value: "String",
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #         ],
    #         spot_price: "String", # required
    #         target_capacity: 1, # required
    #         terminate_instances_with_expiration: false,
    #         type: "request", # accepts request, maintain
    #         valid_from: Time.now,
    #         valid_until: Time.now,
    #         replace_unhealthy_instances: false,
    #         instance_interruption_behavior: "stop", # accepts stop, terminate
    #       }
    #
    # @!attribute [rw] allocation_strategy
    #   Indicates how to allocate the target capacity across the Spot pools
    #   specified by the Spot fleet request. The default is `lowestPrice`.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure
    #   idempotency of your listings. This helps avoid duplicate listings.
    #   For more information, see [Ensuring Idempotency][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] excess_capacity_termination_policy
    #   Indicates whether running Spot instances should be terminated if the
    #   target capacity of the Spot fleet request is decreased below the
    #   current size of the Spot fleet.
    #   @return [String]
    #
    # @!attribute [rw] fulfilled_capacity
    #   The number of units fulfilled by this request compared to the set
    #   target capacity.
    #   @return [Float]
    #
    # @!attribute [rw] iam_fleet_role
    #   Grants the Spot fleet permission to terminate Spot instances on your
    #   behalf when you cancel its Spot fleet request using
    #   CancelSpotFleetRequests or when the Spot fleet request expires, if
    #   you set `terminateInstancesWithExpiration`.
    #   @return [String]
    #
    # @!attribute [rw] launch_specifications
    #   Information about the launch specifications for the Spot fleet
    #   request.
    #   @return [Array<Types::SpotFleetLaunchSpecification>]
    #
    # @!attribute [rw] spot_price
    #   The bid price per unit hour.
    #   @return [String]
    #
    # @!attribute [rw] target_capacity
    #   The number of units to request. You can choose to set the target
    #   capacity in terms of instances or a performance characteristic that
    #   is important to your application workload, such as vCPUs, memory, or
    #   I/O.
    #   @return [Integer]
    #
    # @!attribute [rw] terminate_instances_with_expiration
    #   Indicates whether running Spot instances should be terminated when
    #   the Spot fleet request expires.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of request. Indicates whether the fleet will only `request`
    #   the target capacity or also attempt to `maintain` it. When you
    #   `request` a certain target capacity, the fleet will only place the
    #   required bids. It will not attempt to replenish Spot instances if
    #   capacity is diminished, nor will it submit bids in alternative Spot
    #   pools if capacity is not available. When you want to `maintain` a
    #   certain target capacity, fleet will place the required bids to meet
    #   this target capacity. It will also automatically replenish any
    #   interrupted instances. Default: `maintain`.
    #   @return [String]
    #
    # @!attribute [rw] valid_from
    #   The start date and time of the request, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z). The default is to start
    #   fulfilling the request immediately.
    #   @return [Time]
    #
    # @!attribute [rw] valid_until
    #   The end date and time of the request, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z). At this point, no new Spot
    #   instance requests are placed or enabled to fulfill the request.
    #   @return [Time]
    #
    # @!attribute [rw] replace_unhealthy_instances
    #   Indicates whether Spot fleet should replace unhealthy instances.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_interruption_behavior
    #   Indicates whether a Spot instance stops or terminates when it is
    #   interrupted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotFleetRequestConfigData AWS API Documentation
    #
    class SpotFleetRequestConfigData < Struct.new(
      :allocation_strategy,
      :client_token,
      :excess_capacity_termination_policy,
      :fulfilled_capacity,
      :iam_fleet_role,
      :launch_specifications,
      :spot_price,
      :target_capacity,
      :terminate_instances_with_expiration,
      :type,
      :valid_from,
      :valid_until,
      :replace_unhealthy_instances,
      :instance_interruption_behavior)
      include Aws::Structure
    end

    # The tags for a Spot fleet resource.
    #
    # @note When making an API call, you may pass SpotFleetTagSpecification
    #   data as a hash:
    #
    #       {
    #         resource_type: "customer-gateway", # accepts customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of resource. Currently, the only resource type that is
    #   supported is `instance`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotFleetTagSpecification AWS API Documentation
    #
    class SpotFleetTagSpecification < Struct.new(
      :resource_type,
      :tags)
      include Aws::Structure
    end

    # Describes a Spot instance request.
    #
    # @!attribute [rw] actual_block_hourly_price
    #   If you specified a duration and your Spot instance request was
    #   fulfilled, this is the fixed hourly price in effect for the Spot
    #   instance while it runs.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_group
    #   The Availability Zone group. If you specify the same Availability
    #   Zone group for all Spot instance requests, all Spot instances are
    #   launched in the same Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] block_duration_minutes
    #   The duration for the Spot instance, in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] create_time
    #   The date and time when the Spot instance request was created, in UTC
    #   format (for example, *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #   @return [Time]
    #
    # @!attribute [rw] fault
    #   The fault codes for the Spot instance request, if any.
    #   @return [Types::SpotInstanceStateFault]
    #
    # @!attribute [rw] instance_id
    #   The instance ID, if an instance has been launched to fulfill the
    #   Spot instance request.
    #   @return [String]
    #
    # @!attribute [rw] launch_group
    #   The instance launch group. Launch groups are Spot instances that
    #   launch together and terminate together.
    #   @return [String]
    #
    # @!attribute [rw] launch_specification
    #   Additional information for launching instances.
    #   @return [Types::LaunchSpecification]
    #
    # @!attribute [rw] launched_availability_zone
    #   The Availability Zone in which the bid is launched.
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The product description associated with the Spot instance.
    #   @return [String]
    #
    # @!attribute [rw] spot_instance_request_id
    #   The ID of the Spot instance request.
    #   @return [String]
    #
    # @!attribute [rw] spot_price
    #   The maximum hourly price (bid) for the Spot instance launched to
    #   fulfill the request.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the Spot instance request. Spot bid status information
    #   can help you track your Spot instance requests. For more
    #   information, see [Spot Bid Status][1] in the *Amazon Elastic Compute
    #   Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status code and status message describing the Spot instance
    #   request.
    #   @return [Types::SpotInstanceStatus]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] type
    #   The Spot instance request type.
    #   @return [String]
    #
    # @!attribute [rw] valid_from
    #   The start date of the request, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z). The request becomes active at
    #   this date and time.
    #   @return [Time]
    #
    # @!attribute [rw] valid_until
    #   The end date of the request, in UTC format (for example,
    #   *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z). If this is a one-time request,
    #   it remains active until all instances launch, the request is
    #   canceled, or this date is reached. If the request is persistent, it
    #   remains active until it is canceled or this date is reached.
    #   @return [Time]
    #
    # @!attribute [rw] instance_interruption_behavior
    #   Indicates whether a Spot instance stops or terminates when it is
    #   interrupted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotInstanceRequest AWS API Documentation
    #
    class SpotInstanceRequest < Struct.new(
      :actual_block_hourly_price,
      :availability_zone_group,
      :block_duration_minutes,
      :create_time,
      :fault,
      :instance_id,
      :launch_group,
      :launch_specification,
      :launched_availability_zone,
      :product_description,
      :spot_instance_request_id,
      :spot_price,
      :state,
      :status,
      :tags,
      :type,
      :valid_from,
      :valid_until,
      :instance_interruption_behavior)
      include Aws::Structure
    end

    # Describes a Spot instance state change.
    #
    # @!attribute [rw] code
    #   The reason code for the Spot instance state change.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message for the Spot instance state change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotInstanceStateFault AWS API Documentation
    #
    class SpotInstanceStateFault < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # Describes the status of a Spot instance request.
    #
    # @!attribute [rw] code
    #   The status code. For a list of status codes, see [Spot Bid Status
    #   Codes][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html#spot-instance-bid-status-understand
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The description for the status code.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The date and time of the most recent status update, in UTC format
    #   (for example, *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotInstanceStatus AWS API Documentation
    #
    class SpotInstanceStatus < Struct.new(
      :code,
      :message,
      :update_time)
      include Aws::Structure
    end

    # Describes Spot instance placement.
    #
    # @note When making an API call, you may pass SpotPlacement
    #   data as a hash:
    #
    #       {
    #         availability_zone: "String",
    #         group_name: "String",
    #         tenancy: "default", # accepts default, dedicated, host
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone.
    #
    #   \[Spot fleet only\] To specify multiple Availability Zones, separate
    #   them using commas; for example, "us-west-2a, us-west-2b".
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the placement group (for cluster instances).
    #   @return [String]
    #
    # @!attribute [rw] tenancy
    #   The tenancy of the instance (if the instance is running in a VPC).
    #   An instance with a tenancy of `dedicated` runs on single-tenant
    #   hardware. The `host` tenancy is not supported for Spot instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotPlacement AWS API Documentation
    #
    class SpotPlacement < Struct.new(
      :availability_zone,
      :group_name,
      :tenancy)
      include Aws::Structure
    end

    # Describes the maximum hourly price (bid) for any Spot instance
    # launched to fulfill the request.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type. Note that T2 and HS1 instance types are not
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   A general description of the AMI.
    #   @return [String]
    #
    # @!attribute [rw] spot_price
    #   The maximum price (bid) that you are willing to pay for a Spot
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time the request was created, in UTC format (for
    #   example, *YYYY*-*MM*-*DD*T*HH*\:*MM*\:*SS*Z).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SpotPrice AWS API Documentation
    #
    class SpotPrice < Struct.new(
      :availability_zone,
      :instance_type,
      :product_description,
      :spot_price,
      :timestamp)
      include Aws::Structure
    end

    # Describes a stale rule in a security group.
    #
    # @!attribute [rw] from_port
    #   The start of the port range for the TCP and UDP protocols, or an
    #   ICMP type number. A value of `-1` indicates all ICMP types.
    #   @return [Integer]
    #
    # @!attribute [rw] ip_protocol
    #   The IP protocol name (for `tcp`, `udp`, and `icmp`) or number (see
    #   [Protocol Numbers)][1].
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #   @return [String]
    #
    # @!attribute [rw] ip_ranges
    #   One or more IP ranges. Not applicable for stale security group
    #   rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] prefix_list_ids
    #   One or more prefix list IDs for an AWS service. Not applicable for
    #   stale security group rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] to_port
    #   The end of the port range for the TCP and UDP protocols, or an ICMP
    #   type number. A value of `-1` indicates all ICMP types.
    #   @return [Integer]
    #
    # @!attribute [rw] user_id_group_pairs
    #   One or more security group pairs. Returns the ID of the referenced
    #   security group and VPC, and the ID and status of the VPC peering
    #   connection.
    #   @return [Array<Types::UserIdGroupPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StaleIpPermission AWS API Documentation
    #
    class StaleIpPermission < Struct.new(
      :from_port,
      :ip_protocol,
      :ip_ranges,
      :prefix_list_ids,
      :to_port,
      :user_id_group_pairs)
      include Aws::Structure
    end

    # Describes a stale security group (a security group that contains stale
    # rules).
    #
    # @!attribute [rw] description
    #   The description of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] stale_ip_permissions
    #   Information about the stale inbound rules in the security group.
    #   @return [Array<Types::StaleIpPermission>]
    #
    # @!attribute [rw] stale_ip_permissions_egress
    #   Information about the stale outbound rules in the security group.
    #   @return [Array<Types::StaleIpPermission>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StaleSecurityGroup AWS API Documentation
    #
    class StaleSecurityGroup < Struct.new(
      :description,
      :group_id,
      :group_name,
      :stale_ip_permissions,
      :stale_ip_permissions_egress,
      :vpc_id)
      include Aws::Structure
    end

    # Contains the parameters for StartInstances.
    #
    # @note When making an API call, you may pass StartInstancesRequest
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["String"], # required
    #         additional_info: "String",
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] instance_ids
    #   One or more instance IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_info
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StartInstancesRequest AWS API Documentation
    #
    class StartInstancesRequest < Struct.new(
      :instance_ids,
      :additional_info,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of StartInstances.
    #
    # @!attribute [rw] starting_instances
    #   Information about one or more started instances.
    #   @return [Array<Types::InstanceStateChange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StartInstancesResult AWS API Documentation
    #
    class StartInstancesResult < Struct.new(
      :starting_instances)
      include Aws::Structure
    end

    # Describes a state change.
    #
    # @!attribute [rw] code
    #   The reason code for the state change.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message for the state change.
    #
    #   * `Server.InsufficientInstanceCapacity`\: There was insufficient
    #     instance capacity to satisfy the launch request.
    #
    #   * `Server.InternalError`\: An internal error occurred during
    #     instance launch, resulting in termination.
    #
    #   * `Server.ScheduledStop`\: The instance was stopped due to a
    #     scheduled retirement.
    #
    #   * `Server.SpotInstanceTermination`\: A Spot Instance was terminated
    #     due to an increase in the market price.
    #
    #   * `Client.InternalError`\: A client error caused the instance to
    #     terminate on launch.
    #
    #   * `Client.InstanceInitiatedShutdown`\: The instance was shut down
    #     using the `shutdown -h` command from the instance.
    #
    #   * `Client.InstanceTerminated`\: The instance was terminated or
    #     rebooted during AMI creation.
    #
    #   * `Client.UserInitiatedShutdown`\: The instance was shut down using
    #     the Amazon EC2 API.
    #
    #   * `Client.VolumeLimitExceeded`\: The limit on the number of EBS
    #     volumes or total storage was exceeded. Decrease usage or request
    #     an increase in your limits.
    #
    #   * `Client.InvalidSnapshot.NotFound`\: The specified snapshot was not
    #     found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StateReason AWS API Documentation
    #
    class StateReason < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # Contains the parameters for StopInstances.
    #
    # @note When making an API call, you may pass StopInstancesRequest
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["String"], # required
    #         dry_run: false,
    #         force: false,
    #       }
    #
    # @!attribute [rw] instance_ids
    #   One or more instance IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] force
    #   Forces the instances to stop. The instances do not have an
    #   opportunity to flush file system caches or file system metadata. If
    #   you use this option, you must perform file system check and repair
    #   procedures. This option is not recommended for Windows instances.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StopInstancesRequest AWS API Documentation
    #
    class StopInstancesRequest < Struct.new(
      :instance_ids,
      :dry_run,
      :force)
      include Aws::Structure
    end

    # Contains the output of StopInstances.
    #
    # @!attribute [rw] stopping_instances
    #   Information about one or more stopped instances.
    #   @return [Array<Types::InstanceStateChange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StopInstancesResult AWS API Documentation
    #
    class StopInstancesResult < Struct.new(
      :stopping_instances)
      include Aws::Structure
    end

    # Describes the storage location for an instance store-backed AMI.
    #
    # @note When making an API call, you may pass Storage
    #   data as a hash:
    #
    #       {
    #         s3: {
    #           aws_access_key_id: "String",
    #           bucket: "String",
    #           prefix: "String",
    #           upload_policy: "data",
    #           upload_policy_signature: "String",
    #         },
    #       }
    #
    # @!attribute [rw] s3
    #   An Amazon S3 storage location.
    #   @return [Types::S3Storage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Storage AWS API Documentation
    #
    class Storage < Struct.new(
      :s3)
      include Aws::Structure
    end

    # Describes a storage location in Amazon S3.
    #
    # @note When making an API call, you may pass StorageLocation
    #   data as a hash:
    #
    #       {
    #         bucket: "String",
    #         key: "String",
    #       }
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/StorageLocation AWS API Documentation
    #
    class StorageLocation < Struct.new(
      :bucket,
      :key)
      include Aws::Structure
    end

    # Describes a subnet.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] available_ip_address_count
    #   The number of unused private IPv4 addresses in the subnet. Note that
    #   the IPv4 addresses for any stopped instances are considered
    #   unavailable.
    #   @return [Integer]
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 CIDR block assigned to the subnet.
    #   @return [String]
    #
    # @!attribute [rw] default_for_az
    #   Indicates whether this is the default subnet for the Availability
    #   Zone.
    #   @return [Boolean]
    #
    # @!attribute [rw] map_public_ip_on_launch
    #   Indicates whether instances launched in this subnet receive a public
    #   IPv4 address.
    #   @return [Boolean]
    #
    # @!attribute [rw] state
    #   The current state of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC the subnet is in.
    #   @return [String]
    #
    # @!attribute [rw] assign_ipv_6_address_on_creation
    #   Indicates whether a network interface created in this subnet
    #   (including a network interface created by RunInstances) receives an
    #   IPv6 address.
    #   @return [Boolean]
    #
    # @!attribute [rw] ipv_6_cidr_block_association_set
    #   Information about the IPv6 CIDR blocks associated with the subnet.
    #   @return [Array<Types::SubnetIpv6CidrBlockAssociation>]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the subnet.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :availability_zone,
      :available_ip_address_count,
      :cidr_block,
      :default_for_az,
      :map_public_ip_on_launch,
      :state,
      :subnet_id,
      :vpc_id,
      :assign_ipv_6_address_on_creation,
      :ipv_6_cidr_block_association_set,
      :tags)
      include Aws::Structure
    end

    # Describes the state of a CIDR block.
    #
    # @!attribute [rw] state
    #   The state of a CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message about the status of the CIDR block, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SubnetCidrBlockState AWS API Documentation
    #
    class SubnetCidrBlockState < Struct.new(
      :state,
      :status_message)
      include Aws::Structure
    end

    # Describes an IPv6 CIDR block associated with a subnet.
    #
    # @!attribute [rw] association_id
    #   The association ID for the CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_cidr_block_state
    #   Information about the state of the CIDR block.
    #   @return [Types::SubnetCidrBlockState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/SubnetIpv6CidrBlockAssociation AWS API Documentation
    #
    class SubnetIpv6CidrBlockAssociation < Struct.new(
      :association_id,
      :ipv_6_cidr_block,
      :ipv_6_cidr_block_state)
      include Aws::Structure
    end

    # Describes a tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #
    #   Constraints: Tag keys are case-sensitive and accept a maximum of 127
    #   Unicode characters. May not begin with `aws:`
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #
    #   Constraints: Tag values are case-sensitive and accept a maximum of
    #   255 Unicode characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Describes a tag.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource. For example, `ami-1a2b3c4d`.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/TagDescription AWS API Documentation
    #
    class TagDescription < Struct.new(
      :key,
      :resource_id,
      :resource_type,
      :value)
      include Aws::Structure
    end

    # The tags to apply to a resource when the resource is being created.
    #
    # @note When making an API call, you may pass TagSpecification
    #   data as a hash:
    #
    #       {
    #         resource_type: "customer-gateway", # accepts customer-gateway, dhcp-options, image, instance, internet-gateway, network-acl, network-interface, reserved-instances, route-table, snapshot, spot-instances-request, subnet, security-group, volume, vpc, vpn-connection, vpn-gateway
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of resource to tag. Currently, the resource types that
    #   support tagging on creation are `instance` and `volume`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/TagSpecification AWS API Documentation
    #
    class TagSpecification < Struct.new(
      :resource_type,
      :tags)
      include Aws::Structure
    end

    # Information about the Convertible Reserved Instance offering.
    #
    # @!attribute [rw] instance_count
    #   The number of instances the Convertible Reserved Instance offering
    #   can be applied to. This parameter is reserved and cannot be
    #   specified in a request
    #   @return [Integer]
    #
    # @!attribute [rw] offering_id
    #   The ID of the Convertible Reserved Instance offering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/TargetConfiguration AWS API Documentation
    #
    class TargetConfiguration < Struct.new(
      :instance_count,
      :offering_id)
      include Aws::Structure
    end

    # Details about the target configuration.
    #
    # @note When making an API call, you may pass TargetConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         instance_count: 1,
    #         offering_id: "String", # required
    #       }
    #
    # @!attribute [rw] instance_count
    #   The number of instances the Covertible Reserved Instance offering
    #   can be applied to. This parameter is reserved and cannot be
    #   specified in a request
    #   @return [Integer]
    #
    # @!attribute [rw] offering_id
    #   The Convertible Reserved Instance offering ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/TargetConfigurationRequest AWS API Documentation
    #
    class TargetConfigurationRequest < Struct.new(
      :instance_count,
      :offering_id)
      include Aws::Structure
    end

    # The total value of the new Convertible Reserved Instances.
    #
    # @!attribute [rw] reservation_value
    #   The total value of the Convertible Reserved Instances that make up
    #   the exchange. This is the sum of the list value, remaining upfront
    #   price, and additional upfront cost of the exchange.
    #   @return [Types::ReservationValue]
    #
    # @!attribute [rw] target_configuration
    #   The configuration of the Convertible Reserved Instances that make up
    #   the exchange.
    #   @return [Types::TargetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/TargetReservationValue AWS API Documentation
    #
    class TargetReservationValue < Struct.new(
      :reservation_value,
      :target_configuration)
      include Aws::Structure
    end

    # Contains the parameters for TerminateInstances.
    #
    # @note When making an API call, you may pass TerminateInstancesRequest
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["String"], # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] instance_ids
    #   One or more instance IDs.
    #
    #   Constraints: Up to 1000 instance IDs. We recommend breaking up this
    #   request into smaller batches.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/TerminateInstancesRequest AWS API Documentation
    #
    class TerminateInstancesRequest < Struct.new(
      :instance_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of TerminateInstances.
    #
    # @!attribute [rw] terminating_instances
    #   Information about one or more terminated instances.
    #   @return [Array<Types::InstanceStateChange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/TerminateInstancesResult AWS API Documentation
    #
    class TerminateInstancesResult < Struct.new(
      :terminating_instances)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UnassignIpv6AddressesRequest
    #   data as a hash:
    #
    #       {
    #         ipv_6_addresses: ["String"], # required
    #         network_interface_id: "String", # required
    #       }
    #
    # @!attribute [rw] ipv_6_addresses
    #   The IPv6 addresses to unassign from the network interface.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnassignIpv6AddressesRequest AWS API Documentation
    #
    class UnassignIpv6AddressesRequest < Struct.new(
      :ipv_6_addresses,
      :network_interface_id)
      include Aws::Structure
    end

    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] unassigned_ipv_6_addresses
    #   The IPv6 addresses that have been unassigned from the network
    #   interface.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnassignIpv6AddressesResult AWS API Documentation
    #
    class UnassignIpv6AddressesResult < Struct.new(
      :network_interface_id,
      :unassigned_ipv_6_addresses)
      include Aws::Structure
    end

    # Contains the parameters for UnassignPrivateIpAddresses.
    #
    # @note When making an API call, you may pass UnassignPrivateIpAddressesRequest
    #   data as a hash:
    #
    #       {
    #         network_interface_id: "String", # required
    #         private_ip_addresses: ["String"], # required
    #       }
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_addresses
    #   The secondary private IP addresses to unassign from the network
    #   interface. You can specify this option multiple times to unassign
    #   more than one IP address.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnassignPrivateIpAddressesRequest AWS API Documentation
    #
    class UnassignPrivateIpAddressesRequest < Struct.new(
      :network_interface_id,
      :private_ip_addresses)
      include Aws::Structure
    end

    # Contains the parameters for UnmonitorInstances.
    #
    # @note When making an API call, you may pass UnmonitorInstancesRequest
    #   data as a hash:
    #
    #       {
    #         instance_ids: ["String"], # required
    #         dry_run: false,
    #       }
    #
    # @!attribute [rw] instance_ids
    #   One or more instance IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnmonitorInstancesRequest AWS API Documentation
    #
    class UnmonitorInstancesRequest < Struct.new(
      :instance_ids,
      :dry_run)
      include Aws::Structure
    end

    # Contains the output of UnmonitorInstances.
    #
    # @!attribute [rw] instance_monitorings
    #   The monitoring information.
    #   @return [Array<Types::InstanceMonitoring>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnmonitorInstancesResult AWS API Documentation
    #
    class UnmonitorInstancesResult < Struct.new(
      :instance_monitorings)
      include Aws::Structure
    end

    # Information about items that were not successfully processed in a
    # batch call.
    #
    # @!attribute [rw] error
    #   Information about the error.
    #   @return [Types::UnsuccessfulItemError]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnsuccessfulItem AWS API Documentation
    #
    class UnsuccessfulItem < Struct.new(
      :error,
      :resource_id)
      include Aws::Structure
    end

    # Information about the error that occurred. For more information about
    # errors, see [Error Codes][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message accompanying the error code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UnsuccessfulItemError AWS API Documentation
    #
    class UnsuccessfulItemError < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # Contains the parameters for UpdateSecurityGroupRuleDescriptionsEgress.
    #
    # @note When making an API call, you may pass UpdateSecurityGroupRuleDescriptionsEgressRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         group_id: "String",
    #         group_name: "String",
    #         ip_permissions: [ # required
    #           {
    #             from_port: 1,
    #             ip_protocol: "String",
    #             ip_ranges: [
    #               {
    #                 cidr_ip: "String",
    #                 description: "String",
    #               },
    #             ],
    #             ipv_6_ranges: [
    #               {
    #                 cidr_ipv_6: "String",
    #                 description: "String",
    #               },
    #             ],
    #             prefix_list_ids: [
    #               {
    #                 description: "String",
    #                 prefix_list_id: "String",
    #               },
    #             ],
    #             to_port: 1,
    #             user_id_group_pairs: [
    #               {
    #                 description: "String",
    #                 group_id: "String",
    #                 group_name: "String",
    #                 peering_status: "String",
    #                 user_id: "String",
    #                 vpc_id: "String",
    #                 vpc_peering_connection_id: "String",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group. You must specify either the security
    #   group ID or the security group name in the request. For security
    #   groups in a nondefault VPC, you must specify the security group ID.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   \[Default VPC\] The name of the security group. You must specify
    #   either the security group ID or the security group name in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions
    #   The IP permissions for the security group rule.
    #   @return [Array<Types::IpPermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UpdateSecurityGroupRuleDescriptionsEgressRequest AWS API Documentation
    #
    class UpdateSecurityGroupRuleDescriptionsEgressRequest < Struct.new(
      :dry_run,
      :group_id,
      :group_name,
      :ip_permissions)
      include Aws::Structure
    end

    # Contains the output of UpdateSecurityGroupRuleDescriptionsEgress.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, returns an error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UpdateSecurityGroupRuleDescriptionsEgressResult AWS API Documentation
    #
    class UpdateSecurityGroupRuleDescriptionsEgressResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Contains the parameters for
    # UpdateSecurityGroupRuleDescriptionsIngress.
    #
    # @note When making an API call, you may pass UpdateSecurityGroupRuleDescriptionsIngressRequest
    #   data as a hash:
    #
    #       {
    #         dry_run: false,
    #         group_id: "String",
    #         group_name: "String",
    #         ip_permissions: [ # required
    #           {
    #             from_port: 1,
    #             ip_protocol: "String",
    #             ip_ranges: [
    #               {
    #                 cidr_ip: "String",
    #                 description: "String",
    #               },
    #             ],
    #             ipv_6_ranges: [
    #               {
    #                 cidr_ipv_6: "String",
    #                 description: "String",
    #               },
    #             ],
    #             prefix_list_ids: [
    #               {
    #                 description: "String",
    #                 prefix_list_id: "String",
    #               },
    #             ],
    #             to_port: 1,
    #             user_id_group_pairs: [
    #               {
    #                 description: "String",
    #                 group_id: "String",
    #                 group_name: "String",
    #                 peering_status: "String",
    #                 user_id: "String",
    #                 vpc_id: "String",
    #                 vpc_peering_connection_id: "String",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #   @return [Boolean]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group. You must specify either the security
    #   group ID or the security group name in the request. For security
    #   groups in a nondefault VPC, you must specify the security group ID.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   \[EC2-Classic, default VPC\] The name of the security group. You
    #   must specify either the security group ID or the security group name
    #   in the request.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions
    #   The IP permissions for the security group rule.
    #   @return [Array<Types::IpPermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UpdateSecurityGroupRuleDescriptionsIngressRequest AWS API Documentation
    #
    class UpdateSecurityGroupRuleDescriptionsIngressRequest < Struct.new(
      :dry_run,
      :group_id,
      :group_name,
      :ip_permissions)
      include Aws::Structure
    end

    # Contains the output of UpdateSecurityGroupRuleDescriptionsIngress.
    #
    # @!attribute [rw] return
    #   Returns `true` if the request succeeds; otherwise, returns an error.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UpdateSecurityGroupRuleDescriptionsIngressResult AWS API Documentation
    #
    class UpdateSecurityGroupRuleDescriptionsIngressResult < Struct.new(
      :return)
      include Aws::Structure
    end

    # Describes the S3 bucket for the disk image.
    #
    # @note When making an API call, you may pass UserBucket
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "String",
    #         s3_key: "String",
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   The name of the S3 bucket where the disk image is located.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The file name of the disk image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UserBucket AWS API Documentation
    #
    class UserBucket < Struct.new(
      :s3_bucket,
      :s3_key)
      include Aws::Structure
    end

    # Describes the S3 bucket for the disk image.
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket from which the disk image was created.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The file name of the disk image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UserBucketDetails AWS API Documentation
    #
    class UserBucketDetails < Struct.new(
      :s3_bucket,
      :s3_key)
      include Aws::Structure
    end

    # Describes the user data for an instance.
    #
    # @note When making an API call, you may pass UserData
    #   data as a hash:
    #
    #       {
    #         data: "String",
    #       }
    #
    # @!attribute [rw] data
    #   The user data. If you are using an AWS SDK or command line tool,
    #   Base64-encoding is performed for you, and you can load the text from
    #   a file. Otherwise, you must provide Base64-encoded text.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UserData AWS API Documentation
    #
    class UserData < Struct.new(
      :data)
      include Aws::Structure
    end

    # Describes a security group and AWS account ID pair.
    #
    # @note When making an API call, you may pass UserIdGroupPair
    #   data as a hash:
    #
    #       {
    #         description: "String",
    #         group_id: "String",
    #         group_name: "String",
    #         peering_status: "String",
    #         user_id: "String",
    #         vpc_id: "String",
    #         vpc_peering_connection_id: "String",
    #       }
    #
    # @!attribute [rw] description
    #   A description for the security group rule that references this user
    #   ID group pair.
    #
    #   Constraints: Up to 255 characters in length. Allowed characters are
    #   a-z, A-Z, 0-9, spaces, and .\_-:/()#,@\[\]+=;\\\{\\}!$*
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the security group. In a request, use this parameter for
    #   a security group in EC2-Classic or a default VPC only. For a
    #   security group in a nondefault VPC, use the security group ID.
    #   @return [String]
    #
    # @!attribute [rw] peering_status
    #   The status of a VPC peering connection, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of an AWS account. For a referenced security group in another
    #   VPC, the account ID of the referenced security group is returned.
    #
    #   \[EC2-Classic\] Required when adding or removing rules that
    #   reference a security group in another AWS account.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the referenced security group, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/UserIdGroupPair AWS API Documentation
    #
    class UserIdGroupPair < Struct.new(
      :description,
      :group_id,
      :group_name,
      :peering_status,
      :user_id,
      :vpc_id,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # Describes telemetry for a VPN tunnel.
    #
    # @!attribute [rw] accepted_route_count
    #   The number of accepted routes.
    #   @return [Integer]
    #
    # @!attribute [rw] last_status_change
    #   The date and time of the last change in status.
    #   @return [Time]
    #
    # @!attribute [rw] outside_ip_address
    #   The Internet-routable IP address of the virtual private gateway's
    #   outside interface.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the VPN tunnel.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If an error occurs, a description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VgwTelemetry AWS API Documentation
    #
    class VgwTelemetry < Struct.new(
      :accepted_route_count,
      :last_status_change,
      :outside_ip_address,
      :status,
      :status_message)
      include Aws::Structure
    end

    # Describes a volume.
    #
    # @!attribute [rw] attachments
    #   Information about the volume attachments.
    #   @return [Array<Types::VolumeAttachment>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the volume.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time stamp when volume creation was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the volume will be encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The full ARN of the AWS Key Management Service (AWS KMS) customer
    #   master key (CMK) that was used to protect the volume encryption key
    #   for the volume.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the volume, in GiBs.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot from which the volume was created, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The volume state.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second (IOPS) that the volume
    #   supports. For Provisioned IOPS SSD volumes, this represents the
    #   number of IOPS that are provisioned for the volume. For General
    #   Purpose SSD volumes, this represents the baseline performance of the
    #   volume and the rate at which the volume accumulates I/O credits for
    #   bursting. For more information on General Purpose SSD baseline
    #   performance, I/O credits, and bursting, see [Amazon EBS Volume
    #   Types][1] in the *Amazon Elastic Compute Cloud User Guide*.
    #
    #   Constraint: Range is 100-20000 IOPS for io1 volumes and 100-10000
    #   IOPS for `gp2` volumes.
    #
    #   Condition: This parameter is required for requests to create `io1`
    #   volumes; it is not used in requests to create `gp2`, `st1`, `sc1`,
    #   or `standard` volumes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the volume.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] volume_type
    #   The volume type. This can be `gp2` for General Purpose SSD, `io1`
    #   for Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1`
    #   for Cold HDD, or `standard` for Magnetic volumes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :attachments,
      :availability_zone,
      :create_time,
      :encrypted,
      :kms_key_id,
      :size,
      :snapshot_id,
      :state,
      :volume_id,
      :iops,
      :tags,
      :volume_type)
      include Aws::Structure
    end

    # Describes volume attachment details.
    #
    # @!attribute [rw] attach_time
    #   The time stamp when the attachment initiated.
    #   @return [Time]
    #
    # @!attribute [rw] device
    #   The device name.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The attachment state of the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_id
    #   The ID of the volume.
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the EBS volume is deleted on instance termination.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VolumeAttachment AWS API Documentation
    #
    class VolumeAttachment < Struct.new(
      :attach_time,
      :device,
      :instance_id,
      :state,
      :volume_id,
      :delete_on_termination)
      include Aws::Structure
    end

    # Describes an EBS volume.
    #
    # @note When making an API call, you may pass VolumeDetail
    #   data as a hash:
    #
    #       {
    #         size: 1, # required
    #       }
    #
    # @!attribute [rw] size
    #   The size of the volume, in GiB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VolumeDetail AWS API Documentation
    #
    class VolumeDetail < Struct.new(
      :size)
      include Aws::Structure
    end

    # Describes the modification status of an EBS volume.
    #
    # If the volume has never been modified, some element values will be
    # null.
    #
    # @!attribute [rw] volume_id
    #   ID of the volume being modified.
    #   @return [String]
    #
    # @!attribute [rw] modification_state
    #   Current state of modification. Modification state is null for
    #   unmodified volumes.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Generic status message on modification progress or failure.
    #   @return [String]
    #
    # @!attribute [rw] target_size
    #   Target size of the volume being modified.
    #   @return [Integer]
    #
    # @!attribute [rw] target_iops
    #   Target IOPS rate of the volume being modified.
    #   @return [Integer]
    #
    # @!attribute [rw] target_volume_type
    #   Target EBS volume type of the volume being modified.
    #   @return [String]
    #
    # @!attribute [rw] original_size
    #   Original size of the volume being modified.
    #   @return [Integer]
    #
    # @!attribute [rw] original_iops
    #   Original IOPS rate of the volume being modified.
    #   @return [Integer]
    #
    # @!attribute [rw] original_volume_type
    #   Original EBS volume type of the volume being modified.
    #   @return [String]
    #
    # @!attribute [rw] progress
    #   Modification progress from 0 to 100%.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   Modification start time
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Modification completion or failure time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VolumeModification AWS API Documentation
    #
    class VolumeModification < Struct.new(
      :volume_id,
      :modification_state,
      :status_message,
      :target_size,
      :target_iops,
      :target_volume_type,
      :original_size,
      :original_iops,
      :original_volume_type,
      :progress,
      :start_time,
      :end_time)
      include Aws::Structure
    end

    # Describes a volume status operation code.
    #
    # @!attribute [rw] code
    #   The code identifying the operation, for example, `enable-volume-io`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the operation.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The ID of the event associated with this operation.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type associated with this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VolumeStatusAction AWS API Documentation
    #
    class VolumeStatusAction < Struct.new(
      :code,
      :description,
      :event_id,
      :event_type)
      include Aws::Structure
    end

    # Describes a volume status.
    #
    # @!attribute [rw] name
    #   The name of the volume status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The intended status of the volume status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VolumeStatusDetails AWS API Documentation
    #
    class VolumeStatusDetails < Struct.new(
      :name,
      :status)
      include Aws::Structure
    end

    # Describes a volume status event.
    #
    # @!attribute [rw] description
    #   A description of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The ID of this event.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of this event.
    #   @return [String]
    #
    # @!attribute [rw] not_after
    #   The latest end time of the event.
    #   @return [Time]
    #
    # @!attribute [rw] not_before
    #   The earliest start time of the event.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VolumeStatusEvent AWS API Documentation
    #
    class VolumeStatusEvent < Struct.new(
      :description,
      :event_id,
      :event_type,
      :not_after,
      :not_before)
      include Aws::Structure
    end

    # Describes the status of a volume.
    #
    # @!attribute [rw] details
    #   The details of the volume status.
    #   @return [Array<Types::VolumeStatusDetails>]
    #
    # @!attribute [rw] status
    #   The status of the volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VolumeStatusInfo AWS API Documentation
    #
    class VolumeStatusInfo < Struct.new(
      :details,
      :status)
      include Aws::Structure
    end

    # Describes the volume status.
    #
    # @!attribute [rw] actions
    #   The details of the operation.
    #   @return [Array<Types::VolumeStatusAction>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone of the volume.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A list of events associated with the volume.
    #   @return [Array<Types::VolumeStatusEvent>]
    #
    # @!attribute [rw] volume_id
    #   The volume ID.
    #   @return [String]
    #
    # @!attribute [rw] volume_status
    #   The volume status.
    #   @return [Types::VolumeStatusInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VolumeStatusItem AWS API Documentation
    #
    class VolumeStatusItem < Struct.new(
      :actions,
      :availability_zone,
      :events,
      :volume_id,
      :volume_status)
      include Aws::Structure
    end

    # Describes a VPC.
    #
    # @!attribute [rw] cidr_block
    #   The primary IPv4 CIDR block for the VPC.
    #   @return [String]
    #
    # @!attribute [rw] dhcp_options_id
    #   The ID of the set of DHCP options you've associated with the VPC
    #   (or `default` if the default options are associated with the VPC).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] instance_tenancy
    #   The allowed tenancy of instances launched into the VPC.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_cidr_block_association_set
    #   Information about the IPv6 CIDR blocks associated with the VPC.
    #   @return [Array<Types::VpcIpv6CidrBlockAssociation>]
    #
    # @!attribute [rw] cidr_block_association_set
    #   Information about the IPv4 CIDR blocks associated with the VPC.
    #   @return [Array<Types::VpcCidrBlockAssociation>]
    #
    # @!attribute [rw] is_default
    #   Indicates whether the VPC is the default VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the VPC.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/Vpc AWS API Documentation
    #
    class Vpc < Struct.new(
      :cidr_block,
      :dhcp_options_id,
      :state,
      :vpc_id,
      :instance_tenancy,
      :ipv_6_cidr_block_association_set,
      :cidr_block_association_set,
      :is_default,
      :tags)
      include Aws::Structure
    end

    # Describes an attachment between a virtual private gateway and a VPC.
    #
    # @!attribute [rw] state
    #   The current state of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpcAttachment AWS API Documentation
    #
    class VpcAttachment < Struct.new(
      :state,
      :vpc_id)
      include Aws::Structure
    end

    # Describes an IPv4 CIDR block associated with a VPC.
    #
    # @!attribute [rw] association_id
    #   The association ID for the IPv4 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block_state
    #   Information about the state of the CIDR block.
    #   @return [Types::VpcCidrBlockState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpcCidrBlockAssociation AWS API Documentation
    #
    class VpcCidrBlockAssociation < Struct.new(
      :association_id,
      :cidr_block,
      :cidr_block_state)
      include Aws::Structure
    end

    # Describes the state of a CIDR block.
    #
    # @!attribute [rw] state
    #   The state of the CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message about the status of the CIDR block, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpcCidrBlockState AWS API Documentation
    #
    class VpcCidrBlockState < Struct.new(
      :state,
      :status_message)
      include Aws::Structure
    end

    # Describes whether a VPC is enabled for ClassicLink.
    #
    # @!attribute [rw] classic_link_enabled
    #   Indicates whether the VPC is enabled for ClassicLink.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the VPC.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpcClassicLink AWS API Documentation
    #
    class VpcClassicLink < Struct.new(
      :classic_link_enabled,
      :tags,
      :vpc_id)
      include Aws::Structure
    end

    # Describes a VPC endpoint.
    #
    # @!attribute [rw] creation_timestamp
    #   The date and time the VPC endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] policy_document
    #   The policy document associated with the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] route_table_ids
    #   One or more route tables associated with the endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service to which the endpoint is associated.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC to which the endpoint is associated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpcEndpoint AWS API Documentation
    #
    class VpcEndpoint < Struct.new(
      :creation_timestamp,
      :policy_document,
      :route_table_ids,
      :service_name,
      :state,
      :vpc_endpoint_id,
      :vpc_id)
      include Aws::Structure
    end

    # Describes an IPv6 CIDR block associated with a VPC.
    #
    # @!attribute [rw] association_id
    #   The association ID for the IPv6 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_cidr_block_state
    #   Information about the state of the CIDR block.
    #   @return [Types::VpcCidrBlockState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpcIpv6CidrBlockAssociation AWS API Documentation
    #
    class VpcIpv6CidrBlockAssociation < Struct.new(
      :association_id,
      :ipv_6_cidr_block,
      :ipv_6_cidr_block_state)
      include Aws::Structure
    end

    # Describes a VPC peering connection.
    #
    # @!attribute [rw] accepter_vpc_info
    #   Information about the accepter VPC. CIDR block information is only
    #   returned when describing an active VPC peering connection.
    #   @return [Types::VpcPeeringConnectionVpcInfo]
    #
    # @!attribute [rw] expiration_time
    #   The time that an unaccepted VPC peering connection will expire.
    #   @return [Time]
    #
    # @!attribute [rw] requester_vpc_info
    #   Information about the requester VPC. CIDR block information is only
    #   returned when describing an active VPC peering connection.
    #   @return [Types::VpcPeeringConnectionVpcInfo]
    #
    # @!attribute [rw] status
    #   The status of the VPC peering connection.
    #   @return [Types::VpcPeeringConnectionStateReason]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpcPeeringConnection AWS API Documentation
    #
    class VpcPeeringConnection < Struct.new(
      :accepter_vpc_info,
      :expiration_time,
      :requester_vpc_info,
      :status,
      :tags,
      :vpc_peering_connection_id)
      include Aws::Structure
    end

    # Describes the VPC peering connection options.
    #
    # @!attribute [rw] allow_dns_resolution_from_remote_vpc
    #   Indicates whether a local VPC can resolve public DNS hostnames to
    #   private IP addresses when queried from instances in a peer VPC.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_egress_from_local_classic_link_to_remote_vpc
    #   Indicates whether a local ClassicLink connection can communicate
    #   with the peer VPC over the VPC peering connection.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_egress_from_local_vpc_to_remote_classic_link
    #   Indicates whether a local VPC can communicate with a ClassicLink
    #   connection in the peer VPC over the VPC peering connection.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpcPeeringConnectionOptionsDescription AWS API Documentation
    #
    class VpcPeeringConnectionOptionsDescription < Struct.new(
      :allow_dns_resolution_from_remote_vpc,
      :allow_egress_from_local_classic_link_to_remote_vpc,
      :allow_egress_from_local_vpc_to_remote_classic_link)
      include Aws::Structure
    end

    # Describes the status of a VPC peering connection.
    #
    # @!attribute [rw] code
    #   The status of the VPC peering connection.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that provides more information about the status, if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpcPeeringConnectionStateReason AWS API Documentation
    #
    class VpcPeeringConnectionStateReason < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # Describes a VPC in a VPC peering connection.
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 CIDR block for the VPC.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_cidr_block_set
    #   The IPv6 CIDR block for the VPC.
    #   @return [Array<Types::Ipv6CidrBlock>]
    #
    # @!attribute [rw] cidr_block_set
    #   Information about the IPv4 CIDR blocks for the VPC.
    #   @return [Array<Types::CidrBlock>]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the VPC owner.
    #   @return [String]
    #
    # @!attribute [rw] peering_options
    #   Information about the VPC peering connection options for the
    #   accepter or requester VPC.
    #   @return [Types::VpcPeeringConnectionOptionsDescription]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpcPeeringConnectionVpcInfo AWS API Documentation
    #
    class VpcPeeringConnectionVpcInfo < Struct.new(
      :cidr_block,
      :ipv_6_cidr_block_set,
      :cidr_block_set,
      :owner_id,
      :peering_options,
      :vpc_id)
      include Aws::Structure
    end

    # Describes a VPN connection.
    #
    # @!attribute [rw] customer_gateway_configuration
    #   The configuration information for the VPN connection's customer
    #   gateway (in the native XML format). This element is always present
    #   in the CreateVpnConnection response; however, it's present in the
    #   DescribeVpnConnections response only if the VPN connection is in the
    #   `pending` or `available` state.
    #   @return [String]
    #
    # @!attribute [rw] customer_gateway_id
    #   The ID of the customer gateway at your end of the VPN connection.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the VPN connection. A value of `VPN` indicates an
    #   AWS VPN connection. A value of `VPN-Classic` indicates an AWS
    #   Classic VPN connection. For more information, see [AWS Managed VPN
    #   Categories][1] in the *Amazon Virtual Private Cloud User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html#vpn-categories
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the VPN connection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of VPN connection.
    #   @return [String]
    #
    # @!attribute [rw] vpn_connection_id
    #   The ID of the VPN connection.
    #   @return [String]
    #
    # @!attribute [rw] vpn_gateway_id
    #   The ID of the virtual private gateway at the AWS side of the VPN
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The VPN connection options.
    #   @return [Types::VpnConnectionOptions]
    #
    # @!attribute [rw] routes
    #   The static routes associated with the VPN connection.
    #   @return [Array<Types::VpnStaticRoute>]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the VPN connection.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vgw_telemetry
    #   Information about the VPN tunnel.
    #   @return [Array<Types::VgwTelemetry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpnConnection AWS API Documentation
    #
    class VpnConnection < Struct.new(
      :customer_gateway_configuration,
      :customer_gateway_id,
      :category,
      :state,
      :type,
      :vpn_connection_id,
      :vpn_gateway_id,
      :options,
      :routes,
      :tags,
      :vgw_telemetry)
      include Aws::Structure
    end

    # Describes VPN connection options.
    #
    # @!attribute [rw] static_routes_only
    #   Indicates whether the VPN connection uses static routes only. Static
    #   routes must be used for devices that don't support BGP.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpnConnectionOptions AWS API Documentation
    #
    class VpnConnectionOptions < Struct.new(
      :static_routes_only)
      include Aws::Structure
    end

    # Describes VPN connection options.
    #
    # @note When making an API call, you may pass VpnConnectionOptionsSpecification
    #   data as a hash:
    #
    #       {
    #         static_routes_only: false,
    #         tunnel_options: [
    #           {
    #             tunnel_inside_cidr: "String",
    #             pre_shared_key: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] static_routes_only
    #   Indicate whether the VPN connection uses static routes only. If you
    #   are creating a VPN connection for a device that does not support
    #   BGP, you must specify `true`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] tunnel_options
    #   The tunnel options for the VPN connection.
    #   @return [Array<Types::VpnTunnelOptionsSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpnConnectionOptionsSpecification AWS API Documentation
    #
    class VpnConnectionOptionsSpecification < Struct.new(
      :static_routes_only,
      :tunnel_options)
      include Aws::Structure
    end

    # Describes a virtual private gateway.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the virtual private gateway was created,
    #   if applicable. This field may be empty or not returned.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of VPN connection the virtual private gateway supports.
    #   @return [String]
    #
    # @!attribute [rw] vpc_attachments
    #   Any VPCs attached to the virtual private gateway.
    #   @return [Array<Types::VpcAttachment>]
    #
    # @!attribute [rw] vpn_gateway_id
    #   The ID of the virtual private gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Any tags assigned to the virtual private gateway.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpnGateway AWS API Documentation
    #
    class VpnGateway < Struct.new(
      :availability_zone,
      :state,
      :type,
      :vpc_attachments,
      :vpn_gateway_id,
      :tags)
      include Aws::Structure
    end

    # Describes a static route for a VPN connection.
    #
    # @!attribute [rw] destination_cidr_block
    #   The CIDR block associated with the local subnet of the customer data
    #   center.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Indicates how the routes were provided.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the static route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpnStaticRoute AWS API Documentation
    #
    class VpnStaticRoute < Struct.new(
      :destination_cidr_block,
      :source,
      :state)
      include Aws::Structure
    end

    # The tunnel options for a VPN connection.
    #
    # @note When making an API call, you may pass VpnTunnelOptionsSpecification
    #   data as a hash:
    #
    #       {
    #         tunnel_inside_cidr: "String",
    #         pre_shared_key: "String",
    #       }
    #
    # @!attribute [rw] tunnel_inside_cidr
    #   The range of inside IP addresses for the tunnel. Any specified CIDR
    #   blocks must be unique across all VPN connections that use the same
    #   virtual private gateway.
    #
    #   Constraints: A size /30 CIDR block from the `169.254.0.0/16` range.
    #   The following CIDR blocks are reserved and cannot be used:
    #
    #   * `169.254.0.0/30`
    #
    #   * `169.254.1.0/30`
    #
    #   * `169.254.2.0/30`
    #
    #   * `169.254.3.0/30`
    #
    #   * `169.254.4.0/30`
    #
    #   * `169.254.5.0/30`
    #
    #   * `169.254.169.252/30`
    #   @return [String]
    #
    # @!attribute [rw] pre_shared_key
    #   The pre-shared key (PSK) to establish initial authentication between
    #   the virtual private gateway and customer gateway.
    #
    #   Constraints: Allowed characters are alphanumeric characters and .\_.
    #   Must be between 8 and 64 characters in length and cannot start with
    #   zero (0).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-2016-11-15/VpnTunnelOptionsSpecification AWS API Documentation
    #
    class VpnTunnelOptionsSpecification < Struct.new(
      :tunnel_inside_cidr,
      :pre_shared_key)
      include Aws::Structure
    end

  end
end
