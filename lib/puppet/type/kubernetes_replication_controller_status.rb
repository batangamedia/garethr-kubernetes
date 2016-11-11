# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'


Puppet::Type.newtype(:kubernetes_replication_controller_status) do
  
  @doc = "ReplicationControllerStatus represents the current status of a replication controller."
  

  ensurable

  
  validate do
    required_properties = [
    
      replicas,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the replication_controller_status.'
  end
  
    
      newproperty(:replicas) do
        
        desc "Replicas is the most recently oberved number of replicas. More info: http://kubernetes.io/docs/user-guide/replication-controller#what-is-a-replication-controller"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:fullyLabeledReplicas) do
        
        desc "The number of pods that have labels matching the labels of the pod template of the replication controller."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:readyReplicas) do
        
        desc "The number of ready replicas for this replication controller."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:availableReplicas) do
        
        desc "The number of available replicas (ready for at least minReadySeconds) for this replication controller."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:observedGeneration) do
        
        desc "ObservedGeneration reflects the generation of the most recently observed replication controller."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:conditions) do
        
        desc "Represents the latest available observations of a replication controller's current state."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
