# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ClusterVersionInfo Model.
  class ClusterVersionInfo < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :cluster_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kube_version

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :organization_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :partner_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :modified_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :behind_latest_by

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cluster_id'] = 'cluster_id'
      @_hash['kube_version'] = 'kube_version'
      @_hash['organization_id'] = 'organization_id'
      @_hash['partner_id'] = 'partner_id'
      @_hash['created_at'] = 'created_at'
      @_hash['modified_at'] = 'modified_at'
      @_hash['id'] = 'id'
      @_hash['behind_latest_by'] = 'behind_latest_by'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        cluster_id
        kube_version
        organization_id
        partner_id
        created_at
        modified_at
        id
        behind_latest_by
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(cluster_id = SKIP,
                   kube_version = SKIP,
                   organization_id = SKIP,
                   partner_id = SKIP,
                   created_at = SKIP,
                   modified_at = SKIP,
                   id = SKIP,
                   behind_latest_by = SKIP)
      @cluster_id = cluster_id unless cluster_id == SKIP
      @kube_version = kube_version unless kube_version == SKIP
      @organization_id = organization_id unless organization_id == SKIP
      @partner_id = partner_id unless partner_id == SKIP
      @created_at = created_at unless created_at == SKIP
      @modified_at = modified_at unless modified_at == SKIP
      @id = id unless id == SKIP
      @behind_latest_by = behind_latest_by unless behind_latest_by == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      cluster_id = hash.key?('cluster_id') ? hash['cluster_id'] : SKIP
      kube_version = hash.key?('kube_version') ? hash['kube_version'] : SKIP
      organization_id =
        hash.key?('organization_id') ? hash['organization_id'] : SKIP
      partner_id = hash.key?('partner_id') ? hash['partner_id'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      modified_at = hash.key?('modified_at') ? hash['modified_at'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP
      behind_latest_by =
        hash.key?('behind_latest_by') ? hash['behind_latest_by'] : SKIP

      # Create object from extracted values.
      ClusterVersionInfo.new(cluster_id,
                             kube_version,
                             organization_id,
                             partner_id,
                             created_at,
                             modified_at,
                             id,
                             behind_latest_by)
    end
  end
end
