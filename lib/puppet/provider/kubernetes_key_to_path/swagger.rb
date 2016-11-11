# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_key_to_path).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        key: instance.key.respond_to?(:to_hash) ? instance.key.to_hash : instance.key,
      
    
      
        path: instance.path.respond_to?(:to_hash) ? instance.path.to_hash : instance.path,
      
    
      
        mode: instance.mode.respond_to?(:to_hash) ? instance.mode.to_hash : instance.mode,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_key_to_path #{name}")
    create_instance_of('key_to_path', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('key_to_path', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_key_to_path #{name}")
    destroy_instance_of('key_to_path', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('key_to_path')
  end

  def build_params
    params = {
    
      
        key: resource[:key],
      
    
      
        path: resource[:path],
      
    
      
        mode: resource[:mode],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
