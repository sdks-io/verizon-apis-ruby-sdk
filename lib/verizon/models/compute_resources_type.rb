# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Compute resources of a service profile.
  class ComputeResourcesType < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # GPU resources of a service profile.
    # @return [GPU]
    attr_accessor :gpu

    # Minimum RAM required in Gigabytes.
    # @return [Integer]
    attr_accessor :min_ramgb

    # Minimum storage requirement in Gigabytes.
    # @return [Integer]
    attr_accessor :min_storage_gb

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['gpu'] = 'GPU'
      @_hash['min_ramgb'] = 'minRAMGB'
      @_hash['min_storage_gb'] = 'minStorageGB'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        gpu
        min_ramgb
        min_storage_gb
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(gpu = SKIP, min_ramgb = SKIP, min_storage_gb = SKIP)
      @gpu = gpu unless gpu == SKIP
      @min_ramgb = min_ramgb unless min_ramgb == SKIP
      @min_storage_gb = min_storage_gb unless min_storage_gb == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      gpu = GPU.from_hash(hash['GPU']) if hash['GPU']
      min_ramgb = hash.key?('minRAMGB') ? hash['minRAMGB'] : SKIP
      min_storage_gb = hash.key?('minStorageGB') ? hash['minStorageGB'] : SKIP

      # Create object from extracted values.
      ComputeResourcesType.new(gpu,
                               min_ramgb,
                               min_storage_gb)
    end
  end
end
