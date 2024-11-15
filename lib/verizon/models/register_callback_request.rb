# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Request to register a callback.
  class RegisterCallbackRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The name of the callback service that you want to subscribe to.
    # @return [String]
    attr_accessor :name

    # The address on your server where you have enabled a listening service for
    # callback messages.
    # @return [String]
    attr_accessor :url

    # The user name that the M2M Platform should return in the callback
    # messages.
    # @return [String]
    attr_accessor :username

    # The password that the M2M Platform should return in the callback messages.
    # @return [String]
    attr_accessor :password

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['url'] = 'url'
      @_hash['username'] = 'username'
      @_hash['password'] = 'password'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        username
        password
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil, url = nil, username = SKIP, password = SKIP)
      @name = name
      @url = url
      @username = username unless username == SKIP
      @password = password unless password == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      url = hash.key?('url') ? hash['url'] : nil
      username = hash.key?('username') ? hash['username'] : SKIP
      password = hash.key?('password') ? hash['password'] : SKIP

      # Create object from extracted values.
      RegisterCallbackRequest.new(name,
                                  url,
                                  username,
                                  password)
    end
  end
end