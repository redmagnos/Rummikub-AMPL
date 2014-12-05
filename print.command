printf{1..60} "=" ;
printf "\nCartes en main:\n";
printf{j in 1..NB_COUL, i in 1..NB_NUM, k in 1..NB_MUL : x[i, j, k] <> 0} "[%d %d] ", i, j;
printf{k in 1..NB_MUL : j1[k] <> 0} "[jok] ";
printf "\nCartes sur la table:\n";
let enter := 0;
for{k in 1..NB_MUL}{
  for{i in 1..NB_NUM}{
    for{j in 1..NB_COUL}{
      if gr[i, j, k]=1 then{
	if y[i, j, k] = 1 then printf "[%d %d] ", i, j;
        else printf "[jok] ";
	let enter := 1;
      }
    }
    if enter = 1 then printf "\n";
    let enter := 0;
  }
}

for{k in 1..NB_MUL}{
	for{j in 1..NB_COUL}{
		for{i in 1..NB_NUM}{
			if sui[1, i, j, k]=1 then{
				for{l in i..i+2}{
					if y[l, j, k] = 1 then printf "[%d %d] ", l, j;
					else printf "[jok] ";
				}
				if i <= NB_NUM - 3 then if sui[4, i+3, j, k] = 1 then{
					if y[i+3, j, k] = 1 then printf "[%d %d] ", i+3, j;
					else printf "[jok] ";
					if i <= NB_NUM - 4 then if sui[5, i+4, j, k] = 1 then{
						if y[i+4, j, k] = 1 then printf "[%d %d] ", i+4, j;
						else printf "[jok] ";
					}else{ if sui[1, i+4, j, k] = 1 then let enter := 1;}
				}else if sui[1, i+3, j, k] = 1 then let enter := 1;
				if enter = 0 then printf "\n";
				let enter := 0;
			}
		}
	}
}
printf "\n";