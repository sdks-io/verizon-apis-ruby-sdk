# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # MetadataLabel Model.
  class MetadataLabel < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :alpha_rafay_io_cluster_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :alpha_rafay_io_instance_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :alpha_rafay_io_nodegroup_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :beta_kubernetes_io_arch

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :beta_kubernetes_io_instance_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :beta_kubernetes_io_os

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :failure_domain_beta_kubernetes_io_region

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :failure_domain_beta_kubernetes_io_zone

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kubernetes_io_arch

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kubernetes_io_hostname

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kubernetes_io_os

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :node_lifecycle

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :node_kubernetes_io_instance_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :topology_kubernetes_io_region

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :topology_kubernetes_io_zone

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['alpha_rafay_io_cluster_name'] = 'alpha.rafay.io/cluster-name'
      @_hash['alpha_rafay_io_instance_id'] = 'alpha.rafay.io/instance-id'
      @_hash['alpha_rafay_io_nodegroup_name'] =
        'alpha.rafay.io/nodegroup-name'
      @_hash['beta_kubernetes_io_arch'] = 'beta.kubernetes.io/arch'
      @_hash['beta_kubernetes_io_instance_type'] =
        'beta.kubernetes.io/instance-type'
      @_hash['beta_kubernetes_io_os'] = 'beta.kubernetes.io/os'
      @_hash['failure_domain_beta_kubernetes_io_region'] =
        'failure-domain.beta.kubernetes.io/region'
      @_hash['failure_domain_beta_kubernetes_io_zone'] =
        'failure-domain.beta.kubernetes.io/zone'
      @_hash['kubernetes_io_arch'] = 'kubernetes.io/arch'
      @_hash['kubernetes_io_hostname'] = 'kubernetes.io/hostname'
      @_hash['kubernetes_io_os'] = 'kubernetes.io/os'
      @_hash['node_lifecycle'] = 'node-lifecycle'
      @_hash['node_kubernetes_io_instance_type'] =
        'node.kubernetes.io/instance-type'
      @_hash['topology_kubernetes_io_region'] =
        'topology.kubernetes.io/region'
      @_hash['topology_kubernetes_io_zone'] = 'topology.kubernetes.io/zone'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        alpha_rafay_io_cluster_name
        alpha_rafay_io_instance_id
        alpha_rafay_io_nodegroup_name
        beta_kubernetes_io_arch
        beta_kubernetes_io_instance_type
        beta_kubernetes_io_os
        failure_domain_beta_kubernetes_io_region
        failure_domain_beta_kubernetes_io_zone
        kubernetes_io_arch
        kubernetes_io_hostname
        kubernetes_io_os
        node_lifecycle
        node_kubernetes_io_instance_type
        topology_kubernetes_io_region
        topology_kubernetes_io_zone
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(alpha_rafay_io_cluster_name = SKIP,
                   alpha_rafay_io_instance_id = SKIP,
                   alpha_rafay_io_nodegroup_name = SKIP,
                   beta_kubernetes_io_arch = SKIP,
                   beta_kubernetes_io_instance_type = SKIP,
                   beta_kubernetes_io_os = SKIP,
                   failure_domain_beta_kubernetes_io_region = SKIP,
                   failure_domain_beta_kubernetes_io_zone = SKIP,
                   kubernetes_io_arch = SKIP,
                   kubernetes_io_hostname = SKIP,
                   kubernetes_io_os = SKIP,
                   node_lifecycle = SKIP,
                   node_kubernetes_io_instance_type = SKIP,
                   topology_kubernetes_io_region = SKIP,
                   topology_kubernetes_io_zone = SKIP)
      unless alpha_rafay_io_cluster_name == SKIP
        @alpha_rafay_io_cluster_name =
          alpha_rafay_io_cluster_name
      end
      unless alpha_rafay_io_instance_id == SKIP
        @alpha_rafay_io_instance_id =
          alpha_rafay_io_instance_id
      end
      unless alpha_rafay_io_nodegroup_name == SKIP
        @alpha_rafay_io_nodegroup_name =
          alpha_rafay_io_nodegroup_name
      end
      @beta_kubernetes_io_arch = beta_kubernetes_io_arch unless beta_kubernetes_io_arch == SKIP
      unless beta_kubernetes_io_instance_type == SKIP
        @beta_kubernetes_io_instance_type =
          beta_kubernetes_io_instance_type
      end
      @beta_kubernetes_io_os = beta_kubernetes_io_os unless beta_kubernetes_io_os == SKIP
      unless failure_domain_beta_kubernetes_io_region == SKIP
        @failure_domain_beta_kubernetes_io_region =
          failure_domain_beta_kubernetes_io_region
      end
      unless failure_domain_beta_kubernetes_io_zone == SKIP
        @failure_domain_beta_kubernetes_io_zone =
          failure_domain_beta_kubernetes_io_zone
      end
      @kubernetes_io_arch = kubernetes_io_arch unless kubernetes_io_arch == SKIP
      @kubernetes_io_hostname = kubernetes_io_hostname unless kubernetes_io_hostname == SKIP
      @kubernetes_io_os = kubernetes_io_os unless kubernetes_io_os == SKIP
      @node_lifecycle = node_lifecycle unless node_lifecycle == SKIP
      unless node_kubernetes_io_instance_type == SKIP
        @node_kubernetes_io_instance_type =
          node_kubernetes_io_instance_type
      end
      unless topology_kubernetes_io_region == SKIP
        @topology_kubernetes_io_region =
          topology_kubernetes_io_region
      end
      unless topology_kubernetes_io_zone == SKIP
        @topology_kubernetes_io_zone =
          topology_kubernetes_io_zone
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      alpha_rafay_io_cluster_name =
        hash.key?('alpha.rafay.io/cluster-name') ? hash['alpha.rafay.io/cluster-name'] : SKIP
      alpha_rafay_io_instance_id =
        hash.key?('alpha.rafay.io/instance-id') ? hash['alpha.rafay.io/instance-id'] : SKIP
      alpha_rafay_io_nodegroup_name =
        hash.key?('alpha.rafay.io/nodegroup-name') ? hash['alpha.rafay.io/nodegroup-name'] : SKIP
      beta_kubernetes_io_arch =
        hash.key?('beta.kubernetes.io/arch') ? hash['beta.kubernetes.io/arch'] : SKIP
      beta_kubernetes_io_instance_type =
        hash.key?('beta.kubernetes.io/instance-type') ? hash['beta.kubernetes.io/instance-type'] : SKIP
      beta_kubernetes_io_os =
        hash.key?('beta.kubernetes.io/os') ? hash['beta.kubernetes.io/os'] : SKIP
      failure_domain_beta_kubernetes_io_region =
        hash.key?('failure-domain.beta.kubernetes.io/region') ? hash['failure-domain.beta.kubernetes.io/region'] : SKIP
      failure_domain_beta_kubernetes_io_zone =
        hash.key?('failure-domain.beta.kubernetes.io/zone') ? hash['failure-domain.beta.kubernetes.io/zone'] : SKIP
      kubernetes_io_arch =
        hash.key?('kubernetes.io/arch') ? hash['kubernetes.io/arch'] : SKIP
      kubernetes_io_hostname =
        hash.key?('kubernetes.io/hostname') ? hash['kubernetes.io/hostname'] : SKIP
      kubernetes_io_os =
        hash.key?('kubernetes.io/os') ? hash['kubernetes.io/os'] : SKIP
      node_lifecycle =
        hash.key?('node-lifecycle') ? hash['node-lifecycle'] : SKIP
      node_kubernetes_io_instance_type =
        hash.key?('node.kubernetes.io/instance-type') ? hash['node.kubernetes.io/instance-type'] : SKIP
      topology_kubernetes_io_region =
        hash.key?('topology.kubernetes.io/region') ? hash['topology.kubernetes.io/region'] : SKIP
      topology_kubernetes_io_zone =
        hash.key?('topology.kubernetes.io/zone') ? hash['topology.kubernetes.io/zone'] : SKIP

      # Create object from extracted values.
      MetadataLabel.new(alpha_rafay_io_cluster_name,
                        alpha_rafay_io_instance_id,
                        alpha_rafay_io_nodegroup_name,
                        beta_kubernetes_io_arch,
                        beta_kubernetes_io_instance_type,
                        beta_kubernetes_io_os,
                        failure_domain_beta_kubernetes_io_region,
                        failure_domain_beta_kubernetes_io_zone,
                        kubernetes_io_arch,
                        kubernetes_io_hostname,
                        kubernetes_io_os,
                        node_lifecycle,
                        node_kubernetes_io_instance_type,
                        topology_kubernetes_io_region,
                        topology_kubernetes_io_zone)
    end
  end
end
