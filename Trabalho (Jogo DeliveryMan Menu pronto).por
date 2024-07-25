programa{
	inclua biblioteca Util-->u
	funcao inicio(){
		inteiro v[21], v2[21], jogador1=0, jogador2=0, vencedor, menu, i=0, placar, maior, menor, dado, casa, personagem=0, rodar=0, p=0, somador, JogadorAtual
		cadeia Ifood= "Ifood", UberEats= "UberEats"

		escreva("Seja bem vindo ao DeliveryMan!")
		escreva("\nDigite 1 para jogar, 2 para verificar o placar ou qualquer outro valor para finalizar o jogo: ")
		leia(menu)
		se(menu==1) {
			enquanto(personagem==0){
			escreva("\nPara escolher o personagem, cada jogador jogará o dado 1 vez. O jogador que obter o maior número poderá escolher seu personagem. Boa sorte!")
			escreva("\nJogador 1. Pressione 1 para rodar o dado ou qualquer outro valor para passar a vez.")
			leia(rodar)
			
			se(rodar==1){
				jogador1=u.sorteia(1, 6)
				escreva("\nSeu resultador foi: ", jogador1)
			}senao{
				escreva ("\n O Jogador 1 optou por deixar você escolher seu personagem. Aproveite!")
				escreva ("\nJogador 2, pressione 1 para escolher Ifood, 2 para escolher UberEats ou qualquer outro valor para escolha aleatória")
				leia (p)
				enquanto (i==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da ", Ifood, " e o jogador 1 está com o entregador da ", UberEats)
							i++
							personagem++
							pare
						caso 2: 
							escreva ("\nVocê escolheu o entregador da ", UberEats, " e o jogador 1 está com o entregador da ", Ifood)
							i++
							personagem++
							pare 
						caso contrario: 
							escreva ("Escolha aleatória! Boa sorte!")
							p=u.sorteia(1, 2)
							pare
					}
				}	
			}

			se(personagem==0){
				escreva ("\nJogador 2. Pressione 1 para rodar o dado ou qualquer outro valor para deixar o Jogador 1 escolher.")
				leia (rodar)
			}

			se(rodar==1){
				jogador2= u.sorteia(1, 6)
				escreva ("\nSeu resultado foi: ", jogador2)
			}

			se(rodar!=1 e personagem==0){
				escreva ("\n O Jogador 2 optou por deixar você escolher seu personagem. Aproveite!")
				escreva ("\nJogador 1, pressione 1 para escolher Ifood, 2 para escolher UberEats ou qualquer outro valor para escolha aleatória")
				leia (p)
				enquanto (i==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da ", Ifood, " e o jogador 1 está com o entregador da ", UberEats)
							i++
							personagem++
							pare
						caso 2:
							escreva ("\nVocê escolheu o entregador da ", UberEats, " e o jogador 1 está com o entregador da ", Ifood)
							i++
							personagem++
							pare
						caso contrario:
							escreva ("Escolha aleatória! Boa sorte!")
							p=u.sorteia(1, 2)
							pare
					}
				}
			}

			se(jogador1 > jogador2 e personagem == 0){
				escreva ("\nO maior resultado foi do jogador 1, portando ele poderá realizar a escolha do personagem. Jogador 1, pressione 1 para escolher o personagem Ifood, 2 para escolher UberEats ou outro valor para que a escolha seja aletória.")
				leia (p)
				enquanto (i==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da ", Ifood, " e o jogador 1 está com o entregador da ", UberEats)
							i++
							personagem++
							pare
						caso 2:
							escreva ("\nVocê escolheu o entregador da ", UberEats, " e o jogador 1 está com o entregador da ", Ifood)
							i++
							personagem++
							pare
						caso contrario:
							escreva ("Escolha aleatória! Boa sorte!")
							p=u.sorteia(1, 2)
							pare
					}
				}			
			}

			se(jogador2 > jogador1 e personagem == 0){
				escreva ("\nO maior resultado foi do jogador 2, portando ele poderá realizar a escolha do personagem. Jogador 2, pressione 1 para escolher o personagem Ifood, 2 para escolher UberEats ou outro valor para que a escolha seja aletória.")
				leia (p)
				enquanto(i==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da ", Ifood, " e o jogador 1 está com o entregador da ", UberEats)
							i++
							personagem++
							pare
						caso 2: 
							escreva ("\nVocê escolheu o entregador da ", UberEats, " e o jogador 1 está com o entregador da ", Ifood)
							i++
							personagem++
							pare 
						caso contrario: 
							escreva ("Escolha aleatória! Boa sorte!")
							p=u.sorteia(1, 2)
							pare
					}
				}		
			}

				se(jogador1 == jogador2 e personagem == 0){
					escreva ("\nEmpate! Vamos jogar os dados novamente")	
				}
			}

		//Jogadores recebem posição1
		jogador1=1
		jogador2=1
		JogadorAtual=1

		para(i=0; i < 21; i++){
			v[i]= 0
			v2[i]= 0
		}

		v[jogador1]= 1
		v2[jogador2]= 1
			
		enquanto (v[20]==0 e v2 [20]==0){		
			escreva ("\nJogador ", JogadorAtual, " digite 1 para jogar o dado, 2 para verificar placar ou qualquer outro valor para desistir e finalizar o jogo.")
			leia (rodar)
			se (rodar==1){
				somador= u.sorteia(1, 6)
				escreva ("O resultado do dado foi ", somador)

				para (i=0; i<21; i++){
					v[i]= 0
					v2 [i]=0
				}	

				se(JogadorAtual==1){
					jogador1= jogador1 + somador
					escreva ("\nParabéns você avançou para casa: ", jogador1)
					v[jogador1]= 1
					JogadorAtual=2

				}senao{
						jogador2= jogador2 + somador
						escreva ("\nParabéns você avançou para casa: ", jogador2)
						v2 [jogador2]=1
						JogadorAtual=1
				}
			}
		}

			se(menu == 2){
				escreva ("\nVerificar placar")
			}senao{
				escreva ("\nJogo finalizado com sucesso")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 78; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {v, 6, 10, 1}-{v2, 6, 17, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */