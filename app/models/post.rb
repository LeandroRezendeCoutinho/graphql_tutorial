# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :rating, presence: true
end
