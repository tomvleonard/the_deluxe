require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe 'validations' do
    before do
      @admin = FactoryBot.build :admin
    end

    it 'is valid when all attributes are present' do
      debugger
      expect(@admin.valid?).to eq true
    end

    context 'given that the email attribute is missing' do
      before do
        @admin.email = nil
      end

      it 'is invalid' do
        expect(@admin.valid?).to eq false
      end

      it 'has expected error message' do
        expected = [ "can't be blank" ]
        @admin.valid?
        expect(@admin.errors[:email].to_a).to eq expected
      end
    end

    context 'given that the password attribute is missing' do
      before do
        @admin.password = nil
      end

      it 'is invalid' do
        expect(@admin.valid?).to eq false
      end

      it 'has expected error message' do
        expected = [ "can't be blank" ]
        @admin.valid?
        expect(@admin.errors[:password].to_a).to eq expected
      end
    end
  end
end
