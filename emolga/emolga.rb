require 'telegram_bot'
require 'logger'

logger = Logger.new(STDOUT, Logger::DEBUG)

bot = TelegramBot.new(token:'901142437:AAEkl8AvkPIY8vuVf2wE5dpPT2ZhbcI04PI', logger: logger)
logger.debug "starting telegram bot"

bot.get_updates(fail_silently: true) do |message|
  logger.info "@#{message.from.username}: #{message.text}"
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
        /magnacarta
        /numero
        /dado"

        when /meudesafio/i
        opdesafio = ['Nada sobre nada por emoenquanto...','Depois retornamos nesse emo assunto.','Hmf, err. Nada. Mo!']
        reply.text = "#{opdesafio.sample.capitalize}, #{message.from.first_name}!"

        when /presente/i
        oppresente = ['Nada de especial por enquanto...']
        reply.text = "#{oppresente.sample.capitalize}, #{message.from.first_name}!"

        when /cacaaotesouro/i
        opcacaaotesouro = ['Emoooo...
        /minhadica1']
        reply.text = "#{opcacaaotesouro.sample.capitalize}, #{message.from.first_name}!"

        when /meuinicial/i
        opinicial = ['Grookey','Scorbunny','Sobble','Snom','Rookidee','Blipbug','Rolycoly','Mime Jr','Hatenna','Impidimp']
        reply.text = "#{opinicial.sample.capitalize}, #{message.from.first_name}!"

      when /minhadica/i
      opmdica = ['Capital da Nova Zelândia, nome popular com W.']
      reply.text = "#{opmdica.sample.capitalize}, #{message.from.first_name}!"

      else
        reply.text = ["Emo, o que, mo #{command.inspect} significa??!."]
        end
        logger.info "sending #{reply.text.inspect} to @#{message.from.username}"
        reply.send_with(bot)
      end
end
