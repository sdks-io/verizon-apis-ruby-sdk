# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Response to get all claims.
  class ServiceClaims < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Count for all the claims returned after hitting the API.
    # @return [Integer]
    attr_accessor :count

    # List of all claims.
    # @return [Array[Claim]]
    attr_accessor :claims_res_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['count'] = 'count'
      @_hash['claims_res_list'] = 'claimsResList'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        count
        claims_res_list
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(count = SKIP,
                   claims_res_list = SKIP)
      @count = count unless count == SKIP
      @claims_res_list = claims_res_list unless claims_res_list == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      count = hash.key?('count') ? hash['count'] : SKIP
      # Parameter is an array, so we need to iterate through it
      claims_res_list = nil
      unless hash['claimsResList'].nil?
        claims_res_list = []
        hash['claimsResList'].each do |structure|
          claims_res_list << (Claim.from_hash(structure) if structure)
        end
      end

      claims_res_list = SKIP unless hash.key?('claimsResList')

      # Create object from extracted values.
      ServiceClaims.new(count,
                        claims_res_list)
    end
  end
end