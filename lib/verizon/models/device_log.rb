# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Verizon
  # Device logging information.
  class DeviceLog < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Device IMEI.
    # @return [String]
    attr_accessor :device_id

    # Time of log.
    # @return [DateTime]
    attr_accessor :log_time

    # Log type (one of SoftwareUpdate, Event, UserNotification, AgentService,
    # Wireless, WirelessWeb, MobileBroadbandModem, WindowsMDM).
    # @return [String]
    attr_accessor :log_type

    # Event log.
    # @return [String]
    attr_accessor :event_log

    # Base64-encoded contents of binary log file.
    # @return [String]
    attr_accessor :binary_log_file_base64

    # File name of binary log file.
    # @return [String]
    attr_accessor :binary_log_filename

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_id'] = 'deviceId'
      @_hash['log_time'] = 'logTime'
      @_hash['log_type'] = 'logType'
      @_hash['event_log'] = 'eventLog'
      @_hash['binary_log_file_base64'] = 'binaryLogFileBase64'
      @_hash['binary_log_filename'] = 'binaryLogFilename'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(device_id = nil, log_time = nil, log_type = nil,
                   event_log = nil, binary_log_file_base64 = nil,
                   binary_log_filename = nil)
      @device_id = device_id
      @log_time = log_time
      @log_type = log_type
      @event_log = event_log
      @binary_log_file_base64 = binary_log_file_base64
      @binary_log_filename = binary_log_filename
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_id = hash.key?('deviceId') ? hash['deviceId'] : nil
      log_time = if hash.key?('logTime')
                   (DateTimeHelper.from_rfc3339(hash['logTime']) if hash['logTime'])
                 end
      log_type = hash.key?('logType') ? hash['logType'] : nil
      event_log = hash.key?('eventLog') ? hash['eventLog'] : nil
      binary_log_file_base64 =
        hash.key?('binaryLogFileBase64') ? hash['binaryLogFileBase64'] : nil
      binary_log_filename =
        hash.key?('binaryLogFilename') ? hash['binaryLogFilename'] : nil

      # Create object from extracted values.
      DeviceLog.new(device_id,
                    log_time,
                    log_type,
                    event_log,
                    binary_log_file_base64,
                    binary_log_filename)
    end

    def to_custom_log_time
      DateTimeHelper.to_rfc3339(log_time)
    end
  end
end
