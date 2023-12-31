# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # The type of the device identifier. Valid types of identifiers are:ESN
  # (decimal),EID,ICCID (up to 20 digits),IMEI (up to 16 digits),MDN,MEID
  # (hexadecimal),MSISDN.
  class KindEnum
    KIND_ENUM = [
      # TODO: Write general description for IMEI
      IMEI = 'imei'.freeze,

      # TODO: Write general description for EID
      EID = 'eid'.freeze,

      # TODO: Write general description for ESN
      ESN = 'esn'.freeze,

      # TODO: Write general description for ICCID
      ICCID = 'iccid'.freeze
    ].freeze
  end
end
