class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, 
                :weight, :handed, :complexion, :t_shirt_size, 
                :wrist_size, :glove_size, :pant_length, :pant_width
                
  def initialize(attributes=nil)
    # Use only the attribute keys passed into Person.new
    # Attributes are optional
    if attributes
      attributes.each do |key, value|
        # send calls the method in the first parameter, and passes 
        # the rest of the parameters as arguments.
        self.send("#{key}=", value)
        # self.send "name=", "John Smith"
        # self.name = "John Smith"
      end
    end
  end
end