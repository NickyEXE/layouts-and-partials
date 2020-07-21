class Team < ApplicationRecord
    has_many :superheros
    accepts_nested_attributes_for :superheros, reject_if: proc { |attributes| attributes['name'] == "" }
end
