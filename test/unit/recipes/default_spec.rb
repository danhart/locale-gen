require_relative '../spec_helper'

require 'chefspec'

describe 'tc-locale-gen::default' do
  let(:chef_run_precise) { ChefSpec::Runner.new(:platform => 'ubuntu', :version => '12.04').converge(described_recipe) }
  let(:chef_run_debian) { ChefSpec::Runner.new(:platform => 'debian', :version => '7.4').converge(described_recipe) }

  it 'should create a local file on ubuntu' do
    expect(chef_run_precise).to create_file('/var/lib/locales/supported.d/local')
  end

  it 'should create a locale.gen file on debian' do
    expect(chef_run_debian).to create_file('/etc/locale.gen')
  end

  it 'should contain default values on ubuntu' do
    expect(chef_run_precise).to render_file('/var/lib/locales/supported.d/local').with_content(/en_GB.UTF-8 UTF-8/)
  end

  it 'should contain default values on debian' do
    expect(chef_run_debian).to render_file('/etc/locale.gen').with_content(/en_GB.UTF-8 UTF-8/)
  end

end
