class Owner
    require "pry"
  attr_reader :species, :pets
  attr_accessor :name, :fishes, :dogs, :cats
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def self.count
    @@all.count 
  end 
  
  def self.reset_all 
    @@all.clear
  end
  
  def self.all 
    @@all 
  end 
  
  def say_species
    "I am a human."
  end 

  
  def buy_fish(fish_name) 
  fish_name = Fish.new("#{fish_name}")
    if fish_name.is_a?(Fish) == true
      @pets[:fishes] << fish_name
    end
  end 
  
    def buy_cat(cat_name) 
  cat_name = Cat.new("#{cat_name}")
    if cat_name.is_a?(Cat) == true
      @pets[:cats] << cat_name
    end
  end 
    
      def buy_dog(cat_name) 
  cat_name = Cat.new("#{cat_name}")
    if cat_name.is_a?(Cat) == true
      @pets[:cats] << cat_name
    end
  end 
  
end