require 'spec_helper'
describe 'h2o' do
  context 'with default values for all parameters' do
    it { should contain_class('h2o') }
  end
end
