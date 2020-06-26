require 'rails_helper'

RSpec.describe WareHouse, type: :model do

  context 'Validations' do
    it { should validate_presence_of(:wh_code) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:pincode) }
    it { should validate_presence_of(:max_capacity) }
    it { should validate_uniqueness_of(:wh_code).ignoring_case_sensitivity }
    it { should validate_length_of(:wh_code).is_at_least(4).is_at_most(16) }
  end

end
