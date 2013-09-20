require 'rubygems'
require 'irb/completion'
require 'irb/ext/save-history'

ARGV.concat [ "--readline",
              "--prompt-mode",
              "simple" ]

# 25 entries in the list
IRB.conf[:SAVE_HISTORY] = 50

# Store results in home directory with specified file name
IRB.conf[:HISTORY_FILE] = ".irb-history"
$LOAD_PATH.unshift('../calabash-ios/calabash-cucumber/lib')
require 'calabash-cucumber/operations'
include Calabash::Cucumber::Operations

def embed(x,y=nil,z=nil)
   puts "Screenshot at #{x}"
end
