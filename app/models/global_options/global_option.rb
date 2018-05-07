class GlobalOptions::GlobalOption < ActiveRecord::Base
  class NotFound < RuntimeError
  end

  validates :name, presence: true, uniqueness: true

  def self.set(name, value)
    option = find_or_initialize_by(name: name)
    option.value = value
    option.save!
  end

  def self.get(name)
    find_by(name: name)&.value
  end

  def self.get!(name)
    find_by!(name: name).value
  end
end
