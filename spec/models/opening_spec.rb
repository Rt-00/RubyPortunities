# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Opening, type: :model do
  it 'is valid with valid attributes' do
    opening = Opening.new(role: "teste", company: "teste", location: "teste")
    opening.
  end
  it 'is not valid without a role'
  it 'is not valid without a company'
  it 'is not valid without a location'
  it 'is not valid without a remote'
  it 'is not valid without a link'
  it 'is not valid without a link'
end