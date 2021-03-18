require_relative './lib/palindrome'

def main
    p 'Por favor, digite uma palavra ou frase para verificar se é um Palíndromo!'
    p '* para verificar uma sequência de números, digite-os entre áspas.'
    p '* para sair, digite 0'
    
    string = gets.chomp

    p palindrome?(string)
end

main