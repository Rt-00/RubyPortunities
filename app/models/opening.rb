# frozen_string_literal: true

class Opening < ApplicationRecord
  validates :role, presence: true
  validates :company, presence: true
  validates :location, presence: true
  validates :remote, presence: true
  validates :link, presence: true
  validates :salary, presence: true
end
