# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, :rating, presence: true
end
