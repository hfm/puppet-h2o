require 'spec_helper_acceptance'

describe 'h2o class' do
  let(:manifest) do
    <<-EOS
      class { 'h2o':
      }
    EOS
  end

  it 'should work without errors' do
    expect(apply_manifest(manifest, catch_failures: true).exit_code).to eq 2
  end

  it 'should run a second time without changes' do
    expect(apply_manifest(manifest).exit_code).to be_zero
  end

  describe yumrepo('h2o'), if: os[:family] == 'redhat' do
    it { should be_enabled }
  end

  describe package('h2o') do
    it { should be_installed }
  end

  describe file('/etc/h2o/h2o.conf') do
    it { should be_file }
  end

  describe service('h2o') do
    it { should be_enabled }
    it { should be_running }
  end

  [80, 443].each do |num|
    describe port(num) do
      it { should be_listening.on('0.0.0.0').with('tcp') }
    end
  end
end
