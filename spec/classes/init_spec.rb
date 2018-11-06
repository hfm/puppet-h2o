require 'spec_helper'
describe 'h2o' do
  context 'with default values for all parameters (redhat)' do
    it { should compile }
    it { should contain_class('h2o') }
  end

  context 'with default values for all parameters (debian)' do
    let(:facts) do
      {
        os: {
          family: 'Debian',
          name: 'Ubuntu',
          distro: {
            codename: 'xenial'
          },
          release: {
            full: '18.04'
          }
        },
        osfamily: 'Debian'
      }
    end

    it { should compile }
    it { should contain_class('h2o') }
  end
end
