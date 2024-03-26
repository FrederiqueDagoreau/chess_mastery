class ResultMotive < ApplicationRecord
  validates_uniqueness_of :name
end
