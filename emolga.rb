require 'telegram_bot'

token = 'inserir token'

bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)

    message.reply do |reply|
        case command
        when /start/i
        reply.text = "Emo mo! #{message.from.first_name}, emo!!!
        Suas opções são:
        /meudesafio
        /presente
        /cacaaotesouro
        /meuinicial"

        when /meudesafio/i
        opdesafio = ['Nada sobre nada por emoenquanto...','Depois retornamos nesse emo assunto.','Hmf, err. Nada. Mo!']
        reply.text = "#{opdesafio.sample.capitalize}, #{message.from.first_name}!"
        
        else
        reply.text = ["Emo, o que, mo #{command.inspect} significa??!."]
        end
        puts "sending #{reply.text.inspect} to @#{message.from.username}"
        reply.send_with(bot) 
    end
end 