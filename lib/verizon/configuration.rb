# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # An enum for SDK environments.
  class Environment
    ENVIRONMENT = [
      PRODUCTION = 'Production'.freeze
    ].freeze
  end

  # An enum for API servers.
  class Server
    SERVER = [
      EDGE_DISCOVERY = 'Edge Discovery'.freeze,
      THINGSPACE = 'Thingspace'.freeze,
      OAUTH_SERVER = 'OAuth Server'.freeze,
      M2M = 'M2M'.freeze,
      DEVICE_LOCATION = 'Device Location'.freeze,
      SUBSCRIPTION_SERVER = 'Subscription Server'.freeze,
      SOFTWARE_MANAGEMENT_V1 = 'Software Management V1'.freeze,
      SOFTWARE_MANAGEMENT_V2 = 'Software Management V2'.freeze,
      SOFTWARE_MANAGEMENT_V3 = 'Software Management V3'.freeze,
      PERFORMANCE = 'Performance'.freeze,
      DEVICE_DIAGNOSTICS = 'Device Diagnostics'.freeze,
      CLOUD_CONNECTOR = 'Cloud Connector'.freeze,
      HYPER_PRECISE_LOCATION = 'Hyper Precise Location'.freeze,
      SERVICES = 'Services'.freeze,
      QUALITY_OF_SERVICE = 'Quality Of Service'.freeze
    ].freeze
  end

  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration < CoreLibrary::HttpClientConfiguration
    def oauth_client_id
      @client_credentials_auth_credentials.oauth_client_id
    end

    def oauth_client_secret
      @client_credentials_auth_credentials.oauth_client_secret
    end

    def oauth_token
      @client_credentials_auth_credentials.oauth_token
    end

    def oauth_scopes
      @client_credentials_auth_credentials.oauth_scopes
    end

    # The attribute readers for properties.
    attr_reader :environment, :client_credentials_auth_credentials, :vz_m2m_token

    class << self
      attr_reader :environments
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 60,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil,
      environment: Environment::PRODUCTION, oauth_client_id: nil,
      oauth_client_secret: nil, oauth_token: nil, oauth_scopes: nil,
      client_credentials_auth_credentials: nil, vz_m2m_token: 'TODO: Replace'
    )

      super connection: connection, adapter: adapter, timeout: timeout,
            max_retries: max_retries, retry_interval: retry_interval,
            backoff_factor: backoff_factor, retry_statuses: retry_statuses,
            retry_methods: retry_methods, http_callback: http_callback

      # Current API environment
      @environment = String(environment)

      # OAuth 2 Client ID
      @oauth_client_id = oauth_client_id

      # OAuth 2 Client Secret
      @oauth_client_secret = oauth_client_secret

      # Object for storing information about the OAuth token
      @oauth_token = if oauth_token.is_a? OauthToken
                       OauthToken.from_hash oauth_token.to_hash
                     else
                       oauth_token
                     end

      # List of scopes that apply to the OAuth token
      @oauth_scopes = oauth_scopes

      # M2M Session Token ([How to generate an M2M session token?](page:getting-started/5g-edge-developer-creds-token#obtaining-a-vz-m2m-session-token-programmatically))
      @vz_m2m_token = vz_m2m_token

      # Initializing OAuth 2 Client Credentials Grant credentials with the provided auth parameters
      @client_credentials_auth_credentials = create_auth_credentials_object(
        oauth_client_id, oauth_client_secret, oauth_token, oauth_scopes,
        client_credentials_auth_credentials
      )

      # The Http Client to use for making requests.
      set_http_client CoreLibrary::FaradayClient.new(self)
    end

    def clone_with(connection: nil, adapter: nil, timeout: nil,
                   max_retries: nil, retry_interval: nil, backoff_factor: nil,
                   retry_statuses: nil, retry_methods: nil, http_callback: nil,
                   environment: nil, oauth_client_id: nil,
                   oauth_client_secret: nil, oauth_token: nil,
                   oauth_scopes: nil, client_credentials_auth_credentials: nil,
                   vz_m2m_token: nil)
      connection ||= self.connection
      adapter ||= self.adapter
      timeout ||= self.timeout
      max_retries ||= self.max_retries
      retry_interval ||= self.retry_interval
      backoff_factor ||= self.backoff_factor
      retry_statuses ||= self.retry_statuses
      retry_methods ||= self.retry_methods
      http_callback ||= self.http_callback
      environment ||= self.environment
      vz_m2m_token ||= self.vz_m2m_token
      client_credentials_auth_credentials = create_auth_credentials_object(
        oauth_client_id, oauth_client_secret, oauth_token, oauth_scopes,
        client_credentials_auth_credentials || self.client_credentials_auth_credentials
      )

      Configuration.new(
        connection: connection, adapter: adapter, timeout: timeout,
        max_retries: max_retries, retry_interval: retry_interval,
        backoff_factor: backoff_factor, retry_statuses: retry_statuses,
        retry_methods: retry_methods, http_callback: http_callback,
        environment: environment, vz_m2m_token: vz_m2m_token,
        client_credentials_auth_credentials: client_credentials_auth_credentials
      )
    end

    def create_auth_credentials_object(oauth_client_id, oauth_client_secret,
                                       oauth_token, oauth_scopes,
                                       client_credentials_auth_credentials)
      return client_credentials_auth_credentials if oauth_client_id.nil? &&
                                                    oauth_client_secret.nil? &&
                                                    oauth_token.nil? &&
                                                    oauth_scopes.nil?

      warn('The \'oauth_client_id\', \'oauth_client_secret\', \'oauth_token\','\
           ' \'oauth_scopes\' params are deprecated. Use \'client_credentials_'\
           'auth_credentials\' param instead.')

      unless client_credentials_auth_credentials.nil?
        return client_credentials_auth_credentials.clone_with(
          oauth_client_id: oauth_client_id,
          oauth_client_secret: oauth_client_secret,
          oauth_token: oauth_token,
          oauth_scopes: oauth_scopes
        )
      end

      ClientCredentialsAuthCredentials.new(
        oauth_client_id: oauth_client_id,
        oauth_client_secret: oauth_client_secret, oauth_token: oauth_token,
        oauth_scopes: oauth_scopes
      )
    end

    # All the environments the SDK can run in.
    ENVIRONMENTS = {
      Environment::PRODUCTION => {
        Server::EDGE_DISCOVERY => 'https://5gedge.verizon.com/api/mec/eds',
        Server::THINGSPACE => 'https://thingspace.verizon.com/api',
        Server::OAUTH_SERVER => 'https://thingspace.verizon.com/api/ts/v1',
        Server::M2M => 'https://thingspace.verizon.com/api/m2m',
        Server::DEVICE_LOCATION => 'https://thingspace.verizon.com/api/loc/v1',
        Server::SUBSCRIPTION_SERVER => 'https://thingspace.verizon.com/api/subsc/v1',
        Server::SOFTWARE_MANAGEMENT_V1 => 'https://thingspace.verizon.com/api/fota/v1',
        Server::SOFTWARE_MANAGEMENT_V2 => 'https://thingspace.verizon.com/api/fota/v2',
        Server::SOFTWARE_MANAGEMENT_V3 => 'https://thingspace.verizon.com/api/fota/v3',
        Server::PERFORMANCE => 'https://5gedge.verizon.com/api/mec',
        Server::DEVICE_DIAGNOSTICS => 'https://thingspace.verizon.com/api/diagnostics/v1',
        Server::CLOUD_CONNECTOR => 'https://thingspace.verizon.com/api/cc/v1',
        Server::HYPER_PRECISE_LOCATION => 'https://thingspace.verizon.com/api/hyper-precise/v1',
        Server::SERVICES => 'https://5gedge.verizon.com/api/mec/services',
        Server::QUALITY_OF_SERVICE => 'https://thingspace.verizon.com/api/m2m/v1/devices'
      }
    }.freeze

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] server The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def get_base_uri(server = Server::EDGE_DISCOVERY)
      ENVIRONMENTS[environment][server].clone
    end
  end
end
