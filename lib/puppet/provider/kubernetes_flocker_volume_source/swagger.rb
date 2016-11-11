# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_flocker_volume_source).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        datasetName: instance.datasetName.respond_to?(:to_hash) ? instance.datasetName.to_hash : instance.datasetName,
      
    
      
        datasetUUID: instance.datasetUUID.respond_to?(:to_hash) ? instance.datasetUUID.to_hash : instance.datasetUUID,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_flocker_volume_source #{name}")
    create_instance_of('flocker_volume_source', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('flocker_volume_source', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_flocker_volume_source #{name}")
    destroy_instance_of('flocker_volume_source', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('flocker_volume_source')
  end

  def build_params
    params = {
    
      
        datasetName: resource[:datasetName],
      
    
      
        datasetUUID: resource[:datasetUUID],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
