#language: pt

Funcionalidade: Menu da pagina inicial
# Para Auxliar o usuario ou parceiro sobre obter mais informações e conhecer o projeto
# O usuario ou parceiro do Qa.Coders
# Deseja Sanar duvidas ou conhecer mais sobre o projeto



Esquema do Cenario: Itens menu 
Dado que o usuario esteja na home
Quando ele clica no item "<Item>"
Entao levara a sessão correspondente

Exemplos:
|Item          |
|Sobre_nós     |
|Depoimentos   |
|Parceiros     |
|Fale_Conosco  |