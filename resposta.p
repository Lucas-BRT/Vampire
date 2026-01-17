% Problema 0 – Grafo Conexo
% Definição: Um grafo é dito conexo se, para quaisquer dois vértices distintos u e v, existe um
% caminho ligando u a v.

% regra para as arestas serem não direcionadas
fof(regra_para_grafo_nao_direcionado, axiom,
    ! [X, Y] : ( aresta(X, Y) => aresta(Y, X) )
).

% se existir uma aresta entre X e Y, então existe um caminho entre X e Y
fof(regra_para_definir_caminho, axiom,
    ! [X, Y] : ( aresta(X, Y) => caminho(X, Y) )
).

% se existir uma aresta entre X e Y, e um caminho entre Y e Z, então existe um caminho entre X e Z
fof(regra_para_definir_caminho_distantes, axiom,
    ! [X, Y, Z] : ( aresta(X, Y) & caminho(Y, Z) => caminho(X, Z) )
).

% para todo X, se X é um vértice, então X deve ser um dos vértices do grafo.
% impede das otimizações do vampire criarem novas variáveis e acabar definindo elas automaticamente como
% vértices devido a regra que usei para definir vértices com base nas arestas. se eu definisse manualmente todos os vértices, não precisaria dessa regra, então é um tradeoff que usei por praticidade na hora de escrever o código.
fof(fechamento_vertices, axiom,
    ! [X] : ( vertice(X) => ( X=v1 | X=v2 | X=v3 | X=v4 | X=v5 | X=v6 | X=v7 | X=v8 | X=v9 | X=v10 | X=v11 | X=v12 | X=v13 | X=v14 | X=v15 ) )
).

% se existir uma aresta entre X e Y, então X e Y são vértices
fof(auto_vertice, axiom, ! [X,Y] : (aresta(X,Y) => (vertice(X) & vertice(Y)))).


fof(conexo, conjecture,
    ! [X, Y] : ( (vertice(X) & vertice(Y)) => caminho(X, Y) )
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
