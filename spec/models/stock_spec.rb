require 'rails_helper'

RSpec.describe Stock, type: :model do

  context 'Association' do
    it { should belong_to(:product) }
    it { should belong_to(:ware_house) }
  end

end
