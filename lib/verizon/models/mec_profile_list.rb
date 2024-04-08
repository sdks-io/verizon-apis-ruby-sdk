# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # MECProfileList Model.
  class MECProfileList < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[MECProfile]]
    attr_accessor :profiles

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['profiles'] = 'profiles'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        profiles
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(profiles = SKIP)
      @profiles = profiles unless profiles == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      profiles = nil
      unless hash['profiles'].nil?
        profiles = []
        hash['profiles'].each do |structure|
          profiles << (MECProfile.from_hash(structure) if structure)
        end
      end

      profiles = SKIP unless hash.key?('profiles')

      # Create object from extracted values.
      MECProfileList.new(profiles)
    end
  end
end
