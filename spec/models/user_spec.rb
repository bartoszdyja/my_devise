require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it { is_expected.to validate_presence_of :username }
    it { is_expected.to validate_presence_of :password }
    it { is_expected.to validate_presence_of :password_confirmation }
  end

  describe 'db column' do
    it { is_expected.to have_db_column :username }
    it { is_expected.to have_db_column :password_digest }
  end

  describe 'responds' do
    it { is_expected.to respond_to :username }
    it { is_expected.to respond_to :password_digest }
  end
end
