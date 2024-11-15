# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # GPU resources of a service profile.
  class GPU < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Minimum Core Clock value in megahertz.
    # @return [Integer]
    attr_accessor :min_core_clock_m_hz

    # Minimum Memory Clock value in megahertz.
    # @return [Integer]
    attr_accessor :min_memory_clock_m_hz

    # Minimum GPU bandwidth in GB/s.
    # @return [Integer]
    attr_accessor :min_bandwidth_g_bs

    # Minimum Floating Point Operations Per Second in Teraflops.
    # @return [Integer]
    attr_accessor :min_tflops

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['min_core_clock_m_hz'] = 'minCoreClockMHz'
      @_hash['min_memory_clock_m_hz'] = 'minMemoryClockMHz'
      @_hash['min_bandwidth_g_bs'] = 'minBandwidthGBs'
      @_hash['min_tflops'] = 'minTFLOPS'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        min_core_clock_m_hz
        min_memory_clock_m_hz
        min_bandwidth_g_bs
        min_tflops
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(min_core_clock_m_hz = SKIP, min_memory_clock_m_hz = SKIP,
                   min_bandwidth_g_bs = SKIP, min_tflops = SKIP)
      @min_core_clock_m_hz = min_core_clock_m_hz unless min_core_clock_m_hz == SKIP
      @min_memory_clock_m_hz = min_memory_clock_m_hz unless min_memory_clock_m_hz == SKIP
      @min_bandwidth_g_bs = min_bandwidth_g_bs unless min_bandwidth_g_bs == SKIP
      @min_tflops = min_tflops unless min_tflops == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      min_core_clock_m_hz =
        hash.key?('minCoreClockMHz') ? hash['minCoreClockMHz'] : SKIP
      min_memory_clock_m_hz =
        hash.key?('minMemoryClockMHz') ? hash['minMemoryClockMHz'] : SKIP
      min_bandwidth_g_bs =
        hash.key?('minBandwidthGBs') ? hash['minBandwidthGBs'] : SKIP
      min_tflops = hash.key?('minTFLOPS') ? hash['minTFLOPS'] : SKIP

      # Create object from extracted values.
      GPU.new(min_core_clock_m_hz,
              min_memory_clock_m_hz,
              min_bandwidth_g_bs,
              min_tflops)
    end
  end
end