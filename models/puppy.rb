# since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)
class Puppy

   attr_accessor :name, :breed, :age
   
   def initialize(attrs)
        attrs_from_hash(attrs)
        # @name = name
        # @breed = breed
        # @age = age
   end

   def attrs_from_hash(attrs)
        attrs.each do |k, v|
            send("#{k}=", v)
        end
   end

end