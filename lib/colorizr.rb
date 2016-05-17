class String
  def self.create_colors(colrs)
    #code to generate all color methods goes here
    colrs.each do |colr,code|
      new_method = %Q{
        def #{colr}
          "\e[#{code}m"+self+"\e[0m"
        end
        }
      String.class_eval(new_method)
    end
  end

  @@all_colors_codes = {red: 31 , green: 32, yellow: 33, blue: 34, pink: 95, light_blue: 36, white: 97, light_grey: 37, black: 30} 

  String.create_colors(@@all_colors_codes)

  def self.colors
    all_colors = []
    @@all_colors_codes.each do |a,b|
      all_colors << a
    end
    return all_colors
  end

  def self.sample_colors
    
    "This is " + "red".red
  end

end

          