# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require 'puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_pod_security_context).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_pod_security_context #{name}")
    create_instance_of('pod_security_context', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('pod_security_context', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_pod_security_context #{name}")
    destroy_instance_of('pod_security_context', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('pod_security_context')
  end

  def build_params
    params = {
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
