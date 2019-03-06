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
  #binding.pry 
    if fish_name.is_a?(Fish) == true
      @pets[:fishes] << fish_name
    end
  end 
    
  
end