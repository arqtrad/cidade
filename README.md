# Cidade

Atlas de tipologias urbanas luso-brasileiras

## Formato de datas ##

Para representar datas complexas e imprecisas nos metadados dos
registros, seguimos o formato formulado por Signore et al. (1997),
conforme especificação abaixo. Ainda não há implementação disso em
nenhuma forma de representação (conversão para texto ou linha do tempo).

```yaml
date: 1808-01-01 # UTC date, Jekyll-compatible
d_sign: # 1 (default) or -1, because negative (BC) dates break Jekyll
d_precision: # exact (0), month (0.5), year (1), decade, century, millennium (order of magnitude)
d_ca: # circa true, false (default)
d_reliab: # Question mark true, false (default)
d_probable: # true, false (default)
d_bound_lo:
  - date:
  - d_sign:
  - d_precision:
  - d_ca:
  - d_reliab:
  - d_probable:
d_bound_hi:
  - date:
  - d_sign:
  - d_precision:
  - d_ca:
  - d_reliab:
  - d_probable:
```
