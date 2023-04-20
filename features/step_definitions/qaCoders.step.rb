Dado('que o usuario esteja na home') do
    visit '/'
    sleep 3
  end
  
  Quando('ele clica no item {string}') do |item|
    @test = QaPage.new
    case item
    when 'Sobre_nós'
      @test.clicksSobreNos
      sleep 3
    when 'Depoimentos'
      @test.clicksDepoimentos
      sleep 3
    when 'Parceiros'
      @test.clicksParceiros
      sleep 3
    when 'Fale_Conosco'
      @test.clicksFaleConosco
      sleep 3
    end
  end
  
  Entao('levara a sessão correspondente') do

  end