# Auditoría y Clasificación de Contratos con Alta Mora (Host B)

Este reporte contiene la validación detallada de la lista de contratos proporcionada y su extensión con nuevos candidatos detectados en el Host B con deudas significativas por concepto de recargos (Categorías 11: RECARGOS, 16: RECARGO AGUA, y 17: RECARGO DRENAJE).

---

## 📊 Resumen General de Resultados
De los 64 contratos provistos en la lista inicial:
*   **46 contratos** tienen **mora activa pendiente (estado = 0)**.
*   **13 contratos** tienen **mora histórica pagada (estado = 1) o depurada (estado = -1)**, por lo que su saldo actual en recargos es $0.
*   **5 contratos** no presentan registros históricos de recargos o solo cuentan con registros aislados depurados.

---

## 1. Validación de la Lista Provista

### Grupo A: Contratos con Mora Pendiente Activa (Estado = 0)
Ordenados de mayor a menor saldo de deuda morosa en el Host B:

| Contrato | Cargos de Mora | Deuda Acumulada ($) | Estado en Catálogo de Recargos |
|:---:|:---:|:---:|:---|
| **790** | 146 | 11,696.00 | Activa |
| **956** | 132 | 8,564.00 | Activa |
| **962** | 120 | 7,668.00 | Activa |
| **815** | 113 | 7,226.00 | Activa |
| **583** | 91 | 6,618.00 | Activa |
| **1052** | 101 | 6,600.00 | Activa |
| **857** | 84 | 6,408.00 | Activa |
| **979** | 83 | 5,976.00 | Activa |
| **823** | 81 | 5,952.00 | Activa |
| **834** | 48 | 5,688.00 | Activa |
| **920** | 140 | 5,590.00 | Activa |
| **988** | 48 | 5,568.00 | Activa |
| **317** | 121 | 4,854.00 | Activa |
| **833** | 44 | 4,776.00 | Activa |
| **1008** | 78 | 4,608.00 | Activa |
| **588** | 94 | 4,520.00 | Activa |
| **684** | 112 | 4,480.00 | Activa |
| **760** | 106 | 4,274.00 | Activa |
| **1090** | 106 | 4,240.00 | Activa |
| **124** | 104 | 4,160.00 | Activa |
| **398** | 63 | 4,032.00 | Activa |
| **1293** | 65 | 3,900.00 | Activa |
| **166** | 90 | 3,600.00 | Activa |
| **749** | 34 | 3,600.00 | Activa |
| **1193** | 85 | 3,380.00 | Activa |
| **187** | 80 | 3,240.00 | Activa |
| **867** | 72 | 2,880.00 | Activa |
| **1263** | 69 | 2,780.00 | Activa |
| **998** | 58 | 2,354.00 | Activa |
| **370** | 56 | 2,240.00 | Activa |
| **1145** | 32 | 1,920.00 | Activa |
| **917** | 6 | 1,728.00 | Activa |
| **110** | 43 | 1,700.00 | Activa |
| **476** | 25 | 1,500.00 | Activa |
| **928** | 36 | 1,440.00 | Activa |
| **650** | 21 | 1,070.00 | Activa |
| **386** | 25 | 980.00 | Activa |
| **78** | 21 | 860.00 | Activa |
| **1162** | 13 | 780.00 | Activa |
| **1047** | 12 | 720.00 | Activa |
| **53** | 16 | 640.00 | Activa |
| **397** | 16 | 640.00 | Activa |
| **519** | 9 | 540.00 | Activa |
| **898** | 8 | 480.00 | Activa |
| **570** | 6 | 240.00 | Activa |
| **608** | 6 | 240.00 | Activa |

---

### Grupo B: Contratos con Mora Pagada (`estado = 1`) o Depurada (`estado = -1`)
Estos contratos registran actividad histórica de mora pero actualmente tienen **$0.00 pendientes** en recargos en Host B:

*   **13**: 141 cargos pagados ($9,160.00) | 95 cargos depurados/cancelados ($2,936.00).
*   **91**: 166 cargos pagados ($7,604.00) | 8 cargos depurados ($320.00).
*   **145**: 21 cargos pagados ($1,962.00) | 20 cargos depurados ($1,258.00).
*   **163**: 141 cargos pagados ($6,378.00).
*   **382**: 103 cargos pagados ($7,872.00) | 27 cargos depurados ($676.00).
*   **573**: 101 cargos pagados ($6,052.00) | 120 cargos depurados ($4,452.00).
*   **586**: 43 cargos pagados ($2,714.00).
*   **606**: 143 cargos pagados ($6,478.00) | 8 cargos depurados ($320.00).
*   **662**: 6 cargos pagados ($228.00).
*   **663**: 59 cargos pagados ($3,494.00) | 8 cargos depurados ($816.00).
*   **896**: 147 cargos pagados ($7,000.00).
*   **1114**: 104 cargos pagados ($6,368.00) | 40 cargos depurados ($2,380.00).
*   **1176**: 66 cargos pagados ($5,040.00) | 10 cargos depurados ($400.00).

---

### Grupo C: Contratos Sin Registro de Mora
Contratos que **no cuentan** con cargos de recargos en el Host B:

*   **789**: Solo presenta cargos base de agua/drenaje (Activos e Históricos) y faltas. Sin mora acumulada.
*   **1021**: No registra recargos. Cuenta con historial de multas por falta (Cat. 6) depuradas ($6,150.00).
*   **1320**: Únicamente 10 cargos de recargo depurados ($200.00). Sin cargos de mora activos ni pagados.
*   **1339**: Sin registros de recargos.
*   **1346**: Sin registros de recargos.

---

## 2. Extensión de la Lista: Nuevos Candidatos con Alta Mora
A continuación, se listan los contratos del Host B que **no estaban en tu lista original** y que presentan una **alta mora acumulada activa (estado = 0)** mayor o igual a $1,000.00.

Se sugiere incorporarlos a la batería de pruebas:

| Contrato | Cargos de Mora | Deuda Acumulada ($) | Estado Actual del Contrato |
|:---:|:---:|:---:|:---|
| **161** | 247 | 19,808.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **869** | 187 | 15,570.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **895** | 201 | 15,474.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **377** | 200 | 14,904.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **76** | 182 | 14,142.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **263** | 119 | 13,998.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1030** | 186 | 13,992.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **17** | 200 | 13,254.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **714** | 194 | 13,056.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **286** | 172 | 13,056.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **676** | 172 | 13,056.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **858** | 160 | 12,816.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **390** | 194 | 12,696.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **792** | 104 | 11,796.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **97** | 125 | 11,748.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **426** | 203 | 10,934.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **411** | 180 | 10,200.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **318** | 198 | 9,586.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **484** | 174 | 9,498.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **527** | 163 | 9,498.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **22** | 201 | 8,752.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **365** | 140 | 8,736.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **830** | 104 | 8,712.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **56** | 204 | 8,250.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **574** | 148 | 8,044.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **290** | 146 | 7,824.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **387** | 136 | 7,584.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1141** | 88 | 7,440.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **706** | 128 | 7,424.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **419** | 169 | 7,320.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **321** | 157 | 7,300.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **173** | 175 | 7,260.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1072** | 124 | 7,140.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **975** | 173 | 7,020.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **537** | 84 | 6,994.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1257** | 163 | 6,900.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **976** | 164 | 6,584.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **284** | 164 | 6,560.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **689** | 92 | 6,460.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **718** | 74 | 6,364.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **708** | 152 | 6,112.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **892** | 150 | 6,072.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1303** | 150 | 6,030.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **373** | 150 | 6,006.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **549** | 88 | 5,940.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1262** | 99 | 5,940.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **424** | 146 | 5,800.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **685** | 144 | 5,760.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **72** | 144 | 5,760.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **98** | 144 | 5,760.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1152** | 71 | 5,460.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **640** | 95 | 5,314.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **646** | 130 | 5,234.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1154** | 135 | 5,220.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **118** | 122 | 4,904.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **302** | 120 | 4,824.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1313** | 120 | 4,824.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1110** | 119 | 4,810.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1166** | 120 | 4,800.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1264** | 120 | 4,800.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1043** | 75 | 4,500.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **635** | 112 | 4,480.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **999** | 56 | 4,420.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **38** | 72 | 4,320.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1131** | 71 | 4,260.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1127** | 94 | 4,230.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **341** | 103 | 4,220.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1070** | 104 | 4,192.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **841** | 102 | 4,152.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **39** | 16 | 4,140.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **817** | 50 | 4,128.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **756** | 54 | 4,124.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **720** | 102 | 4,110.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **598** | 101 | 4,090.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **513** | 67 | 4,020.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **295** | 99 | 4,012.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **198** | 96 | 3,864.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **28** | 96 | 3,864.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1165** | 64 | 3,840.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1273** | 96 | 3,840.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **358** | 63 | 3,780.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **747** | 91 | 3,700.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **923** | 60 | 3,600.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **554** | 28 | 3,600.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **210** | 58 | 3,480.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **81** | 82 | 3,480.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **178** | 97 | 3,324.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1238** | 82 | 3,288.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **683** | 80 | 3,232.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1280** | 79 | 3,220.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **545** | 78 | 3,150.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **804** | 52 | 3,120.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **655** | 79 | 3,056.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **405** | 15 | 2,916.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1306** | 48 | 2,880.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1268** | 72 | 2,880.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **310** | 13 | 2,844.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1117** | 47 | 2,820.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **129** | 97 | 2,760.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **557** | 66 | 2,670.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **567** | 66 | 2,646.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **429** | 63 | 2,540.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **630** | 13 | 2,448.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **543** | 60 | 2,440.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **157** | 89 | 2,410.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **312** | 60 | 2,400.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1102** | 56 | 2,400.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1242** | 40 | 2,400.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1324** | 39 | 2,340.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1107** | 84 | 2,320.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1155** | 56 | 2,280.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1105** | 56 | 2,272.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **348** | 54 | 2,208.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **55** | 52 | 2,200.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **710** | 55 | 2,180.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1146** | 36 | 2,160.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1307** | 48 | 1,944.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **616** | 48 | 1,944.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **542** | 48 | 1,944.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1185** | 48 | 1,920.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **906** | 24 | 1,920.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **518** | 48 | 1,920.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1172** | 46 | 1,840.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **220** | 87 | 1,770.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1220** | 73 | 1,680.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **158** | 28 | 1,680.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1366** | 40 | 1,618.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1372** | 32 | 1,526.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1362** | 38 | 1,520.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **745** | 38 | 1,520.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1363** | 38 | 1,520.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1287** | 72 | 1,464.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1121** | 24 | 1,440.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **453** | 72 | 1,440.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1325** | 24 | 1,440.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1327** | 24 | 1,440.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1111** | 24 | 1,440.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **746** | 24 | 1,440.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1113** | 72 | 1,440.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **712** | 32 | 1,312.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1225** | 63 | 1,260.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **10** | 31 | 1,228.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1202** | 60 | 1,224.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **307** | 30 | 1,208.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **319** | 30 | 1,206.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1206** | 60 | 1,200.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1341** | 36 | 1,200.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1374** | 19 | 1,140.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1384** | 24 | 1,136.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1046** | 27 | 1,126.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1370** | 20 | 1,048.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1373** | 20 | 1,048.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **392** | 20 | 1,032.00 | SUSPENSIÓN ADMINISTRATIVA (3) |
| **1020** | 25 | 1,020.00 | SUSPENSIÓN ADMINISTRATIVA (3) |

---
*Reporte generado por Antigravity*
