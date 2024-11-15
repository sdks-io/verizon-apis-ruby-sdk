# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Each service includes custom states.
  class State < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The name of the state.
    # @return [String]
    attr_accessor :name

    # The workflow sequence number of this state.
    # @return [Float]
    attr_accessor :workflow_sequence_number

    # The service plans that can be used to charge for services for devices in
    # this state.
    # @return [Array[String]]
    attr_accessor :service_plans

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['workflow_sequence_number'] = 'workflowSequenceNumber'
      @_hash['service_plans'] = 'servicePlans'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        workflow_sequence_number
        service_plans
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP, workflow_sequence_number = SKIP,
                   service_plans = SKIP)
      @name = name unless name == SKIP
      @workflow_sequence_number = workflow_sequence_number unless workflow_sequence_number == SKIP
      @service_plans = service_plans unless service_plans == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      workflow_sequence_number =
        hash.key?('workflowSequenceNumber') ? hash['workflowSequenceNumber'] : SKIP
      service_plans = hash.key?('servicePlans') ? hash['servicePlans'] : SKIP

      # Create object from extracted values.
      State.new(name,
                workflow_sequence_number,
                service_plans)
    end
  end
end
