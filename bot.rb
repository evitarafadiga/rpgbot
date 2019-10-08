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
      mensagemi1 = ['O seu inicial Tipo Normal é...']
      mensagemi2 = ['Agora tem o direito de um inicial Tipo Fantasma! Ele será...']
      iniciaisfant = ['https://play.pokemonshowdown.com/sprites/bw/honedge.png','https://play.pokemonshowdown.com/sprites/bw/gastly.png','https://play.pokemonshowdown.com/sprites/bw/sableye.png','https://play.pokemonshowdown.com/sprites/bw/mimikyu.png','https://play.pokemonshowdown.com/sprites/bw/shuppet.png','https://play.pokemonshowdown.com/sprites/bw/litwick.png','https://play.pokemonshowdown.com/sprites/bw/blacephalon.png','https://play.pokemonshowdown.com/sprites/bw/dhelmise.png','https://play.pokemonshowdown.com/sprites/bw/froslass.png','https://play.pokemonshowdown.com/sprites/bw/oricorio-sensu.png']
      iniciaisnorm = ['https://play.pokemonshowdown.com/sprites/bw/azurill.png','https://play.pokemonshowdown.com/sprites/bw/igglybuff.png','https://play.pokemonshowdown.com/sprites/bw/sentret.png','https://play.pokemonshowdown.com/sprites/bw/happiny.png','https://play.pokemonshowdown.com/sprites/bw/bunnelby.png','https://play.pokemonshowdown.com/sprites/bw/whismur.png','https://play.pokemonshowdown.com/sprites/bw/zigzagoon.png','https://play.pokemonshowdown.com/sprites/bw/starly.png','https://play.pokemonshowdown.com/sprites/bw/bidoof.png','https://play.pokemonshowdown.com/sprites/bw/pidgey.png','https://play.pokemonshowdown.com/sprites/bw/yungoos.png','https://play.pokemonshowdown.com/sprites/bw/spearow.png','https://play.pokemonshowdown.com/sprites/bw/hoothoot.png','https://play.pokemonshowdown.com/sprites/bw/skitty.png','https://play.pokemonshowdown.com/sprites/bw/patrat.png','https://play.pokemonshowdown.com/sprites/bw/rattata.png','https://play.pokemonshowdown.com/sprites/bw/rattata-alola.png',
    'https://play.pokemonshowdown.com/sprites/bw/pidove.png','https://play.pokemonshowdown.com/sprites/bw/pikipek.png','https://play.pokemonshowdown.com/sprites/bw/taillow.png','https://play.pokemonshowdown.com/sprites/bw/jigglypuff.png','https://play.pokemonshowdown.com/sprites/bw/lillipup.png','https://play.pokemonshowdown.com/sprites/bw/fletchling.png','https://play.pokemonshowdown.com/sprites/bw/slakoth.png','https://play.pokemonshowdown.com/sprites/bw/ditto.png','https://play.pokemonshowdown.com/sprites/bw/helioptile.png','https://play.pokemonshowdown.com/sprites/bw/meowth.png','https://play.pokemonshowdown.com/sprites/bw/minccino.png','https://play.pokemonshowdown.com/sprites/bw/glameow.png','https://play.pokemonshowdown.com/sprites/bw/swablu.png','https://play.pokemonshowdown.com/sprites/bw/doduo.png','https://play.pokemonshowdown.com/sprites/bw/eevee.png','https://play.pokemonshowdown.com/sprites/bw/teddiursa.png','https://play.pokemonshowdown.com/sprites/bw/deerling.png','https://play.pokemonshowdown.com/sprites/bw/stufful.png',
  'https://play.pokemonshowdown.com/sprites/bw/rufflet.png','https://play.pokemonshowdown.com/sprites/bw/buneary.png','https://play.pokemonshowdown.com/sprites/bw/spinda.png','https://play.pokemonshowdown.com/sprites/bw/aipom.png','https://play.pokemonshowdown.com/sprites/bw/litleo.png','https://play.pokemonshowdown.com/sprites/bw/farfetchd.png','https://play.pokemonshowdown.com/sprites/bw/lickitung.png','https://play.pokemonshowdown.com/sprites/bw/munchlax.png','https://play.pokemonshowdown.com/sprites/bw/porygon.png','https://play.pokemonshowdown.com/sprites/bw/chatot.png','https://play.pokemonshowdown.com/sprites/bw/dunsparce.png','https://play.pokemonshowdown.com/sprites/bw/castform.png','https://play.pokemonshowdown.com/sprites/bw/kecleon.png','https://play.pokemonshowdown.com/sprites/bw/audino.png','https://play.pokemonshowdown.com/sprites/bw/girafarig.png','https://play.pokemonshowdown.com/sprites/bw/komala.png','https://play.pokemonshowdown.com/sprites/bw/stantler.png','https://play.pokemonshowdown.com/sprites/bw/furfrou.png',
  'https://play.pokemonshowdown.com/sprites/bw/drampa.png','https://play.pokemonshowdown.com/sprites/bw/oranguru.png','https://play.pokemonshowdown.com/sprites/bw/bouffalant.png','https://play.pokemonshowdown.com/sprites/bw/miltank.png','https://play.pokemonshowdown.com/sprites/bw/tauros.png','https://play.pokemonshowdown.com/sprites/bw/kangaskhan.png','https://play.pokemonshowdown.com/sprites/bw/typenull.png','https://play.pokemonshowdown.com/sprites/bw/meloetta.png']
      reply.text = "#{mensagemi1.sample.capitalize}, #{message.from.first_name}!"
      reply.text = "#{iniciaisnorm.sample.capitalize}, #{message.from.first_name}!"
      reply.text = "#{mensagemi2.sample.capitalize}, #{message.from.first_name}!"
      reply.text = "#{iniciaisfant.sample.capitalize}, #{message.from.first_name}!"
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
      reply.text = ["Olá, #{message.from.first_name}. Já anotei seu nome no livro dos condenados...","Olá, #{message.from.first_name}. Reservei um lugarzinho especial aqui embaixo..."
    else
      reply.text = ["Você deve estar muito chapado pra achar que eu sei o que é #{command.inspect}"," Eu não sei!","Eu não entendi","Não quero entender...","Eu não entendi o que raios #{command.inspect} significa."]
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)

  end
end
