

# Proteus Combinational Circuits Implementatios

---

### Majority Logic
assumptions:
- `3` input.
- if `0` inputs were equal to `1` outputs return `0`.

#### Truth table :
A | B | C || F
--- | --- | --- | --- | ---
0 | 0 | 0 || 0
0 | 0 | 1 || 0
0 | 1 | 0 || 0
0 | 1 | 1 || 1
1 | 0 | 0 || 0
1 | 0 | 1 || 1
1 | 1 | 0 || 1
1 | 1 | 1 || 1

### Karnaugh map :
|A\BC| 00 | 01 | 11 | 10
--- | --- | --- | --- | ---
**0** | 0 | 0 | 1 | 0
**1** | 0 | 1 | 1 | 1

```
F = AB + BC + AC
```

