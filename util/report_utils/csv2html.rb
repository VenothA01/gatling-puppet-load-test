# frozen_string_literal: true

# TODO: include this functionality in every performance run
# TODO: handle file or directory as argument

require "json"
require "csv"

require_relative "../../tests/helpers/perf_results_helper.rb"
include PerfResultsHelper # rubocop:disable Style/MixinUsage

raise Exception, "you must provide a directory" unless ARGV[0]

directory = ARGV[0]
csv2html_directory(directory)
