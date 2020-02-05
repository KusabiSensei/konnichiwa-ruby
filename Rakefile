# frozen_string_literal: true

require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = true
end
RuboCop::RakeTask.new('rubocop-ci') do |task|
  task.options = ['--format',
                  'RuboCop::Formatter::CheckstyleFormatter',
                  '--out',
                  'rubocop.xml']
  task.requires << 'rubocop/formatter/checkstyle_formatter'
  task.fail_on_error = false
end
RSpec::Core::RakeTask.new(:spec)
