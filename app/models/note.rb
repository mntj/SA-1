class Note < ActiveRecord::Base
  validates :contents, presence: true
end
