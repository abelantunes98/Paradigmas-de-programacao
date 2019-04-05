echo Nome do arquivo: 
read nome

g++ -o  $nome $nome.cpp

echo Qual o codigo da questao
read codigo
idUser=SBQib4OHv4bJ

python dirlididi.py submit $codigo $idUser $nome $nome.cpp
