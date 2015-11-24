# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_node_spec).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        podCIDR: instance.podCIDR.respond_to?(:to_hash) ? instance.podCIDR.to_hash : instance.podCIDR,
      
    
      
        externalID: instance.externalID.respond_to?(:to_hash) ? instance.externalID.to_hash : instance.externalID,
      
    
      
        providerID: instance.providerID.respond_to?(:to_hash) ? instance.providerID.to_hash : instance.providerID,
      
    
      
        unschedulable: instance.unschedulable.respond_to?(:to_hash) ? instance.unschedulable.to_hash : instance.unschedulable,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_node_spec #{name}")
    create_instance_of('node_spec', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('node_spec', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_node_spec #{name}")
    destroy_instance_of('node_spec', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('node_spec')
  end

  def build_params
    params = {
    
      
        podCIDR: resource[:podCIDR],
      
    
      
        externalID: resource[:externalID],
      
    
      
        providerID: resource[:providerID],
      
    
      
        unschedulable: resource[:unschedulable],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
