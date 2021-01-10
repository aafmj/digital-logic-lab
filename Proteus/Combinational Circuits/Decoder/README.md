

# Proteus Combinational Circuits Implementatios

### Decoder Implementation
assumptions:
```
F1 = xz + x!y!z!
F2 = x!y + xy!z!	
F3 = xy + x!y!z
```

#### Truth table : 
A | B | C || F1 | F2 | F3  
--- | --- | --- | --- | --- | --- | ---
0 | 0 | 0 || 1 | 0 | 1 
0 | 0 | 1 || 0 | 0 | 0 
0 | 1 | 0 || 0 | 1 | 0 
0 | 1 | 1 || 0 | 1 | 0 
1 | 0 | 0 || 0 | 1 | 0 
1 | 0 | 1 || 1 | 0 | 0 
1 | 1 | 0 || 0 | 0 | 1 
1 | 1 | 1 || 1 | 0 | 1 

