# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # Users would provide CSP compatibility during service creation, which are
  # nothing but declaring service compatibility with different cloud service
  # providers like AWS or Azure. This API would help users to fetch all service
  # claims using which user can initiate sandbox testing of the service.
  class Claim < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Auto-generated Id.
    # @return [String]
    attr_accessor :id

    # Name of the claim.
    # @return [String]
    attr_accessor :name

    # Current status of the claim can have only two values eg:
    # VERIFIED/UNVERIFIED.
    # @return [ClaimStatusEnum]
    attr_accessor :claim_status

    # State of sandbox can have value like - STARTED, NOT_STARTED, STOPPED,
    # PAUSED, COMPLETED, DELETED, STOP_IN_PROGRESS, PAUSE_IN_PROGRESS,
    # TEST_IN_PROGRESS, MARK_FOR_DELETEION.
    # @return [SandBoxStateEnum]
    attr_accessor :sand_box_state

    # Status of sandbox can have value like - NA, INPROGRESS, SUCCESS, FAILED.
    # @return [SandBoxStatusEnum]
    attr_accessor :sand_box_status

    # Claim environment in which it is deployed eg: AWS Public Cloud.
    # @return [String]
    attr_accessor :environment

    # Claim type can have values like - PUBLIC_MEC, PRIVATE_MEC.
    # @return [ClaimTypeEnum]
    attr_accessor :claim_type

    # Start time when the claim got introduced.
    # @return [DateTime]
    attr_accessor :start_time_stamp

    # Auto-generated Id of the service instance.
    # @return [String]
    attr_accessor :service_instance_id

    # CSP Profile ID in which service will be deployed.
    # @return [String]
    attr_accessor :csp_profile_id

    # Auto-generated Id of the service which is to be deployed.
    # @return [String]
    attr_accessor :service_id

    # End time when the claim got introduced.
    # @return [DateTime]
    attr_accessor :end_time_stamp

    # Auto-derived time of creation. Part of response only.
    # @return [DateTime]
    attr_accessor :created_date

    # Last modified time. Part of response only.
    # @return [DateTime]
    attr_accessor :last_modified_date

    # User who created the dropDown. Part of response only.
    # @return [String]
    attr_accessor :created_by

    # User who last modified the dropDown. Part of response only.
    # @return [String]
    attr_accessor :last_modified_by

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['claim_status'] = 'claimStatus'
      @_hash['sand_box_state'] = 'sandBoxState'
      @_hash['sand_box_status'] = 'sandBoxStatus'
      @_hash['environment'] = 'environment'
      @_hash['claim_type'] = 'claimType'
      @_hash['start_time_stamp'] = 'startTimeStamp'
      @_hash['service_instance_id'] = 'serviceInstanceId'
      @_hash['csp_profile_id'] = 'cspProfileId'
      @_hash['service_id'] = 'serviceId'
      @_hash['end_time_stamp'] = 'endTimeStamp'
      @_hash['created_date'] = 'createdDate'
      @_hash['last_modified_date'] = 'lastModifiedDate'
      @_hash['created_by'] = 'createdBy'
      @_hash['last_modified_by'] = 'lastModifiedBy'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        claim_status
        sand_box_state
        sand_box_status
        environment
        claim_type
        start_time_stamp
        service_instance_id
        csp_profile_id
        service_id
        end_time_stamp
        created_date
        last_modified_date
        created_by
        last_modified_by
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP,
                   name = SKIP,
                   claim_status = SKIP,
                   sand_box_state = SKIP,
                   sand_box_status = SKIP,
                   environment = SKIP,
                   claim_type = SKIP,
                   start_time_stamp = SKIP,
                   service_instance_id = SKIP,
                   csp_profile_id = SKIP,
                   service_id = SKIP,
                   end_time_stamp = SKIP,
                   created_date = SKIP,
                   last_modified_date = SKIP,
                   created_by = SKIP,
                   last_modified_by = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @claim_status = claim_status unless claim_status == SKIP
      @sand_box_state = sand_box_state unless sand_box_state == SKIP
      @sand_box_status = sand_box_status unless sand_box_status == SKIP
      @environment = environment unless environment == SKIP
      @claim_type = claim_type unless claim_type == SKIP
      @start_time_stamp = start_time_stamp unless start_time_stamp == SKIP
      @service_instance_id = service_instance_id unless service_instance_id == SKIP
      @csp_profile_id = csp_profile_id unless csp_profile_id == SKIP
      @service_id = service_id unless service_id == SKIP
      @end_time_stamp = end_time_stamp unless end_time_stamp == SKIP
      @created_date = created_date unless created_date == SKIP
      @last_modified_date = last_modified_date unless last_modified_date == SKIP
      @created_by = created_by unless created_by == SKIP
      @last_modified_by = last_modified_by unless last_modified_by == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      claim_status = hash.key?('claimStatus') ? hash['claimStatus'] : SKIP
      sand_box_state = hash.key?('sandBoxState') ? hash['sandBoxState'] : SKIP
      sand_box_status =
        hash.key?('sandBoxStatus') ? hash['sandBoxStatus'] : SKIP
      environment = hash.key?('environment') ? hash['environment'] : SKIP
      claim_type = hash.key?('claimType') ? hash['claimType'] : SKIP
      start_time_stamp = if hash.key?('startTimeStamp')
                           (DateTimeHelper.from_rfc3339(hash['startTimeStamp']) if hash['startTimeStamp'])
                         else
                           SKIP
                         end
      service_instance_id =
        hash.key?('serviceInstanceId') ? hash['serviceInstanceId'] : SKIP
      csp_profile_id = hash.key?('cspProfileId') ? hash['cspProfileId'] : SKIP
      service_id = hash.key?('serviceId') ? hash['serviceId'] : SKIP
      end_time_stamp = if hash.key?('endTimeStamp')
                         (DateTimeHelper.from_rfc3339(hash['endTimeStamp']) if hash['endTimeStamp'])
                       else
                         SKIP
                       end
      created_date = if hash.key?('createdDate')
                       (DateTimeHelper.from_rfc3339(hash['createdDate']) if hash['createdDate'])
                     else
                       SKIP
                     end
      last_modified_date = if hash.key?('lastModifiedDate')
                             (DateTimeHelper.from_rfc3339(hash['lastModifiedDate']) if hash['lastModifiedDate'])
                           else
                             SKIP
                           end
      created_by = hash.key?('createdBy') ? hash['createdBy'] : SKIP
      last_modified_by =
        hash.key?('lastModifiedBy') ? hash['lastModifiedBy'] : SKIP

      # Create object from extracted values.
      Claim.new(id,
                name,
                claim_status,
                sand_box_state,
                sand_box_status,
                environment,
                claim_type,
                start_time_stamp,
                service_instance_id,
                csp_profile_id,
                service_id,
                end_time_stamp,
                created_date,
                last_modified_date,
                created_by,
                last_modified_by)
    end

    def to_start_time_stamp
      DateTimeHelper.to_rfc3339(start_time_stamp)
    end

    def to_end_time_stamp
      DateTimeHelper.to_rfc3339(end_time_stamp)
    end

    def to_created_date
      DateTimeHelper.to_rfc3339(created_date)
    end

    def to_last_modified_date
      DateTimeHelper.to_rfc3339(last_modified_date)
    end
  end
end