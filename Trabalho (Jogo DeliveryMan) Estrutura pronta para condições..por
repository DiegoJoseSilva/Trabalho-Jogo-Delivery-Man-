programa{
	inclua biblioteca Util-->u
	funcao inicio(){
		inteiro v[21], v2[21], jogador1=0, jogador2=0, vencedor, menu, i=0, placar, maior, menor, dado, casa, personagem=0, rodar=0, p=0, somador=0, JogadorAtual=0
		cadeia Ifood= "Ifood", UberEats= "UberEats"

		escreva("Seja bem vindo ao DeliveryMan!")
		escreva("\nDigite 1 para jogar ou qualquer outro valor para finalizar o jogo: ")
		leia(menu)
		se(menu==1) {
			enquanto(personagem==0){
				escreva("\nPara começar jogando e escolher o personagem, cada jogador jogará o dado 1 vez. O jogador que obter o maior número começará jogando e poderá escolher seu personagem. Boa sorte!")
				escreva("\nJogador 1. Pressione 1 para rodar o dado ou qualquer outro valor para passar a vez: ")
				leia(rodar)
			
				se(rodar==1){
					jogador1=u.sorteia(1, 6)
					escreva("\nSeu resultador foi: ", jogador1)
				}senao{
					JogadorAtual=2
					escreva ("\n O Jogador 1 optou por deixar você começar jogando e escolher seu personagem. Aproveite!")
					escreva ("\nJogador 2, pressione 1 para escolher Ifood, 2 para escolher UberEats ou qualquer outro valor para escolha aleatória: ")
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
				escreva ("\nJogador 2. Pressione 1 para rodar o dado ou qualquer outro valor para deixar o Jogador 1 escolher. ")
				leia (rodar)
			}

			se(rodar==1){
				jogador2= u.sorteia(1, 6)
				escreva ("\nSeu resultado foi: ", jogador2)
			}

			se(rodar!=1 e personagem==0){
				JogadorAtual=1
				escreva ("\n O Jogador 2 optou por deixar você jogar primeiro e escolher seu personagem. Aproveite!")
				escreva ("\nJogador 1, pressione 1 para escolher Ifood, 2 para escolher UberEats ou qualquer outro valor para escolha aleatória: ")
				leia (p)
				enquanto (i==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da ", Ifood, " e o jogador 2 está com o entregador da ", UberEats)
							i++
							personagem++
							pare
						caso 2:
							escreva ("\nVocê escolheu o entregador da ", UberEats, " e o jogador 2 está com o entregador da ", Ifood)
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
				JogadorAtual=1
				escreva ("\nO maior resultado foi do jogador 1, portando ele começará jogando e poderá realizar a escolha do personagem. Jogador 1, pressione 1 para escolher o personagem Ifood, 2 para escolher UberEats ou outro valor para que a escolha seja aletória. ")
				leia (p)
				enquanto (i==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da ", Ifood, " e o jogador 2 está com o entregador da ", UberEats)
							i++
							personagem++
							pare
						caso 2:
							escreva ("\nVocê escolheu o entregador da ", UberEats, " e o jogador 2 está com o entregador da ", Ifood)
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
				JogadorAtual=2
				escreva ("\nO maior resultado foi do jogador 2, portando ele poderá realizar a escolha do personagem. Jogador 2, pressione 1 para escolher o personagem Ifood, 2 para escolher UberEats ou outro valor para que a escolha seja aletória. ")
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
							escreva ("\nEscolha aleatória! Boa sorte!")
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

		para(i=0; i < 21; i++){
			v[i]= 0
			v2[i]= 0
		}

		v[jogador1]= 1
		v2[jogador2]= 1
			
		enquanto (v[20]==0 e v2[20]==0){
			
			escreva ("\nJogador ", JogadorAtual, " digite 1 para jogar o dado, 2 para verificar placar ou qualquer outro valor para desistir e finalizar o jogo. ")
			leia (rodar)
			escolha (rodar){
				caso 1:	somador= u.sorteia(1, 6)
						escreva ("\nO resultado do dado foi: ", somador)
				pare
				caso 2:
					escreva ("\nO jogador 1 está na posição: ", jogador1, "\nO jogador 2 está na posição: ", jogador2)
					escreva ("\nJogador ", JogadorAtual, " digite 1 para jogar o dado ou outro valor para desistir e finalizar o jogo. ")
					leia (rodar)
					se (rodar==1){
						somador= u.sorteia(1, 6)
						escreva ("\nO resultado do dado foi ", somador)
					}senao{
						escreva ("\nVocê desistiu e seu oponente venceu!")
						se (JogadorAtual==1){
							v2[20]=1
						}senao{
							v [20]=1
						}
					}
				pare
				caso contrario: 
					escreva ("\nVocê desistiu e seu oponente venceu!")
					se (JogadorAtual==1){
						v2[20]=1
					}senao{
						v [20]=1
					}
				pare
			}
					
			se(JogadorAtual==1){
				jogador1= jogador1 + somador
				se (jogador1>20){
					jogador1=20
				}
				se (rodar==1){
					escreva ("\nParabéns você avançou para a casa: ", jogador1)			
				}
				para (i=0; i<21; i++){
					v [i]=0
				}
				v[jogador1]= 1
					
				se (v [2]==1){
					para (i=0; i<21; i++){
								v[i]= 0
					}
					escreva ("\nVocê encontrou um atalho na casa 2 e avançou diretamente para a casa 5. Ihull!")
					jogador1= 5
					v [5]=1					
				}
				
				se (v[3]==1){
					para (i=0; i<21; i++){
						v[i]= 0
					}
					escreva ("\nVocê ganhou uma jogada adicional de um dado de 3 lados.Boa sorte!")
					escreva ("\nJogador ", JogadorAtual, " digite 1 para jogar o dado, 2 para verificar placar ou qualquer outro valor para desistir e finalizar o jogo. ")
					leia (rodar)
					i=0
					enquanto (i==0){
						escolha (rodar){
						caso 1: 
							somador= u.sorteia(1, 3)
							escreva ("\nO resultado do dado foi ", somador)
							jogador1= jogador1 + somador
							se (jogador1>20){
								jogador1=20
							}
							v[jogador1]= 1
							i++
							escreva ("\nParabéns você avançou para casa: ", jogador1)
							JogadorAtual=2
						pare
						caso 2:
							escreva ("\nO jogador 1 está na posição: ", jogador1, "\nO jogador 2 está na posição: ", jogador2)
							escreva ("\nJogador ", JogadorAtual, " digite 1 para jogar o dado ou outro valor para desistir e finalizar o jogo. ")
							leia (rodar)
							se (rodar==1){
								somador= u.sorteia(1, 3)
								escreva ("\nO resultado do dado foi ", somador)
								jogador1= jogador1 + somador
								se (jogador1>20){
								jogador1=20
								}
								v[jogador1]= 1
								i++
								escreva ("\nParabéns você avançou para casa: ", jogador1)
								JogadorAtual=2
							}senao{
								escreva ("\nVocê desistiu e seu oponente venceu!")
								se (JogadorAtual==1){
									v2[20]=1
								}senao{
									v [20]=1
								}
							}
							i++
						pare
						caso contrario: 
							escreva ("\nVocê desistiu e seu oponente venceu!")
							se (JogadorAtual==1){
									v2[20]=1
							}senao{
									v [20]=1
							}
							i++
						pare
						}
					}
				}
				JogadorAtual=2	
			}senao{
					jogador2= jogador2 + somador
					se (jogador2>20){
								jogador2=20
					}
					se (rodar==1){
						escreva ("\nParabéns você avançou para casa: ", jogador2)
					}
					para (i=0; i<21; i++){
						v2 [i]= 0
					}
					v2 [jogador2]=1
						
					se (v2 [2]==1){
						para (i=0; i<21; i++){
							v[i]= 0
						}
						escreva ("\nVocê encontrou um atalho e avançou direto para a casa 5! Ihull!")
						jogador2= 5
						v2 [5]=1
									
					}se (v[3]==1){
						escreva ("\nVocê ganhou uma jogada adicional de um dado de 3 lados.Boa sorte!")
						escreva ("\nJogador ", JogadorAtual, " digite 1 para jogar o dado, 2 para verificar placar ou qualquer outro valor para desistir e finalizar o jogo. ")
						leia (rodar)
						i=0
						enquanto (i==0){
							escolha (rodar){
								caso 1: 
									somador= u.sorteia(1, 3)
									escreva ("\nO resultado do dado foi ", somador)
									jogador2= jogador2 + somador
									se (jogador2>20){
										jogador2=20
									}
									v2[jogador2]=1
									i++
									escreva ("\nParabéns você avançou para casa: ", jogador2)
									JogadorAtual=1
								pare
								
								caso 2:
									escreva ("\nO jogador 1 está na posição: ", jogador1, " \nO jogador 2 está na posição: ", jogador2)
									escreva ("\nJogador ", JogadorAtual, " digite 1 para jogar o dado ou outro valor para desistir e finalizar o jogo. ")
									leia (rodar)
									se (rodar==1){
										somador= u.sorteia(1, 3)
										escreva ("\nO resultado do dado foi ", somador)
										jogador2= jogador2 + somador
										se (jogador2>20){
											jogador2=20
										}
										v2[jogador2]=1
										i++
										escreva ("\nParabéns você avançou para casa: ", jogador2)
										JogadorAtual=1
									}senao{
										escreva ("\nVocê desistiu e seu oponente venceu!")
										se (JogadorAtual==1){
											v2[20]=1
										}senao{
											v [20]=1
										}
									}
									i++
								pare
								
								caso contrario: 
									escreva ("\nVocê desistiu e seu oponente venceu!")
									se (JogadorAtual==1){
										v2[20]=1
									}senao{
										v [20]=1
									}
									i++
								pare
							}
						}
					}
					JogadorAtual=1
					}	
				}	
			}
		se (v[20]==1){
			escreva ("\nO jogador vencedor foi o Jogador 1")
			escreva ("\nJogo finalizado com sucesso! Te vemos em breve!")
		}se (v2[20]==1){
			escreva ("\nO jogador vencedor foi o Jogador 2")
			escreva ("\nJogo finalizado com sucesso! Te vemos em breve!")
			}
		}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6000; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {v, 4, 10, 1}-{v2, 4, 17, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */