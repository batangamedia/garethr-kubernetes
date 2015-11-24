# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_handler).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        exec: instance.exec.respond_to?(:to_hash) ? instance.exec.to_hash : instance.exec,
      
    
      
        httpGet: instance.httpGet.respond_to?(:to_hash) ? instance.httpGet.to_hash : instance.httpGet,
      
    
      
        tcpSocket: instance.tcpSocket.respond_to?(:to_hash) ? instance.tcpSocket.to_hash : instance.tcpSocket,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_handler #{name}")
    create_instance_of('handler', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('handler', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_handler #{name}")
    destroy_instance_of('handler', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('handler')
  end

  def build_params
    params = {
    
      
        exec: resource[:exec],
      
    
      
        httpGet: resource[:httpGet],
      
    
      
        tcpSocket: resource[:tcpSocket],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
