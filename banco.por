programa {
  funcao inicio() {
    inteiro menu = 1,meses=0,rendimento=0
    real saldo=0,saque,deposito,investimento=0
    cadeia extrato = " ",controle

    enquanto( menu !=0){
    escreva("--> SALDO: R$ ",saldo,"\n")
    escreva("====== Selecone uma opção: ======\n")
    escreva("1) Saque\n2) Deposito\n3) Extrato\n4) Saldo\n5) Investimento\n0) Sair\n")
    escreva("| Escolha : ")
    leia(menu)
    limpa()}

    escolha(menu){
      caso 1:
      // saque
      escreva("digite o valor para o saque:")
      leia(saque)
      enquanto(saque<=0){
        escreva("Valor invalido,tente novamente:")
        leia(saque)
      }
      se(saque>saldo){
        escreva("Não autorizado!!")
        leia(saque)
      }
      senao{
      saldo = saldo - saque 
      escreva("Saque realizado com sucesso!! \n ")
      extrato = extrato + "Saque ---------- R$" + saque + "\n"
      escreva("Aperte ENTER para continuar")
      leia(controle)
      limpa()
      }
      pare
      caso 2:
      // deposito 
      escreva("digite o valor para deposito: ")
      leia(deposito) 
      enquanto(deposito<=0){
        escreva("Valor invalido,tente novamente:")
        leia(deposito)
      }
     saldo = saldo+deposito
     extrato= extrato + "Deposito ---------- R$ " + deposito + saque "/n"
      escreva("Deposido realizado com sucesso!!")
      escreva("Aperte ENTER para continuar")
      leia(controle)
      limpa()
      pare
      caso 3:
      // extrato
      escreva(extrato)
      escreva("Aperte ENTER para continuar")
      leia(controle)
      limpa()
      pare
      caso 4 :
      // saldo
      escreva("Saldo = ",saldo,"/n")
      pare
      caso 5 :
      // investimento
      escreva("Digite o valor do investimento:")
      leia(investimento)
      escreva("Digite a quantidade de meses que deseja investir:")
      leia(meses)
      se(saldo>=investimento){
        saldo=saldo-investimento
      para(inteiro i=1;i<=meses;i++){
          rendimento = investimento*1.02
          investimento = rendimento
        }
        escreva(meses,"se passaram!\n")
        escreva("Seu rendimento foi: ",investimento,"\n")
        saldo = saldo + investimento
      }
      senao{
        escreva("Não autorizado!")
      }
      pare
    }
  }
}