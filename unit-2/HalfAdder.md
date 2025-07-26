# HalfAdder

| a | b | s | c |
| - | - | - | - |
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

```mermaid
%%{ init: { 'flowchart': { 'curve': 'stepAfter' } } }%%
graph LR

A --(a)--o AND
B --(b)--o AND

A --(a)--o XOR
B --(b)--o XOR

subgraph HalfAdder
    XOR
    AND
end

XOR --o S
AND --o C
```
