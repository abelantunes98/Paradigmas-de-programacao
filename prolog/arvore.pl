filho("ned", "catelyn", bran).
filho("ned", "catelyn", rickon).
filho("ned", "catelyn", rob).
filho("ned", "catelyn", sansa).
filho("ned", "catelyn", arya).

filho("jamie", "cersei", myrcela).
filho("jamie", "cersei", joffrei).
filho("jamie", "cersei", tommen).

main:-
  read(NomeFilho),
  filho(Pai, Mae, NomeFilho),
  writeln(Pai),
  writeln(Mae),
  halt(0).
