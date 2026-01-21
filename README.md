Este documento detalha como executar os testes para o trabalho final de lógica computacional.

## Estrutura dos Testes

Os testes estão organizados nas seguintes categorias:

- `cruz/`: Testes relacionados a grafos em formato de cruz.
- `ilhas/`: Testes com grafos desconexos, simulando "ilhas".
- `linear/`: Testes com grafos lineares.
- `triangular/`: Testes com grafos triangulares.
- `final/`: O teste final que foi sorteado, no caso, o grafo 7.

* Outros arquivos `.p` na raiz da pasta `testes/` representam casos específicos.

## Visualização dos Grafos

Para facilitar a compreensão e visualização de cada caso de teste, muitos dos diretórios de teste contêm uma imagem (`.svg` ou `.png`) que representa o grafo correspondente.

## Como Rodar os Testes

Para executar um teste, utilize o binário `vampire` localizado na raiz do projeto, passando o arquivo de teste (com extensão `.p`) como parâmetro.

**Exemplo:**

```bash
./vampire testes/linear/teste_conexo_linear.p
```
