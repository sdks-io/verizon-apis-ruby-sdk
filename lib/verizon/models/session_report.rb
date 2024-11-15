# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Session report for a device.
  class SessionReport < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # An object containing the start and end time of the session with the amount
    # of data transferred.
    # @return [Array[DailyUsageItem]]
    attr_accessor :sessions

    # The 10-digit ID of the device.
    # @return [String]
    attr_accessor :id

    # A unique string that associates the request with the location report
    # information that is sent in asynchronous callback message.ThingSpace will
    # send a separate callback message for each device that was in the request.
    # All of the callback messages will have the same txid.
    # @return [String]
    attr_accessor :txid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['sessions'] = 'sessions'
      @_hash['id'] = 'id'
      @_hash['txid'] = 'txid'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        sessions
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        txid
      ]
    end

    def initialize(id = nil, txid = nil, sessions = SKIP)
      @sessions = sessions unless sessions == SKIP
      @id = id
      @txid = txid
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      txid = hash.key?('txid') ? hash['txid'] : nil
      # Parameter is an array, so we need to iterate through it
      sessions = nil
      unless hash['sessions'].nil?
        sessions = []
        hash['sessions'].each do |structure|
          sessions << (DailyUsageItem.from_hash(structure) if structure)
        end
      end

      sessions = SKIP unless hash.key?('sessions')

      # Create object from extracted values.
      SessionReport.new(id,
                        txid,
                        sessions)
    end
  end
end