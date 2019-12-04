class Sequence < ApplicationRecord
  belongs_to :fight
  belongs_to :character
  belongs_to :weapon
  belongs_to :move
end
