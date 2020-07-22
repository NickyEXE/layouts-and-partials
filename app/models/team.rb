class Team < ApplicationRecord
  has_many :superheros
  accepts_nested_attributes_for :superheros
end
