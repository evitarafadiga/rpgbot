require 'telegram_bot'

token = '901142437:AAEkl8AvkPIY8vuVf2wE5dpPT2ZhbcI04PI'

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
        opinicial = ['Grookey','Scorbunny','Sobble','Snom','Rookidee','Blipbug','Rolycoly','Mime Jr','Hatenna','Impidimp']
        reply.text = "#{opinicial.sample.capitalize}, #{message.from.first_name}!"

        else
        reply.text = ["Emo, o que, mo #{command.inspect} significa??!."]
        end
        puts "sending #{reply.text.inspect} to @#{message.from.username}"
        reply.send_with(bot)
    end
  end

  bot.listen do |message|
  case message.text
  when '/inicioteste'
    question = 'London is a capital of which country?'
    # See more: https://core.telegram.org/bots/api#replykeyboardmarkup
    answers =
      Telegram::Bot::Types::ReplyKeyboardMarkup
      .new(keyboard: [%w(A B), %w(C D)], one_time_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)
  when '/stopteste'
    # See more: https://core.telegram.org/bots/api#replykeyboardremove
    kb = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: 'Sorry to see you go :(', reply_markup: kb)
  end
end
