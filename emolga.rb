require 'telegram_bot'

token = 'inserir token'

bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)

    message.reply do |reply|
        case command
        when /start/i
        reply.text = "Emo mo!"
        
        else
        reply.text = ["Emo, o que, mo #{command.inspect} significa??!."]
        end
        puts "sending #{reply.text.inspect} to @#{message.from.username}"
        reply.send_with(bot) 
    end
end 