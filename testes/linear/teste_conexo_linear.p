fof(definicao_do_universo, axiom,
    ! [X] : ( vertice(X) <=> ( X=v1 | X=v2 | X=v3 ) )
).

% impede que o Vampire defina o v1 igual a outro vértice,
fof(definicao_de_nomes_unicos, axiom,
    v1 != v2 & v1 != v3 &
    v2 != v3
).

fof(regra_para_grafo_nao_direcionado, axiom,
    ! [X, Y] : ( aresta(X, Y) => aresta(Y, X) )
).

fof(regra_para_definir_caminho, axiom,
    ! [X, Y] : ( aresta(X, Y) => caminho(X, Y) )
).

fof(regra_para_definir_caminho_distante, axiom,
    ! [X, Y, Z] : ( aresta(X, Y) & caminho(Y, Z) => caminho(X, Z) )
).

fof(eh_conexo, conjecture,
    ! [X, Y] : ( (vertice(X) & vertice(Y) & ( X != Y )) => caminho(X, Y) )
).


fof(aresta_v1_v2, axiom, aresta(v1, v2)).
fof(aresta_v2_v3, axiom, aresta(v2, v3)).
