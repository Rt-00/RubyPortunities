# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Opening, type: :model do
  it 'is valid with valid attributes' do
    opening = Opening.new(role: 'teste', company: 'teste', location: 'teste', remote: true,
                          link: 'teste.com', salary: 3000)
    expect(opening).to be_valid
  end
  it 'is not valid without a role' do
    opening = Opening.new(role: nil, company: 'teste', location: 'teste', remote: true,
                          link: 'teste.com', salary: 3000)
    expect(opening).not_to be_valid
  end
  it 'is not valid without a company' do
    opening = Opening.new(role: 'teste', company: nil, location: 'teste', remote: true,
                          link: 'teste.com', salary: 3000)
    expect(opening).not_to be_valid
  end
  it 'is not valid without a location' do
    opening = Opening.new(role: 'teste', company: 'teste', location: nil, remote: true,
                          link: 'teste.com', salary: 3000)
    expect(opening).not_to be_valid
  end
  it 'is not valid without a remote' do
    opening = Opening.new(role: 'teste', company: 'teste', location: 'teste', remote: nil,
                          link: 'teste.com', salary: 3000)
    expect(opening).not_to be_valid
  end
  it 'is not valid without a link' do
    opening = Opening.new(role: 'teste', company: 'teste', location: 'teste', remote: true,
                          link: nil, salary: 3000)
    expect(opening).not_to be_valid
  end
  it 'is not valid without a salary' do
    opening = Opening.new(role: 'teste', company: 'teste', location: 'teste', remote: true,
                          link: 'teste', salary: nil)
    expect(opening).not_to be_valid
  end
end
