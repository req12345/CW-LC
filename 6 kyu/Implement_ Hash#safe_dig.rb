'''
Implement a safe version of Ruby's Hash#dig
Given a hash and a list of n keys, return the value of the nth nested value.

If there are more keys than there are nested levels of hashes, the method should return nil rather than raise an exception.

All keys are assumed to be symbols in this kata.
'''

#My solution

class Hash
  def safe_dig(*keys)
    target = self
    
    keys.each do |k|
      if target.is_a?(Hash)
        target = target.send(:[], k)
      else
        return
      end
    end
    
    target
  end
end

#Better solution

class Hash
  def safe_dig(*path)
    dig(*path) rescue nil
  end
end
