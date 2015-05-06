# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :rspec, cmd: 'bin/rspec', failed_mode: :keep do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^spec/(spec|rails)_helper.rb$})  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| [
                                                              "spec/routing/#{m[1]}_routing_spec.rb",
                                                              "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb",
                                                              "spec/acceptance/#{m[1]}_spec.rb"
                                                            ] }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }
end

guard :rubocop, all_on_start: false, cli: ['--rails'] do
  ignore(%r{db/schema\.rb})
  ignore(%r{vendor/.+\.rb})
  watch(%r{.+\.rb$})
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end

# guard :jshintrb do
#   watch(%r{^app/assets/javascripts/.+.js})
#   watch(%r{^lib/assets/javascripts/.+.js})
#   watch(%r{^spec/javascripts/.+.js})
# end

# guard 'jasmine-rails', all_on_start: false do
#   watch(%r{spec/javascripts/helpers/.+\.(js|coffee)})
#   watch(%r{spec/javascripts/.+_spec\.(js\.coffee|js|coffee)$})
#   watch(%r{app/assets/javascripts/(.+?)\.(js\.coffee|js|coffee)(?:\.\w+)*$}) { |m| "spec/javascripts/#{ m[1] }_spec.#{ m[2] }" }
# end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html|png|jpg))).*}) { |m| "/assets/#{m[3]}" }
end

guard 'bundler' do
  watch('Gemfile')
end

guard 'migrate', seed: true do
  watch(%r{^db/migrate/(\d+).+\.rb})
  watch('db/seeds.rb')
end
