#!/bin/ruby

require "rbtagger"

$nurble_word = "nurble"

# tag -> word
def convert(tag)
  word = tag[1]
end

# nurblefy text
def process(raw_text)
  tagger = Brill::Tagger.new

  # split by newline
  split_text = raw_text.split(/\r?\n/)

  #tags = tagger.tag(text)
  #nurbled_text = ""
  #tags.each { |pair| nurbled_text += convert(pair) }
 
  split_text.map! { |line| tagger.tag(line) }
  split_text.map { |line| line.map { |pair| pair[0] }}

  nurbled_text = split_text.to_s

  return nurbled_text
end


# main loop
if __FILE__ == $PROGRAM_NAME
  raw_text = ARGF.read
  puts process(raw_text)
end

