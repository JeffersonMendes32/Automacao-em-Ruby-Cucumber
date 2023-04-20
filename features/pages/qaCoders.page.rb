class QaPage < SitePrism::Page
  element :sobreNosLink, :xpath, "/html/body/div/div/div/header/div/ul/li[1]/a"
  element :depoimentosLink, :xpath, "/html/body/div/div/div/header/div/ul/li[2]/a"
  element :parceirosLink, :xpath, "/html/body/div/div/div/header/div/ul/li[3]/a"
  element :faleConoscoLink, :xpath, "/html/body/div/div/div/header/div/ul/li[4]/a"

  def clicksSobreNos
    sobreNosLink.click
  end

  def clicksDepoimentos
    depoimentosLink.click
  end

  def clicksParceiros
    parceirosLink.click
  end

  def clicksFaleConosco
    faleConoscoLink.click
  end
end
