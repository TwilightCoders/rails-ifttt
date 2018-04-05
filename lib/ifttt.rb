require "ifttt/engine"

module IFTTT

  def self.action(name, &block)
    Action.new(name, &block)
  end

  def self.trigger(name, &block)
    Trigger.new(name, &block)
  end

end
