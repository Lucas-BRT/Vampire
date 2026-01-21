fof(definicao_do_universo, axiom,
    ! [X] : ( vertice(X) <=> ( X=v1 | X=v2 | X=v3 | X=v4 | X=v5 | X=v6 | X=v7 | X=v8 | X=v9 | X=v10 | X=v11 | X=v12 | X=v13 | X=v14 | X=v15 ) )
).

% impede que o Vampire defina o v1 igual a outro vértice,
fof(definicao_de_nomes_unicos, axiom,
    v1 != v2 & v1 != v3 & v1 != v4 & v1 != v5 & v1 != v6 & v1 != v7 & v1 != v8 & v1 != v9 & v1 != v10 & v1 != v11 & v1 != v12 & v1 != v13 & v1 != v14 & v1 != v15 &
    v2 != v3 & v2 != v4 & v2 != v5 & v2 != v6 & v2 != v7 & v2 != v8 & v2 != v9 & v2 != v10 & v2 != v11 & v2 != v12 & v2 != v13 & v2 != v14 & v2 != v15 &
    v3 != v4 & v3 != v5 & v3 != v6 & v3 != v7 & v3 != v8 & v3 != v9 & v3 != v10 & v3 != v11 & v3 != v12 & v3 != v13 & v3 != v14 & v3 != v15 &
    v4 != v5 & v4 != v6 & v4 != v7 & v4 != v8 & v4 != v9 & v4 != v10 & v4 != v11 & v4 != v12 & v4 != v13 & v4 != v14 & v4 != v15 &
    v5 != v6 & v5 != v7 & v5 != v8 & v5 != v9 & v5 != v10 & v5 != v11 & v5 != v12 & v5 != v13 & v5 != v14 & v5 != v15 &
    v6 != v7 & v6 != v8 & v6 != v9 & v6 != v10 & v6 != v11 & v6 != v12 & v6 != v13 & v6 != v14 & v6 != v15 &
    v7 != v8 & v7 != v9 & v7 != v10 & v7 != v11 & v7 != v12 & v7 != v13 & v7 != v14 & v7 != v15 &
    v8 != v9 & v8 != v10 & v8 != v11 & v8 != v12 & v8 != v13 & v8 != v14 & v8 != v15 &
    v9 != v10 & v9 != v11 & v9 != v12 & v9 != v13 & v9 != v14 & v9 != v15 &
    v10 != v11 & v10 != v12 & v10 != v13 & v10 != v14 & v10 != v15 &
    v11 != v12 & v11 != v13 & v11 != v14 & v11 != v15 &
    v12 != v13 & v12 != v14 & v12 != v15 &
    v13 != v14 & v13 != v15 &
    v14 != v15
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


fof(vertice_v1_v15, axiom, aresta(v1, v15)).

fof(vertice_v2_v10, axiom, aresta(v2, v10)).
fof(vertice_v2_v11, axiom, aresta(v2, v11)).

fof(vertice_v3_v6,  axiom, aresta(v3, v6)).
fof(vertice_v3_v12, axiom, aresta(v3, v12)).

fof(vertice_v4_v6,   axiom, aresta(v4, v6)).
fof(vertice_v4_v12,  axiom, aresta(v4, v12)).
fof(vertice_v4_v13,  axiom, aresta(v4, v13)).
fof(vertice_v4_v14,  axiom, aresta(v4, v14)).

fof(vertice_v5_v8,  axiom, aresta(v5, v8)).
fof(vertice_v5_v9,  axiom, aresta(v5, v9)).
fof(vertice_v5_v11,  axiom, aresta(v5, v11)).
fof(vertice_v5_v12, axiom, aresta(v5, v12)).
fof(vertice_v5_v13, axiom, aresta(v5, v13)).
fof(vertice_v5_v14,  axiom, aresta(v5, v14)).

fof(vertice_v6_v8,  axiom, aresta(v6, v8)).
fof(vertice_v6_v9,  axiom, aresta(v6, v9)).
fof(vertice_v6_v10, axiom, aresta(v6, v10)).
fof(vertice_v6_v14, axiom, aresta(v6, v14)).

fof(vertice_v7_v11, axiom, aresta(v7, v11)).

fof(vertice_v8_v10,  axiom, aresta(v8, v10)).

fof(vertice_v9_v12,  axiom, aresta(v9, v12)).

fof(vertice_v10_v11, axiom, aresta(v10, v11)).
fof(vertice_v10_v12, axiom, aresta(v10, v12)).
fof(vertice_v10_v14, axiom, aresta(v10, v14)).
fof(vertice_v10_v15, axiom, aresta(v10, v15)).

fof(vertice_v11_v14, axiom, aresta(v11, v14)).

fof(vertice_v12_v15,  axiom, aresta(v12, v15)).

fof(vertice_v13_v14, axiom, aresta(v13, v14)).
