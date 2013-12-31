require 'spec_helper'

describe Food do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:quantity) }

  it { should validate_numericality_of(:quantity) }

  it { should have_valid(:title).when('A title') }
  it { should_not have_valid(:title).when(123, ' ', nil) }
end
