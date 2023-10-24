if global.pergunta = -2{
	texto = "ATENÇÃO:Apesar de nossas pesquisas para este app terem envolvido conversas com especialistas(pedagogas da instituição), não somos especialistas no tema saúde mental, por isso, as perguntas a seguir são extremamente abrangentes, permitindo com que o jogador, tenha acesso a apenas uma noção simplificada sobre seu nível de QE. Não se baseie totalmente nesse quiz, caso sinta qualquer desconforto emocional, indicamos a procura de um psicólogo."
}

if global.pergunta = -1{
	texto = "O que é QE? Assim como o QI(Quociente Intelectual), é um indicador do nível de intelecto de cada indivíduo, o QE(Quociente Emocional), é o teste que indica o quão bem desenvolvido o ser se encontra emocionalmente, ou seja, como sua saúde emocional se encontra e quão bem consegue lidar com os diversos problemas e estresses relacionados ao âmbito cotidiano."
}

if global.pergunta = 0{
	if !instance_exists(Obj_botao_jogar){
		instance_destroy(Obj_botao_ok)
		instance_create_layer(405, 1725, "Instances", Obj_botao_jogar)
	}
	texto = "Qual seu nível de quociente emocional?"
}

if global.pergunta = 1{
	if !instance_exists(Obj_botao_quiz){
	instance_destroy(Obj_botao_jogar)
	instance_create_layer(90, 1050, "Instances", Obj_botao_quiz)
	instance_create_layer(90, 1455, "Instances", Obj_botao_quiz2)
	instance_create_layer(690, 1050, "Instances", Obj_botao_quiz4)
	instance_create_layer(690, 1455, "Instances", Obj_botao_quiz3)
	instance_create_layer(405, 1725, "Instances", Obj_botao_quiz5)
	}
	texto = "1) Você se sente desconfortável na presença de outras pessoas?"
}else if global.pergunta = 2
{
	texto = "2) Em situações de estresse, você costuma descontar em si mesmo ou naqueles ao seu redor?"
}else if global.pergunta = 3
{
	texto = "3) Você costuma se culpar pelos acontecimentos ruins ao seu redor? "
}else if global.pergunta = 4
{
	texto = "4) Acaba não conseguindo relaxar e fazer pausas, mesmo ao identificar que está nos seus momentos de limite? (Cotidiano/Trabalho/estudo)."
}else if global.pergunta = 5
{
	texto = "5) Remedia a solução dos seus problemas, até que não possam mais ser ignorados?"
}else if global.pergunta = 6
{
	texto = "6) Quão frequentemente você discute, mesmo sabendo que está errado(a)?"
}else if global.pergunta = 7
{
	texto = "7) Se sente desconfortável com a solitude?"
}else if global.pergunta = 8
{
	texto = "8) Você se considera uma pessoa ansiosa"
}else if global.pergunta = 9
{
	texto = "9) Você acha que consegue ser você mesmo, sem tentar fingir?"

}else if global.pergunta = 10
{
	texto = "10) Se você morresse hoje, teria muitos arrependimentos quanto a tudo que viveu?"
}

if global.pergunta = 11
{
	instance_destroy(Obj_botao_quiz)
	instance_destroy(Obj_botao_quiz2)
	instance_destroy(Obj_botao_quiz3)
	instance_destroy(Obj_botao_quiz4)
	instance_destroy(Obj_botao_quiz5)
	instance_create_layer(405, 1725, "instances", Obj_botao_voltar)
	if global.pontos >= 5 && global.pontos <=16
	{
		texto = "Parabéns por chegar até aqui! De acordo com suas respostas, seu nível de QE está um pouco abaixo da média, mas não se preocupe, nós estamos aqui para te ajudar! Procure trabalhar com o que te aflige e superar essas dificuldades, também aconselhamos fortemente a procura de um psicólogo, para auxiliar você a lidar mais profundamente com essas questões. Caso você não tenha essa possibilidade, nosso app possui alguns recursos que podem também auxiliar em conjunto nesse processo de superação, como por exemplo, o diário de escrita terapeútica e as trilhas sonoras, sinta-se em casa, aqui você sempre será bem vindo(a). Lembre-se 'Saúde é o estado de completo bem-estar físico, mental e social e não somente a ausência de doença.' - OMS"
	}
	else if global.pontos >= 17 && global.pontos <=33
	{
		texto = "Parabéns por chegar até aqui! De acordo com suas respostas, seu nível de QE está dentro das métricas esperadas, você consegue lidar bem com determinadas áreas do seu emocional e tem certa dificuldade com outras, está tudo bem! Procure trabalhar com o que te aflige e superar essas dificuldades, aconselhamos a procura de um psicólogo para lidar mais profundamente com esses problemas, no entanto, nosso app possui alguns recursos que podem também auxiliar em conjunto nesse processo de superação. Lembre-se 'Saúde é o estado de completo bem-estar físico, mental e social e não somente a ausência de doença.' - OMS"
	}
	else if  global.pontos >= 34 && global.pontos <=50
	{
		texto = " Parabéns por chegar até aqui! Seu nível de QE é consideravelmente alto, continue assim, não se esqueça de continuar se cuidando e trabalhando para permanecer em harmonia. Lembre-se 'Saúde é o estado de completo bem-estar físico, mental e social e não somente a ausência de doença.' - OMS"
	}
}