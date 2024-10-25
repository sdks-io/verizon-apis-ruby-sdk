# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DailyUsageHistory Model.
  class DailyUsageHistory < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # the total data usage recorded in Bytes
    # @return [String]
    attr_accessor :bytes_used

    # the total data usage recorded in Bytes
    # @return [Array[ExtendedAttribute]]
    attr_accessor :extended_attributes

    # the total data usage recorded in Bytes
    # @return [String]
    attr_accessor :service_plan

    # The total number of SMS messages from and to the device
    # @return [String]
    attr_accessor :sms_used

    # Where the collected data is being gathered from
    # @return [String]
    attr_accessor :source

    # Timestamp of when the retrieved record was completed ($datetime)
    # @return [String]
    attr_accessor :timestamp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bytes_used'] = 'bytesUsed'
      @_hash['extended_attributes'] = 'extendedAttributes'
      @_hash['service_plan'] = 'servicePlan'
      @_hash['sms_used'] = 'smsUsed'
      @_hash['source'] = 'source'
      @_hash['timestamp'] = 'timestamp'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        bytes_used
        extended_attributes
        service_plan
        sms_used
        source
        timestamp
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(bytes_used = SKIP, extended_attributes = SKIP,
                   service_plan = SKIP, sms_used = SKIP, source = SKIP,
                   timestamp = SKIP)
      @bytes_used = bytes_used unless bytes_used == SKIP
      @extended_attributes = extended_attributes unless extended_attributes == SKIP
      @service_plan = service_plan unless service_plan == SKIP
      @sms_used = sms_used unless sms_used == SKIP
      @source = source unless source == SKIP
      @timestamp = timestamp unless timestamp == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bytes_used = hash.key?('bytesUsed') ? hash['bytesUsed'] : SKIP
      # Parameter is an array, so we need to iterate through it
      extended_attributes = nil
      unless hash['extendedAttributes'].nil?
        extended_attributes = []
        hash['extendedAttributes'].each do |structure|
          extended_attributes << (ExtendedAttribute.from_hash(structure) if structure)
        end
      end

      extended_attributes = SKIP unless hash.key?('extendedAttributes')
      service_plan = hash.key?('servicePlan') ? hash['servicePlan'] : SKIP
      sms_used = hash.key?('smsUsed') ? hash['smsUsed'] : SKIP
      source = hash.key?('source') ? hash['source'] : SKIP
      timestamp = hash.key?('timestamp') ? hash['timestamp'] : SKIP

      # Create object from extracted values.
      DailyUsageHistory.new(bytes_used,
                            extended_attributes,
                            service_plan,
                            sms_used,
                            source,
                            timestamp)
    end
  end
end
