# Introduction to Ruby - Text with direction, references and code
Recurso Ruby:

www.ruby-lang.org

Para visualizar o diretório atual:

pwd

Para criar um diretório:

mkdir nome_do_diretório

Para entrar em um diretório:

cd nome_do_diretório

**O comando acima só funcionará se o nome do diretório estiver listado como uma das pastas dentro do diretório atual.**

Para listar todos os diretórios e arquivos dentro do diretório atual:

ls

Para listar todos os diretórios e arquivos dentro do diretório atual, incluindo arquivos ocultos:

ls -a

Para sair de um diretório (1 nível acima na árvore):

cd ..

Para imprimir "Olá, mundo!" no console ou na saída:

puts "Hello World!"

No REPL, basta clicar no botão "Executar". Mas no Cloud9, AWS Cloud9 ou em seu ambiente local, primeiro certifique-se de estar no diretório que contém o arquivo onde você escreveu o programa "Olá, mundo!" e, em seguida, execute-o usando o comando abaixo (considerando que o nome do arquivo seja playground.rb).

A partir da linha de comando:

ruby playground.rb

Para criar uma variável chamada hello e imprimir o valor de hello:

Olá = "Olá Mundo!" 
coloca olá
A seguir, apresentamos a estrutura de um método em Ruby. Lembre-se das palavras-chave `def` e `end`:

def nome_do_método
  # conteúdo do método
fim
Para escrever um método que diga "Olá, mundo!", você pode escrever:

def say_hello
  coloca "Olá, mundo!"
fim
Em seguida, chame o método simplesmente referenciando o nome:

diga_olá

Método de saudação atualizado:

def dizer_olá ( coisa_para_dizer )
  coloca coisa_para_dizer
fim
Para que esse método diga algo:

diga_olá "Meu nome é Mashrur"

say_hello "Bem-vindo ao Curso Completo de Desenvolvimento Ruby on Rails"

diga_olá "Dá uma olhada, isso imprime tudo o que eu quiser"