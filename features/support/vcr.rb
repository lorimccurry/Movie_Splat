require 'vcr'

VCR.configure do |c|
  c.ignore_localhost = true
  c.cassette_library_dir = 'vcr_cassettes'
  c.hook_into :webmock
end

# Cucumber.configure do |c|
#   c.treat_symbols_as_metadata_keys_with_true_values = true
#   Around('@vcr') do |scenario, block|
#     s_name = scenario.name.underscore.gsub(/[^\w]+/, "_").gsub(/^_/,'').gsub(/_$/,'')
#     if scenario.respond_to? :scenario_outline
#       feature = scenario.scenario_outline.feature
#     else
#       feature = scenario.feature
#     end
#     f_name = feature.name.underscore.gsub(/[^\w\/]+/, "_")
#     VCR.use_cassette("/#{f_name}/#{s_name}", record: :once) { block.call }
#   end
# end