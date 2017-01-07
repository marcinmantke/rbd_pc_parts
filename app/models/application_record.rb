class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  before_create :assign_id
  default_scope { where("real_id LIKE ?", "#{ENV["PK_PREFIX"]}%") }

  def assign_id
    last_id = self.class.last&.real_id&.gsub("#{ENV["PK_PREFIX"]}_", "") || 0
    self.id = "#{ENV["PK_PREFIX"]}_#{last_id.to_i + 1}"
  end
end
