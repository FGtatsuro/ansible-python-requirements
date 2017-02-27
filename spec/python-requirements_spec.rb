require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe package('python-apt'), :if => os[:family] == 'debian' do
  it { should be_installed }
end

describe package('python-dev'), :if => ['debian', 'alpine'].include?(os[:family]) do
  it { should be_installed }
end

describe package('build-essential'), :if => os[:family] == 'debian' do
  it { should be_installed }
end

describe package('build-base'), :if => os[:family] == 'alpine' do
  it { should be_installed }
end

describe package('unzip'), :if => ['debian', 'alpine'].include?(os[:family]) do
  it { should be_installed }
end

describe package('curl'), :if => ['debian', 'alpine'].include?(os[:family]) do
  it { should be_installed }
end

describe package('openssl') do
  it { should be_installed }
end

describe package('ca-certificates'), :if => ['debian', 'alpine'].include?(os[:family]) do
  it { should be_installed }
end

describe command('which python') do
  its(:exit_status) { should eq 0 }
end

describe command('which unzip') do
  its(:exit_status) { should eq 0 }
end

describe command('which curl') do
  its(:exit_status) { should eq 0 }
end

describe command('which python') do
  its(:exit_status) { should eq 0 }
end

describe command('which pip') do
  its(:exit_status) { should eq 0 }
end
