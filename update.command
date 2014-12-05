for{i in 1..NB_NUM, j in 1..NB_COUL}{
    let carte_main[i, j] := sum{k in 1..NB_MUL} x[i, j, k];
    let carte_table[i, j] := sum{k in 1..NB_MUL} y[i, j, k]
  }
let carte_main_joker := sum{k in 1..NB_MUL} j1[k];
let carte_table_joker := sum{i in 1..NB_NUM, j in 1..NB_COUL, k in 1..NB_MUL} j2[i, j, k];