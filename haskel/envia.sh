echo Nome do arquivo: 
read nome

ghc $nome.hs -o $nome

echo Qual o codigo da questao
read codigo
idUser=SBQib4OHv4bJ

python dirlididi.py submit $codigo $idUser $nome $nome.hs

