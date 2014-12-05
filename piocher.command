repeat{
  let num := floor(Uniform(0, NB_NUM+1)); #numero aleatoire
  let coul := floor(Uniform(0, NB_COUL+1)); #couleur aleatoire
  if (num = 0) and (coul = 0) then let found := carte_main_joker + carte_table_joker;
  else{
    if (num = 0) or (coul = 0) then let found := NB_MUL + 1;
    else let found := carte_main[num, coul] + carte_table[num, coul]; #nombre de cartes de meme type deja en jeu
  }
}
until found < NB_MUL; #verifie si le nombre de cartes est plus petit que le maximum
printf "Carte piochee: ";
if num = 0 then{
  let carte_main_joker := carte_main_joker+1;
  printf "[jok]\n";
}
else{
  let carte_main[num, coul] := carte_main[num, coul]+1;
  printf "[%d %d]\n", num, coul;
}