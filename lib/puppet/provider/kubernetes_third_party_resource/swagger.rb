# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_third_party_resource).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        kind: instance.kind.respond_to?(:to_hash) ? instance.kind.to_hash : instance.kind,
      
    
      
        apiVersion: instance.apiVersion.respond_to?(:to_hash) ? instance.apiVersion.to_hash : instance.apiVersion,
      
    
      
        metadata: instance.metadata.respond_to?(:to_hash) ? instance.metadata.to_hash : instance.metadata,
      
    
      
        description: instance.description.respond_to?(:to_hash) ? instance.description.to_hash : instance.description,
      
    
      
        versions: instance.versions.respond_to?(:to_hash) ? instance.versions.to_hash : instance.versions,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_third_party_resource #{name}")
    create_instance_of('third_party_resource', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('third_party_resource', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_third_party_resource #{name}")
    destroy_instance_of('third_party_resource', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('third_party_resource')
  end

  def build_params
    params = {
    
      
        kind: resource[:kind],
      
    
      
        apiVersion: resource[:apiVersion],
      
    
      
        metadata: resource[:metadata],
      
    
      
        description: resource[:description],
      
    
      
        versions: resource[:versions],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
