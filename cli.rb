#!/bin/env/ruby
# frozen_string_literal: true

require 'chatgpt/client'

api_key = ENV['CHATGPT_API_KEY']
client = ChatGPT::Client.new(api_key)

loop do
  print '>> '
  content = gets.chomp
  message = [
    {
      role: 'user',
      content:
    }
  ]
  response = client.chat(message)
  puts response['choices'][0]['message']['content']
end
