require 'spec_helper'

describe Todo, 'validations' do
  it { expect(subject).to validate_presence_of(:title) }
  it { expect(subject).to validate_presence_of(:description) }
  it { expect(subject).to validate_presence_of(:urgency) }
end
