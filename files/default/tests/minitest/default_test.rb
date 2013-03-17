require 'minitest/spec'

describe_recipe 'locale-gen::default' do
	describe 'configfile' do
		it 'creates the locale config file' do
			file(node["localegen"]["locale_file"]).must_exist
		end
	end
end