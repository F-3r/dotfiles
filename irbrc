require 'irb/completion'
require 'pp'

IRB.conf[:AUTO_INDENT] = true

IRB.conf[:HISTORY_FILE] = File::expand_path("~/.irbhistory")
IRB.conf[:EVAL_HISTORY] = 1_0000_000_000
IRB.conf[:SAVE_HISTORY] = 1_0000_000_000

