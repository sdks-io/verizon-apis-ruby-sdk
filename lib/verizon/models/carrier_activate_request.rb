# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Request for carrier activation.
  class CarrierActivateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Up to 10,000 devices for which you want to activate service, specified by
    # device identifier.
    # @return [Array[AccountDeviceList]]
    attr_accessor :devices

    # The service plan code that you want to assign to all specified devices.
    # @return [String]
    attr_accessor :service_plan

    # The Zip code of the location where the line of service will primarily be
    # used, or a Zip code that you have been told to use with these devices. For
    # accounts that are configured for geographic numbering, this is the ZIP
    # code from which the MDN will be derived.
    # @return [String]
    attr_accessor :mdn_zip_code

    # The name of a billing account.
    # @return [String]
    attr_accessor :account_name

    # The private IP pool (Carrier Group Name) from which your device IP
    # addresses will be derived.
    # @return [String]
    attr_accessor :carrier_ip_pool_name

    # The carrier that will perform the activation.
    # @return [String]
    attr_accessor :carrier_name

    # A string to identify the cost center that the device is associated with.
    # @return [String]
    attr_accessor :cost_center_code

    # A user-defined descriptive field, limited to 50 characters.
    # @return [Array[CustomFields]]
    attr_accessor :custom_fields

    # If you specify devices by ID in the devices parameters, this is the name
    # of a device group that the devices should be added to.If you don't specify
    # individual devices with the devices parameter, you can provide the name of
    # a device group to activate all devices in that group.
    # @return [String]
    attr_accessor :group_name

    # The ID of a “Qualified” or “Closed - Won” VPP customer lead, which is used
    # with other values to determine MDN assignment, taxation, and compensation.
    # @return [String]
    attr_accessor :lead_id

    # The customer name and the address of the device's primary place of use.
    # Leave these fields empty to use the account profile address as the primary
    # place of use. These values will be applied to all devices in the
    # request.If the account is enabled for non-geographic MDNs and the device
    # supports it, the primaryPlaceOfUse address will also be used to derive the
    # MDN for the device.
    # @return [PlaceOfUse]
    attr_accessor :primary_place_of_use

    # For devices with static IP addresses on the public network, this specifies
    # whether the devices have general access to the Internet.
    # @return [String]
    attr_accessor :public_ip_restriction

    # The Stock Keeping Unit (SKU) of a 4G device type can be used with ICCID
    # device identifiers in lieu of an IMEI when activating 4G devices. The
    # SkuNumber will be used with all devices in the request, so all devices
    # must be of the same type.
    # @return [String]
    attr_accessor :sku_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['devices'] = 'devices'
      @_hash['service_plan'] = 'servicePlan'
      @_hash['mdn_zip_code'] = 'mdnZipCode'
      @_hash['account_name'] = 'accountName'
      @_hash['carrier_ip_pool_name'] = 'carrierIpPoolName'
      @_hash['carrier_name'] = 'carrierName'
      @_hash['cost_center_code'] = 'costCenterCode'
      @_hash['custom_fields'] = 'customFields'
      @_hash['group_name'] = 'groupName'
      @_hash['lead_id'] = 'leadId'
      @_hash['primary_place_of_use'] = 'primaryPlaceOfUse'
      @_hash['public_ip_restriction'] = 'publicIpRestriction'
      @_hash['sku_number'] = 'skuNumber'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        carrier_ip_pool_name
        carrier_name
        cost_center_code
        custom_fields
        group_name
        lead_id
        primary_place_of_use
        public_ip_restriction
        sku_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(devices = nil, service_plan = nil, mdn_zip_code = nil,
                   account_name = SKIP, carrier_ip_pool_name = SKIP,
                   carrier_name = SKIP, cost_center_code = SKIP,
                   custom_fields = SKIP, group_name = SKIP, lead_id = SKIP,
                   primary_place_of_use = SKIP, public_ip_restriction = SKIP,
                   sku_number = SKIP)
      @devices = devices
      @service_plan = service_plan
      @mdn_zip_code = mdn_zip_code
      @account_name = account_name unless account_name == SKIP
      @carrier_ip_pool_name = carrier_ip_pool_name unless carrier_ip_pool_name == SKIP
      @carrier_name = carrier_name unless carrier_name == SKIP
      @cost_center_code = cost_center_code unless cost_center_code == SKIP
      @custom_fields = custom_fields unless custom_fields == SKIP
      @group_name = group_name unless group_name == SKIP
      @lead_id = lead_id unless lead_id == SKIP
      @primary_place_of_use = primary_place_of_use unless primary_place_of_use == SKIP
      @public_ip_restriction = public_ip_restriction unless public_ip_restriction == SKIP
      @sku_number = sku_number unless sku_number == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      devices = nil
      unless hash['devices'].nil?
        devices = []
        hash['devices'].each do |structure|
          devices << (AccountDeviceList.from_hash(structure) if structure)
        end
      end

      devices = nil unless hash.key?('devices')
      service_plan = hash.key?('servicePlan') ? hash['servicePlan'] : nil
      mdn_zip_code = hash.key?('mdnZipCode') ? hash['mdnZipCode'] : nil
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      carrier_ip_pool_name =
        hash.key?('carrierIpPoolName') ? hash['carrierIpPoolName'] : SKIP
      carrier_name = hash.key?('carrierName') ? hash['carrierName'] : SKIP
      cost_center_code =
        hash.key?('costCenterCode') ? hash['costCenterCode'] : SKIP
      # Parameter is an array, so we need to iterate through it
      custom_fields = nil
      unless hash['customFields'].nil?
        custom_fields = []
        hash['customFields'].each do |structure|
          custom_fields << (CustomFields.from_hash(structure) if structure)
        end
      end

      custom_fields = SKIP unless hash.key?('customFields')
      group_name = hash.key?('groupName') ? hash['groupName'] : SKIP
      lead_id = hash.key?('leadId') ? hash['leadId'] : SKIP
      primary_place_of_use = PlaceOfUse.from_hash(hash['primaryPlaceOfUse']) if
        hash['primaryPlaceOfUse']
      public_ip_restriction =
        hash.key?('publicIpRestriction') ? hash['publicIpRestriction'] : SKIP
      sku_number = hash.key?('skuNumber') ? hash['skuNumber'] : SKIP

      # Create object from extracted values.
      CarrierActivateRequest.new(devices,
                                 service_plan,
                                 mdn_zip_code,
                                 account_name,
                                 carrier_ip_pool_name,
                                 carrier_name,
                                 cost_center_code,
                                 custom_fields,
                                 group_name,
                                 lead_id,
                                 primary_place_of_use,
                                 public_ip_restriction,
                                 sku_number)
    end
  end
end
