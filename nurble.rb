#!/bin/ruby

require "engtagger"
require "optparse"

# Nurblefy a block of text
def nurblefy(raw_text, nurble_word="nurble", uppercase_nouns=true)
  tagger = EngTagger.new

  # split by newline
  tagged_text = raw_text.split(/\r?\n/)

  # tag words
  tagged_text.map! { |line| tagger.get_readable(line) }

  # split by word
  tagged_text.map! { |line| 
    if line == nil
      [""]
    else
      line.split(" ")
    end
  }

  noun_regex = /(.*)\/N+/

  # nurblefy non-nouns
  tagged_text.map! { |line| line.map! { |word|  
    if word.length == 0
      ""
    elsif (match_data = noun_regex.match(word)) != nil
      if uppercase_nouns
        match_data[1].upcase
      else
        match_data[1]
      end
    else 
      nurble_word
    end
  }}

  tagged_text.map! { |line| line.join(" ") }

  return tagged_text
end

# main() 
if __FILE__ == $PROGRAM_NAME
  nurble = "nurble"
  lowercase = false

  begin
    OptionParser.new do |o|
      o.on("--lowercase") { |l| lowercase = l }
      o.on("--nurble WORD") { |word| nurble = word }
      o.parse!
    end
  rescue
    puts "Usage: nurble.rb [options] [file]"
    puts "        --lowercase"
    puts "        --nurble WORD"
    exit
  end

  raw_text = ARGF.read
  puts nurblefy(raw_text, nurble, !lowercase)
end

