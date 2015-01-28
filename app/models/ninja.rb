class Ninja < ActiveRecord::Base
  validates_presence_of :name, :secret_name

  def hide
  end

  def self.attack
    puts "Go ninja go ninja go"
  end

  serialize :weapons, Array
end
