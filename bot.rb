require 'telegram_bot'

token = '808276794:AAFIZhKWjWyvROnx_nymm8Q4vnY0Svk3xNA'

bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)

  message.reply do |reply|
    case command
    when /start/i
      reply.text = "Eu sou o Mimikyu! Tens permissão dos espíritos pra interagir comigo? Clique em /vendominhaalmaaodiabo e vamos descobrir... https://i.kym-cdn.com/photos/images/original/001/194/315/ba6.gif"
    when /vendominhaalmaaodiabo/i
      tratofeito = ['Você parece decidido... Gosto disso. Cá estão suas /opcoes', 'Você me parece relutante. Clique antes que desista... /opcoes', 'Grite bem alto: HAIL SATAN e clique em /opcoes', 'Diga AVE SATAN e clique em /opcoes', 'Lúcifer que te carregue com suas /opcoes', 'SOLVE ET COAGULA E DALE /opcoes', 'Anjo caído ganha /opcoes', 'Exu caveirinha, venha trabalhar nas /opcoes', 'On a highway to hell... Clique em /opcoes','Próxima parada: Piauí. Toma suas /opcoes','Descendo... Clique em //opcoes']
      reply.text = "#{tratofeito.sample.capitalize}, #{message.from.first_name}!"

    when /opcoes/i
      reply.text = "Aqui vai:
      /roletarussa
      /jankenpo
      /jogadado
      /meudesafio
      /meuinicial
      /minhaclasse
      /meupack
      /meutrio
      "

    when /minhaclasse/i
      opclasses = ['Hey, Misdreavus! Temos uma bruxa presente!!!','Chico Xavier te batizou como MEDIUM.','Venha, Impidimp: leve este demônio, cria sua contigo!','Você é bruxa, eu sinto!', 'Você cheira a demônio de longe...', 'Você não... Você é medium', 'Mais um medium...', 'Queimem a amaldiçoada bruxa!', 'Você é travesso igual a um demônio...']
      reply.text = "#{opclasses.sample.capitalize}, #{message.from.first_name}!"

    when /meuinicial/i
      confirmainicial = ['Tens certeza? Minha dona Agatha autorizou???']
      reply.text = "#{confirmainicial.sample.capitalize}, #{message.from.first_name}!"
    when /simtenhocerteza/i
      iniciais = ['https://play.pokemonshowdown.com/sprites/xyani/charmander.gif','https://play.pokemonshowdown.com/sprites/xyani/rattata-alola.gif','https://play.pokemonshowdown.com/sprites/xyani/sandshrew-alola.gif','https://play.pokemonshowdown.com/sprites/xyani/vulpix-alola.gif','https://play.pokemonshowdown.com/sprites/xyani/paras.gif','https://play.pokemonshowdown.com/sprites/xyani/meowth-alola.gif','https://play.pokemonshowdown.com/sprites/xyani/abra.gif','https://play.pokemonshowdown.com/sprites/xyani/grimer-alola.gif','https://play.pokemonshowdown.com/sprites/xyani/gastly.gif','https://play.pokemonshowdown.com/sprites/xyani-shiny/drowzee.gif','https://play.pokemonshowdown.com/sprites/xyani/exeggcute.gif','https://play.pokemonshowdown.com/sprites/xyani-shiny/cubone.gif','https://play.pokemonshowdown.com/sprites/xyani/staryu.gif','https://play.pokemonshowdown.com/sprites/xyani-shiny/dratini.gif','https://play.pokemonshowdown.com/sprites/xyani/umbreon.gif','https://play.pokemonshowdown.com/sprites/xyani-shiny/espeon.gif','https://play.pokemonshowdown.com/sprites/xyani/misdreavus.gif','https://play.pokemonshowdown.com/sprites/xyani/houndour.gif','https://play.pokemonshowdown.com/sprites/xyani/poochyena.gif','https://play.pokemonshowdown.com/sprites/xyani/carvanha.gif','https://play.pokemonshowdown.com/sprites/xyani/cacnea.gif','https://play.pokemonshowdown.com/sprites/xyani/shuppet.gif','https://play.pokemonshowdown.com/sprites/xyani/murkrow.gif','https://play.pokemonshowdown.com/sprites/xyani/stunky.gif','https://play.pokemonshowdown.com/sprites/xyani/duskull.gif','https://play.pokemonshowdown.com/sprites/xyani/rotom.gif','https://play.pokemonshowdown.com/sprites/xyani/sandile.gif','https://play.pokemonshowdown.com/sprites/xyani/zorua.gif','https://play.pokemonshowdown.com/sprites/xyani/frillish.gif','https://play.pokemonshowdown.com/sprites/xyani/pawniard.gif','https://play.pokemonshowdown.com/sprites/xyani/vullaby.gif','https://play.pokemonshowdown.com/sprites/xyani/deino.gif','https://play.pokemonshowdown.com/sprites/xyani/fennekin.gif','https://play.pokemonshowdown.com/sprites/xyani/pumpkaboo.gif','https://play.pokemonshowdown.com/sprites/xyani/rowlet.gif','https://play.pokemonshowdown.com/sprites/xyani/oricorio-sensu.gif']
      reply.text = "#{iniciais.sample.capitalize}, #{message.from.first_name}!"
    when /meutrio/i
      optrio = ['Seu trio é com certeza de Kanto', 'Johto e nada mais!', 'Hoenn e nada menos!', 'Trio de Sinnoh.', 'Unova sem choro.', 'Kalos kalos kalos kalos... Kalos!', 'Alola, trio mahalo; sofrimento, dor e pesar!']
      reply.text = "#{optrio.sample.capitalize}, #{message.from.first_name}!"

    when /meupack/i
      packages = ['Pacote açougueiro entregue com sucesso: Raticate, Persian e Tauros!', 'Pacote detetive entregue! Nele tem: Venomoth, Noctowl e Butterfree! ', 'Pacote viúva entregue com sucesso. Vem com: Gardevoir, Roserade e Gothitelle!', 'Pacote guarda florestal chegando. E nele: Bewear, Beartic e Ursaring!',
        'Pacote prostíbulo: Lopunny-Mega, Smoochum e Nidoran-M!', 'Pacote soldado entregue! Recebes: Ninetales, Arcanine e Primeape!', 'Pacote pirata entregue! Vem com: Poliwrath, Golduck e Machamp!', 'Pacote cigano entregue em mãos: Slowbro-Mega, Mr.Mime e Jynx!', 'Pacote pescador saindo! Vem com: Sandslash, Krookodile e Kingler!']
      reply.text = "#{packages.sample.capitalize}, #{message.from.first_name}!"

    when /roletarussa/i
      ciladas = ['Eu decido... TE EXECUTAR!', 'Eu realmente vou TE EXECUTAR!!!', 'Você vai passar batido dessa vez.', 'Por enquanto a sua pele está salva...', 'Você encontrou o tesouro!', 'Parabéns pela sorte de vencer essa rodada.', 'Me diga quem vai morrer no seu lugar...']
      reply.text = "#{ciladas.sample.capitalize}, #{message.from.first_name}!"

    when /jankenpo/i
      opjankenpo = ['pedra', 'papel', 'tesoura']
      reply.text = "#{opjankenpo.sample.capitalize}, #{message.from.first_name}!"

    when /jogadado/i
      ladosdodado = ['Número 01', 'Número 02', 'Número 03', 'Número 04', 'Número 05', 'Número 06']
      reply.text = "#{ladosdodado.sample.capitalize}, #{message.from.first_name}!"

    when /meudesafio/i
      opdesafio = ['Nada por enquanto...', 'Estou ocupado!', 'SSSSHHHHhhhh!!!!!!!!', 'Cala a boca!', 'Ciao!']
      reply.text = "#{opdesafio.sample.capitalize}, #{message.from.first_name}!"

    when /greets/i
      reply.text = "Olá, #{message.from.first_name}. 🤖"
    else
      reply.text = ["Você deve estar muito chapado pra achar que eu sei o que é #{command.inspect}"," Eu não sei!","Eu não entendi","Não quero entender...","Eu não entendi o que raios #{command.inspect} significa."]
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)

  end
end
