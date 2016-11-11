# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_service_spec).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        ports: instance.ports.respond_to?(:to_hash) ? instance.ports.to_hash : instance.ports,
      
    
      
        selector: instance.selector.respond_to?(:to_hash) ? instance.selector.to_hash : instance.selector,
      
    
      
        clusterIP: instance.clusterIP.respond_to?(:to_hash) ? instance.clusterIP.to_hash : instance.clusterIP,
      
    
      
        type: instance.type.respond_to?(:to_hash) ? instance.type.to_hash : instance.type,
      
    
      
        externalIPs: instance.externalIPs.respond_to?(:to_hash) ? instance.externalIPs.to_hash : instance.externalIPs,
      
    
      
        deprecatedPublicIPs: instance.deprecatedPublicIPs.respond_to?(:to_hash) ? instance.deprecatedPublicIPs.to_hash : instance.deprecatedPublicIPs,
      
    
      
        sessionAffinity: instance.sessionAffinity.respond_to?(:to_hash) ? instance.sessionAffinity.to_hash : instance.sessionAffinity,
      
    
      
        loadBalancerIP: instance.loadBalancerIP.respond_to?(:to_hash) ? instance.loadBalancerIP.to_hash : instance.loadBalancerIP,
      
    
      
        loadBalancerSourceRanges: instance.loadBalancerSourceRanges.respond_to?(:to_hash) ? instance.loadBalancerSourceRanges.to_hash : instance.loadBalancerSourceRanges,
      
    
      
        externalName: instance.externalName.respond_to?(:to_hash) ? instance.externalName.to_hash : instance.externalName,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_service_spec #{name}")
    create_instance_of('service_spec', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('service_spec', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_service_spec #{name}")
    destroy_instance_of('service_spec', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('service_spec')
  end

  def build_params
    params = {
    
      
        ports: resource[:ports],
      
    
      
        selector: resource[:selector],
      
    
      
        clusterIP: resource[:clusterIP],
      
    
      
        type: resource[:type],
      
    
      
        externalIPs: resource[:externalIPs],
      
    
      
        deprecatedPublicIPs: resource[:deprecatedPublicIPs],
      
    
      
        sessionAffinity: resource[:sessionAffinity],
      
    
      
        loadBalancerIP: resource[:loadBalancerIP],
      
    
      
        loadBalancerSourceRanges: resource[:loadBalancerSourceRanges],
      
    
      
        externalName: resource[:externalName],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
