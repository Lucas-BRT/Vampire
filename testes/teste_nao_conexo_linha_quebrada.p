% --- INSTÂNCIA DO GRAFO 4 (Linha Quebrada) ---
% Vértices: 1, 2, 3, 4, 5
fof(n1, axiom, node(v1)).
fof(n2, axiom, node(v2)).
fof(n3, axiom, node(v3)).
fof(n4, axiom, node(v4)).
fof(n5, axiom, node(v5)).

% Arestas: 1-2-3   e   4-5 (Falta a ligação 3-4)
fof(e1, axiom, a(v1, v2)).
fof(e2, axiom, a(v2, v3)).
% fof(e_missing, axiom, a(v3, v4)). % Esta aresta não existe
fof(e4, axiom, a(v4, v5)).

% --- CONJECTURA ---
fof(is_connected, conjecture, ! [X,Y] : ( (node(X) & node(Y) & X != Y) => c(X,Y) )).
