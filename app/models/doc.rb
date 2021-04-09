class Doc < ApplicationRecord
  validates :title, presence: true
end
