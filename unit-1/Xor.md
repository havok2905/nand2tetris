# XOR

| a | b | o |
| - | - | - |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

```mermaid
%%{ init: { 'flowchart': { 'curve': 'stepAfter' } } }%%
graph LR

A --(a)--o nota
B --(b)--o notb

A --o notbanda
B --o notaandb

OR --(out)--o OUT

subgraph XOR
    nota[NOT] --o notaandb[AND]
    notb[NOT] --o notbanda[AND]

    notaandb --o OR
    notbanda --o OR
end
```
