class GlobalOptions::GlobalOption < ActiveRecord::Base
  class NotFound < RuntimeError
  end

  validate :name, presence: true, unique: true

  def self.by_name(name)
    option = where(name: name).first
    raise NotFound, "Option not found by that name: '#{name}'." unless option
    return option
  end

  def self.set(name, value)
    option = find_or_initialize_by(name: name)
    option.value = value
    option.save!
  end

  def self.get(name)
    by_name(name).value
  end
end
