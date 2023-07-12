# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # Workflow attribute of a service.
  class Workflow < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The service version workflow name.
    # @return [String]
    attr_accessor :name

    # The service version workflow value.
    # @return [String]
    attr_accessor :version

    # Auto-generated UUID for each workdflow triggered.
    # @return [String]
    attr_accessor :id

    # Service type e.g. Installation, Operations, Custom.
    # @return [WorkflowTypeEnum]
    attr_accessor :type

    # `installationWf` attribute of a service.
    # @return [InstallationWf]
    attr_accessor :installation_wf

    # `operationsWf` attribute of a service.
    # @return [OperationsWf]
    attr_accessor :operations_wf

    # `customWf` attribute of a service.
    # @return [CustomWf]
    attr_accessor :custom_wf

    # Files which are being generated.
    # @return [Array[String]]
    attr_accessor :files

    # Status of the workflow.
    # @return [String]
    attr_accessor :status

    # The date on which the workflow is created.
    # @return [DateTime]
    attr_accessor :created_date

    # The date when the created workflow was last modified.
    # @return [DateTime]
    attr_accessor :last_modified_date

    # Identity of the user who created the workflow.
    # @return [String]
    attr_accessor :created_by

    # Identity of the user who updated the workflow.
    # @return [String]
    attr_accessor :updated_by

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['version'] = 'version'
      @_hash['id'] = 'id'
      @_hash['type'] = 'type'
      @_hash['installation_wf'] = 'installationWf'
      @_hash['operations_wf'] = 'operationsWf'
      @_hash['custom_wf'] = 'customWf'
      @_hash['files'] = 'files'
      @_hash['status'] = 'status'
      @_hash['created_date'] = 'createdDate'
      @_hash['last_modified_date'] = 'lastModifiedDate'
      @_hash['created_by'] = 'createdBy'
      @_hash['updated_by'] = 'updatedBy'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        type
        installation_wf
        operations_wf
        custom_wf
        files
        status
        created_date
        last_modified_date
        created_by
        updated_by
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil,
                   version = nil,
                   id = SKIP,
                   type = SKIP,
                   installation_wf = SKIP,
                   operations_wf = SKIP,
                   custom_wf = SKIP,
                   files = SKIP,
                   status = SKIP,
                   created_date = SKIP,
                   last_modified_date = SKIP,
                   created_by = SKIP,
                   updated_by = SKIP)
      @name = name
      @version = version
      @id = id unless id == SKIP
      @type = type unless type == SKIP
      @installation_wf = installation_wf unless installation_wf == SKIP
      @operations_wf = operations_wf unless operations_wf == SKIP
      @custom_wf = custom_wf unless custom_wf == SKIP
      @files = files unless files == SKIP
      @status = status unless status == SKIP
      @created_date = created_date unless created_date == SKIP
      @last_modified_date = last_modified_date unless last_modified_date == SKIP
      @created_by = created_by unless created_by == SKIP
      @updated_by = updated_by unless updated_by == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      version = hash.key?('version') ? hash['version'] : nil
      id = hash.key?('id') ? hash['id'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      installation_wf = InstallationWf.from_hash(hash['installationWf']) if hash['installationWf']
      operations_wf = OperationsWf.from_hash(hash['operationsWf']) if hash['operationsWf']
      custom_wf = CustomWf.from_hash(hash['customWf']) if hash['customWf']
      files = hash.key?('files') ? hash['files'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
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
      updated_by = hash.key?('updatedBy') ? hash['updatedBy'] : SKIP

      # Create object from extracted values.
      Workflow.new(name,
                   version,
                   id,
                   type,
                   installation_wf,
                   operations_wf,
                   custom_wf,
                   files,
                   status,
                   created_date,
                   last_modified_date,
                   created_by,
                   updated_by)
    end

    def to_created_date
      DateTimeHelper.to_rfc3339(created_date)
    end

    def to_last_modified_date
      DateTimeHelper.to_rfc3339(last_modified_date)
    end
  end
end