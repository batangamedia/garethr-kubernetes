# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_container_port).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        name: instance.name.respond_to?(:to_hash) ? instance.name.to_hash : instance.name,
      
    
      
        hostPort: instance.hostPort.respond_to?(:to_hash) ? instance.hostPort.to_hash : instance.hostPort,
      
    
      
        containerPort: instance.containerPort.respond_to?(:to_hash) ? instance.containerPort.to_hash : instance.containerPort,
      
    
      
        protocol: instance.protocol.respond_to?(:to_hash) ? instance.protocol.to_hash : instance.protocol,
      
    
      
        hostIP: instance.hostIP.respond_to?(:to_hash) ? instance.hostIP.to_hash : instance.hostIP,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_container_port #{name}")
    create_instance_of('container_port', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('container_port', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_container_port #{name}")
    destroy_instance_of('container_port', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('container_port')
  end

  def build_params
    params = {
    
      
        name: resource[:name],
      
    
      
        hostPort: resource[:hostPort],
      
    
      
        containerPort: resource[:containerPort],
      
    
      
        protocol: resource[:protocol],
      
    
      
        hostIP: resource[:hostIP],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
