class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  before_create :assign_id

  def assign_id
    last_id = self.class.last&.real_id&.gsub("#{ENV["PK_PREFIX"]}_", "").to_i || 1
    self.real_id = "#{ENV["PK_PREFIX"]}_#{last_id}"
  end
end
