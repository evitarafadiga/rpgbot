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
        /meuinicial
        /magnacarta"

        when /meudesafio/i
        opdesafio = ['Nada sobre nada por emoenquanto...','Depois retornamos nesse emo assunto.','Hmf, err. Nada. Mo!']
        reply.text = "#{opdesafio.sample.capitalize}, #{message.from.first_name}!"
        
        when /presente/i
        oppresente = ['Nada de especial por enquanto...']
        reply.text = "#{oppresente.sample.capitalize}, #{message.from.first_name}!"

        when /cacaaotesouro/i
        opcacaaotesouro = ['Emoooo...
        /minhadica']
        reply.text = "#{opcacaaotesouro.sample.capitalize}, #{message.from.first_name}!"

        when /meuinicial/i
        opinicial = ['Grookey','2','3','4','5','6','7','8','9','10']
        reply.text = "#{opinicial.sample.capitalize}, #{message.from.first_name}!"


        else
        reply.text = ["Emo, o que, mo #{command.inspect} significa??!."]
        end
        puts "sending #{reply.text.inspect} to @#{message.from.username}"
        reply.send_with(bot) 
    end
end 