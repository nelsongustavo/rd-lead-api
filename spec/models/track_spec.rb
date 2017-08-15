require 'rails_helper'

RSpec.describe Track, type: :model do
   it { should belong_to(:user) }
end
