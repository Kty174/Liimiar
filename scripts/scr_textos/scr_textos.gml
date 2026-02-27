function scr_textos(){
		
	obj_player.estado = "dialogo";
	
	if(global.idioma[global.idindc]=="ptbr"){
	
		switch (npc_nome){
						
		#region falas ryan 0

		case "ryan 0":

		    ds_grid_add_text("Então... você realmente escolheu ESSE prédio pra testar o implante?", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Qual o drama? Ele tá vazio, isolado... perfeito pra teste.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Perfeito é uma palavra meio otimista.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Esse lugar é antigo. Antigo tipo 'se fizer barulho demais o teto cai'.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Quase fui esmagado por uma daquelas portas de metal pesadas", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("E olha sempre pra cima. Sério.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Você tá me tranquilizando bastante.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Eu ativei alguns drones de manutenção pra te ajudar.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Ou tentar pelo ao menos.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Relaxa. Se o prédio cair, pelo menos o implante vai ter sido testado.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Essa não é exatamente a métrica de sucesso que eu tinha em mente.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		break;

		#endregion

		#region falas ryan 1

		case "ryan 1":

		    ds_grid_add_text("Você simplesmente SUMIU na minha frente!", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Era meio que a proposta do projeto.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Mas funcionou! O W.E.B realmente funcionou!", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Eu te disse que ia funcionar.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Eu sei, mas ver na prática é diferente.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Algumas estruturas aí dentro devem reagir diferente quando você alterna os mundos.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Tipo plataformas que existem em um e somem no outro?", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Exato. E algumas coisas podem ficar... menos estáveis.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Ótimo. Realidade alternativa e risco estrutural. Meu combo favorito.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Só não exagera. Alternar o W.E.B no momento errado pode te deixar sem chão.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Confia em mim.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("É exatamente isso que me preocupa.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		break;

		#endregion

		#region falas ryan 2

		case "ryan 2":

		    ds_grid_add_text("Oi de novo.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Você tá me seguindo por outro elevador secreto ou o quê?", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Eu dou meus pulos.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Digamos que eu conheço melhor essa torre do que você imagina.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Isso não é nada suspeito.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Suspeito é você continuar subindo como se esse lugar não estivesse desmanchando.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Os andares daqui pra cima são mais antigos.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Tem partes que só continuam de pé por pura teimosia estrutural.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Então eu e o prédio temos algo em comum.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Helena, eu tô falando sério.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Se o chão começar a tremer debaixo dos seus pés, só corre... É serio.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
			

		    ds_grid_add_text("Você tá mais nervoso que o normal.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Eu só tô fazendo meu papel.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Te acompanhar até o topo.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		break;

		#endregion
			
		#region falas ryan 3

		case "ryan 3":

		    ds_grid_add_text("Helena... para um segundo.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Eu tô ouvindo.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Esse é o andar mais antigo da torre.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("A estrutura aqui não é só velha... ela foi modificada.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Modificada como?", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Como se alguém tivesse tentado adaptar esse lugar pra outra coisa.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Tem reforços onde não devia ter... e ausência deles onde precisava.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Ryan...", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Eu não tô preocupado só com o prédio.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("O W.E.B reage diferente aqui em cima.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Diferente como?", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Eu não consigo ler todos os sinais.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Tem zonas que desaparecem do meu rastreamento quando você alterna.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Então você não consegue me ver direito.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Não.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("E isso é o que tá me deixando nervoso.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Se alguma coisa der errado...", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Eu talvez não consiga te puxar de volta.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Eu não vim até aqui pra parar agora.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Eu sei.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("E é exatamente por isso que eu tô com medo.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("Medo de eu falhar?", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Medo de te perder.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		    ds_grid_add_text("...", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Eu sempre volto.", Shollow_retrato, 0, "Helena", snd_voice);

		    ds_grid_add_text("Então sobe.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
		    ds_grid_add_text("Mas volta inteira.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

		break;

		#endregion

				
		}
		
	}else{

		switch (npc_nome){
		
			#region ryan 0 dialogue

				case "ryan 0":

				    ds_grid_add_text("So... you really picked THIS building to test the implant?", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("What's the problem? It's empty, isolated... perfect for testing.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("'Perfect' is a bit optimistic.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("This place is old. Old as in 'make too much noise and the ceiling comes down' old.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("I almost got crushed by one of those heavy metal doors.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("And keep looking up. Seriously.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("You're really helping me relax here.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("I activated a few maintenance drones to help you out.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("Or at least... try to.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("Relax. If the building collapses, at least the implant will be thoroughly tested.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("That is not exactly the success metric I had in mind.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				break;

			#endregion

			#region ryan 1 dialogue

				case "ryan 1":

				    ds_grid_add_text("You just DISAPPEARED right in front of me!", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("That was kind of the whole point.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("But it worked! The W.E.B actually worked!", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("Told you it would.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("I know, but seeing it happen is different.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("Some structures in there might react differently when you switch worlds.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("Like platforms that exist in one and vanish in the other?", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("Exactly. And some things might become... less stable.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("Great. Alternate reality and structural hazards. My favorite combo.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("Just don't overdo it. Switching at the wrong time could leave you with no ground under your feet.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("Trust me.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("That's exactly what worries me.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				break;

			#endregion

			#region ryan 2 dialogue

				case "ryan 2":

					ds_grid_add_text("Hey again.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

					ds_grid_add_text("Are you following me through some secret elevator or what?", Shollow_retrato, 0, "Helena", snd_voice);

					ds_grid_add_text("I have my ways.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
					ds_grid_add_text("Let's just say I know this tower better than you think.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

					ds_grid_add_text("That doesn't sound suspicious at all.", Shollow_retrato, 0, "Helena", snd_voice);

					ds_grid_add_text("What's suspicious is you climbing like this place isn't slowly falling apart.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

					ds_grid_add_text("The floors above are even older.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
					ds_grid_add_text("Some sections are standing purely out of structural stubbornness.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

					ds_grid_add_text("So me and the building have something in common.", Shollow_retrato, 0, "Helena", snd_voice);

					ds_grid_add_text("Helena, I'm serious.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
					ds_grid_add_text("If the floor starts shaking under you, just run. Seriously.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

					ds_grid_add_text("You're more nervous than usual.", Shollow_retrato, 0, "Helena", snd_voice);

					ds_grid_add_text("I'm just doing my job.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
					ds_grid_add_text("Following you to the top.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

			break;

			#endregion

			#region ryan 3 dialogue

				case "ryan 3":

				    ds_grid_add_text("Helena... stop for a second.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("I'm listening.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("This is the oldest floor of the tower.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("The structure isn't just old... it was modified.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("Modified how?", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("Like someone tried to repurpose this place for something else.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("There are reinforcements where they shouldn't be... and missing ones where they should.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("Ryan...", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("I'm not just worried about the building.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("The W.E.B reacts differently up there.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("Differently how?", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("I can't read all the signals.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("Some zones disappear from my tracking when you switch.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("So you can't see me properly.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("No.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("And that's what's making me nervous.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("If something goes wrong...", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("I might not be able to pull you back.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("I didn't come this far to stop now.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("I know.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("And that's exactly why I'm scared.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("Scared I'll fail?", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("Scared I'll lose you.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				    ds_grid_add_text("...", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("I always come back.", Shollow_retrato, 0, "Helena", snd_voice);

				    ds_grid_add_text("Then go.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);
				    ds_grid_add_text("But come back in one piece.", Snpc_ryan_retrato, 1, "Ryan", snd_voice_2);

				break;

			#endregion

		}
			
	}

}

function ds_grid_add_row()
{
///arg ds_grid

var _grid = argument[0];
ds_grid_resize( _grid,ds_grid_width( _grid),ds_grid_height( _grid)+1);
return(ds_grid_height( _grid)-1);
}

function ds_grid_add_text(){
////@arg texto 
////@arg retrato 
////@arg lado
var _grid = texto_grid;
var _y = ds_grid_add_row(_grid);

_grid[# 0, _y] = argument[0];
_grid[# 1, _y] = argument[1];
_grid[# 2, _y] = argument[2];
_grid[# 3, _y] = argument[3];
_grid[# 4, _y] = argument[4];
}
	
function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++;
}
