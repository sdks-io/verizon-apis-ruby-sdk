# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # CloudCredential Model.
  class CloudCredential < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Name of the credentials.
    # @return [String]
    attr_accessor :name

    # Name of the credentials.
    # @return [ClusterProvisioning]
    attr_accessor :cluster_provisioning

    # Name of the credentials.
    # @return [DataBackup]
    attr_accessor :data_backup

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['cluster_provisioning'] = 'clusterProvisioning'
      @_hash['data_backup'] = 'dataBackup'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        cluster_provisioning
        data_backup
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP,
                   cluster_provisioning = SKIP,
                   data_backup = SKIP)
      @name = name unless name == SKIP
      @cluster_provisioning = cluster_provisioning unless cluster_provisioning == SKIP
      @data_backup = data_backup unless data_backup == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      cluster_provisioning = ClusterProvisioning.from_hash(hash['clusterProvisioning']) if
        hash['clusterProvisioning']
      data_backup = DataBackup.from_hash(hash['dataBackup']) if hash['dataBackup']

      # Create object from extracted values.
      CloudCredential.new(name,
                          cluster_provisioning,
                          data_backup)
    end
  end
end