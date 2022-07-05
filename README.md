# Estrutura de projeto para criar automação de teste com Capybara

Capybara é uma gem (https://rubygems.org/) do Ruby (necessário a instalação para utilizar este projeto) usada para testar aplicações Web.
Utiliza como base o Selenium WebDriver. A gem é mantida pela comunicade Ruby.

É possível testar em aplicação web de qualquer linguagem.

É um framework de automação focado em aplicação web. 

Open source!

# Como configurar o Capybara:

1 - Criar pasta do projeto no diretório C: (se for Windowns, se não em qualquer local)

2 - Abrir pasta no PROMPT e na IDE

3 - Executar comando no terminal dentro da pasta para criar uma estrutura Ruby:
```
bundle init 
```
OBS.: se não executar, verificar se o bundle está instalado -> gem install bundler

4 - Verificar se criou o arquvio chamado Gemfile

5 - No arquivo Gemfile, necessário as gem: capybara | rspec | selenium-webdriver | ffi

6 - Manter as versões atualizadas no arquivo Gemfile e após alterar executar:
```
bundle install
```
7 - Quando termina a instalação com sucesso, gera o arquivo Gemfile.lock onde exibe todo o histórico de instalação

8 - Após, iniciar o projeto de teste com o comando:
```
rspec --init
```
OBS.: se executado com sucesso, cria: o arquivo .rspec e pasta spec com o arquivo spec_helper.rb (spec/spec_helper.rb)

9 - Para rodar os testes, usar:
```
rspec
```
OBS.: não irá executar, pois até aqui não criamos nenhum cenário

10 - Pronto, você já pode criar seus testes.
Neste projeto, deixei pronto o arquivo: hello_spec.rb

Algumas informações importantes:
- seguir a nomenclarura: xxx_spec.rb (onde xxx, é o nome que você deseja)
- estar dentro da pasta spec
- .rb porque será em Ruby
- _spec porque é um arquivo de teste

11 - Para o rspec abrir os navegadores com o capybara, necessário fazer a seguinte ajuste:
- No arquivo spec_helper.rb remover todos os comentários (se achar necessário, não é obrigatório, apenas para deixar o código mais limpo)
- Salvar e rodar o comando rspec para ver se o código está ok
- Incluir no início do código:
```
require "capybara"
require "capybara/rspec"
require "selenium-webdriver"
```
- Incluir no final do código, antes do último end:
```
 config.include Capybara::DSL
```
- Incluir no final do código, após do último end:
```
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
```
- Salvar e rodar o comando rspec para ver se o código está ok

12 - Lembrando que deve estar instalado o chromedriver e estar em algum lugar do PATH (no meu caso, coloquei dentro da pasta Windowns. Para saber quais pastas são PATH, executar o comando: echo %path%).
