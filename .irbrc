# require 'irb/ext/save-history'
# IRB.conf[:SAVE_HISTORY] = 200
# IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
#
# # Rails.logger = Logger.new STDOUT if defined? Rails
#
#
#
# # This script comes from Pry Everywhere by Luca Pette
# # http://lucapette.com/pry/pry-everywhere/
#
# # https://github.com/carlhuda/bundler/issues/183#issuecomment-1149953
# if defined?(::Bundler)
#   global_gemset = ENV['GEM_PATH'].split(':').grep(/ruby.*@global/).first
#   if global_gemset
#     all_global_gem_paths = Dir.glob("#{global_gemset}/gems/*")
#     all_global_gem_paths.each do |p|
#       gem_path = "#{p}/lib"
#       $LOAD_PATH << gem_path
#     end
#   end
# end
#
# # Use Pry everywhere
# require "rubygems"
# require 'pry'
#
#
# Pry.config.history.file = "#{ENV['HOME']}/.irb-history"
# Pry.start
# exit