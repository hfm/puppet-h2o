require 'spec_helper'
describe 'h2o' do
  context 'with default values for all parameters (redhat)' do
    it { should compile }
  end

  context 'with default values for all parameters (debian)' do
    let(:facts) do
      {
        os: {
          family: 'Debian',
          name: 'Ubuntu'
        },
        osfamily: 'Debian'
      }
    end

    it { should compile }
  end
end
