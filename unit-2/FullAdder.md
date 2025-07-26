# FullAdder

| a | b | c |sum|carry|
| - | - | - | - | -   |
| 0 | 0 | 0 | 0 |  0  |
| 0 | 0 | 1 | 1 |  0  |
| 0 | 1 | 0 | 1 |  0  |
| 0 | 1 | 1 | 0 |  1  |
| 1 | 0 | 0 | 1 |  0  |
| 1 | 0 | 1 | 0 |  1  |
| 1 | 1 | 0 | 0 |  1  |
| 1 | 1 | 1 | 1 |  1  |


```mermaid
%%{ init: { 'flowchart': { 'curve': 'stepAfter' } } }%%
graph LR

A --(a)--o haa
B --(b)--o haa
C --(c)--o hab

subgraph FullAdder
    haa[HalfAdder]
    hab[HalfAdder]
    XOR

    haa --(tempsum)--o hab
    haa --(tempcarry)--o XOR
    hab --(tempcarryb)--o XOR
end

hab --(sum)--o SUM
XOR --(carry)--o CARRY

```
