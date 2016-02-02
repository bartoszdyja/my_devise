require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it { is_expected.to validate_presence_of :username }
  end

  describe 'db column' do
    it { is_expected.to have_db_column :username }
  end
end
