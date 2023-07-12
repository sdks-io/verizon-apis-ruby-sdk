# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # NodeStatusAllocatable Model.
  class NodeStatusAllocatable < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :cpu_count

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :ephemeral_storage_kb

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :memory_kb

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cpu_count'] = 'cpuCount'
      @_hash['ephemeral_storage_kb'] = 'ephemeralStorageKB'
      @_hash['memory_kb'] = 'memoryKB'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        cpu_count
        ephemeral_storage_kb
        memory_kb
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(cpu_count = SKIP,
                   ephemeral_storage_kb = SKIP,
                   memory_kb = SKIP)
      @cpu_count = cpu_count unless cpu_count == SKIP
      @ephemeral_storage_kb = ephemeral_storage_kb unless ephemeral_storage_kb == SKIP
      @memory_kb = memory_kb unless memory_kb == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      cpu_count = hash.key?('cpuCount') ? hash['cpuCount'] : SKIP
      ephemeral_storage_kb =
        hash.key?('ephemeralStorageKB') ? hash['ephemeralStorageKB'] : SKIP
      memory_kb = hash.key?('memoryKB') ? hash['memoryKB'] : SKIP

      # Create object from extracted values.
      NodeStatusAllocatable.new(cpu_count,
                                ephemeral_storage_kb,
                                memory_kb)
    end
  end
end
