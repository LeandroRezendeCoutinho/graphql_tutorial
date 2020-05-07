# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :comments
  validates :title, :rating, presence: true
end
