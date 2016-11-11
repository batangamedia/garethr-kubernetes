# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_object_field_selector) do
  
  @doc = "ObjectFieldSelector selects an APIVersioned field of an object."
  

  ensurable

  
  validate do
    required_properties = [
    
      fieldPath,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the object_field_selector.'
  end
  
    
      newproperty(:apiVersion) do
        
        desc "Version of the schema the FieldPath is written in terms of, defaults to 'v1'."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:fieldPath) do
        
        desc "Path of the field to select in the specified API version."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
