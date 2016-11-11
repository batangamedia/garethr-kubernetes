# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_resource_quota) do
  
  @doc = "ResourceQuota sets aggregate quota restrictions enforced per namespace"
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the resource_quota.'
  end
  
    
  
    
  
    
      newproperty(:metadata) do
        
        desc "Standard object's metadata. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:spec) do
        
        desc "Spec defines the desired quota. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:status) do
        
        desc "Status defines the actual enforced quota and its current usage. http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
