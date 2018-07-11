class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, 
                :weight, :handed, :complexion, :t_shirt_size, 
                :wrist_size, :glove_size, :pant_length, :pant_width
                
  def initialize(attributes=nil)
    # Use only the attribute keys passed into Person.new
    # Attributes are optional
    
    if attributes
      attributes.each do |key, value|
        self.send( ("#{key}="), value )
      end
    end
  end
end