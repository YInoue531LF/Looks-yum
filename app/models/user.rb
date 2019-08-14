# frozen_string_literal: true

class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :foods, through: :favorites, dependent: :destroy

  validates :name, presence: true
end
