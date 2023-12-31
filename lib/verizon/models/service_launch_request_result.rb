# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # ServiceLaunchRequestResult Model.
  class ServiceLaunchRequestResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique service profile ID.
    # @return [UUID | String]
    attr_accessor :id

    # Service request name.
    # @return [String]
    attr_accessor :name

    # Service being deployed.
    # @return [String]
    attr_accessor :service_name

    # Service being deployed.
    # @return [ServiceLaunchStateEnum]
    attr_accessor :state

    # Service version being deployed.
    # @return [String]
    attr_accessor :service_version

    # Service version being deployed.
    # @return [String]
    attr_accessor :service_id

    # The service profile ID that is created during the post-service API.
    # @return [String]
    attr_accessor :service_profile_id

    # The service profile ID that is created during the post-service API.
    # @return [String]
    attr_accessor :csp_profile_id

    # The service profile ID that is created during the post-service API.
    # @return [Array[ConfigFileItem]]
    attr_accessor :config_files

    # The service profile ID that is created during the post-service API.
    # @return [Array[LinkedServiceInstance]]
    attr_accessor :linked_service_instances

    # The service profile ID that is created during the post-service API.
    # @return [DateTime]
    attr_accessor :created_at

    # The service profile ID that is created during the post-service API.
    # @return [DateTime]
    attr_accessor :updated_at

    # The service profile ID that is created during the post-service API.
    # @return [String]
    attr_accessor :updated_by

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['service_name'] = 'serviceName'
      @_hash['state'] = 'state'
      @_hash['service_version'] = 'serviceVersion'
      @_hash['service_id'] = 'serviceId'
      @_hash['service_profile_id'] = 'serviceProfileId'
      @_hash['csp_profile_id'] = 'cspProfileId'
      @_hash['config_files'] = 'configFiles'
      @_hash['linked_service_instances'] = 'linkedServiceInstances'
      @_hash['created_at'] = 'createdAt'
      @_hash['updated_at'] = 'updatedAt'
      @_hash['updated_by'] = 'updatedBy'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        service_name
        state
        service_version
        service_id
        service_profile_id
        csp_profile_id
        config_files
        linked_service_instances
        created_at
        updated_at
        updated_by
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        linked_service_instances
      ]
    end

    def initialize(id = SKIP,
                   name = SKIP,
                   service_name = SKIP,
                   state = SKIP,
                   service_version = SKIP,
                   service_id = SKIP,
                   service_profile_id = SKIP,
                   csp_profile_id = SKIP,
                   config_files = SKIP,
                   linked_service_instances = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   updated_by = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @service_name = service_name unless service_name == SKIP
      @state = state unless state == SKIP
      @service_version = service_version unless service_version == SKIP
      @service_id = service_id unless service_id == SKIP
      @service_profile_id = service_profile_id unless service_profile_id == SKIP
      @csp_profile_id = csp_profile_id unless csp_profile_id == SKIP
      @config_files = config_files unless config_files == SKIP
      @linked_service_instances = linked_service_instances unless linked_service_instances == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @updated_by = updated_by unless updated_by == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      service_name = hash.key?('serviceName') ? hash['serviceName'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      service_version =
        hash.key?('serviceVersion') ? hash['serviceVersion'] : SKIP
      service_id = hash.key?('serviceId') ? hash['serviceId'] : SKIP
      service_profile_id =
        hash.key?('serviceProfileId') ? hash['serviceProfileId'] : SKIP
      csp_profile_id = hash.key?('cspProfileId') ? hash['cspProfileId'] : SKIP
      # Parameter is an array, so we need to iterate through it
      config_files = nil
      unless hash['configFiles'].nil?
        config_files = []
        hash['configFiles'].each do |structure|
          config_files << (ConfigFileItem.from_hash(structure) if structure)
        end
      end

      config_files = SKIP unless hash.key?('configFiles')
      # Parameter is an array, so we need to iterate through it
      linked_service_instances = nil
      unless hash['linkedServiceInstances'].nil?
        linked_service_instances = []
        hash['linkedServiceInstances'].each do |structure|
          linked_service_instances << (LinkedServiceInstance.from_hash(structure) if structure)
        end
      end

      linked_service_instances = SKIP unless hash.key?('linkedServiceInstances')
      created_at = if hash.key?('createdAt')
                     (DateTimeHelper.from_rfc3339(hash['createdAt']) if hash['createdAt'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updatedAt')
                     (DateTimeHelper.from_rfc3339(hash['updatedAt']) if hash['updatedAt'])
                   else
                     SKIP
                   end
      updated_by = hash.key?('updatedBy') ? hash['updatedBy'] : SKIP

      # Create object from extracted values.
      ServiceLaunchRequestResult.new(id,
                                     name,
                                     service_name,
                                     state,
                                     service_version,
                                     service_id,
                                     service_profile_id,
                                     csp_profile_id,
                                     config_files,
                                     linked_service_instances,
                                     created_at,
                                     updated_at,
                                     updated_by)
    end

    def to_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end
  end
end
