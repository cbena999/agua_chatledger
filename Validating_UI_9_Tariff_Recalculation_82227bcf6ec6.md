# Validating UI-9 Tariff Recalculation

## Metadata

| Field | Value |
|-------|-------|
| **Trajectory ID** | `083f326e-b9cd-4083-afb1-57c74f1057f6` |
| **Cascade ID** | `15a0d6b2-867b-4def-b663-82227bcf6ec6` |
| **Type** | Agent Conversation |
| **Total Steps** | 520 |
| **Started** | 25 Apr 2026, 8:27 pm |
| **Completed** | 25 Apr 2026, 11:55 pm |

---

## User Request

COn base a conversaciones pasadas, voy a volver a ejecutar  UI-9 · Recálculo de tarifa al cambiar tipo Normal↔Comercial (Lógica Híbrida).
Para el Contrato #405 
Te comento que pretendo realizarlo con ./Full-Pipeline-Sync.sh  sin datos qa.
AL ingresar al cto , me aparece este msg:
Aviso: Faltan por registrar en el catálogo los siguientes cargos anuales: ANUALIDAD DEL AGUA 2026
Esa es la duda, esto me impide continuar o solo es informativo. ?

<details>
<summary>Context</summary>

**Active File:** `.mcp.json`
**Language:** json
</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 56dc8f40-c378-4477-8cb6-fb1541288a38: Stabilizing Agua V2 Financial Engine
- Created: 2026-04-24T16:42:58Z
- Last modified: 2026-04-26T00:39:24Z

## Conversation 79a8e9a2-6401-44f1-a5db-8896eda906a6: Validating Pipeline Synchronization Logs
- Created: 2026-04-24T06:44:25Z
- Last modified: 2026-04-24T08:24:54Z

### USER Objective:
Stabilizing Financial Data Integrity

Objective: Finalize the stabilization and audit-readiness of the Agua V2 financial engine by enforcing strict data validation and architectural integrity.

Goals:
1. Implement Poka-Yoke sanitization protocols across core PHP modules (cargos, contratos) to prevent malicious or malformed data entry.
2. Enforce database-level uniqueness constraints (UNIQUE KEYs) in the schema to permanently eliminate operational data duplication.
3. Validate the hybrid surcharge logic and F05 compliance through the established automated SQL audit pipeline.
4. Prepare the system for final production deployment by securing input sanitation and validating historical data parity.

## Conversation 7b4df0fd-8f9f-4e1c-9691-7e0bbc280aa5: Validating Contract Exemption Logic
- Created: 2026-04-23T16:57:43Z
- Last modified: 2026-04-24T06:42:03Z

### USER Objective:
Stabilizing Agua V2 Surcharge Architecture

Main Objective: Finalize the stabilization of the Agua V2 financial engine by enforcing robust debt reconciliation and audit traceability.

Goals:
1. Reconcile historical surcharge logic by aligning the V2 parametric engine with the legacy data structure, abandoning hardcoded fallbacks.
2. Sanitize the `cargos` catalog to correctly flag historical surcharge eligibility without corrupting financial data.
3. Validate the `Contrato 500` UI-9 transition to confirm the system correctly triggers multi-year surcharge calculations.
4. Eliminate reliance on "soft" flags by utilizing the `es_recargo_moratorio` alias in views for financial auditing and reporting.
5. Execute a surgical data fix in the `cargos` catalog to ensure the surcharge motor remains "obedient" and accurate, guaranteeing audit-ready data integrity for 2024–2025.

## Conversation 6d27cf24-4496-444d-913c-de2298a07da5: UI Optimization for Suspended Contracts
- Created: 2026-04-23T03:17:22Z
- Last modified: 2026-04-23T05:53:51Z

### USER Objective:
Stabilizing Agua V2 State Transitions

Objective: Finalize the stabilization of Agua V2 state transition protocols by addressing financial data integrity and enhancing administrative diagnostics.

Goals:
1. Complete manual test case execution for state transitions (D → G) and resolve discrepancies in financial reporting.
2. Validate and patch root causes for incorrect charge generation during contract reactivations (e.g., Cto #1006).
3. Ensure financial consistency in reporting modules (contratoinfo2.php) and verify forensic reflection of contract states.
4. Finalize the integration of administrative reporting for "Suspensión Definitiva" contracts to ensure full audit readiness.

## Conversation 2c24dbf0-a237-4a36-8172-98282de6cf2d: Troubleshooting Amnistía UI Logic
- Created: 2026-04-22T21:09:14Z
- Last modified: 2026-04-23T02:52:01Z

### USER Objective:
Auditing Financial State Transitions

Objective: Finalize the implementation of a rigorous, self-auditing financial transaction layer across all Agua V2 modules.

Goals:
1. Standardize a universal "PRE/POST Financial Snapshot" pattern across all transaction functions (State Changes, Payments, Cancellations, Reassignments, and Manual Applications).
2. Automate the generation of audit logs in the `cambios` table to capture the precise impact on debt totals and adeudo counts per operation.
3. Enhance the `historial_mov_cto.php` report to visualize these financial snapshots with color-coded event classification.
4. Ensure full consistency in financial reporting, even for legacy charges and state-based recalibrations (paridad), to guarantee complete forensic traceability for every administrative action.

## Conversation 772b23ae-0897-4270-9446-4689fdf95548: Executing UI Test Suite
- Created: 2026-04-20T04:38:49Z
- Last modified: 2026-04-20T05:36:46Z

### USER Objective:
Stabilizing Agua UI Tests

USER Objective: Complete the validation of the Agua V2 testing suite (Section 1 / Group A) to ensure the system's operational readiness.
Goals:
1. Systematically execute UI test cases for contract management, state transitions, and infrastructure configuration based on the stabilized test plan.
2. Refine automation protocols by documenting specific UI interactions, such as using TAB for field auto-completion and handling browser confirmation dialogues.
3. Validate system behavior against business rules, specifically addressing contract creation constraints, parity synchronization, and administrative blocking mechanisms.
4. Update the formal test documentation to reflect empirical findings and UI-specific interaction patterns discovered during manual and automated execution.

## Conversation cbf979ab-fe6f-4218-97aa-78333e6a1a56: Audit Caja Reconciliation Discrepancies
- Created: 2026-04-20T01:04:06Z
- Last modified: 2026-04-20T04:13:17Z

### USER Objective:
Stabilizing Agua Reporting Modules

Objective: Resolve identified logic gaps and architectural inconsistencies in the Agua V2 reporting and receipt modules on Host C.

Goals:
1. Patch the date logic in `reciboegreso.php` to ensure correct temporal mapping of expenditures.
2. Address identified bugs and legacy function dependencies in `credencial.php` to improve module robustness.
3. Verify all code changes against the updated forensic audit documentation to maintain system-wide congruency.
4. Finalize and push all stabilization patches to the production repository to ensure full operational readiness.

## Conversation 70313f54-0ccd-4b31-b9dd-0a85cd24482b: Validating Host C PHP Errors
- Created: 2026-04-20T02:37:26Z
- Last modified: 2026-04-20T02:43:35Z

### USER Objective:
Validating Host C PHP Errors

Main Objective: Evaluate the current status of reported PHP notices from Host C logs without performing any code modifications.

Goals:
1. Confirm if the "Undefined index" notices in `contrasenas.php` (lines 71-116) and `carteravencida.php` (line 50) are still valid based on existing file content.
2. Verify the persistence of the "Undefined property" notice for `Conexion::$insert_id` in `usuarios.php` (line 296).
3. Provide a clear, non-corrective status report to the user regarding the state of these specific runtime errors.

## Conversation d93a3dd6-def6-407e-bf68-58e09c7b5178: Refactoring Agua Assembly Module
- Created: 2026-04-19T00:37:18Z
- Last modified: 2026-04-19T01:46:32Z

### USER Objective:
Refining Asamblea Administrative Interface

Main Objective: Finalize the stabilization and UI refactor of the Asamblea V2 administrative module on Host C.

Goals:
1. Complete the transition of the application entry point to the "Administración" view.
2. Implement dynamic, database-driven labels for the "Multa por Inasistencia" to replace hardcoded inputs.
3. Standardize and fix the administrative action table to ensure proper state-based control buttons (Start/Close/Download) appear for all assemblies.
4. Clean up the UI by removing redundant navigation elements like the "Pase de Lista" button.
5. Deploy changes manually to the production-ready Host C environment following established architectural constraints and legacy system protocols.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 25 Apr 2026, 8:27 pm

---

## Agent Response

### Thinking

**Initiating UI-9 Recalculation**

I'm currently focused on re-executing UI-9 for Contract #405, specifically the tariff recalculation when switching between "Normal" and "Commercial" types. I'm using the `./Full-Pipeline-Sync.sh` script, but without QA data. During this process, I observed a warning message in the UI regarding missing annual charges in the catalog.




### Actions

**Tool:** `grep_search`
**Query:** `Faltan por registrar en el catálogo los siguientes cargos anuales`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.536008924s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 25 Apr 2026, 8:27 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `ANUALIDAD DEL AGUA`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 25 Apr 2026, 8:27 pm

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `cargos anuales`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 25 Apr 2026, 8:27 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `ficha.php`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php if ($salidanotas): ?>
    <div id='notasCto'>
        <ul style='border:0px; margin-left: 24px; margin-top:40px; margin-right:25px; height:105px; padding-left:0px; overflow:auto;'>
            <?php foreach ($notas as $n): ?>
                <li style='list-style:none; margin-left:0px;' class='<?= ($n['estado'] == 0 ? "liactiva" : "lidesactiva") ?>'>
                    <b><?= $n['fecha'] ?></b>
                    <?php if ($n['estado'] == 0): ?>
                        [ <a href='#' onclick="eliminaNota('<?= $n['id'] ?>')">&times;</a> ]
                    <?php endif; ?>
                    <br><?= $this->e($n['texto']) ?>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
<?php endif; ?>

<h1>Datos del Contrato #<?= $id ?><?= $numcontratoletras ?> <a href='#'
        onclick="if(confirm('Se perder&aacute;n los cambios al cargar los datos del contrato nuevamente.\n\n¿Desea continuar?'))cargaDatosContrato('<?= $id ?>');"><img
            src='web-assets/img/reciclar.png' border='0'></a></h1>
<hr>
<?php if(isset($faltan_cargos) && count($faltan_cargos) > 0): ?>
    <div style='color: #856404; background-color: #fff3cd; padding: 10px; border: 1px solid #ffeeba; border-radius: 5px; margin-bottom: 15px;'>
        <b>Aviso:</b> Faltan por registrar en el cat&aacute;logo los siguientes cargos anuales: <?= implode(', ', $faltan_cargos) ?>
    </div>
<?php endif; ?>
<div id='infocto' style='padding-left:10px;'>
    <div style='display: flex; flex-direction: row; align-items: flex-start; gap: 30px; margin-bottom: 15px;'>
        <div>
            A nombre de <b class='mayusculas'><?= $this->e($nombre) ?> | <?= $numusuario ?><?php if ($estado_usr == 2): ?> <span style='color: #c0392b; font-size: 11px;'>(USUARIO NO LOCALIZADO)</span><?php endif; ?></b><br>Direcci&oacute;n en <b
                class='mayusculas'><?= $this->e($domicilio) ?></b>.<br><br>
            Estado del contrato: 
            <?php 
                $color = '#f8db70'; $border = '#d4b238'; $text = '#333';
                if ($estado == 4) { $color = '#f8d7da'; $border = '#f5c6cb'; $text = '#721c24'; }
                if ($estado == 1) { $color = '#d4edda'; $border = '#c3e6cb'; $text = '#155724'; }
            ?>
            <span class='mayusculas' style='background-color: <?= $color ?>; font-weight: bold; padding: 2px 10px; border-radius: 20px; color: <?= $text ?>; font-size: 13px; border: 1px solid <?= $border ?>; box-shadow: 0 2px 4px rgba(0,0,0,0.1);'>
                <?= (isset($tiposdeestado[(string)$estado]) ? $tiposdeestado[(string)$estado] : $estado) ?>
            </span>
            &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;Metros lineales: <b class='mayusculas'><?= $metros ?> mts.</b><br>
        </div>
        <div style='display: flex; flex-direction: column; gap: 8px;'>
            <?php if ($estado != 4): ?>
            <a class='liga opcion' href='#'
                onclick="$('#infocto').hide(); $('#notasCto').toggle(); $('#formato').slideToggle('fast');" style='margin:0;'>Modificar
                informaci&oacute;n de este contrato</a>
            <?php endif; ?>
            <a class='liga opcion' href='#'
                onclick="if(confirm('¿Est&aacute; seguro que quiere cargar la informaci&oacute;n del usuario?'))cargaDatosUsuario(<?= $numusuario ?>);" style='margin:0;'>Cargar
                informaci&oacute;n del usuario</a>
            <div style='display: flex; gap: 8px;'>
                <a class='liga opcion' href='reportes/credencial.php?id=<?= $id ?>' target='_blank' style='margin:0; flex:1; text-align:center;'>Ver Credencial</a>
                <a class='liga opcion' href='reportes/historial_mov_cto.php?id=<?= $id ?>' target='_blank' style='margin:0; flex:1; text-align:center;'>Movimientos</a>
            </div>
        </div>
    </div>
    
    <div style='display: flex; gap: 20px; margin-top: 10px; align-items: stretch; flex-wrap: wrap;'>
        <?php foreach ($tomas as $n => $t): ?>
            <div style='border:1px solid #ddd; padding:8px; border-radius:5px; background:#fff; min-width:200px;'>
                <b style='color:#0056b3;'><?= ($n==1?'1ra.':'2da.') ?> Toma (<?= ($t['tipo']==1?'Comercial':'Normal') ?>)</b><br>
                <small>
                    Agua: <b><?= ($t['tiene_agua'] ? ($t['estado_agua'] ? 'Conectada' : 'Desconectada') : 'No cuenta') ?></b><br>
                    Drenaje: <b><?= ($t['tiene_drenaje'] ? ($t['estado_drenaje'] ? 'Conectado' : 'Desconectado') : 'No cuenta') ?></b>
                </small>
            </div>
        <?php endforeach; ?>
    </div>
    <div id='nara'></div><br>
</div>



<style>
    .toma-card { transition: transform 0.2s, box-shadow 0.2s; box-shadow: 0 4px 6px rgba(0,0,0,0.05); }
    .toma-card:hover { transform: translateY(-3px); box-shadow: 0 8px 15px rgba(0,0,0,0.1); }
    .status-badge { display: inline-block; padding: 2px 8px; border-radius: 12px; font-size: 10px; font-weight: bold; text-transform: uppercase; }
    .status-active { background: #e3f2fd; color: #1976d2; }
    .status-cut { background: #ffebee; color: #c62828; }
</style>

<div id='formato' style='display:none; width: 100%; margin: 5px 0;'>
    <form id='datoscto' name='datoscto'>
        <input type='hidden' value='<?= $id ?>' name='id' id='id'>
        <div style='display: flex; gap: 20px; align-items: flex-start;'>
            <!-- Left Column: Main Form Fields -->
            <div style='flex: 0 0 360px;'>
                <table width='100%'>
                    <tr>
                        <td style='text-align: left; padding-right: 8px;' width='120px' valign='top'><input type='hidden' value='guardaDatosContrato' id='opc' name='opc'>
                            A nombre de:</td>
                        <td class='mayusculas' valign='top'><b><?= $this->e($nombre) ?> | <?= $numusuario ?><?php if ($estado_usr == 2): ?> <span style='color: #c0392b; font-size: 11px;'>(USUARIO NO LOCALIZADO)</span><?php endif; ?></b><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 8px;' valign='top'>Domicilio:</td>
                        <td valign='top'><input class='mayusculas' type='text' value='<?= $this->e($domicilio) ?>' name='domicilio'
                                id='domicilio' style='width: 100%;' autocomplete=off <?= ($estado==4?'disabled':'') ?>><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 8px;' valign='top'>M&aacute;s datos:<br><small style='color: grey;'>Notas sobre conflictos, quejas, etc.</small></td>
                        <td valign='top'><textarea class='mayusculas' name='masdatos' id='masdatos' style='width: 100%;' rows=3 <?= ($estado==4?'disabled':'') ?>><?= $this->e($masdatos) ?></textarea><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 8px;' valign='top'>Observaciones:<br><small style='color: grey;'>Ubicaci&oacute;n entre calles, medidas, etc.</small></td>
                        <td valign='top'><textarea class='mayusculas' name='observaciones' id='observaciones' style='width: 100%;' rows=3 <?= ($estado==4?'disabled':'') ?>><?= $this->e($observaciones) ?></textarea><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 8px;' valign='top'>Indicador:</td>
                        <td valign='top'><input class='mayusculas' type='text' name='numcontratoletras' id='numcontratoletras' value='<?= $this->e($numcontratoletras) ?>' style='width: 100%;' autocomplete=off <?= ($estado==4?'disabled':'') ?>><br><br></td>
                    </tr>
                    <tr>
                        <td style='text-align: left; padding-right: 8px;' valign='top'>Metros lineales:</td>
                        <td valign='top'><input class='mayusculas' type='text' value='<?= $metros ?>' name='metros' id='metros' style='width: 100%;' autocomplete=off <?= ($estado==4?'disabled':'') ?>><br></td>
                    </tr>
                    <?php if ($estado != 4): ?>
                    <tr>
                        <td colspan='2' style='padding-top: 4px; padding-bottom: 6px;'>
                            <input type='submit' value='Guardar Cambios' onclick="return validaContrato();"
                                   style='background: #28a745; color: white; border: none; padding: 7px 18px;
                                          border-radius: 6px; font-weight: bold; cursor: pointer; font-size: 13px;
                                          box-shadow: 0 2px 5px rgba(40,167,69,0.25); white-space: nowrap;
                                          transition: background 0.2s; width: 100%;'
                                   onmouseover="this.style.background='#218838'"
                                   onmouseout="this.style.background='#28a745'">
                        </td>
                    </tr>
                    <?php endif; ?>
                </table>
            </div>

            <!-- Right Column: Tomas -->
            <div style='flex: 1; overflow: hidden; padding-top: 10px;'>
                <div style='margin-bottom:10px;'>
                    Tomas:&nbsp;&nbsp;Cantidad de tomas:&nbsp;
                    <select name='num_tomas' id='num_tomas' onchange='actualizaTomas(this.value, <?= $num_tomas ?>)' <?= ($estado==4?'disabled':'') ?>>
                        <?php for($i=1; $i<=$max_tomas; $i++): ?>
                            <option value='<?= $i ?>' <?= ($num_tomas==$i?'selected':'') ?>><?= $i ?> Toma<?= ($i>1?'s':'') ?></option>
                        <?php endfor; ?>
                    </select>
                </div>
                <div id='tomas_container' style='display: flex; flex-wrap: nowrap; gap: 15px; overflow-x: auto;'>
                    <?php for($n=1; $n<=$max_tomas; $n++): 
                            $t = isset($tomas[$n]) ? $tomas[$n] : array('tipo'=>0, 'tiene_agua'=>0, 'tiene_drenaje'=>0, 'estado_agua'=>1, 'estado_drenaje'=>1);
                            $ca = ($estado == intval($cfg['estado_activo']));
                    ?>
                        <div id='toma_card_<?= $n ?>' class='toma-card' style='border:1px solid #ccc; padding:10px; border-radius:8px; min-width:300px; width:300px; <?= ($n>$num_tomas?'display:none;':'') ?> background:#f9f9f9;'>
                            <h3 style='margin-top:0; border-bottom:1px solid #ddd; padding-bottom:5px;'><?= ($n==1?'1ra.':'2da.') ?> Toma</h3>
                            
                            <div style='margin-bottom:10px;'>
                                <b>Tipo:</b><br>
                                <input type='radio' name='tomas[<?= $n ?>][tipo]' id='t_tipo_<?= $n ?>_0' value='0' <?= ($t['tipo']==0?'checked':'') ?> onchange='cambiaTipo(<?= $n ?>, 0, tarifas)' <?= ($estado==4?'disabled':'') ?>> <label for='t_tipo_<?= $n ?>_0'>Normal</label>&nbsp;&nbsp;
                                <input type='radio' name='tomas[<?= $n ?>][tipo]' id='t_tipo_<?= $n ?>_1' value='1' <?= ($t['tipo']==1?'checked':'') ?> onchange='cambiaTipo(<?= $n ?>, 1, tarifas)' <?= ($estado==4?'disabled':'') ?>> <label for='t_tipo_<?= $n ?>_1'>Comercial</label>
                            </div>

                            <div style='margin-bottom:10px; border:1px dashed #bbb; padding:5px; background:#fff;'>
                                <input type='checkbox' name='tomas[<?= $n ?>][tiene_agua]' id='t_agua_<?= $n ?>' value='1' <?= ($t['tiene_agua']?'checked':'') ?> onchange='actualizaInterfazTomas(<?= $n ?>, "agua")' <?= ($estado==4?'disabled':'') ?>> 
                                <label for='t_agua_<?= $n ?>'><b>Infraestructura: Cuenta con toma</b></label>
                                
                                <div id='cont_estado_agua_<?= $n ?>' style='margin-top:5px; font-size:11px; <?= ($t['tiene_agua']?'':'display:none;') ?>'>
                                    Servicio: 
                                    <input type='radio' name='tomas[<?= $n ?>][estado_agua]' id='e_agua_<?= $n ?>_1' value='1' <?= ($t['estado_agua']?'checked':'') ?> <?= ($estado==4?'disabled':'') ?>> <label for='e_agua_<?= $n ?>_1'>Activo</label>
                                    <input type='radio' name='tomas[<?= $n ?>][estado_agua]' id='e_agua_<?= $n ?>_0' value='0' <?= (!$t['estado_agua']?'checked':'') ?> <?= ($estado==4?'disabled':'') ?>> <label for='e_agua_<?= $n ?>_0'>Suspendido (Corte)</label>
                                </div>
                                <div id='desc_agua_<?= $n ?>' style='margin-top:5px; font-size:11px; color:#999; <?= (!$t['tiene_agua']?'':'display:none;') ?>'>
                                    Servicio: <i>Sin instalaci&oacute;n física</i>
                                </div>

                                <div id='ref_agua_<?= $n ?>' style='font-size:10px; color:#666; margin-top:3px; border-top:1px dotted #ccc; padding-top:2px;'>
                                    <?= (isset($tarifas_referencia['agua']) && isset($tarifas_referencia['agua']['leyenda'])) ? $tarifas_referencia['agua']['leyenda'] : 'Tarifa de Agua' ?>: <b>$<?= number_format($t['tipo']==1 ? ((isset($tarifas_referencia['agua']) && isset($tarifas_referencia['agua']['comercial'])) ? $tarifas_referencia['agua']['comercial'] : 0) : ((isset($tarifas_referencia['agua']) && isset($tarifas_referencia['agua']['normal'])) ? $tarifas_referencia['agua']['normal'] : 0), 2) ?></b>
                                </div>
                            </div>

                            <div style='border:1px dashed #bbb; padding:5px; background:#fff;'>
                                <input type='checkbox' name='tomas[<?= $n ?>][tiene_drenaje]' id='t_drenaje_<?= $n ?>' value='1' <?= ($t['tiene_drenaje']?'checked':'') ?> onchange='actualizaInterfazTomas(<?= $n ?>, "drenaje")' <?= ($estado==4?'disabled':'') ?>> 
                                <label for='t_drenaje_<?= $n ?>'><b>Instalaci&oacute;n: Cuenta con descarga</b></label>

                                <div id='cont_estado_drenaje_<?= $n ?>' style='margin-top:5px; font-size:11px; <?= ($t['tiene_drenaje']?'':'display:none;') ?>'>
                                    Servicio: 
                                    <input type='radio' name='tomas[<?= $n ?>][estado_drenaje]' id='e_drenaje_<?= $n ?>_1' value='1' <?= ($t['estado_drenaje']?'checked':'') ?> <?= ($estado==4?'disabled':'') ?>> <label for='e_drenaje_<?= $n ?>_1'>Activo</label>
                                    <input type='radio' name='tomas[<?= $n ?>][estado_drenaje]' id='e_drenaje_<?= $n ?>_0' value='0' <?= (!$t['estado_drenaje']?'checked':'') ?> <?= ($estado==4?'disabled':'') ?>> <label for='e_drenaje_<?= $n ?>_0'>Suspendido (Corte)</label>
                                </div>
                                <div id='desc_drenaje_<?= $n ?>' style='margin-top:5px; font-size:11px; color:#999; <?= (!$t['tiene_drenaje']?'':'display:none;') ?>'>
                                    Servicio: <i>Sin descarga instalada</i>
                                </div>

                                <div id='ref_drenaje_<?= $n ?>' style='font-size:10px; color:#666; margin-top:3px; border-top:1px dotted #ccc; padding-top:2px;'>
                                    <?= (isset($tarifas_referencia['drenaje']) && isset($tarifas_referencia['drenaje']['leyenda'])) ? $tarifas_referencia['drenaje']['leyenda'] : 'Tarifa de Drenaje' ?>: <b>$<?= number_format($t['tipo']==1 ? ((isset($tarifas_referencia['drenaje']) && isset($tarifas_referencia['drenaje']['comercial'])) ? $tarifas_referencia['drenaje']['comercial'] : 0) : ((isset($tarifas_referencia['drenaje']) && isset($tarifas_referencia['drenaje']['normal'])) ? $tarifas_referencia['drenaje']['normal'] : 0), 2) ?></b>
                                </div>
                            </div>
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
        </div>
        <script>
            var tarifas = <?= json_encode($tarifas_referencia) ?>;

            function validaContrato() {
                var num_tomas = parseInt($('#num_tomas').val()) || 1;
                
                var todo_ok = true;
                for (var i = 1; i <= num_tomas; i++) {
                    if (!$('#t_agua_' + i).is(':checked') && !$('#t_drenaje_' + i).is(':checked')) {
                        todo_ok = false;
                        break;
                    }
                }
                if (!todo_ok) {
                    alert('Error: Cada toma seleccionada debe tener habilitada al menos una conexi\u00f3n (Agua o Drenaje). Revise la ' + (num_tomas > 1 ? '1ra y 2da toma.' : 'toma principal.'));
                    return false;
                }
                
                // Validacion AJAX síncrona de tomas
                var ok_tomas = true;
                $.ajax({
                    url: 'ruteador.php',
                    type: 'POST', async: false,
                    data: { opc: 'validaTomasSync', usuario: '<?= $numusuario ?>', contrato: '<?= $id ?>', domicilio: $('#domicilio').val(), num_tomas: num_tomas },
                    success: function(resp) {
                        if(resp.trim() !== 'OK') {
                            alert(resp);
                            ok_tomas = false;
                        }
                    }
                });
                if (!ok_tomas) return false;

                return confirm('¿Est\u00e1 seguro que desea actualizar la informaci\u00f3n?');
            }
            
            $(document).ready(function(){
                $('#domicilio').on('blur', function(){
                    if($(this).val().length > 20) {
                        $.ajax({
                            url: 'ruteador.php',
                            type: 'POST', async: true,
                            data: { opc: 'validaTomasSync', usuario: '<?= $numusuario ?>', contrato: '<?= $id ?>', domicilio: $(this).val(), num_tomas: $('#num_tomas').val() || 1 },
                            success: function(resp) {
                                if(resp.trim() !== 'OK') {
                                    alert("Aviso Domicilio: " + resp);
                                }
                            }
                        });
                    }
                });
            });
        </script>
        <div style='display: flex; align-items: center; justify-content: space-between;
                    padding: 8px 0; border-top: 1px solid #eee; margin-top: 6px; gap: 20px;'>

            <!-- Panel Solo Lectura: Resumen actual de tomas (referencia para el cajero) -->
            <div id='panel_tomas_ref' style='background: #f0f4ff; border: 1px solid #b8cdf8;
                  border-radius: 8px; padding: 12px 18px; flex: 1; font-size: 12px; color: #333;'>
                <b style='font-size: 13px; color: #2c5282;'>&#128202; Estado actual de tomas</b>
                <div style='display: flex; gap: 16px; margin-top: 8px; flex-wrap: wrap;'>
                    <?php foreach ($tomas as $n => $t): ?>
                    <div style='background: #fff; border: 1px solid #d0d9ff; border-radius: 6px;
                                padding: 8px 14px; min-width: 160px;'>
                        <b style='color: #4a6fa5;'><?= ($n==1?'1ra.':'2da.') ?> Toma</b>
                        <span style='font-size: 10px; color: #777; margin-left: 4px;'>
                            (<?= ($t['tipo']==1 ? 'Comercial' : 'Normal') ?>)
                        </span><br>
                        <span style='color: <?= ($t['tiene_agua'] && $t['estado_agua'] ? "#155724" : "#721c24") ?>;'>
                            &#128167; Agua: <b><?= ($t['tiene_agua'] ? ($t['estado_agua'] ? 'Conectada' : 'Desconectada') : 'Sin instalación') ?></b>
                        </span><br>
                        <span style='color: <?= ($t['tiene_drenaje'] && $t['estado_drenaje'] ? "#155724" : "#721c24") ?>;'>
                            &#128295; Drenaje: <b><?= ($t['tiene_drenaje'] ? ($t['estado_drenaje'] ? 'Conectado' : 'Desconectado') : 'Sin descarga') ?></b>
                        </span>
                    </div>
                    <?php endforeach; ?>
                    <?php if (empty($tomas)): ?>
                    <div style='color: #856404; font-style: italic;'>Sin tomas registradas para este contrato.</div>
                    <?php endif; ?>
                </div>
            </div>

            <!-- Panel de tomas: se muestra siempre debajo del formulario -->

        </div>
    </form>
    <div id='aviso'></div>
    <div id='nara'></div>
</div>
<hr>

<h2>Acciones sobre el presente contrato</h2><br>
<p>
<div style='display: flex; flex-wrap: wrap; gap: 10px; align-items: center;'>
    <a class='liga opcion' style='margin:0;' href='reportes/contratoinfo2.php?numcontrato=<?= $id ?>&orden=1' target='_blank'>Informe de Cuenta</a>
    <a class='liga opcion' style='margin:0;' href='reportes/contratoinfo2.php?numcontrato=<?= $id ?>&orden=4' target='_blank'>Informe por fecha de pago</a>
    <?php if ($estado != 4): ?>
    <a class='liga opcion anotacioncto' style='margin:0;' href='#' onclick="$('#realizaranotacion').toggle(); $('#textoz').focus();">Hacer una anotaci&oacute;n</a>
    <a class='liga opcion propietariocto' style='margin:0;' href='#' onclick="$('#cambiarprop').toggle(); $('#nuevonombre').focus();">Cambio de propietario</a>
    <a class='liga opcion estadocto' style='margin:0;' href='#' onclick="$('#cambioestado').toggle();">Cambio de estado</a>
    <?php else: ?>
    <span class='liga opcion disabled' style='margin:0; opacity: 0.5; cursor: not-allowed;' title='Contrato Protegido (SDF)'>Hacer una anotaci&oacute;n</span>
    <span class='liga opcion disabled' style='margin:0; opacity: 0.5; cursor: not-allowed;' title='Contrato Protegido (SDF)'>Cambio de propietario</span>
    <a class='liga opcion estadocto' style='margin:0; background: #f8d7da; color: #721c24; border-color: #f5c6cb;' href='#' onclick="$('#cambioestado').toggle();">Consultar Estatus SDF</a>
    <?php endif; ?>
    <?php if (in_array($estado, [1, 2, 3])): ?>
    <a class='liga opcion cargoscto' style='margin:0;' href='#' onclick="$('#agregacargo').toggle();">Agregar cargos</a>
    <?php endif; ?>
    <?php if ($estado != 4): ?>
    <a class='liga opcion cargoscto' style='margin:0;' href='#' onclick="$('#cargoscancelados').toggle();">Cargos Cancelados</a>
    <a class='liga opcion cargoscto' style='margin:0;' href='#' onclick="$('#notascargoscancelados').toggle();">Notas Cargos Cancelados</a>
    <?php if (!empty($reversal_info)): ?>
    <a class='liga opcion' id='btn-revertir-transicion'
       style='margin:0; background:#fff3cd; color:#856404; border:1px solid #ffc107; font-weight:bold;'
       href='#'
       onclick="if(confirm(
           'REVERTIR TRANSICIÓN DE ESTADO\n\n' +
           'Esta acción deshará el último cambio de estado del contrato:\n' +
           '  • Estado: [<?= $reversal_info["estado_destino"] ?>] → [<?= $reversal_info["estado_origen"] ?>]\n' +
           '  • Cargos generados a cancelar: <?= $reversal_info["n_lc_nuevos"] ?>\n' +
           '  • Recargos amnistiados a restaurar: <?= $reversal_info["n_hist_amnist"] ?>\n' +
           '  • Deuda tras reversión (exacta): $<?= number_format($reversal_info["deuda_pre"], 2) ?>\n\n' +
           'La bitácora registrará esta reversión.\n' +
           '¿Confirma la reversión?'
       )) {
           $.post('ruteador.php', {opc:'revertirTransicion', contrato:'<?= $id ?>'}, function(r){ $('#nara').html(r); });
       } return false;">
        &#8635; Revertir transición
    </a>
    <?php endif; ?>
    <?php endif; ?>

</div>
    <div id='nara'></div><br>


<div id='realizaranotacion' class='divanotacioncto' style='display:none;'>
    <hr>
    <h2>Agregar una nota al contrato</h2>
    <form id='agregarNota' name='agregarNota'>
        <input type=hidden name='opc' value='agregaNota'>
        <input type=hidden name='contrato' id='contrato' value='<?= $id ?>'>
        <input type='text' name='texto' id='textoz' size=40 class='mayusculas' autocomplete=off>
        <input type='submit' class='anotacioncto' value='Agregar'>
    </form><br>
</div>

<div id='cambiarprop' class='divpropietariocto' style='display:none;'>
    <hr>
    <h2>Cambio de Propietario</h2>
    <form id='propietario' name='propietario' style='margin-left: 20px;'>
        <input type=hidden name='opc' id='opc' value='cambiandopropietario'>
        <input type=hidden name='contrato' id='contrato' value='<?= $id ?>'>
        <input type=hidden name='usuario' id='usuario' value='<?= $numusuario ?>'>
        B&uacute;squeda: <input type='text' id='nuevonombre' name='nuevonombre' style='width:190px'
            onkeyup="$('#submitusuario').attr('disabled', 'disabled'); buscaUsuarioCambio(this.value);"
            autocomplete=off><br><br>
        <select name='nuevousuario' id='usuarios' size=5 onclick="$('#submitusuario').removeAttr('disabled');">
        </select>
        <br><br>
        <input id='submitusuario' class='propietariocto' type='submit' value='Asignar nuevo propietario' disabled>
    </form><br>
</div>

<div id='cambioestado' class='divestadocto' style='display:none;'>
    <hr>
    <h2>Cambiar estado del contrato</h2>
    <?php if ($estado == 4): ?>
        <div style='background-color: #f8d7da; color: #721c24; padding: 10px; border: 1px solid #f5c6cb; border-radius: 4px; margin-bottom: 15px;'>
            <b>¡Atención!</b> Este contrato se encuentra en estado de <b>Suspensión Definitiva</b> y no se permite su cambio a ningún otro estado.
        </div>
    <?php endif; ?>
    <form id='cambiaestado' name='cambiaestado' style='margin-left:10px;margin-right:10px;'>
        <input type=hidden name='opc' value='cambiaestado' id='opc'>
        <input type=hidden name='contrato' id='contrato' value='<?= $id ?>'>
        <fieldset style='float: left; width:400px;'>
            <legend>Estados</legend>
            <dl>
                <dt><input type=radio name='estado' value=1 <?= ($estado == 1 ? "checked" : "") ?> <?= ($estado == 4 ? "disabled" : "") ?>><label>Activo</label>
                <dd>Se tiene la obligaci&oacute;n de pagar los servicios de agua potable y drenaje con los que cuente.
                <dt><input type=radio name='estado' value=2 <?= ($estado == 2 ? "checked" : "") ?> <?= ($estado == 4 || $estado == 3 ? "disabled" : "") ?>><label>Suspensi&oacute;n
                        Temporal</label>
                <dd>Solo en <b><?= array("","Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")[intval($cfg['susptemp_mes_permitido'])] ?></b> del a&ntilde;o en curso se puede solicitar esta suspensi&oacute;n, para evitar
                    pagar servicios el a&ntilde;o siguiente. <?php if($estado == 3): ?><br><small style='color:#c0392b;'><b>Bloqueado:</b> Regularice a Activo antes de cambiar tipo de suspensi&oacute;n.</small><?php endif; ?>
                <dt><input type=radio name='estado' value=3 <?= ($estado == 3 ? "checked" : "") ?> <?= ($estado == 4 || $estado == 2 ? "disabled" : "") ?>><label>Suspensi&oacute;n
                        Administrativa</label>
                <dd>Cuando luego de una revisi&oacute;n ocular, se corrobore que no hay toma en el lugar y faltaba darlo de
                    baja. <?php if($estado == 2): ?><br><small style='color:#c0392b;'><b>Bloqueado:</b> Regularice a Activo antes de cambiar tipo de suspensi&oacute;n.</small><?php endif; ?>
                <dt><input type=radio name='estado' value='4' <?= ($estado == 4 ? "checked" : "") ?>><label>Suspensi&oacute;n
                        Definitiva</label>
                <dd>Eliminaci&oacute;n de los servicios as&iacute; como del contrato.
            </dl>
        </fieldset>
        <fieldset style='float: left; width:400px; text-align: right;'>
            <legend>Aplicar Acci&oacute;n</legend>
            <span id='llaves1'>
                Llave del Presidente:<br><input type='password' size=10 name='presidente' class='derecha'
                    autocomplete=off><br>
                Llave del Tesorero:<br><input type='password' size=10 name='tesorero' class='derecha'
                    autocomplete=off><br>
                Raz&oacute;n del cambio de estado:<br><textarea name='texto' id='texto' cols=30 rows=4></textarea>
            </span>
            <div id='nara'></div>
            <input type='submit' class='estadocto' value='Cambiar estado' <?= ($estado == 4 ? "disabled" : "") ?>>
            <div id='nara'></div><span id='sig1'></span>
        </fieldset>
    </form>
    <div id='nara'></div><br>
</div>

<div id='agregacargo' class='divcargoscto' style='display:none;'>
    <hr>
    <h2>Agregar cargos al contrato</h2>
    <div id='existentes' class='panel300' style='height:170px'>
        <div id='okas'
            style='width:280px; font-size: 11px; min-height: 18px; text-align: center; color: #fff; text-transform: uppercase; text-align:center; font-weight:bold; position: absolute; left:0px; padding-top:4px; background: rgba(0,0,0,0.7);'>
            Cargo: <input type='text' class='mayusculas' value='' id='buscacargo' name='buscacargo' autocomplete=off>
        </div>
        <br><br>
        <table width=100% id='cargosfuente'>
            <?php foreach ($cargos_fuente as $cf): ?>
                <tr class='renglon clicable' <?= ($cf['recargo'] != 0 ? " style='color:#900;'" : "") ?>
                    onclick="<?= ($cf['mensualidades'] == 1 ? "mens('{$cf['monto']}|{$cf['recargo']}|{$cf['anio']}|{$cf['categoria']}|{$cf['repetir']}', '{$cf['nombrec']}', '" . number_format($cf['monto'], 2, '.', ',') . "','{$cf['numconsec']}','{$cf['metros2']}')" : "$('#mensuales').html(''); agregacargo('{$cf['nombrec']}|{$cf['monto']}|{$cf['recargo']}|{$cf['anio']}|{$cf['categoria']}|{$cf['repetir']}','" . number_format($cf['monto'], 2, '.', ',') . "',{$cf['numconsec']},'{$cf['metros2']}');") ?>">
                    <td class='mayusculas'><?= $this->e($cf['nombrec']) ?> <?= ($cf['mensualidades'] == 1 ? "(&times; mes)" : "") ?></td>
                    <td nowrap class='derecha' style='width: auto;'>$<?= number_format($cf['monto'], 2, '.', ',') ?><?= ($cf['metros2'] == 1 ? "/mt" : "") ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
    <form id='agregarCargoX' name='agregarCargoX' style='margin-left:10px; margin-right:10px;'>
        <input type=hidden name='opc' value='aplicacargosauno'>
        <input type=hidden name='contrato' id='contrato' value='<?= $id ?>'>
        <div id='poraplicar'
            style='margin-left: 10px; height:170px; width:300px; overflow-y:scroll; overflow-x:hidden; float: left; position: relative;'>
            <div id='okas'
                style='width:280px; font-size: 11px; min-height: 18px; height:auto; text-align: center; color: #fff; text-align:center; font-weight:bold; position: absolute; left:0px; padding-top:4px; background: rgba(0,0,0,0.7);'>
                <span class='mayusculas'>Cargos por aplicar</span> <a class='liguita' href='#'
                    onclick="$('#cargostabla').html('')">Limpiar</a>
                <div id='nara'></div>
                <div id='mensuales' style='text-align:left; height:auto; clear:both;'></div>
            </div>
            <br><br>
            <table id='cargostabla' width=100%></table>
        </div>
        <div id='aplicando' style='margin-left: 10px; height:170px; width:300px; float: left; position: relative;'>
            <input type='submit' class='cargoscto' value='Aplicar a este contrato'>
            <div id='aplicando_notificacion' style='margin-top:10px;'></div>
        </div>
    </form><br>
    <div id='nara'></div>
</div>

</p>

<?php if ($npagos != 0): ?>
    <?= $this->insert('contratos/adeudo_tabla', ['npagos' => $npagos, 'adeudos' => $adeudos, 'id' => $id, 'total' => $total, 'recargos' => $recargos, 'foliotope' => $foliotope]) ?>
<?php endif; ?>

<?php if ($npagosc != 0): ?>
    <div id='cargoscancelados' class='divcargoscto' style='display:none; height: 350px; overflow-y: scroll;'>
        <hr>
        <h2><?= $npagosc ?> Cargos Cancelados</h2>
        <table width=50% style='margin-left: 40px' cellspacing=0>
            <tr>
                <th width=200px>Cargo</th>
                <th width=50px>Monto</th>
                <th width=50px>Acci&oacute;n</th>
            </tr>
            <?php foreach ($cancelados as $cc): ?>
                <tr class='renglon'>
                    <td class='mayusculas'><i class='rojo'><?= $this->e($cc['leyenda']) ?><?= ($cc['repetido'] == 0 ? "" : " (r{$cc['repetido']})") ?></i>
                    </td>
                    <td class='derecha'>$<?= number_format($cc['monto'], 2, '.', ',') ?></td>
                    <td class='derecha'><a href='#'
                            onclick="if(confirm('&iquest;Desea restituir este cargo cancelado a pendiente?\n\n<?= $this->e($cc['leyenda']) ?> ($ <?= number_format($cc['monto'], 2, '.', ',') ?>)')) { regresarCargoCancelado('<?= $id ?>', '<?= $this->e($cc['leyenda']) ?>', '<?= $cc['repetido'] ?>', '<?= intval($cc['id_cargo']) ?>'); } return false;">Reasignar</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
<?php endif; ?>

<?php if ($nnotas != 0): ?>
    <div id='notascargoscancelados' class='divcargoscto' style='display:none; height: 350px; overflow-y: scroll;'>
        <hr>
        <h2>Hist&oacute;rico de Cargos Cancelados (<?= $nnotas ?>)</h2><br>
        <table width=65% style='margin-left: 40px' cellspacing=0>
            <tr>
                <th width=200px>Cargos Cancelados</th>
                <th width=50px>Raz&oacute;n de la Cancelaci&oacute;n</th>
            </tr>
            <?php foreach ($notas_cancelacion as $nc): ?>
                <tr class='renglon'>
                    <td class='mayusculas' width=220px><?= $this->e($nc['despues']) ?></td>
                    <td class='derecha' width=150px;><?= $this->e($nc['antes']) ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
<?php endif; ?>

<?php if ($otros_contratos): ?>
    <hr>
    <h2>Existe<?= (count($otros_contratos) > 1 ? "n otros" : "") ?> <?= count($otros_contratos) ?> contrato<?= (count($otros_contratos) > 1 ? "s" : "") ?> del mismo usuario</h2>
    <p>
        <?php $z = 1; ?>
        <?php foreach ($otros_contratos as $oc): ?>
            <div id='ficha'>
                <div id='numcontrato'><a href='#'
                        onclick="if(confirm('¿Est&aacute;s seguro de querer cargar otro contrato?')){cargaDatosContrato('<?= $oc['contrato'] ?>'); return false;}"><?= $oc['contrato'] ?></a>
                </div>
                <div id='direccion'>
                    <small><b>Estatus:</b> <?= isset($tiposdeestado[(string)$oc['estado']]) ? $tiposdeestado[(string)$oc['estado']] : $oc['estado'] ?></small><br>
                    <small><?= $this->e(substr($oc['domicilio'], 0, 50)) ?><?= (strlen($oc['domicilio']) > 50 ? " (...)" : "") ?></small>
                </div>
            </div>
            <?= ($z % 3 == 0 ? "<div id=nara></div>" : "") ?>
            <?php $z++; ?>
        <?php endforeach; ?>
    </p>
    <div id='nara'></div>
<?php endif; ?>

<div id='nara'></div>
<script>
    guardaDatosContrato()
</script>

```

</details>

---

## Agent Response

### Thinking

**Analyzing Missing Cargo Alerts**

I'm currently focused on the conditional block within `views/contratos/ficha.php` that handles missing cargo alerts. My key interest lies in how it flags the presence of missing cargos, specifically lines 21-25. I'm exploring the logic behind `isset($faltan_cargos)` and `count($faltan_cargos) > 0)` to understand how the system determines whether to display the alert div.




### Actions

**Tool:** `view_file`
**File:** `contratos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.548883272s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
<?php
/*
 * contratos.php — Lógica de negocio para contratos
 * Rediseño v2: usa contrato_toma y config_sistema
 * PHP 5.5 compatible
 */

function cargaConfig($y)
{
	$res = $y->q("SELECT clave, valor FROM config_sistema");
	$cfg = array();
	while (list($k, $v) = $y->fetch_array($res)) {
		$cfg[$k] = $v;
	}
	return $cfg;
}

function obtenerValorSeguro($array, $indice, $valorPorDefecto = '')
{
	return (isset($array[$indice]) && $array[$indice] !== null) ? $array[$indice] : $valorPorDefecto;
}

function cargaContrato($id)
{
	global $templates;
	$numcontrato = $id;

	$y = new Conexion();
	$y->conectarBaseDatos();

	$cfg = cargaConfig($y);

	$tipos = array(0 => "Normal", 1 => "Comercial");

	$res = $y->q("SELECT usuario.nombre, contrato.numusuario, contrato.domicilio, contrato.masdatos, contrato.tipo, contrato.agua, contrato.drenaje, contrato.observaciones, contrato.estado, contrato.metros, YEAR(contrato.fecha), MONTH(contrato.fecha), usuario.estado as estado_usr FROM contrato LEFT JOIN usuario ON contrato.numusuario=usuario.noconsecutivo WHERE contrato.numcontrato='$id'");

	// Host C: folio viene de folios_recibo (AUTO_INCREMENT), no de MAX(folio)
	$resx = $y->q("SELECT AUTO_INCREMENT FROM information_schema.TABLES WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='folios_recibo'");
	list($foliotope) = $y->fetch_array($resx);

	list($nombre, $numusuario, $domicilio, $masdatos, $tipo, $agua, $drenaje, $observaciones, $estado, $metros, $aniocontrato, $mescontrato, $estado_usr) = $y->fetch_array($res);

	// --- TOMAS desde contrato_toma ---
	$res_tomas = $y->q("SELECT id, num_toma, tipo, tiene_agua, tiene_drenaje, estado_agua, estado_drenaje, observaciones FROM contrato_toma WHERE numcontrato='$id' ORDER BY num_toma ASC");
	$tomas = array();
	while ($t = $y->fetch_array($res_tomas)) {
		$tomas[intval($t['num_toma'])] = $t;
	}
	$num_tomas = count($tomas);
	if ($num_tomas == 0) $num_tomas = 1;
	$max_tomas = intval(obtenerValorSeguro($cfg, 'max_tomas_por_contrato', 2));

	// --- TARIFAS DE REFERENCIA del año en curso (para mostrar en UI) ---
	$anio_actual = date('Y');
	$res_tarifas = $y->q("SELECT nombre, monto, monto_comercial, categoria FROM cargos WHERE automatico=1 AND estado=1 AND anio=$anio_actual AND categoria IN (2,3) ORDER BY categoria, numconsec");
	$tarifas_referencia = array();
	while ($tf = $y->fetch_array($res_tarifas)) {
		$clave = ($tf['categoria'] == 2) ? 'agua' : 'drenaje';
		if (!isset($tarifas_referencia[$clave])) {
			$mon_com = (floatval($tf['monto_comercial']) > 0) ? floatval($tf['monto_comercial']) : floatval($tf['monto']) * 2;
			$tarifas_referencia[$clave] = array(
				'leyenda'   => $tf['nombre'],
				'normal'    => floatval($tf['monto']),
				'comercial' => $mon_com
			);
		}
	}

	// --- CARGOS AUTOMÁTICOS al cargar el contrato ---
	if ($estado == 1) {
		generaCargosAutomaticos($id, $y);
	}

	// --- Otros contratos del mismo usuario ---
	$res2 = $y->q("SELECT numcontrato, domicilio, estado FROM contrato WHERE numusuario=$numusuario AND numcontrato != '$id'");
	$otros_contratos = array();
	while (list($contrato_o, $domicilio_o, $estado_o) = $y->fetch_array($res2)) {
		$otros_contratos[] = array('contrato' => $contrato_o, 'domicilio' => $domicilio_o, 'estado' => $estado_o);
	}

	// --- Adeudos ---
	// Categorías de recargo según config_sistema (16=agua, 17=drenaje).
	// El campo ligacargos.recargo contiene el monto del recargo (float), NO es bandera booleana.
	// La clasificación cargo/recargo se determina por categoria, no por el campo recargo.
	$cat_recargo_agua   = intval(obtenerValorSeguro($cfg, 'recargo_categoria_agua',   16));
	$cat_recargo_drenaje = intval(obtenerValorSeguro($cfg, 'recargo_categoria_drenaje', 17));
	$res = $y->q("SELECT id_cargo, leyenda, monto, recargo, repetido, categoria FROM vw_ligacargos_pendientes WHERE numcontrato='$id' ORDER BY anio");
	$npagos = $y->num_rows($res);
	$adeudos = array();
	$total = 0;
	$recargos = 0;
	while ($resulta = $y->fetch_array($res)) {
		$es_recargo = ($resulta['categoria'] == $cat_recargo_agua || $resulta['categoria'] == $cat_recargo_drenaje);
		$resulta['recargo'] = $es_recargo ? 1 : 0; // normalizar flag para la vista (coloreado rojo)
		$adeudos[] = $resulta;
		$total    += $es_recargo ? 0 : $resulta['monto'];
		$recargos += $es_recargo ? $resulta['monto'] : 0;
	}

	// --- Cargos fuente ---
	$res = $y->q("SELECT numconsec, nombre, monto, monto_comercial, recargo, observaciones, mensualidades, anio, categoria, repetir, metros FROM cargos WHERE estado=1 ORDER BY nombre");
	$cargos_fuente = array();
	while ($cf = $y->fetch_array($res)) {
		$cargos_fuente[] = array(
			'numconsec'    => $cf[0],
			'nombrec'      => $cf[1],
			'monto'        => $cf[2],
			'monto_com'    => $cf[3],
			'recargo'      => $cf[4],
			'observaciones'=> $cf[5],
			'mensualidades'=> $cf[6],
			'anio'         => $cf[7],
			'categoria'    => $cf[8],
			'repetir'      => $cf[9],
			'metros2'      => $cf[10]
		);
	}

	// --- Notas ---
	$q1 = "SELECT id, SUBSTRING(fecha,1,10) AS fecha, texto, estado FROM notas WHERE contrato='$id' AND estado <> -1 ORDER BY estado DESC, fecha DESC";
	$res_notas = $y->q($q1);
	$notas = array();
	while ($n = $y->fetch_array($res_notas)) {
		$notas[] = $n;
	}

	// --- Cargos cancelados ---
	// Host C: ligacargos tiene PK id AUTO_INCREMENT — se pasa a regresarCargoCancelado como discriminador
	// id_cargo: COALESCE activa→historico (Regla F06 — split anio<=2025 en ligacargos_historico)
	$resc = $y->q("SELECT leyenda, monto, recargo, repetido, categoria, es_recargo_moratorio, fcobro,
	               COALESCE(
	                   (SELECT id FROM ligacargos          WHERE numcontrato='$id' AND leyenda=v.leyenda AND repetido=v.repetido AND estado=-1 LIMIT 1),
	                   (SELECT id FROM ligacargos_historico WHERE numcontrato='$id' AND leyenda=v.leyenda AND repetido=v.repetido AND estado=-1 LIMIT 1)
	               ) AS id_cargo
	               FROM vw_ligacargos_all v WHERE numcontrato='$id' AND estado=-1 ORDER BY fcobro");
	$npagosc = $y->num_rows($resc);
	$cancelados = array();
	while ($cc = $y->fetch_array($resc)) {
		// Normalizar bandera para ficha.php (rojo cursiva en cargos cancelados)
		$cc['recargo'] = $cc['es_recargo_moratorio'] ? 1 : 0;
		$cancelados[] = $cc;
	}

	// --- Histórico cancelaciones ---
	$resnc = $y->q("SELECT antes, despues FROM cambios WHERE numcontrato='$id' AND descripcion='cancelacion' ORDER BY fecha DESC");
	$nnotas = $y->num_rows($resnc);
	$notas_cancelacion = array();
	while ($nc = $y->fetch_array($resnc)) {
		$notas_cancelacion[] = $nc;
	}

	$tiposdeestado = array("1" => "Activo", "2" => "Suspensi&oacute;n Temporal", "3" => "Suspensi&oacute;n Administrativa", "4" => "Suspensi&oacute;n Definitiva");

	$letras = $y->q("SELECT numcontratoletras FROM contrato WHERE numcontrato='$id' ORDER BY numcontrato");
	list($numcontratoletras) = $y->fetch_array($letras);

	return $templates->render('contratos/ficha', array(
		'id'                  => $id,
		'nombre'              => $nombre,
		'numusuario'          => $numusuario,
		'domicilio'           => $domicilio,
		'masdatos'            => $masdatos,
		'tipo'                => $tipo,
		'agua'                => $agua,
		'drenaje'             => $drenaje,
		'observaciones'       => $observaciones,
		'estado'              => $estado,
		'metros'              => $metros,
		'numcontratoletras'   => $numcontratoletras,
		'tipos'               => $tipos,
		'tiposdeestado'       => $tiposdeestado,
		'estado_usr'          => $estado_usr,
		'foliotope'           => $foliotope,
		'npagos'              => $npagos,
		'adeudos'             => $adeudos,
		'total'               => $total,
		'recargos'            => $recargos,
		'notas'               => $notas,
		'salidanotas'         => !empty($notas),
		'cargos_fuente'       => $cargos_fuente,
		'npagosc'             => $npagosc,
		'cancelados'          => $cancelados,
		'nnotas'              => $nnotas,
		'notas_cancelacion'   => $notas_cancelacion,
		'otros_contratos'     => $otros_contratos,
		'tomas'               => $tomas,
		'num_tomas'           => $num_tomas,
		'max_tomas'           => $max_tomas,
		'tarifas_referencia'  => $tarifas_referencia,
		'cfg'                 => $cfg,
		'faltan_cargos'       => _verificaAnualidades($y),
		'reversal_info'       => _getReversal($id, ($total + $recargos), $y)
	));
}

function cambiaestado($contrato, $rp, $rt, $texto, $estado)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$cfg = cargaConfig($y);
	$min_car = intval(obtenerValorSeguro($cfg, 'cancelacion_min_caracteres', 20));
	$mes_st  = intval(obtenerValorSeguro($cfg, 'susptemp_mes_permitido', 12));

	$res_actual = $y->q("SELECT estado FROM contrato WHERE numcontrato='$contrato'");
	list($estado_actual) = $y->fetch_array($res_actual);

	if ($estado_actual == 4) {
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'Acción No Permitida',
			'mensaje' => 'No es posible cambiar el estado de un contrato que se encuentra en <b>Suspensión Definitiva</b>.'
		));
	}

	// Bloqueo de cambio al mismo estado (UI Fix)
	if (intval($estado_actual) === intval($estado)) {
		$nombres_map = array(1 => 'ACTIVO', 2 => 'SUSPENSIÓN TEMPORAL', 3 => 'SUSPENSIÓN ADMINISTRATIVA', 4 => 'SUSPENSIÓN DEFINITIVA');
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'Sin cambios',
			'mensaje' => 'El contrato ya se encuentra en estado <b>' . $nombres_map[intval($estado)] . '</b>. No se realizó ninguna acción.'
		));
	}

	// Bloqueo de transiciones ilógicas (2 <-> 3) según análisis de Runbook
	if ((intval($estado_actual) === 2 && intval($estado) === 3) || (intval($estado_actual) === 3 && intval($estado) === 2)) {
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'Transición No Permitida',
			'mensaje' => 'No se permite saltar entre diferentes tipos de suspensión directamente. El contrato debe ser <b>Regularizado a Activo</b> antes de cambiar el tipo de suspensión.'
		));
	}

	$res1 = $y->q("SELECT contrasena FROM contrasenas WHERE rol='presidente'");
	$res2 = $y->q("SELECT contrasena FROM contrasenas WHERE rol='tesorero'");
	list($contrasena_presidente) = $y->fetch_array($res1);
	list($contrasena_tesorero)   = $y->fetch_array($res2);

	// Validar mes para suspensión temporal
	if ($estado == 2 && intval(date('m')) != $mes_st) {
		$nom_meses = array("","Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'No permitido',
			'mensaje' => 'La Suspensi&oacute;n Temporal solo puede solicitarse en <b>' . $nom_meses[$mes_st] . '</b>.'
		));
	}

	if (strlen($texto) > $min_car) {

		// ═══ Snapshot financiero PRE-cambio (antes de cualquier modificación) ═══
		$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$contrato'");
		$pre = $y->fetch_array($res_pre);
		$n_pre   = intval($pre['n']);
		$tot_pre = number_format(floatval($pre['total']), 2);

		// ═══ Captura de IDs para reversión (antes de cualquier modificación) ═══
		// lc_ids   : IDs pendientes en ligacargos activa — los nuevos generados se detectan por diferencia
		// hist_cxld: IDs cancelados en ligacargos_historico — los nuevamente amnistiados se detectan por diferencia
		$res_lc_pre = $y->q("SELECT id FROM ligacargos WHERE numcontrato='$contrato' AND estado=0");
		$lc_ids_pre = array();
		while ($r = $y->fetch_array($res_lc_pre)) { $lc_ids_pre[] = intval($r['id']); }

		$res_hist_pre = $y->q("SELECT id FROM ligacargos_historico WHERE numcontrato='$contrato' AND estado=-1");
		$hist_cxld_pre = array();
		while ($r = $y->fetch_array($res_hist_pre)) { $hist_cxld_pre[] = intval($r['id']); }

		// ═══ Captura de estado de tomas para reversión integral ═══
		$res_tomas_pre = $y->q("SELECT id, estado_agua, estado_drenaje FROM contrato_toma WHERE numcontrato='$contrato'");
		$tomas_pre = array();
		while ($rt = $y->fetch_array($res_tomas_pre)) {
			$tomas_pre[] = array(
				'id' => intval($rt['id']),
				'ea' => intval($rt['estado_agua']),
				'ed' => intval($rt['estado_drenaje'])
			);
		}

		$res_serv_pre = $y->q("SELECT agua, drenaje FROM contrato WHERE numcontrato='$contrato'");
		list($agua_pre, $drenaje_pre) = $y->fetch_array($res_serv_pre);

		$q = "UPDATE contrato SET estado=$estado WHERE numcontrato='$contrato'";
		$y->q($q);

		$nombres_estado = array(
			1 => 'ACTIVO',
			2 => 'SUSPENSIÓN TEMPORAL',
			3 => 'SUSPENSIÓN ADMINISTRATIVA',
			4 => 'SUSPENSIÓN DEFINITIVA'
		);
		$nombre_origen  = isset($nombres_estado[intval($estado_actual)]) ? $nombres_estado[intval($estado_actual)] : "ESTADO $estado_actual";
		$nombre_destino = isset($nombres_estado[intval($estado)])        ? $nombres_estado[intval($estado)]        : "ESTADO $estado";

		if (intval($estado) === 4) {
			$y->q("UPDATE contrato_toma SET estado_agua=0, estado_drenaje=0 WHERE numcontrato='$contrato'");
			$y->q("UPDATE contrato SET agua=0, drenaje=0 WHERE numcontrato='$contrato'");
			
			// Forzar paridad financiera (cancelar cargos anuales)
			_sincronizaParidadFinanciera($contrato, $y);

			$nota_especifica = "Eliminación física de tomas y depuración total de deuda (Regla C05).";
		} else if (intval($estado) === 1) {
			// Restaurar paridad del año actual PRIMERO — genera/restaura anualidades y recargos del año en curso
			_sincronizaParidadFinanciera($contrato, $y);

			if (intval($estado_actual) === 2) {
				// Regla C06: Amnistía DESPUÉS de paridad — cancela recargos históricos sin que paridad los regenere
				_amnistiaRecargosHistoricos($contrato, $y);
				$nota_especifica = "Amnistía C06 aplicada: recargos históricos cancelados. Facturación reactivada.";
			} else {
				// Estado 3 → 1: NO aplica amnistía — adeudo íntegro conservado
				$nota_especifica = "Sin amnistía C06: adeudo íntegro conservado (viene de Suspensión Administrativa).";
			}
		} else {
			// Transiciones a estado 2 (SUSP. TEMPORAL) o 3 (SUSP. ADMINISTRATIVA)
			$nota_especifica = (intval($estado) === 2)
				? "Facturación congelada. Anualidad vigente cancelada (Regla C06)."
				: "Suspensión sancionatoria. Adeudo íntegro conservado. Sin amnistía al reactivar.";
		}

		// ═══ Opción A: Facturador eager al reactivar ═══
		if (intval($estado) === 1) {
			generaCargosAutomaticos($contrato, $y);
		}

		// ═══ Captura de IDs POST para calcular delta de reversión ═══
		$res_lc_post = $y->q("SELECT id FROM ligacargos WHERE numcontrato='$contrato' AND estado=0");
		$lc_ids_post = array();
		while ($r = $y->fetch_array($res_lc_post)) { $lc_ids_post[] = intval($r['id']); }

		$res_hist_post = $y->q("SELECT id FROM ligacargos_historico WHERE numcontrato='$contrato' AND estado=-1");
		$hist_cxld_post = array();
		while ($r = $y->fetch_array($res_hist_post)) { $hist_cxld_post[] = intval($r['id']); }

		// IDs creados por este cambio de estado (nuevos en activa con estado=0)
		$lc_ids_nuevos    = array_values(array_diff($lc_ids_post, $lc_ids_pre));
		// IDs amnistiados por este cambio (pasaron a -1 en histórico)
		$hist_ids_amnist  = array_values(array_diff($hist_cxld_post, $hist_cxld_pre));
		// IDs preexistentes en activa que paridad canceló (estado=0 → -1 en ligacargos)
		// Necesarios para reversión exacta — sin esto quedarían pendientes incorrectamente.
		$lc_ids_cancelados = array_values(array_diff($lc_ids_pre, $lc_ids_post));

		// ═══ Snapshot financiero POST-cambio ═══
		$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$contrato'");
		$post = $y->fetch_array($res_post);
		$n_post  = intval($post['n']);
		$tot_post = number_format(floatval($post['total']), 2);

		// ═══ Calcular delta y detalle de recalibración ═══
		$delta_n    = $n_post - $n_pre;
		$delta_m    = floatval($post['total']) - floatval($pre['total']);
		$delta_str  = '';
		if ($delta_n > 0) {
			$delta_str = " | Recalibración: +$delta_n cargos/recargos generados (\$" . number_format($delta_m, 2) . ")";
		} elseif ($delta_n < 0) {
			$delta_abs = abs($delta_n);
			$delta_str = " | Depuración: -$delta_abs cargos depurados (-\$" . number_format(abs($delta_m), 2) . ")";
		}

		// ═══ Detectar cargos legados ═══
		$nota_legados = '';
		if (intval($estado) === 1) {
			$res_leg = $y->q("SELECT l.leyenda, l.anio, l.monto
				FROM vw_ligacargos_pendientes l
				WHERE l.numcontrato = '$contrato'
				  AND l.categoria IN (2,3)
				  AND NOT EXISTS (
				      SELECT 1 FROM cargos c
				      WHERE c.nombre = l.leyenda AND c.estado = 1 AND c.automatico = 1
				  )
				ORDER BY l.anio ASC");
			$legados = array();
			while ($lg = $y->fetch_array($res_leg)) {
				$legados[] = $lg['leyenda'] . ' ($' . number_format(floatval($lg['monto']), 2) . ')';
			}
			if (count($legados) > 0) {
				$nota_legados = " | Cargos legados conservados sin recalcular recargos (catalogo inactivo): " . implode(', ', $legados);
			}
		}

		$resumen_financiero = "Adeudos: $n_post | Deuda: \$$tot_post" . $delta_str . $nota_legados;

		$nombre_origen_esc      = $y->real_escape_string($nombre_origen);
		$nombre_destino_esc     = $y->real_escape_string($nombre_destino);
		$texto_esc              = $y->real_escape_string($texto);
		$nota_especifica_esc    = $y->real_escape_string($nota_especifica);
		$resumen_financiero_esc = $y->real_escape_string($resumen_financiero);
		$resumen_pre_esc        = $y->real_escape_string("Adeudos: $n_pre | Deuda: \$$tot_pre");

		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 
		              'Cambio de estado: $nombre_origen_esc → $nombre_destino_esc', 
		              'Estado [$estado_actual] $nombre_origen_esc. $resumen_pre_esc. Motivo: $texto_esc', 
		              'Estado [$estado] $nombre_destino_esc. $nota_especifica_esc | $resumen_financiero_esc', 
		              '$contrato')");

		// ═══ REVERSAL_SNAPSHOT — graba IDs exactos para reversión completa ═══
		// Se graba siempre que la deuda (pre o post) supere el umbral configurado.
		$umbral_rev = floatval(obtenerValorSeguro($cfg, 'reversal_threshold', 15000));
		if (floatval($pre['total']) >= $umbral_rev || floatval($post['total']) >= $umbral_rev) {
			$rev_data = json_encode(array(
				'estado_origen'    => intval($estado_actual),
				'estado_destino'   => intval($estado),
				'lc_ids_nuevos'    => $lc_ids_nuevos,
				'lc_ids_cancelados'=> $lc_ids_cancelados,
				'hist_ids_amnist'  => $hist_ids_amnist,
				'deuda_pre'        => floatval($pre['total']),
				'deuda_post'       => floatval($post['total']),
				'tomas_pre'        => $tomas_pre,
				'serv_pre'         => array('a' => intval($agua_pre), 'd' => intval($drenaje_pre))
			));
			$rev_data_esc = $y->real_escape_string($rev_data);
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
			       VALUES(NOW(), 'REVERSAL_SNAPSHOT', '$rev_data_esc', 'PENDIENTE', '$contrato')");
		}

		$salida = "<script>cargaDatosContrato('$contrato');</script>";
	} else {
		$salida = $templates->render('sistema/mensaje', array(
			'titulo'  => 'Error',
			'mensaje' => 'Debe escribir a detalle el porqu&eacute; de la cancelaci&oacute;n de estos cargos (m&iacute;nimo ' . $min_car . ' caracteres).'
		));
	}
	return $salida;
}

function creaNota($contrato, $texto)
{
	$y = new Conexion();
	$y->conectarBaseDatos();
	$salida = "";

	// M1-fix: leer numcontratoresp real del contrato para insertarlo correctamente en notas
	$res_resp = $y->q("SELECT numcontratoresp FROM contrato WHERE numcontrato='$contrato'");
	list($numcontratoresp_real) = $y->fetch_array($res_resp);
	// Fallback: si el contrato no tiene responsable diferente, usar el mismo numcontrato
	if (empty($numcontratoresp_real)) {
		$numcontratoresp_real = $contrato;
	}

	if ($y->q("INSERT INTO notas VALUES(null, NOW(), '$contrato', \"$texto\", 0, '$contrato', '$numcontratoresp_real')")) {
		$texto_esc = $y->real_escape_string($texto);
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Nota de Contrato', 'NUEVA', 'Texto: $texto_esc', '$contrato')");
		$salida .= "<script>cargaDatosContrato('$contrato');</script>";
	}
	return $salida;
}


function eliminaNota($id)
{
	$y = new Conexion();
	$y->conectarBaseDatos();
	list($contrato, $texto_nota) = $y->fetch_array($y->q("SELECT contrato, texto FROM notas WHERE id='$id'"));
	$y->q("UPDATE notas SET estado=-1 WHERE id='$id'");
	
	$texto_esc = $y->real_escape_string($texto_nota);
	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
	       VALUES(NOW(), 'Eliminación de Nota', 'Activa: $texto_esc', 'ELIMINADA', '$contrato')");

	return "<script>cargaDatosContrato('$contrato');</script>";
}

function cambiapropietario($contrato, $usuario, $nuevousuario)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$res = $y->q("UPDATE contrato SET numusuario='$nuevousuario' WHERE numcontrato='$contrato'");
	if ($res) {
		// ═══ Snapshot financiero del contrato transferido ═══
		$res_snap = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$contrato'");
		$snap = $y->fetch_array($res_snap);
		$n_adeudos = intval($snap['n']);
		$tot_deuda = number_format(floatval($snap['total']), 2);
		// Obtener nombres de usuario para auditoría legible
		$res_nom_ant = $y->q("SELECT nombre FROM usuario WHERE noconsecutivo='$usuario'");
		$nom_ant = $y->fetch_array($res_nom_ant);
		$nombre_anterior = $nom_ant ? $y->real_escape_string($nom_ant['nombre']) : $usuario;
		$res_nom_new = $y->q("SELECT nombre FROM usuario WHERE noconsecutivo='$nuevousuario'");
		$nom_new = $y->fetch_array($res_nom_new);
		$nombre_nuevo = $nom_new ? $y->real_escape_string($nom_new['nombre']) : $nuevousuario;

		$usuario_esc      = $y->real_escape_string($usuario);
		$nuevousuario_esc = $y->real_escape_string($nuevousuario);
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Cambio de propietario del contrato $contrato', 'Usuario #$usuario_esc ($nombre_anterior). Adeudos: $n_adeudos | Deuda: \$$tot_deuda', 'Usuario #$nuevousuario_esc ($nombre_nuevo). Deuda transferida integramente.', '$contrato')");
		return "<script>cargaDatosContrato(\"$contrato\");</script>";
	}
	return $templates->render('sistema/mensaje', array(
		'titulo'  => 'Error',
		'mensaje' => 'Hubo un error en la asignaci&oacute;n del propietario.'
	));
}

function nuevoContrato()
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg = cargaConfig($y);
	$max_tomas = intval(obtenerValorSeguro($cfg, 'max_tomas_por_contrato', 2));
	$res = $y->q("SELECT (MAX(CAST(numcontrato AS UNSIGNED)) + 1) FROM contrato c LIMIT 0,1");
	list($ultimoID) = $y->fetch_array($res);

	$anio_actual = date('Y');
	$res_tarifas = $y->q("SELECT nombre, monto, monto_comercial, categoria FROM cargos WHERE automatico=1 AND estado=1 AND anio=$anio_actual AND categoria IN (2,3) ORDER BY categoria, numconsec");
	$tarifas_referencia = array();
	while ($tf = $y->fetch_array($res_tarifas)) {
		$clave = ($tf['categoria'] == 2) ? 'agua' : 'drenaje';
		if (!isset($tarifas_referencia[$clave])) {
			$mon_com = (floatval($tf['monto_comercial']) > 0) ? floatval($tf['monto_comercial']) : floatval($tf['monto']) * 2;
			$tarifas_referencia[$clave] = array(
				'leyenda'   => $tf['nombre'],
				'normal'    => floatval($tf['monto']),
				'comercial' => $mon_com
			);
		}
	}

	return $templates->render('contratos/nuevo', array(
		'ultimoID'           => $ultimoID,
		'tipos'              => array(0 => "Normal", 1 => "Comercial"),
		'max_tomas'          => $max_tomas,
		'tarifas_referencia' => $tarifas_referencia,
		'faltan_cargos'      => _verificaAnualidades($y)
	));
}

function _verificaAnualidades($y) {
	$anio_actual = date('Y');
	$res_anualidades = $y->q("SELECT nombre FROM cargos WHERE estado=1 AND nombre IN ('ANUALIDAD DEL AGUA $anio_actual', 'ANUALIDAD DEL DRENAJE $anio_actual')");
	$anualidades_existentes = array();
	while($a = $y->fetch_array($res_anualidades)) { $anualidades_existentes[] = $a['nombre']; }
	$faltan_cargos = array();
	if(!in_array("ANUALIDAD DEL AGUA $anio_actual", $anualidades_existentes)) $faltan_cargos[] = "ANUALIDAD DEL AGUA $anio_actual";
	if(!in_array("ANUALIDAD DEL DRENAJE $anio_actual", $anualidades_existentes)) $faltan_cargos[] = "ANUALIDAD DEL DRENAJE $anio_actual";
	return $faltan_cargos;
}

function busquedaContrato($query)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$coincidencias = explode(' ', $query);
	$descripciones = "";
	foreach ($coincidencias as $r) {
		$descripciones .= (($descripciones == "") ? "" : " AND ") . "contrato.numcontrato LIKE '$r'";
	}
	$res = $y->q("SELECT contrato.numcontrato, usuario.nombre, contrato.domicilio, contrato.estado FROM contrato LEFT JOIN usuario ON contrato.numusuario=usuario.noconsecutivo WHERE $descripciones ORDER BY contrato.numcontratoletras+0 ASC");
	$n = $y->num_rows($res);
	if ($n == 1) {
		list($contrato, $nombre, $direccion, $edo) = $y->fetch_array($res);
		return "<script>cargaDatosContrato('$contrato');</script>";
	}
	$contratos = array();
	while (list($contrato, $nombre, $direccion, $edo) = $y->fetch_array($res)) {
		$contratos[] = array('contrato' => $contrato, 'nombre' => $nombre, 'direccion' => $direccion, 'estado' => $edo);
	}
	return $templates->render('contratos/busqueda_resultados', array('n' => $n, 'query' => $query, 'contratos' => $contratos));
}

function guardaContrato($id, $domicilio, $tipo, $agua, $drenaje, $masdatos, $observaciones, $numcontratoletras, $metros, $tomas_data, $num_tomas = null)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg = cargaConfig($y);

	// Sanitización estricta Poka-yoke para inputs de texto
	$id = trim(strip_tags((string)$id));
	$domicilio = strtoupper(trim(strip_tags((string)$domicilio)));
	$masdatos = trim(strip_tags((string)$masdatos));
	$observaciones = trim(strip_tags((string)$observaciones));
	$numcontratoletras = strtoupper(trim(strip_tags((string)$numcontratoletras)));
	$metros = intval($metros);

	// Obtener estado actual
	$res_edo = $y->q("SELECT numusuario, estado FROM contrato WHERE numcontrato='$id'");
	list($usr, $c_estado) = $y->fetch_array($res_edo);
	
	// Regla C02: Prohibida la modificación de estado de contratos en 4 (SUSPENSIÓN DEFINITIVA)
	if ($c_estado == 4) {
		return "<script>alert('Error: Este contrato se encuentra en SUSPENSIÓN DEFINITIVA y no permite modificaciones.'); cargaDatosContrato('$id');</script>";
	}

	$res_tomas_actuales_count = $y->q("SELECT COUNT(id) FROM contrato_toma WHERE numcontrato='$id'");
	list($tomas_actuales_n) = $y->fetch_array($res_tomas_actuales_count);
	$tomas_req = ($num_tomas !== null) ? intval($num_tomas) : (is_array($tomas_data) ? count($tomas_data) : 1);
	
	if ($tomas_req > $tomas_actuales_n && !in_array($c_estado, [1, 2])) {
		return "<script>alert('Restriccion: Solo se permite agregar nuevas tomas a contratos en estado Activo o Suspension Temporal.');</script>";
	}

	// Validar restricción: máx 2 tomas por usuario mismo domicilio
	$dom_clean_sql_c = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER(c.domicilio), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$dom_clean_sql_v = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER('$domicilio'), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$res_count = $y->q("SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato WHERE c.numusuario='$usr' AND $dom_clean_sql_c = $dom_clean_sql_v AND c.estado != 4 AND c.numcontrato != '$id'");
	list($tomas_otras) = $y->fetch_array($res_count);

	if ($tomas_otras + $tomas_req > 2) {
		return "<script>alert('Restriccion de Tomas: El usuario ya cuenta con $tomas_otras toma(s) en otros contratos para este domicilio. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio.');</script>";
	}

	// Leer estado actual de tomas para detectar desconexiones y cambios de infraestructura
	$tomas_actuales = array();
	$res_ta = $y->q("SELECT num_toma, tiene_agua, tiene_drenaje, estado_agua, estado_drenaje, tipo FROM contrato_toma WHERE numcontrato='$id'");
	while ($ta = $y->fetch_array($res_ta)) {
		$tomas_actuales[intval($ta['num_toma'])] = $ta;
	}

	// Actualizar cada toma en contrato_toma
	if (is_array($tomas_data) && count($tomas_data) > 0) {
		foreach ($tomas_data as $num_t => $td) {
			$n          = intval($num_t);
			
			if ($num_tomas !== null && $n > $num_tomas) {
			    // Check bounds before deletion to log it properly
			    $rcheck = $y->q("SELECT id FROM contrato_toma WHERE numcontrato='$id' AND num_toma=$n");
			    if ($y->num_rows($rcheck) > 0) {
			        $y->q("DELETE FROM contrato_toma WHERE numcontrato='$id' AND num_toma=$n");
			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Eliminaci&oacute;n toma $n', 'existente', 'eliminada por reduccion', '$id')");
			    }
			} else {
    			$tipo_t     = intval(obtenerValorSeguro($td, 'tipo', 0));
    			$t_agua     = intval(obtenerValorSeguro($td, 'tiene_agua', 0));
    			$t_drenaje  = intval(obtenerValorSeguro($td, 'tiene_drenaje', 0));
    			$e_agua     = intval(obtenerValorSeguro($td, 'estado_agua', 1));
    			$e_drenaje  = intval(obtenerValorSeguro($td, 'estado_drenaje', 1));
    			
    			// Verificar si existe la toma
    			$rcheck = $y->q("SELECT id FROM contrato_toma WHERE numcontrato='$id' AND num_toma=$n");
    			if ($y->num_rows($rcheck) > 0) {
    				$y->q("UPDATE contrato_toma SET tipo=$tipo_t, tiene_agua=$t_agua, tiene_drenaje=$t_drenaje, estado_agua=$e_agua, estado_drenaje=$e_drenaje WHERE numcontrato='$id' AND num_toma=$n");
    			} else {
    				$y->q("INSERT INTO contrato_toma (numcontrato,num_toma,tipo,tiene_agua,tiene_drenaje,estado_agua,estado_drenaje,fecha_alta) VALUES('$id',$n,$tipo_t,$t_agua,$t_drenaje,$e_agua,$e_drenaje,NOW())");
    			}
    			
    			// Tracking de infraestructura física y tarifa
    			if (isset($tomas_actuales[$n])) {
    			    $ant_t_agua    = intval($tomas_actuales[$n]['tiene_agua']);
    			    $ant_t_drenaje = intval($tomas_actuales[$n]['tiene_drenaje']);
    			    $ant_tipo      = intval($tomas_actuales[$n]['tipo']);
    			    
    			    // Snapshot financiero para contexto de infraestructura
    			    $res_inf = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$id'");
    			    $inf = $y->fetch_array($res_inf);
    			    $ctx_fin = "Adeudos: " . intval($inf['n']) . " | Deuda: \$" . number_format(floatval($inf['total']), 2);
    			    $ctx_esc = $y->real_escape_string($ctx_fin);
    			    
    			    if ($ant_t_agua != $t_agua) {
    			        $str_a = $ant_t_agua ? 'Existente' : 'Inexistente';
    			        $str_n = $t_agua ? 'Existente' : 'Inexistente';
    			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Infrastructura Agua Toma $n','$str_a. $ctx_esc','$str_n (paridad pendiente de recalcular)','$id')");
    			    }
    			    if ($ant_t_drenaje != $t_drenaje) {
    			        $str_a = $ant_t_drenaje ? 'Existente' : 'Inexistente';
    			        $str_n = $t_drenaje ? 'Existente' : 'Inexistente';
    			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Infrastructura Drenaje Toma $n','$str_a. $ctx_esc','$str_n (paridad pendiente de recalcular)','$id')");
    			    }
    			    if ($ant_tipo != $tipo_t) {
    			        $str_a = $ant_tipo == 1 ? 'Comercial' : 'Normal';
    			        $str_n = $tipo_t == 1 ? 'Comercial' : 'Normal';
    			        $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Cambio de Tarifa Toma $n','$str_a. $ctx_esc','$str_n (paridad pendiente de recalcular)','$id')");
    			    }
    			}
    
    			// Si se desconectó agua — quitar cargo anual sin pagar
    			$ant_agua = isset($tomas_actuales[$n]) ? intval($tomas_actuales[$n]['estado_agua']) : 1;
    			if ($ant_agua == 1 && $e_agua == 0) {
    				_quitaCargoAnual($id, 'AGUA', $y);
    				$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Desconexion agua toma $n','conectado','desconectado','$id')");
    			}
    
    			// Si se desconectó drenaje — quitar cargo anual sin pagar
    			$ant_drenaje = isset($tomas_actuales[$n]) ? intval($tomas_actuales[$n]['estado_drenaje']) : 1;
    			if ($ant_drenaje == 1 && $e_drenaje == 0) {
    				_quitaCargoAnual($id, 'DRENAJE', $y);
    				$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Desconexion drenaje toma $n','conectado','desconectado','$id')");
    			}
			}
		}
	}

	// Sincronizar campos legacy contrato.agua, contrato.drenaje, contrato.tipo
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_agua=1 AND estado_agua=1");
	list($tot_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($tot_drenaje) = $y->fetch_array($r_d);
	$r_t = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$id'");
	list($tipo_max) = $y->fetch_array($r_t);
	$tipo_max = intval($tipo_max);

	// Actualizar contrato
	$vars = array("domicilio", "masdatos", "observaciones", "numcontratoletras", "metros");
	$res = $y->q("SELECT domicilio, masdatos, observaciones, numcontratoletras, metros FROM contrato WHERE numcontrato='$id'");
	if ($y->num_rows($res) != 0) {
		list($domicilioo, $masdatoso, $observacioneso, $numcontratoletraso, $metroso) = $y->fetch_array($res);
		$actualiza  = "";
		$regAntes   = "";
		$regDespues = "";
		foreach ($vars as $vals) {
			$orig = $vals . "o";
			if ($$vals != $$orig) {
				$actualiza  .= (($actualiza == "")  ? "" : ", ") . "$vals=\"" . $$vals . "\"";
				$regAntes   .= (($regAntes == "")   ? "" : ", ") . "$vals='" . $$orig . "'";
				$regDespues .= (($regDespues == "")  ? "" : ", ") . "$vals='" . $$vals . "'";
			}
		}
		// Siempre sincronizar agua, drenaje y tipo desde contrato_toma
		$actualiza_sync = "agua=$tot_agua, drenaje=$tot_drenaje, tipo=$tipo_max";
		$full_update    = $actualiza != "" ? "$actualiza, $actualiza_sync" : $actualiza_sync;

		if ($actualiza != "") {
			$regAntes_esc   = $y->real_escape_string($regAntes);
			$regDespues_esc = $y->real_escape_string($regDespues);
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Actualizaci&oacute;n del contrato $id', '$regAntes_esc', '$regDespues_esc', '$id')");
		}

		// ═══ Snapshot financiero PRE-paridad ═══
		$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$id'");
		$pre = $y->fetch_array($res_pre);
		$n_pre   = intval($pre['n']);
		$tot_pre = number_format(floatval($pre['total']), 2);

		$y->q("UPDATE contrato SET $full_update WHERE numcontrato='$id'");
		
		// Sincronización de Paridad Físico-Financiera
		_sincronizaParidadFinanciera($id, $y);

		// ═══ Snapshot financiero POST-paridad + delta ═══
		$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$id'");
		$post = $y->fetch_array($res_post);
		$n_post  = intval($post['n']);
		$tot_post = number_format(floatval($post['total']), 2);
		$delta_n  = $n_post - $n_pre;
		$delta_m  = floatval($post['total']) - floatval($pre['total']);
		if ($delta_n != 0) {
			$delta_label = ($delta_n > 0) ? "Recalibración: +$delta_n cargos" : "Depuración: " . $delta_n . " cargos";
			$delta_monto = ($delta_m >= 0) ? '($' . number_format($delta_m, 2) . ')' : '(-$' . number_format(abs($delta_m), 2) . ')';
			$paridad_desc = $y->real_escape_string("$delta_label $delta_monto");
			$pre_esc  = $y->real_escape_string("Adeudos: $n_pre | Deuda: \$$tot_pre");
			$post_esc = $y->real_escape_string("Adeudos: $n_post | Deuda: \$$tot_post");
			$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(), 'Paridad Financiera (Actualización contrato)', '$pre_esc', '$post_esc | $paridad_desc', '$id')");
		}
		
		$salida = "<script>cargaDatosContrato('$id')</script>";
	} else {
		$salida = $templates->render('sistema/mensaje', array(
			'titulo'  => 'Cambios sin efecto',
			'mensaje' => "Ning&uacute;n cambio ha sido enviado para el contrato $id."
		));
	}
	return $salida;
}

function _quitaCargoAnual($numcontrato, $servicio, $y)
{
	$anio_actual = date('Y');
	$servicio    = strtoupper($servicio);
	$y->q("CALL sp_cancelar_cargo('$numcontrato', CONCAT('ANUALIDAD DEL ', '$servicio', ' ', '$anio_actual'), 0, @filas, 0)");
}

/**
 * Motor de Paridad: Asegura que la existencia de cargos coincida con el estado físico de las tomas.
 */
function _sincronizaParidadFinanciera($id, $y) {
    $anio = date('Y');
    
    // 0. Verificar estado del contrato para el Standard SDF
    $res_edo = $y->q("SELECT estado FROM contrato WHERE numcontrato = '$id'");
    list($estado_cto) = $y->fetch_array($res_edo);

    if (intval($estado_cto) === 4) {
        // --- LÓGICA STANDARD SDF: Depuración Total ---
        
        // 1. Contar afectados para auditoría (ambas tablas)
        $res_cnt = $y->q("SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato = '$id'");
        list($afectados) = $y->fetch_array($res_cnt);

        if (intval($afectados) > 0) {
            // 2. Registrar en cambios antes de limpiar
            $y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
                   VALUES(NOW(), 'Depuración SDF Automática (Motor Paridad)', 
                   'Cargos pendientes: $afectados', 'Estado: -1 (Depurado Total)', '$id')");

            // 3. Limpiar tabla activa
            $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato = '$id' AND estado = 0");

            // 4. Limpiar tabla histórica (Esquema V2)
            $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato = '$id' AND estado = 0");
        }
        return; // Terminar aquí para SDF
    }

    // --- LÓGICA DE PARIDAD NORMAL (Estados 1, 2, 3) ---
    
    // Conteo físico activo
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_agua=1 AND estado_agua=1");
	list($n_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_drenaje=1 AND estado_drenaje=1");
```

</details>

---

## Agent Response

### Thinking

**Analyzing Annualities Function**

I'm currently focused on the `_verificaAnualidades($y)` function in `includes/negocio/contratos.php`, specifically lines 528-537. My initial observation is its use within a method. I'm noting the year extraction with `date('Y')` and the SQL query targeting `cargos` table. I'm focusing to identify how the annualities are calculated and validated within this function. I'm digging deeper into how the `$y` object is used.




### Actions

**Tool:** `view_file`
**File:** `contratos.php`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.619365227s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L800-1439)</summary>

**Path:** `Unknown file`

```
	list($n_drenaje) = $y->fetch_array($r_d);
	
	// Sincronizar AGUA (categoria=2)
	$leyenda_a = "ANUALIDAD DEL AGUA $anio";
	if ($n_agua > 0) {
	    // Si hay toma física pero el cargo está cancelado (-1), restaurarlo a pendiente (0)
	    $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = -1");
	    $y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = -1");
	} else {
	    // Si no hay toma física pero el cargo está pendiente (0), cancelarlo (-1)
	    $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = 0");
	    $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_a' AND categoria=2 AND estado = 0");
	}

	// Sincronizar DRENAJE (categoria=3)
	$leyenda_d = "ANUALIDAD DEL DRENAJE $anio";
	if ($n_drenaje > 0) {
	    $y->q("UPDATE ligacargos SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = -1");
	    $y->q("UPDATE ligacargos_historico SET estado = 0 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = -1");
	} else {
	    $y->q("UPDATE ligacargos SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = 0");
	    $y->q("UPDATE ligacargos_historico SET estado = -1 WHERE numcontrato='$id' AND leyenda='$leyenda_d' AND categoria=3 AND estado = 0");
	}

	// Recalibrar montos de cargos PENDIENTES basados en el nuevo número de tomas y tipo
	_sincronizaDeudaPendienteContrato($id, $y);
}

function _sincronizaDeudaPendienteContrato($numcontrato, $y)
{
	// Snapshot PRE para auditoría
	$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
	$pre = $y->fetch_array($res_pre);
	$n_pre   = intval($pre['n']);
	$tot_pre = number_format(floatval($pre['total']), 2);

	$res_cto = $y->q("SELECT metros, MONTH(fecha) as mescontrato FROM contrato WHERE numcontrato='$numcontrato'");
	list($metros_cto, $mescontrato) = $y->fetch_array($res_cto);

	// Configuración necesaria para recargos
	$res_cfg = $y->q("SELECT clave, valor FROM config_sistema");
	$cfg = array();
	while (list($k, $v) = $y->fetch_array($res_cfg)) { $cfg[$k] = $v; }

	// Sincronizar montos de cargos PENDIENTES (estado = 0)
	// LÓGICA HÍBRIDA: El monto base es NO-RETROACTIVO (protege el pasado).
	// Los recargos son RETROACTIVOS (mantienen la mora al día para todos los años).
	$anio_actual = date('Y');
	$res_pend = $y->q("SELECT id_cargo, leyenda, categoria, repetido, anio, monto FROM vw_ligacargos_pendientes WHERE numcontrato='$numcontrato' AND categoria IN (2,3)");
	
	$actualizados = 0;
	$mora_actualizada = 0;
	while ($cp = $y->fetch_array($res_pend)) {
		$id_lc = $cp['id_cargo'];
		$monto_viva = floatval($cp['monto']);
		$leyenda = $cp['leyenda'];
		$cat = $cp['categoria'];
		$rep = $cp['repetido'];
		$anio_cargo = $cp['anio'];
		
		$res_cat = $y->q("SELECT monto, monto_comercial, metros, recargo FROM cargos WHERE nombre='$leyenda' AND categoria=$cat LIMIT 1");
		if ($y->num_rows($res_cat) > 0) {
			list($monto_n, $monto_c, $aplica_metros, $val_rec) = $y->fetch_array($res_cat);
			
			$monto_total = 0;
			$res_tomas = $y->q("SELECT tipo FROM contrato_toma WHERE numcontrato='$numcontrato' AND " . ($cat == 2 ? 'tiene_agua=1 AND estado_agua=1' : 'tiene_drenaje=1 AND estado_drenaje=1'));
			while ($t = $y->fetch_array($res_tomas)) {
				$es_com = ($t['tipo'] == 1);
				$m_base = ($es_com && $monto_c > 0) ? $monto_c : ($es_com ? $monto_n * 2 : $monto_n);
				$monto_total += $m_base;
			}
			
			
			// REGLA DE ORO: Solo actualizar el monto base si es del año actual o futuro
			if ($monto_total > 0 && $anio_cargo >= $anio_actual) {
				$y->q("UPDATE ligacargos SET monto=$monto_total WHERE id=$id_lc");
				$y->q("UPDATE ligacargos_historico SET monto=$monto_total WHERE id=$id_lc");
				$monto_viva = $monto_total; // El recargo se basará en el nuevo monto
				$actualizados++;
			}
			
			// SIEMPRE recalcular recargos asociados para mantener la deuda viva (Regla F05)
			calcula_recargos($numcontrato, $leyenda, $monto_viva, $val_rec, $anio_cargo, $cat, $rep, $y, $mescontrato, $cfg);
			$mora_actualizada++;
		}
	}
	
	if ($mora_actualizada > 0) {
		// Snapshot POST para auditoría
		$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
		$post = $y->fetch_array($res_post);
		$n_post  = intval($post['n']);
		$tot_post = number_format(floatval($post['total']), 2);
		$delta_m = floatval($post['total']) - floatval($pre['total']);
		$ajuste_txt = ($delta_m >= 0) ? "+$" . number_format($delta_m, 2) : "-$" . number_format(abs($delta_m), 2);

		$antes_txt   = "Adeudos: $n_pre | Deuda: \$$tot_pre";
		$despues_txt = "Adeudos: $n_post | Deuda: \$$tot_post | Ajuste Base: $ajuste_txt | $actualizados base recalibrados, $mora_actualizada moras actualizadas";
		
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Calibracion automatica de Deudas (Lógica Híbrida)', 
		       '$antes_txt', '$despues_txt', '$numcontrato')");
	}
}

function cambiaEstadoConexion($numcontrato, $num_toma, $servicio, $nuevo_estado)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg = cargaConfig($y);

	// Validar contrato ACTIVO
	$r = $y->q("SELECT estado FROM contrato WHERE numcontrato='$numcontrato'");
	list($est) = $y->fetch_array($r);
	$estado_activo = intval(obtenerValorSeguro($cfg, 'estado_activo', 1));
	if ($est != $estado_activo) {
		return "<b>Error:</b> Solo se puede cambiar la conexi&oacute;n en contratos ACTIVOS.";
	}

	$campo = ($servicio == 'agua') ? 'estado_agua' : 'estado_drenaje';

	// ═══ Snapshot financiero PRE-paridad ═══
	$res_pre = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
	$pre = $y->fetch_array($res_pre);
	$n_pre   = intval($pre['n']);
	$tot_pre = number_format(floatval($pre['total']), 2);

	$y->q("UPDATE contrato_toma SET $campo=$nuevo_estado WHERE numcontrato='$numcontrato' AND num_toma=$num_toma");

    $desc_ev  = ($nuevo_estado == 0) ? 'desconectado' : 'conectado';
    $antes_ev = ($nuevo_estado == 0) ? 'conectado' : 'desconectado';
    $desc_ev_esc  = $y->real_escape_string($desc_ev);
    $antes_ev_esc = $y->real_escape_string($antes_ev);
    $servicio_esc = $y->real_escape_string($servicio);

	// Sincronizar campos legacy y Paridad Financiera
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
	list($tot_a) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($tot_d) = $y->fetch_array($r_d);
	$y->q("UPDATE contrato SET agua=$tot_a, drenaje=$tot_d WHERE numcontrato='$numcontrato'");
	
	_sincronizaParidadFinanciera($numcontrato, $y);

	// ═══ Snapshot financiero POST-paridad + delta ═══
	$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$numcontrato'");
	$post = $y->fetch_array($res_post);
	$n_post  = intval($post['n']);
	$tot_post = number_format(floatval($post['total']), 2);
	$delta_n  = $n_post - $n_pre;
	$delta_m  = floatval($post['total']) - floatval($pre['total']);
	$delta_str = '';
	if ($delta_n > 0) {
		$delta_str = " | Recalibración: +$delta_n cargos (\$" . number_format($delta_m, 2) . ")";
	} elseif ($delta_n < 0) {
		$delta_str = " | Depuración: " . $delta_n . " cargos (-\$" . number_format(abs($delta_m), 2) . ")";
	}
	$resumen_pre_esc  = $y->real_escape_string("Adeudos: $n_pre | Deuda: \$$tot_pre");
	$resumen_post_esc = $y->real_escape_string("Adeudos: $n_post | Deuda: \$$tot_post" . $delta_str);
	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) VALUES(NOW(),'Cambio Rapido de Conexion $servicio_esc toma $num_toma','$antes_ev_esc. $resumen_pre_esc','$desc_ev_esc. $resumen_post_esc','$numcontrato')");

	return "<script>cargaDatosContrato('$numcontrato');</script>";
}

function guardaNuevoContrato($id, $usr, $domicilio, $tipo, $agua, $drenaje, $masdatos, $observaciones, $metros, $tomas_data, $num_tomas)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();
	$cfg    = cargaConfig($y);
	$exento = intval(obtenerValorSeguro($cfg, 'nuevo_contrato_exento_default', 1));

	// Sanitización estricta Poka-yoke para inputs de texto
	$id = trim(strip_tags((string)$id));
	$usr = trim(strip_tags((string)$usr));
	$domicilio = strtoupper(trim(strip_tags((string)$domicilio)));
	$masdatos = trim(strip_tags((string)$masdatos));
	$observaciones = trim(strip_tags((string)$observaciones));
	$metros = intval($metros);

	// Validar restricción: máx 2 tomas por usuario mismo domicilio
	$dom_clean_sql_c = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER(c.domicilio), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$dom_clean_sql_v = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER('$domicilio'), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$res_count = $y->q("SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato WHERE c.numusuario='$usr' AND $dom_clean_sql_c = $dom_clean_sql_v AND c.estado != 4");
	list($tomas_existentes) = $y->fetch_array($res_count);
	
	$num_t = intval($num_tomas);
	if ($num_t < 1) $num_t = 1;
	
	if ($tomas_existentes + $num_t > 2) {
		return "<script>alert('Restriccion de Tomas: El usuario ya cuenta con $tomas_existentes toma(s) en el domicilio indicado. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio.');</script>";
	}

	$q = "INSERT INTO contrato (numcontrato, numusuario, numtoma, domicilio, masdatos, tipo, agua, drenaje, observaciones, estado, numcontratoresp, numcontratoletras, fecha, metros, exento_recargo_primer_anio) VALUES('$id', '$usr', 0, \"$domicilio\", \"$masdatos\", $tipo, $agua, $drenaje, \"$observaciones\", 1, '', '', NOW(), $metros, $exento)";

	if ($y->q($q)) {
		// Crear tomas en contrato_toma
		$num_t = intval($num_tomas);
		if ($num_t < 1) $num_t = 1;
		$max_t = intval(obtenerValorSeguro($cfg, 'max_tomas_por_contrato', 2));
		if ($num_t > $max_t) $num_t = $max_t;

		// Tracking de tomas para auditoría
		$tomas_desc = array();
		for ($n = 1; $n <= $num_t; $n++) {
			$td        = isset($tomas_data[$n]) ? $tomas_data[$n] : array();
			$tipo_t    = intval(obtenerValorSeguro($td, 'tipo', 0));
			$t_agua    = intval(obtenerValorSeguro($td, 'tiene_agua', 0));
			$t_drenaje = intval(obtenerValorSeguro($td, 'tiene_drenaje', 0));
			$e_agua    = ($t_agua    ? 1 : 0);
			$e_drenaje = ($t_drenaje ? 1 : 0);
			$y->q("INSERT INTO contrato_toma (numcontrato,num_toma,tipo,tiene_agua,tiene_drenaje,estado_agua,estado_drenaje,fecha_alta) VALUES('$id',$n,$tipo_t,$t_agua,$t_drenaje,$e_agua,$e_drenaje,NOW())");
			
			$tomas_desc[] = "T$n: [" . ($tipo_t == 1 ? 'COM' : 'NOR') . "] " . ($t_agua ? 'AGUA' : '') . ($t_agua && $t_drenaje ? '+' : '') . ($t_drenaje ? 'DRE' : '');
		}

		// Sincronizar agua/drenaje/tipo en contrato (basado en tomas creadas)
		$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_agua=1");
		list($ta) = $y->fetch_array($r_a);
		$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$id' AND tiene_drenaje=1");
		list($td2) = $y->fetch_array($r_d);
		$r_t = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$id'");
		list($tp) = $y->fetch_array($r_t);
		$y->q("UPDATE contrato SET agua=$ta, drenaje=$td2, tipo=" . intval($tp) . " WHERE numcontrato='$id'");

        // Establecer paridad inicial (Generar cargos según tomas dadas de alta)
        generaCargosAutomaticos($id, $y);
        _sincronizaParidadFinanciera($id, $y);

		// ═══ Snapshot financiero POST-creación ═══
		$res_post = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato = '$id'");
		$post = $y->fetch_array($res_post);
		$n_post  = intval($post['n']);
		$tot_post = number_format(floatval($post['total']), 2);

		// Auditoría de Creación Detallada
		$tomas_str = implode(' | ', $tomas_desc);
		$resumen_fin = "Adeudos: $n_post | Deuda: \$$tot_post";
		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato) 
		       VALUES(NOW(), 'Registro de Nuevo Contrato', 'NUEVO', 'Usuario: $usr | Domicilio: $domicilio | $tomas_str | $resumen_fin', '$id')");

		$salida = "<script>cargaDatosContrato('$id');</script>";
	} else {
		$salida = $templates->render('sistema/mensaje', array(
			'titulo'  => 'Cambios sin efecto',
			'mensaje' => 'No ha sido posible agregar este contrato a la base de datos.'
		));
	}
	return $salida;
}

function validaTomasSync($usr, $domicilio, $num_tomas, $id = null) {
	$y = new Conexion();
	$y->conectarBaseDatos();

	if ($id !== null && $id != '') {
		// Validar estado del contrato
		$res_edo = $y->q("SELECT estado FROM contrato WHERE numcontrato='$id'");
		if ($y->num_rows($res_edo) > 0) {
		    list($c_estado) = $y->fetch_array($res_edo);
		    $res_tomas_actuales = $y->q("SELECT COUNT(id) FROM contrato_toma WHERE numcontrato='$id'");
		    list($tomas_actuales) = $y->fetch_array($res_tomas_actuales);
		    
		    if ($num_tomas > $tomas_actuales && !in_array($c_estado, [1, 2])) {
			    return "Restriccion: Solo se permite agregar nuevas tomas a contratos en estado Activo o Suspension Temporal.";
		    }
		}
		$cond_id = " AND c.numcontrato != '$id' ";
	} else {
		$cond_id = "";
	}

	$dom_clean_sql_c = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER(c.domicilio), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	$dom_clean_sql_v = "REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(UPPER('$domicilio'), ' ', ''), '.', ''), ',', ''), 'Á','A'), 'É','E'), 'Í','I'), 'Ó','O'), 'Ú','U')";
	
	$res_count = $y->q("SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato = ct.numcontrato WHERE c.numusuario='$usr' AND $dom_clean_sql_c = $dom_clean_sql_v AND c.estado != 4 " . $cond_id);
	list($tomas_otras) = $y->fetch_array($res_count);

	if ($tomas_otras + intval($num_tomas) > 2) {
		return "El usuario ya cuenta con $tomas_otras toma(s) en otros contratos para el domicilio indicado. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio, previendo asignar $num_tomas extra.";
	}

	return "OK";
}

/**
 * Regla C06 — Amnistía de Recargos en Reactivación
 * Al reactivar un contrato (→ Estado 1 ACTIVO), cancela todos los recargos
 * de años anteriores al año actual que estén pendientes (estado=0).
 * Solo quedan vigentes los cargos y recargos del año en curso.
 * Se registra auditoria en tabla cambios.
 */
function _amnistiaRecargosHistoricos($contrato, $y) {
	$anio_actual = date('Y');

	// Snapshot financiero ANTES de cancelar — para auditoría con impacto real
	$res_snap = $y->q("SELECT COUNT(*) AS total_cargos,
		                      SUM(monto) AS total_monto,
		                      COUNT(CASE WHEN es_recargo_moratorio = 1 AND anio < $anio_actual THEN 1 END) AS recargos_a_cancelar,
		                      SUM(CASE WHEN es_recargo_moratorio = 1 AND anio < $anio_actual THEN monto ELSE 0 END) AS monto_a_cancelar
		               FROM vw_ligacargos_pendientes
		               WHERE numcontrato = '$contrato'");
	$snap = $y->fetch_array($res_snap);
	$cargos_antes     = intval($snap['total_cargos']);
	$monto_antes      = number_format(floatval($snap['total_monto']), 2);
	$recargos_cancelar = intval($snap['recargos_a_cancelar']);
	$monto_cancelar   = number_format(floatval($snap['monto_a_cancelar']), 2);
	$cargos_despues   = $cargos_antes - $recargos_cancelar;
	$monto_despues    = number_format(floatval($snap['total_monto']) - floatval($snap['monto_a_cancelar']), 2);

	// Cancelar recargos moratorios de años anteriores en tabla activa.
	// Usa categoria IN (16,17) — fuente de verdad canónica (regla F05).
	$y->q("UPDATE ligacargos
		    SET estado = -1
		  WHERE numcontrato = '$contrato'
		    AND categoria IN (16, 17)
		    AND anio < $anio_actual
		    AND estado = 0");

	// Sincronizar en tabla histórica (esquema V2 split)
	$y->q("UPDATE ligacargos_historico
		    SET estado = -1
		  WHERE numcontrato = '$contrato'
		    AND categoria IN (16, 17)
		    AND anio < $anio_actual
		    AND estado = 0");

	if ($recargos_cancelar > 0) {
		$antes_txt   = "Adeudos: $cargos_antes cargos | Deuda total: \$$monto_antes | Recargos moratorios hist. a cancelar: $recargos_cancelar (\$$monto_cancelar)";
		$despues_txt = "Adeudos: $cargos_despues cargos | Deuda total: \$$monto_despues | $recargos_cancelar recargos moratorios históricos cancelados (estado=-1)";
		
		$antes_esc   = $y->real_escape_string($antes_txt);
		$despues_esc = $y->real_escape_string($despues_txt);

		$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
		        VALUES(NOW(),
		               'Amnistia de Recargos en Reactivacion (C06)',
		               '$antes_esc',
		               '$despues_esc',
		               '$contrato')");
	}
}
function generaCargosAutomaticos($numcontrato, $y)
{
	// Configuración necesaria
	$res_cfg = $y->q("SELECT clave, valor FROM config_sistema");
	$cfg = array();
	while (list($k, $v) = $y->fetch_array($res_cfg)) {
		$cfg[$k] = $v;
	}

	// Datos del contrato
	$res_cto = $y->q("SELECT metros, MONTH(fecha) as mescontrato FROM contrato WHERE numcontrato='$numcontrato'");
	list($metros, $mescontrato) = $y->fetch_array($res_cto);

	// Consultar tomas activas para calcular montos correctamente
	$r_a = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_agua=1 AND estado_agua=1");
	list($n_tomas_agua) = $y->fetch_array($r_a);
	$r_d = $y->q("SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='$numcontrato' AND tiene_drenaje=1 AND estado_drenaje=1");
	list($n_tomas_drenaje) = $y->fetch_array($r_d);
	$r_tc = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$numcontrato'");
	list($es_comercial) = $y->fetch_array($r_tc);

	$anio_actual_fact = intval(date('Y'));
	$rescargos = $y->q("SELECT nombre, monto, monto_comercial, recargo, anio, categoria, repetir, metros FROM cargos WHERE estado=1 AND automatico=1 AND (anio = 0 OR anio = $anio_actual_fact) ORDER BY nombre");

	while ($a = $y->fetch_array($rescargos)) {
		$leyenda    = $a['nombre'];
		$monto_n    = floatval($a['monto']);
		$monto_c    = floatval($a['monto_comercial']);
		$recargo    = $a['recargo'];
		$anio       = $a['anio'];
		$categoria  = $a['categoria'];
		$repetir    = $a['repetir'];
		$aplicametros = $a['metros'];

		// --- NUEVO MODELO: Suma por Unidad de Toma ---
		$monto = 0;
		if ($categoria == 2 || $categoria == 3) {
			$res_tomas = $y->q("SELECT tipo FROM contrato_toma WHERE numcontrato='$numcontrato' AND " . ($categoria == 2 ? 'tiene_agua=1 AND estado_agua=1' : 'tiene_drenaje=1 AND estado_drenaje=1'));
			while ($t = $y->fetch_array($res_tomas)) {
				$es_com = ($t['tipo'] == 1);
				$m_base = ($es_com && $monto_c > 0) ? $monto_c : ($es_com ? $monto_n * 2 : $monto_n);
				$monto += $m_base;
			}
		} else {
			// Para otros cargos (multas, etc), se usa la lógica anterior de 'Max Tipo' si aplica, o tarifa base
			$r_tc = $y->q("SELECT MAX(tipo) FROM contrato_toma WHERE numcontrato='$numcontrato'");
			list($es_com_max) = $y->fetch_array($r_tc);
			$monto = ($es_com_max == 1 && $monto_c > 0) ? $monto_c : (($es_com_max == 1) ? $monto_n * 2 : $monto_n);
		}

		if ($aplicametros == 1)
			$monto = $monto * $metros;
		
		if ($anio == "0")
			$anio = date('Y');

		$aplicar_cargo = ($monto > 0);
		// Si es agua/drenaje pero el monto dio 0 (sin tomas activas), no aplicar
		if (($categoria == 2 || $categoria == 3) && $monto == 0) $aplicar_cargo = false;

		if ($aplicar_cargo == true) {
			if ($repetir == 0) {
				$chk = $y->q("SELECT numcontrato FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato' LIMIT 1");
				if ($y->num_rows($chk) == 0) {
					$tabla_dest = ($anio <= 2025) ? "ligacargos_historico" : "ligacargos";
					$q = "INSERT INTO $tabla_dest (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, 0)";
					$y->q($q);
				}
				calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, 0, $y, $mescontrato, $cfg);
			} else {
				$chk_rep = $y->q("SELECT numcontrato FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato' AND anio=$anio LIMIT 1");
				if ($y->num_rows($chk_rep) == 0) {
					$resautomatico = $y->q("SELECT COUNT(numcontrato) FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato'");
					list($cuenta) = $y->fetch_array($resautomatico);
					$tabla_dest = ($anio <= 2025) ? "ligacargos_historico" : "ligacargos";
					$q = "INSERT INTO $tabla_dest (numcontrato, leyenda, monto, fcobro, fpago, estado, recargo, folio, anio, numcontratoresp, idpago_vinc, categoria, repetido) VALUES('$numcontrato', '$leyenda', $monto, CURDATE(), CURDATE(), 0, $recargo, '', $anio, '', NULL, $categoria, $cuenta)";
					$y->q($q);
					calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, $cuenta, $y, $mescontrato, $cfg);
				} else {
					$resautomatico = $y->q("SELECT COUNT(numcontrato) FROM vw_ligacargos_all WHERE leyenda='$leyenda' AND numcontrato='$numcontrato'");
					list($cuenta) = $y->fetch_array($resautomatico);
					calcula_recargos($numcontrato, $leyenda, $monto, $recargo, $anio, $categoria, $cuenta, $y, $mescontrato, $cfg);
				}
			}
		}
	}
}

/**
 * _getReversal() — Verifica si existe un REVERSAL_SNAPSHOT pendiente para el contrato
 * y si la deuda total >= $15,000. Retorna null si no aplica, o array con los datos
 * del snapshot para que la vista pueda mostrar el botón "Revertir transición".
 *
 * @param string $numcontrato
 * @param float  $deuda_total  Total pendiente ($total + $recargos) calculado en cargaContrato
 * @param object $y            Conexión activa
 * @return array|null
 */
function _getReversal($numcontrato, $deuda_total, $y)
{
	$cfg = cargaConfig($y);
	$umbral = floatval(obtenerValorSeguro($cfg, 'reversal_threshold', 15000));

	if (floatval($deuda_total) < $umbral) {
		return null;
	}

	// Buscar el REVERSAL_SNAPSHOT más reciente no revertido para este contrato
	$res = $y->q("SELECT id, fecha, antes FROM cambios
	              WHERE numcontrato = '$numcontrato'
	                AND descripcion = 'REVERSAL_SNAPSHOT'
	                AND despues = 'PENDIENTE'
	              ORDER BY id DESC LIMIT 1");
	if ($y->num_rows($res) == 0) {
		return null;
	}
	$row = $y->fetch_array($res);

	// Verificar si es el movimiento más reciente de estado (para evitar reversas anacrónicas)
	$res_check = $y->q("SELECT id FROM cambios 
	                   WHERE numcontrato = '$numcontrato' 
	                     AND descripcion LIKE 'Cambio de estado:%' 
	                   ORDER BY id DESC LIMIT 1");
	$last_move = $y->fetch_array($res_check);
	if ($last_move && $last_move['id'] > $row['id']) {
		// Existe un cambio de estado posterior al snapshot
		return null;
	}

	$data = json_decode($row['antes'], true);
	if (!$data) {
		return null;
	}

	return array(
		'cambio_id'       => intval($row['id']),
		'fecha'           => $row['fecha'],
		'estado_origen'   => intval($data['estado_origen']),
		'estado_destino'  => intval($data['estado_destino']),
		'n_lc_nuevos'     => count($data['lc_ids_nuevos']),
		'n_hist_amnist'   => count($data['hist_ids_amnist']),
		'deuda_pre'       => floatval($data['deuda_pre']),
		'deuda_post'      => floatval($data['deuda_post'])
	);
}

/**
 * revertirTransicion() — Revierte el último cambio de estado usando el REVERSAL_SNAPSHOT.
 * Deshace exactamente lo que hizo cambiaestado():
 *  - Restaura contrato.estado al valor origen
 *  - Cancela los cargos generados (lc_ids_nuevos: estado=0 → estado=-1)
 *  - Restaura los cargos amnistiados (hist_ids_amnist: estado=-1 → estado=0)
 * Registra todo en cambios y marca el snapshot como REVERTIDO.
 */
function revertirTransicion($contrato)
{
	global $templates;
	$y = new Conexion();
	$y->conectarBaseDatos();

	$contrato = intval($contrato);

	// 1. Obtener el snapshot pendiente más reciente
	$res = $y->q("SELECT id, fecha, antes FROM cambios
	              WHERE numcontrato = '$contrato'
	                AND descripcion = 'REVERSAL_SNAPSHOT'
	                AND despues = 'PENDIENTE'
	              ORDER BY id DESC LIMIT 1");

	if ($y->num_rows($res) == 0) {
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'Sin reversión disponible',
			'mensaje' => 'No existe una transición de estado pendiente de revertir para este contrato.'
		));
	}

	$row        = $y->fetch_array($res);
	$snap_id    = intval($row['id']);
	$data       = json_decode($row['antes'], true);

	if (!$data) {
		return $templates->render('sistema/mensaje', array(
			'titulo'  => 'Error',
			'mensaje' => 'El snapshot de reversión está corrupto. Contacte al administrador.'
		));
	}

	$estado_origen     = intval($data['estado_origen']);
	$estado_destino    = intval($data['estado_destino']);
	$lc_ids_nuevos     = array_map('intval', (array)$data['lc_ids_nuevos']);
	$lc_ids_cancelados = array_map('intval', (array)(isset($data['lc_ids_cancelados']) ? $data['lc_ids_cancelados'] : array()));
	$hist_ids_amnist   = array_map('intval', (array)$data['hist_ids_amnist']);
	$tomas_pre         = (array)(isset($data['tomas_pre']) ? $data['tomas_pre'] : array());
	$serv_pre          = (isset($data['serv_pre']) ? $data['serv_pre'] : array('a' => 1, 'd' => 1));
	$deuda_pre         = floatval($data['deuda_pre']);
	$deuda_post        = floatval($data['deuda_post']);

	// Nombres de estado para la bitácora
	$nombres_estado = array(
		1 => 'ACTIVO', 2 => 'SUSPENSIÓN TEMPORAL',
		3 => 'SUSPENSIÓN ADMINISTRATIVA', 4 => 'SUSPENSIÓN DEFINITIVA'
	);
	$nom_origen  = isset($nombres_estado[$estado_origen])  ? $nombres_estado[$estado_origen]  : "ESTADO $estado_origen";
	$nom_destino = isset($nombres_estado[$estado_destino]) ? $nombres_estado[$estado_destino] : "ESTADO $estado_destino";

	// ── Snapshot financiero PRE-reversa ──────────────────────────────────────
	$res_snap = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato='$contrato'");
	$snap_pre = $y->fetch_array($res_snap);
	$n_pre_rev  = intval($snap_pre['n']);
	$tot_pre_rev = number_format(floatval($snap_pre['total']), 2);

	// ── 2. Restaurar estado del contrato y servicios ─────────────────────────
	$agua_pre = intval($serv_pre['a']);
	$dren_pre = intval($serv_pre['d']);
	$y->q("UPDATE contrato SET estado=$estado_origen, agua=$agua_pre, drenaje=$dren_pre WHERE numcontrato='$contrato'");

	// ── 3. Restaurar estado físico de las tomas ─────────────────────────────
	$n_tomas_rest = 0;
	if (!empty($tomas_pre)) {
		foreach ($tomas_pre as $tp) {
			$tid = intval($tp['id']);
			$tea = intval($tp['ea']);
			$ted = intval($tp['ed']);
			$y->q("UPDATE contrato_toma SET estado_agua=$tea, estado_drenaje=$ted WHERE id=$tid AND numcontrato='$contrato'");
			$n_tomas_rest++;
		}
	}

	// ── 4. Cancelar cargos generados por el cambio de estado ─────────────────
	$n_cancelados = 0;
	$n_paid = 0;
	if (!empty($lc_ids_nuevos)) {
		$ids_str = implode(',', $lc_ids_nuevos);
		
		// Verificar si alguno ya fue pagado
		$res_paid = $y->q("SELECT COUNT(*) FROM ligacargos WHERE numcontrato='$contrato' AND id IN ($ids_str) AND estado=1");
		list($n_paid) = $y->fetch_array($res_paid);

		$y->q("UPDATE ligacargos SET estado=-1 WHERE numcontrato='$contrato' AND id IN ($ids_str) AND estado=0");
		$n_cancelados = count($lc_ids_nuevos) - $n_paid;
	}

	// ── 5a. Restaurar cargos amnistiados en histórico (de -1 a 0) ───────────
	$n_restaurados = 0;
	if (!empty($hist_ids_amnist)) {
		$ids_hist_str = implode(',', $hist_ids_amnist);
		$y->q("UPDATE ligacargos_historico SET estado=0 WHERE numcontrato='$contrato' AND id IN ($ids_hist_str) AND estado=-1");
		$n_restaurados = count($hist_ids_amnist);
	}

	// ── 5b. Restaurar cargos cancelados por paridad en activa (de -1 a 0) ───
	$n_reactivados = 0;
	if (!empty($lc_ids_cancelados)) {
		$ids_cxl_str = implode(',', $lc_ids_cancelados);
		$y->q("UPDATE ligacargos SET estado=0 WHERE numcontrato='$contrato' AND id IN ($ids_cxl_str) AND estado=-1");
		$n_reactivados = count($lc_ids_cancelados);
	}

	// ── Snapshot financiero POST-reversa ─────────────────────────────────────
	$res_snap2 = $y->q("SELECT COUNT(*) AS n, IFNULL(SUM(monto),0) AS total FROM vw_ligacargos_pendientes WHERE numcontrato='$contrato'");
	$snap_post = $y->fetch_array($res_snap2);
	$n_post_rev  = intval($snap_post['n']);
	$tot_post_rev = number_format(floatval($snap_post['total']), 2);

	// ── 6. Registrar en bitácora ──────────────────────────────────────────────
	$fecha_snap_esc = $y->real_escape_string($row['fecha']);
	$nom_orig_esc   = $y->real_escape_string($nom_origen);
	$nom_dest_esc   = $y->real_escape_string($nom_destino);
	
	$nota_pago = ($n_paid > 0) ? " | ¡AVISO! $n_paid cargos nuevos ya estaban pagados y NO se revirtieron." : "";

	$antes_rev = "Estado [$estado_destino] $nom_dest_esc. " .
	             "Adeudos: $n_pre_rev | Deuda: \$$tot_pre_rev. " .
	             "Revirtiendo transición del $fecha_snap_esc.";
	$despues_rev = "Estado [$estado_origen] $nom_orig_esc restaurado exactamente. " .
	               "Adeudos: $n_post_rev | Deuda: \$$tot_post_rev. " .
	               "Cargos nuevos cancelados: $n_cancelados. " .
	               "Cargos amnistiados restaurados: $n_restaurados. " .
	               "Cargos de paridad reactivados: $n_reactivados. " .
	               "Tomas restauradas: $n_tomas_rest." . $nota_pago .
	               " | Deuda: \$" . number_format($deuda_post, 2) .
	               " → \$" . number_format($deuda_pre, 2) . " (deuda original).";


	$antes_esc   = $y->real_escape_string($antes_rev);
	$despues_esc = $y->real_escape_string($despues_rev);

	$y->q("INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato)
	       VALUES(NOW(), 'Reversión de Transición de Estado', '$antes_esc', '$despues_esc', '$contrato')");

	// ── 6. Marcar el snapshot como REVERTIDO ─────────────────────────────────
	$y->q("UPDATE cambios SET despues='REVERTIDO' WHERE id=$snap_id");

	return "<script>cargaDatosContrato('$contrato');</script>";
}

?>
```

</details>

---

## Agent Response

### Thinking

**Analyzing Automatic Charges**

I'm currently focused on dissecting the automatic charge logic, specifically the query that retrieves eligible charges. I'm looking at how the system selects charges based on year, category, and other parameters. I'm investigating how the `repetir` and `metros` fields are used. I'm trying to understand the criteria for the charges that meet state 1 and automatic.


**Examining Charge Insertion Logic**

I've been examining the charge insertion logic. The code checks if a charge already exists in `vw_ligacargos_all` before inserting. I've noted the SQL query uses `numcontrato` and `leyenda` to determine uniqueness. The script then inserts data into `$tabla_dest` with fields like `numcontrato`, `leyenda`, `monto`, and `repetido`.



**Investigating Missing Charge Logic**

I'm now focusing on the implications of a missing charge in the `cargos` table. I've realized that if a charge like "ANUALIDAD DEL AGUA 2026" is missing from the catalog and the system attempts an update, the update will be skipped, which explains the "Aviso". The `generaCargosAutomaticos` function won't insert the missing charge in the first place because of the `anio` filter. Furthermore, changes in tariff, such as going from Normal to Commercial in a contract that has a charge would be skipped.


**Clarifying Catalog Dependencies**

I'm now focusing on the implications of a missing charge entry in the catalog, especially in relation to UI-9 contract edits and the execution of `./Full-Pipeline-Sync.sh`. The warning suggests annual charges like "ANUALIDAD DEL AGUA 2026" are missing from the catalog. I'm considering that the system won't automatically generate or recalculate this charge if it's missing, especially given we are in 2026. This has implications for new, reactivated, or tariff-modified contracts.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 6.486313062s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:28 pm

---

## Agent Response

### Thinking

**Analyzing Data Discrepancy**

I've observed a discrepancy. The data includes "ANUALIDAD DEL DRENAJE 2026," but I haven't seen "ANUALIDAD DEL AGUA 2026." The query confirms the drainage entry. I'm now trying to figure out why the water equivalent is missing, or, if it does, what is causing the system to not include it.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.398409187s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:28 pm

---

## Agent Response

### Thinking

**Analyzing Missing Charges**

I've pinpointed the issue with Contract #405: the system, via `generaCargosAutomaticos`, failed to locate "ANUALIDAD DEL AGUA 2026" and "ANUALIDAD DEL DRENAJE 2026" in the catalog. This happened during either a synchronization attempt or a previous visit, which prevented their inclusion in the contract.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.438599783s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:28 pm

---

## Agent Response

### Thinking

**Analyzing the Inactive Status**

I've discovered the root cause! The record exists, but its `estado` is set to 0, indicating inactivity. This explains the warning. The user might have set it up but hasn't enabled it for the 2026 exercise yet. Crucially, I see that this will impact "Recalculation" (UI-9) significantly, as the system seemingly only processes active entries.


**Verifying Activation Recommendation**

Okay, I've got a clearer picture now. It looks like `estado=1` (active) is essential for automatic generation and recalibration charges. The user's using `./Full-Pipeline-Sync.sh`, which likely propagates inactivity from the source (Host B or A) to Host C. Given they're re-executing UI-9, which is about recalibration, it's critical to determine if activating the charge is the right path to resolve. I'm checking if #405 has 2025 charges because recalibration is "Hybrid", and updates the present and future with `anio_actual` set to 2026.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.718599633s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

Por que el cargo "ANUALIDAD DEL AGUA 2026" existe, pero tiene estado = 0 ? ,  asi viene de host b ? , cual es la causa raiz

<details>
<summary>Context</summary>

**Active File:** `.mcp.json`
**Language:** json
</details>

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-b_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Thinking

**Observing Initial Data**

I've just observed that Host B shows `estado = 1`. That's an interesting initial condition. It gets more peculiar; I've identified two separate records for "ANUALIDAD DEL AGUA 2026" within Host B. This requires further scrutiny.




### Actions

**Tool:** `mcp_bdawahost-b_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.613911294s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Thinking

**Investigating Missing Record**

I'm puzzled by the missing record (621) in Host C. Record 624 exists with `estado = 0`, but 621 is nowhere to be found. It seems the `Sync-B2A` script, within the `Full-Pipeline-Sync.sh` process, might hold the key. Perhaps a rule within that sync operation is responsible for duplicate handling, or it has a particular mapping process affecting the record's fate. I need to look into this script.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.516448073s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/docs-dev/migration-aguav2`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `migration-aguav2` (4 items)</summary>

**Path:** `opt/lampp/htdocs/agua/docs-dev/migration-aguav2`

| Name | Type | Size |
|------|------|------|
| `Full-Pipeline-Sync.sh` | File | 4882 bytes |
| `host-c-setup` | Directory | - |
| `sync_hosta_to_hostc` | Directory | - |
| `syncawa_hostb_to_hosta` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/docs-dev/migration-aguav2/syncawa_hostb_to_hosta`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `syncawa_hostb_to_hosta` (10 items)</summary>

**Path:** `opt/lampp/htdocs/agua/docs-dev/migration-aguav2/syncawa_hostb_to_hosta`

| Name | Type | Size |
|------|------|------|
| `.gitignore` | File | 6 bytes |
| `00_pre_flight.sh` | File | 8364 bytes |
| `01_backup_host_a.sh` | File | 2957 bytes |
| `03_sync_host_a.sql` | File | 3505 bytes |
| `04_recalc_contrato_toma.sql` | File | 5791 bytes |
| `05_validate.sql` | File | 9494 bytes |
| `logs` | Directory | - |
| `run_sync.sh` | File | 15388 bytes |
| `sync_config.sh` | File | 6472 bytes |
| `work` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `03_sync_host_a.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 03_sync_host_a.sql
-- Script UNIFICADO de post-procesamiento para Host A (Ambiente de Transición V1+).
-- Propósito: Transformar datos provenientes del Host B (Legado) al modelo V1+.
-- 
-- Mantiene el esquema de tabla única (ligacargos) de Host A.
-- =============================================================================

SET NAMES utf8mb4;
SET foreign_key_checks = 0;
SET sql_mode = '';

-- =============================================================================
-- SECCIÓN A: COMPENSACIÓN DE COLUMNAS NUEVAS (TRANSICIÓN V1+)
-- =============================================================================

SELECT '=== APLICANDO DEFAULTS DE TRANSICIÓN (D1-D6) ===' AS info;

-- D1: exento_recargo_primer_anio (Feature V2 adoptada en A)
UPDATE contrato SET exento_recargo_primer_anio = 0;
UPDATE contrato SET exento_recargo_primer_anio = 1 WHERE YEAR(fecha) = YEAR(NOW());
SELECT CONCAT('D1: Contratos exentos (año actual): ', SUM(exento_recargo_primer_anio)) AS status FROM contrato;

-- D2: monto_comercial en cargos
UPDATE cargos SET monto_comercial = monto * 2
WHERE categoria IN (2, 3) AND automatico = 1 AND monto_comercial = 0;
SELECT CONCAT('D2: Cargos con monto_comercial: ', COUNT(*)) AS status FROM cargos WHERE monto_comercial > 0;

-- D3: idpago_vinc default
UPDATE ligacargos SET idpago_vinc = '' WHERE idpago_vinc IS NULL;

-- D4: Limpiar basura de desarrollo (Cargos 2027)
DELETE FROM cargos WHERE anio = 2027;
SELECT CONCAT('D4: Cargos 2027 eliminados: ', ROW_COUNT()) AS status;

-- D5: Limpiar cargos de prueba (estado=2 dev)
DELETE FROM cargos WHERE estado = 2 AND nombre REGEXP '^(cargo[0-9]|cbm_|prueba_)';
SELECT CONCAT('D5: Cargos test eliminados: ', ROW_COUNT()) AS status;

-- D6: Normalización de folios (NULL -> 0)
UPDATE ligacargos SET folio = 0 WHERE folio IS NULL;
SELECT CONCAT('D6: Folios normalizados: ', ROW_COUNT()) AS status;

-- =============================================================================
-- SECCIÓN B: SANEAMIENTO SDF (Estándar de Paridad Transición)
-- =============================================================================

SELECT '=== EJECUTANDO SANEAMIENTO SDF (UNIFICADO V1+) ===' AS info;

-- 1. Registro en Bitácora (Audit Trail)
-- Se usa un Batch ID de sistema (0) o el ID actual en cambios.
INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato, batch_id)
SELECT NOW(), 
       CONCAT('Saneamiento Automático SDF (Sync Transition): ', COUNT(DISTINCT lc.numcontrato), ' contratos depurados'), 
       'Cargos: Pendientes (V1+)', 
       'Estado: -1 (Depurado)', 
       '',
       0 -- Batch ID genérico para sync
FROM ligacargos lc
JOIN contrato c ON lc.numcontrato = c.numcontrato
WHERE c.estado = 4 AND lc.estado = 0
HAVING COUNT(*) > 0;

-- 2. Depuración masiva en tabla única
UPDATE ligacargos lc
JOIN contrato c ON lc.numcontrato = c.numcontrato
SET lc.estado = -1
WHERE c.estado = 4 AND lc.estado = 0;

SELECT CONCAT('D7: Cargos SDF depurados en Host A: ', ROW_COUNT()) AS status;

-- =============================================================================
-- SECCIÓN C: NORMALIZACIÓN DE CATÁLOGOS ESPECÍFICOS
-- =============================================================================

-- Ocultar cargo duplicado 624 (Si existe)
UPDATE cargos SET estado = 0 WHERE numconsec = 624;

SET foreign_key_checks = 1;

SELECT '=== POST-PROCESAMIENTO EN HOST A COMPLETADO ===' AS info;

```

</details>

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 56dc8f40-c378-4477-8cb6-fb1541288a38: Stabilizing Agua V2 Financial Engine
- Created: 2026-04-24T16:42:58Z
- Last modified: 2026-04-26T00:39:24Z

## Conversation 79a8e9a2-6401-44f1-a5db-8896eda906a6: Validating Pipeline Synchronization Logs
- Created: 2026-04-24T06:44:25Z
- Last modified: 2026-04-24T08:24:54Z

### USER Objective:
Stabilizing Financial Data Integrity

Objective: Finalize the stabilization and audit-readiness of the Agua V2 financial engine by enforcing strict data validation and architectural integrity.

Goals:
1. Implement Poka-Yoke sanitization protocols across core PHP modules (cargos, contratos) to prevent malicious or malformed data entry.
2. Enforce database-level uniqueness constraints (UNIQUE KEYs) in the schema to permanently eliminate operational data duplication.
3. Validate the hybrid surcharge logic and F05 compliance through the established automated SQL audit pipeline.
4. Prepare the system for final production deployment by securing input sanitation and validating historical data parity.

## Conversation 7b4df0fd-8f9f-4e1c-9691-7e0bbc280aa5: Validating Contract Exemption Logic
- Created: 2026-04-23T16:57:43Z
- Last modified: 2026-04-24T06:42:03Z

### USER Objective:
Stabilizing Agua V2 Surcharge Architecture

Main Objective: Finalize the stabilization of the Agua V2 financial engine by enforcing robust debt reconciliation and audit traceability.

Goals:
1. Reconcile historical surcharge logic by aligning the V2 parametric engine with the legacy data structure, abandoning hardcoded fallbacks.
2. Sanitize the `cargos` catalog to correctly flag historical surcharge eligibility without corrupting financial data.
3. Validate the `Contrato 500` UI-9 transition to confirm the system correctly triggers multi-year surcharge calculations.
4. Eliminate reliance on "soft" flags by utilizing the `es_recargo_moratorio` alias in views for financial auditing and reporting.
5. Execute a surgical data fix in the `cargos` catalog to ensure the surcharge motor remains "obedient" and accurate, guaranteeing audit-ready data integrity for 2024–2025.

## Conversation 6d27cf24-4496-444d-913c-de2298a07da5: UI Optimization for Suspended Contracts
- Created: 2026-04-23T03:17:22Z
- Last modified: 2026-04-23T05:53:51Z

### USER Objective:
Stabilizing Agua V2 State Transitions

Objective: Finalize the stabilization of Agua V2 state transition protocols by addressing financial data integrity and enhancing administrative diagnostics.

Goals:
1. Complete manual test case execution for state transitions (D → G) and resolve discrepancies in financial reporting.
2. Validate and patch root causes for incorrect charge generation during contract reactivations (e.g., Cto #1006).
3. Ensure financial consistency in reporting modules (contratoinfo2.php) and verify forensic reflection of contract states.
4. Finalize the integration of administrative reporting for "Suspensión Definitiva" contracts to ensure full audit readiness.

## Conversation 2c24dbf0-a237-4a36-8172-98282de6cf2d: Troubleshooting Amnistía UI Logic
- Created: 2026-04-22T21:09:14Z
- Last modified: 2026-04-23T02:52:01Z

### USER Objective:
Auditing Financial State Transitions

Objective: Finalize the implementation of a rigorous, self-auditing financial transaction layer across all Agua V2 modules.

Goals:
1. Standardize a universal "PRE/POST Financial Snapshot" pattern across all transaction functions (State Changes, Payments, Cancellations, Reassignments, and Manual Applications).
2. Automate the generation of audit logs in the `cambios` table to capture the precise impact on debt totals and adeudo counts per operation.
3. Enhance the `historial_mov_cto.php` report to visualize these financial snapshots with color-coded event classification.
4. Ensure full consistency in financial reporting, even for legacy charges and state-based recalibrations (paridad), to guarantee complete forensic traceability for every administrative action.

## Conversation 772b23ae-0897-4270-9446-4689fdf95548: Executing UI Test Suite
- Created: 2026-04-20T04:38:49Z
- Last modified: 2026-04-20T05:36:46Z

### USER Objective:
Stabilizing Agua UI Tests

USER Objective: Complete the validation of the Agua V2 testing suite (Section 1 / Group A) to ensure the system's operational readiness.
Goals:
1. Systematically execute UI test cases for contract management, state transitions, and infrastructure configuration based on the stabilized test plan.
2. Refine automation protocols by documenting specific UI interactions, such as using TAB for field auto-completion and handling browser confirmation dialogues.
3. Validate system behavior against business rules, specifically addressing contract creation constraints, parity synchronization, and administrative blocking mechanisms.
4. Update the formal test documentation to reflect empirical findings and UI-specific interaction patterns discovered during manual and automated execution.

## Conversation cbf979ab-fe6f-4218-97aa-78333e6a1a56: Audit Caja Reconciliation Discrepancies
- Created: 2026-04-20T01:04:06Z
- Last modified: 2026-04-20T04:13:17Z

### USER Objective:
Stabilizing Agua Reporting Modules

Objective: Resolve identified logic gaps and architectural inconsistencies in the Agua V2 reporting and receipt modules on Host C.

Goals:
1. Patch the date logic in `reciboegreso.php` to ensure correct temporal mapping of expenditures.
2. Address identified bugs and legacy function dependencies in `credencial.php` to improve module robustness.
3. Verify all code changes against the updated forensic audit documentation to maintain system-wide congruency.
4. Finalize and push all stabilization patches to the production repository to ensure full operational readiness.

## Conversation 70313f54-0ccd-4b31-b9dd-0a85cd24482b: Validating Host C PHP Errors
- Created: 2026-04-20T02:37:26Z
- Last modified: 2026-04-20T02:43:35Z

### USER Objective:
Validating Host C PHP Errors

Main Objective: Evaluate the current status of reported PHP notices from Host C logs without performing any code modifications.

Goals:
1. Confirm if the "Undefined index" notices in `contrasenas.php` (lines 71-116) and `carteravencida.php` (line 50) are still valid based on existing file content.
2. Verify the persistence of the "Undefined property" notice for `Conexion::$insert_id` in `usuarios.php` (line 296).
3. Provide a clear, non-corrective status report to the user regarding the state of these specific runtime errors.

## Conversation d93a3dd6-def6-407e-bf68-58e09c7b5178: Refactoring Agua Assembly Module
- Created: 2026-04-19T00:37:18Z
- Last modified: 2026-04-19T01:46:32Z

### USER Objective:
Refining Asamblea Administrative Interface

Main Objective: Finalize the stabilization and UI refactor of the Asamblea V2 administrative module on Host C.

Goals:
1. Complete the transition of the application entry point to the "Administración" view.
2. Implement dynamic, database-driven labels for the "Multa por Inasistencia" to replace hardcoded inputs.
3. Standardize and fix the administrative action table to ensure proper state-based control buttons (Start/Close/Download) appear for all assemblies.
4. Clean up the UI by removing redundant navigation elements like the "Pase de Lista" button.
5. Deploy changes manually to the production-ready Host C environment following established architectural constraints and legacy system protocols.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Thinking

**Identifying the Root Cause**

I've located the likely source of the issue. Specifically, in `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/03_sync_host_a.sql`, line 77, I found a SQL query designed to hide duplicate cargo (numconsec = 624). This appears to be the root of the problem.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.056197202s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/docs-dev/migration-aguav2/sync_hosta_to_hostc`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `sync_hosta_to_hostc` (22 items)</summary>

**Path:** `opt/lampp/htdocs/agua/docs-dev/migration-aguav2/sync_hosta_to_hostc`

| Name | Type | Size |
|------|------|------|
| `.gitignore` | File | 6 bytes |
| `00_cleanup_qa_tests.sql` | File | 1610 bytes |
| `00_inject_qa_hostc.sql` | File | 2034 bytes |
| `00_inject_qa_hostc_post.sql` | File | 1887 bytes |
| `00_inject_qa_tests.sql` | File | 13033 bytes |
| `01_backup_host_c.sh` | File | 1675 bytes |
| `05_validate.sql` | File | 6756 bytes |
| `10_pipeline_saneamiento.sql` | File | 10993 bytes |
| `10b_saneamiento_exencion_recargos.sql` | File | 3122 bytes |
| `10c_qa_duplicados.sql` | File | 1347 bytes |
| `10c_saneamiento_duplicados.sql` | File | 1785 bytes |
| `12_validate_pipeline.sql` | File | 2970 bytes |
| `12_validate_pipeline_qa.sql` | File | 2116 bytes |
| `13_saneamiento_cargos_recargos.sql` | File | 3478 bytes |
| `14_manual_test_setup_group_a_b.sql` | File | 4780 bytes |
| `15_manual_test_setup_group_c_d_e_f.sql` | File | 4981 bytes |
| `16_automated_sql_audit_test.sql` | File | 3841 bytes |
| `backups` | Directory | - |
| `logs` | Directory | - |
| `run_sync.sh` | File | 30485 bytes |
| `sync_config.sh` | File | 5499 bytes |
| `work` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `grep_search`
**Query:** `cargos`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `run_sync.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# =============================================================================
# run_sync.sh — Sincronización de datos Host A → Host C
#
# Propósito: Refrescar los datos de producción en Host C (v2/MariaDB) desde
#            Host A (v1+/MySQL), aplicando las transformaciones de schema
#            necesarias entre ambas versiones.
#
# FLUJO COMPLETO:
#   1. Host B → Host A   (script existente: syncawa_hostb_to_hosta/run_sync.sh)
#   2. Host A → Host C   (ESTE script)
#
# NO ejecutar este script sin antes haber corrido el sync B→A.
#
# USO:
#   ./run_sync.sh                  # Sincronización completa
#   ./run_sync.sh --solo-validar   # Solo validaciones finales sin modificar
#   ./run_sync.sh --solo-backup    # Solo backup de Host C
#
# PREREQUISITOS:
#   - Scripts 01–05 ya ejecutados en Host C (schema v2 completo)
#   - Red disponible a Host C (192.168.1.128)
#   - mysqldump y mysql client disponibles en Host A
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/sync_config.sh"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
mkdir -p "$WORK_DIR" "$LOG_DIR" "$BACKUP_DIR"
LOG_FILE="${LOG_DIR}/sync_${TIMESTAMP}.log"

# Rotación de logs: conservar últimos 2
ls -t "${LOG_DIR}"/sync_*.log     2>/dev/null | tail -n +3 | xargs rm -f 2>/dev/null || true
ls -t "${LOG_DIR}"/setup_*.log    2>/dev/null | tail -n +3 | xargs rm -f 2>/dev/null || true
ls -t "${LOG_DIR}"/pipeline_*.log 2>/dev/null | tail -n +3 | xargs rm -f 2>/dev/null || true

log()     { echo "[$(date '+%H:%M:%S')] $*" | tee -a "$LOG_FILE"; }
err()     { echo "[ERROR] $*" | tee -a "$LOG_FILE" >&2; exit 1; }
ok()      { echo "[  OK  ] $*" | tee -a "$LOG_FILE"; }
section() { echo "" | tee -a "$LOG_FILE"
            echo "════════════════════════════════════════" | tee -a "$LOG_FILE"
            echo "  $*" | tee -a "$LOG_FILE"
            echo "════════════════════════════════════════" | tee -a "$LOG_FILE"; }

mysql_a() { $MYSQL_BIN -h "$HOST_A" -P "$PORT_A" -u "$USER_A" -p"$PASS_A" \
            --default-character-set=utf8mb4 "$DB" "$@"; }
mysql_c() { $MYSQL_BIN -h "$HOST_C" -P "$PORT_C" -u "$USER_C" -p"$PASS_C" \
            --default-character-set=utf8mb4 "$DB" "$@"; }
dump_a()  { $MYSQLDUMP_BIN -h "$HOST_A" -P "$PORT_A" -u "$USER_A" -p"$PASS_A" \
            --no-create-info --skip-triggers --replace --complete-insert \
            --default-character-set=utf8mb4 --single-transaction "$DB" "$@"; }

MODO="${1:-completo}"
log "=== INICIO SYNC AWA: Host A → Host C ==="
log "Modo: ${MODO} | Timestamp: ${TIMESTAMP}"

# ── Setup QA (Pre-condición) ──────────────────────────────────────────────────
if [ "$MODO" = "--with-qa" ]; then
    section "PRE-CONDICIÓN: INYECCIÓN DE DATOS SINTÉTICOS DE PRUEBA (QA)"
    log "Depurando rastro de pruebas anteriores en Host A..."
    mysql_a < "${SCRIPT_DIR}/00_cleanup_qa_tests.sql" 2>&1 | tee -a "$LOG_FILE"
    log "Inyectando Contratos Mártires (9001-9008) en Host A..."
    mysql_a < "${SCRIPT_DIR}/00_inject_qa_tests.sql" 2>&1 | tee -a "$LOG_FILE"
    ok "Datos de QA inyectados correctamente en Host A"
fi

# ── Solo validar ──────────────────────────────────────────────────────────────
if [ "$MODO" = "--solo-validar" ]; then
    section "SOLO VALIDACIONES"
    mysql_c < "${SCRIPT_DIR}/05_validate.sql" | tee -a "$LOG_FILE"
    log "=== VALIDACIONES COMPLETADAS ==="
    exit 0
fi

# ── Solo backup ───────────────────────────────────────────────────────────────
if [ "$MODO" = "--solo-backup" ]; then
    section "SOLO BACKUP"
    bash "${SCRIPT_DIR}/01_backup_host_c.sh"
    log "=== BACKUP COMPLETADO ==="
    exit 0
fi

# =============================================================================
# PASO 1: VERIFICAR CONECTIVIDAD
# =============================================================================
section "PASO 1: VERIFICAR CONECTIVIDAD"

log "Verificando Host A (${HOST_A}:${PORT_A})..."
mysql_a -e "SELECT 'Host A OK' AS status, VERSION() AS version;" 2>&1 \
    | tee -a "$LOG_FILE" || err "No se puede conectar a Host A"
ok "Host A: conectado"

log "Verificando Host C (${HOST_C}:${PORT_C})..."
mysql_c -e "SELECT 'Host C OK' AS status, VERSION() AS version;" 2>&1 \
    | tee -a "$LOG_FILE" || err "No se puede conectar a Host C (${HOST_C}). Verificar red y firewall."
ok "Host C: conectado"

# =============================================================================
# PASO 2: BACKUP DE HOST C
# =============================================================================
section "PASO 2: BACKUP HOST C"
log "Realizando backup de seguridad de Host C..."
bash "${SCRIPT_DIR}/01_backup_host_c.sh" 2>&1 | tee -a "$LOG_FILE"
BACKUP_FILE=$(ls -t "${BACKUP_DIR}"/backup_host_c_*.sql.gz 2>/dev/null | head -1 || echo "(no encontrado)")
ok "Backup completado: ${BACKUP_FILE}"

# =============================================================================
# PASO 3: DUMP DESDE HOST A
# =============================================================================
section "PASO 3: DUMP DESDE HOST A"

# Tablas con dump directo (schema compatible o sin transformaciones críticas)
TABLES_DIRECT=(
    "usuario"
    "contrato"
    "contrato_toma"
    "cargos"
    "asamblea"
    "asistentes"
    "notas"
    "categorias"
    "categorias_egresos"
    "firmantes"
    "contrasenas"
    "users"
)

for tbl in "${TABLES_DIRECT[@]}"; do
    log "  Extrayendo ${tbl} desde Host A..."
    dump_a "$tbl" > "${WORK_DIR}/${tbl}.sql"
    CNT=$(mysql_a -se "SELECT COUNT(*) FROM ${tbl};" 2>/dev/null)
    ok "  ${tbl}: ${CNT} filas"
done

# ligacargos: dump desde A con transformación post-import de idpago_vinc
# Usamos mysqldump --complete-insert para columnas explícitas, luego UPDATE en C
# para convertir idpago_vinc=0 (de varchar '' importado como int) → NULL
log "  Extrayendo ligacargos desde Host A..."
dump_a "ligacargos" > "${WORK_DIR}/ligacargos_raw.sql"
CNT_LC=$(mysql_a -se "SELECT COUNT(*) FROM ligacargos;" 2>/dev/null)
ok "  ligacargos: ${CNT_LC} filas"

# egresos: A no tiene id_categoria — se agrega NULL en la importación
log "  Extrayendo egresos desde Host A..."
dump_a "egresos" > "${WORK_DIR}/egresos_raw.sql"
CNT_EG=$(mysql_a -se "SELECT COUNT(*) FROM egresos;" 2>/dev/null)
ok "  egresos: ${CNT_EG} filas"

# cambios: A no tiene columna id — importar con columnas explícitas
log "  Extrayendo cambios desde Host A..."
dump_a "cambios" > "${WORK_DIR}/cambios_raw.sql"
CNT_CAM=$(mysql_a -se "SELECT COUNT(*) FROM cambios;" 2>/dev/null)
ok "  cambios: ${CNT_CAM} filas"

# Guardar conteos de referencia
log "Guardando conteos de referencia de Host A..."
mysql_a -e "
SELECT 'usuario' AS tabla, COUNT(*) AS cnt FROM usuario
UNION ALL SELECT 'contrato',       COUNT(*) FROM contrato
UNION ALL SELECT 'ligacargos',     COUNT(*) FROM ligacargos
UNION ALL SELECT 'notas',          COUNT(*) FROM notas
UNION ALL SELECT 'cambios',        COUNT(*) FROM cambios
UNION ALL SELECT 'egresos',        COUNT(*) FROM egresos
UNION ALL SELECT 'asamblea',       COUNT(*) FROM asamblea
UNION ALL SELECT 'asistentes',     COUNT(*) FROM asistentes
UNION ALL SELECT 'cargos',         COUNT(*) FROM cargos;
" > "${WORK_DIR}/conteos_a_${TIMESTAMP}.txt" 2>&1
cat "${WORK_DIR}/conteos_a_${TIMESTAMP}.txt" | tee -a "$LOG_FILE"

# =============================================================================
# PASO 4: VACIAR TABLAS DE NEGOCIO EN HOST C
# =============================================================================
section "PASO 4: VACIAR TABLAS EN HOST C"

mysql_c 2>&1 <<'EOSQL' | tee -a "$LOG_FILE"
SET FOREIGN_KEY_CHECKS = 0;

-- Catálogos (siempre se reemplazan desde A)
DELETE FROM categorias_egresos;
SELECT CONCAT('categorias_egresos: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM categorias;
SELECT CONCAT('categorias: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM firmantes;
SELECT CONCAT('firmantes: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM contrasenas;
SELECT CONCAT('contrasenas: ', ROW_COUNT(), ' filas eliminadas') AS paso;

-- Tablas de negocio (vaciado en orden FK-safe)
DELETE FROM ligacargos_historico;
SELECT CONCAT('ligacargos_historico: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM ligacargos;
SELECT CONCAT('ligacargos: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM notas;
SELECT CONCAT('notas: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM cambios;
SELECT CONCAT('cambios: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM egresos;
SELECT CONCAT('egresos: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM asamblea;
SELECT CONCAT('asamblea: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM asistentes;
SELECT CONCAT('asistentes: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM contrato_toma;
SELECT CONCAT('contrato_toma: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM contrato;
SELECT CONCAT('contrato: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM usuario;
SELECT CONCAT('usuario: ', ROW_COUNT(), ' filas eliminadas') AS paso;
DELETE FROM cargos;
SELECT CONCAT('cargos: ', ROW_COUNT(), ' filas eliminadas') AS paso;

SET FOREIGN_KEY_CHECKS = 1;
EOSQL

ok "Tablas vaciadas"

# =============================================================================
# PASO 5: IMPORTAR DATOS EN HOST C
# =============================================================================
section "PASO 5: IMPORTAR DATOS EN HOST C"

# Catálogos primero (sin dependencias FK de negocio)
IMPORT_CATALOGS=("categorias" "categorias_egresos" "firmantes" "contrasenas")

for tbl in "${IMPORT_CATALOGS[@]}"; do
    log "  Importando ${tbl}..."
    mysql_c --default-character-set=utf8mb4 < "${WORK_DIR}/${tbl}.sql" 2>&1 \
        | tee -a "$LOG_FILE"
    CNT=$(mysql_c -se "SELECT COUNT(*) FROM ${tbl};" 2>/dev/null)
    ok "  ${tbl}: ${CNT} registros"
done

# users: preservar si ya tiene datos (Proceso 1); poblar desde A si está vacía (Proceso 2)
CNT_USERS_C=$(mysql_c -se "SELECT COUNT(*) FROM users;" 2>/dev/null)
if [ "$CNT_USERS_C" -eq 0 ]; then
    log "  users vacía — poblando desde Host A..."
    mysql_c --default-character-set=utf8mb4 < "${WORK_DIR}/users.sql" 2>&1 \
        | tee -a "$LOG_FILE"
    CNT=$(mysql_c -se "SELECT COUNT(*) FROM users;" 2>/dev/null)
    ok "  users: ${CNT} registros (poblada desde A)"
else
    ok "  users: ${CNT_USERS_C} registros (preservada — tiene datos propios de C)"
fi

# Orden FK-safe: padres primero
IMPORT_DIRECT=("usuario" "contrato" "contrato_toma" "cargos" "asamblea" "asistentes" "notas")

for tbl in "${IMPORT_DIRECT[@]}"; do
    log "  Importando ${tbl}..."
    mysql_c --default-character-set=utf8mb4 < "${WORK_DIR}/${tbl}.sql" 2>&1 \
        | tee -a "$LOG_FILE"
    CNT=$(mysql_c -se "SELECT COUNT(*) FROM ${tbl};" 2>/dev/null)
    ok "  ${tbl}: ${CNT} registros"
done

# cargos: post-proceso — eliminar duplicados inactivos con gemelo activo (nombre+anio)
# Causa: Host A puede tener múltiples registros con mismo nombre+anio pero distinto estado.
# Host C tiene UNIQUE KEY (nombre, anio), por lo que el mysqldump --replace puede pisar
# el registro activo (estado=1) con el inactivo (estado=0) si llega después.
# Solución: siempre eliminar los inactivos que tienen gemelo activo, independiente del flag.
log "  Post-proceso cargos: eliminando duplicados inactivos con gemelo activo (nombre+anio)..."
CARGOS_DUPL_INACTIVOS=$(mysql_c -se "
    SELECT COUNT(*) FROM cargos c_inactivo
    WHERE c_inactivo.estado = 0
      AND EXISTS (
          SELECT 1 FROM cargos c_activo
          WHERE c_activo.nombre = c_inactivo.nombre
            AND c_activo.anio   = c_inactivo.anio
            AND c_activo.estado = 1
      );" 2>/dev/null || echo "0")
if [ "$CARGOS_DUPL_INACTIVOS" -gt 0 ]; then
    mysql_c -e "
        DELETE c_inactivo FROM cargos c_inactivo
        WHERE c_inactivo.estado = 0
          AND EXISTS (
              SELECT 1 FROM (SELECT nombre, anio FROM cargos WHERE estado=1) c_act
              WHERE c_act.nombre = c_inactivo.nombre
                AND c_act.anio   = c_inactivo.anio
          );" 2>&1 | tee -a "$LOG_FILE"
fi
CNT_CARGOS_FINAL=$(mysql_c -se "SELECT COUNT(*) FROM cargos;" 2>/dev/null)
ok "  cargos post-proceso: ${CARGOS_DUPL_INACTIVOS} duplicados inactivos eliminados — total: ${CNT_CARGOS_FINAL} registros"

# ligacargos: importar dump raw + post-proceso para idpago_vinc '' → NULL
log "  Importando ligacargos..."
mysql_c --default-character-set=utf8mb4 \
    --init-command="SET FOREIGN_KEY_CHECKS=0;" \
    < "${WORK_DIR}/ligacargos_raw.sql" 2>&1 | tee -a "$LOG_FILE"
log "  Post-proceso: convirtiendo idpago_vinc=0 (varchar '' importado como int) → NULL..."
# Contar ANTES del UPDATE para tener el dato exacto (ROW_COUNT no persiste entre conexiones)
IDPAGO_FIXED=$(mysql_c -se "SELECT COUNT(*) FROM ligacargos WHERE idpago_vinc = 0;" 2>/dev/null || echo "0")
mysql_c -e "UPDATE ligacargos SET idpago_vinc = NULL WHERE idpago_vinc = 0;" 2>&1 | tee -a "$LOG_FILE"
CNT=$(mysql_c -se "SELECT COUNT(*) FROM ligacargos;" 2>/dev/null)
ok "  ligacargos: ${CNT} registros"

# egresos: agregar id_categoria = NULL (columna no existe en Host A)
log "  Importando egresos (agregando id_categoria=NULL)..."
# El dump de A tiene INSERT con columnas explícitas sin id_categoria.
# Como la columna en C es nullable con DEFAULT NULL, el INSERT funciona directamente.
mysql_c --default-character-set=utf8mb4 < "${WORK_DIR}/egresos_raw.sql" 2>&1 \
    | tee -a "$LOG_FILE"
CNT=$(mysql_c -se "SELECT COUNT(*) FROM egresos;" 2>/dev/null)
ok "  egresos: ${CNT} registros (id_categoria=NULL en todos)"

# cambios: A genera dump con columnas implícitas (fecha es col 1 en A, col 2 en C)
# Importar directamente: mysqldump --complete-insert ya genera columnas explícitas
log "  Importando cambios..."
mysql_c --default-character-set=utf8mb4 < "${WORK_DIR}/cambios_raw.sql" 2>&1 \
    | tee -a "$LOG_FILE"
CNT=$(mysql_c -se "SELECT COUNT(*) FROM cambios;" 2>/dev/null)
ok "  cambios: ${CNT} registros"

# =============================================================================
# PASO 6: SPLIT LIGACARGOS (anio<=2025 → historico)
# =============================================================================
section "PASO 6: SPLIT LIGACARGOS"

log "Ejecutando split ligacargos (anio<=2025 → ligacargos_historico)..."
SPLIT_SQL="${SCRIPT_DIR}/../host-c-setup/06_split_ligacargos.sql"
mysql_c < "$SPLIT_SQL" 2>&1 | tee -a "$LOG_FILE"
CNT_ACT=$(mysql_c -se "SELECT COUNT(*) FROM ligacargos;" 2>/dev/null)
CNT_HIS=$(mysql_c -se "SELECT COUNT(*) FROM ligacargos_historico;" 2>/dev/null)

# Capturar métricas de cargos SDF en Host C (heredadas del saneamiento D7 de Host A)
# Contratos estado=4 no deben tener cargos pendientes — verificar que D7 fue efectivo
SDF_PENDIENTES_C=$(mysql_c -se "
    SELECT COUNT(*) FROM ligacargos l
    JOIN contrato c ON l.numcontrato = c.numcontrato
    WHERE c.estado = 4 AND l.estado = 0;" 2>/dev/null || echo "?")
SDF_PENDIENTES_HIST_C=$(mysql_c -se "
    SELECT COUNT(*) FROM ligacargos_historico l
    JOIN contrato c ON l.numcontrato = c.numcontrato
    WHERE c.estado = 4 AND l.estado = 0;" 2>/dev/null || echo "?")
SDF_CONTRATOS_C=$(mysql_c -se "SELECT COUNT(*) FROM contrato WHERE estado = 4;" 2>/dev/null || echo "?")

ok "  ligacargos activa: ${CNT_ACT} | historico: ${CNT_HIS}"

# =============================================================================
# PASO 7: VALIDACIONES POST-SYNC (conteos, split, integridad referencial)
# =============================================================================
section "PASO 7: VALIDACIONES POST-SYNC"

log "Ejecutando validaciones de consistencia..."
mysql_c < "${SCRIPT_DIR}/05_validate.sql" 2>&1 | tee -a "$LOG_FILE"

# ── Inyección QA exclusiva Host C (post-split, pre-saneamiento) ──────────────
# UI-1 (recargos históricos 9002) y BE-5 (folio mixto histórico 9001)
# deben estar presentes ANTES del saneamiento para que el pipeline los procese.
if [ "$MODO" = "--with-qa" ]; then
    log "Inyectando datos QA en ligacargos_historico de Host C (UI-1 / BE-5)..."
    mysql_c < "${SCRIPT_DIR}/00_inject_qa_hostc.sql" 2>&1 | tee -a "$LOG_FILE"
    ok "Datos QA Host C inyectados (post-split, pre-saneamiento)"
fi

# =============================================================================
# PASO 8: PIPELINE DE SANEAMIENTO (reparación folios + sincronización asamblea)
# =============================================================================
section "PASO 8: PIPELINE DE SANEAMIENTO"

log "Capturando estado PRE-saneamiento en Host C..."
PRE_FOLIOS_ACTIVA=$(mysql_c -se "
    SELECT COUNT(*) FROM (
        SELECT folio FROM ligacargos WHERE folio > 0
        GROUP BY folio
        HAVING COUNT(CASE WHEN estado=1 THEN 1 END)>0
           AND COUNT(CASE WHEN estado=-1 THEN 1 END)>0
    ) t;" 2>/dev/null)
PRE_FOLIOS_HIST=$(mysql_c -se "
    SELECT COUNT(*) FROM (
        SELECT folio FROM ligacargos_historico WHERE folio > 0
        GROUP BY folio
        HAVING COUNT(CASE WHEN estado=1 THEN 1 END)>0
           AND COUNT(CASE WHEN estado=-1 THEN 1 END)>0
    ) t;" 2>/dev/null)
PRE_MULTAS_ACTIVA=$(mysql_c -se "
    SELECT COUNT(*) FROM ligacargos l_pend
    JOIN contrato c_pend ON l_pend.numcontrato = c_pend.numcontrato
    WHERE l_pend.categoria=6 AND l_pend.estado=0
      AND EXISTS (
          SELECT 1 FROM ligacargos l_pag
          JOIN contrato c_pag ON l_pag.numcontrato=c_pag.numcontrato
          WHERE c_pag.numusuario=c_pend.numusuario
            AND l_pag.leyenda=l_pend.leyenda AND l_pag.categoria=6
            AND l_pag.estado=1 AND l_pag.monto>0
            AND l_pag.numcontrato!=l_pend.numcontrato
      );" 2>/dev/null)
PRE_MULTAS_HIST=$(mysql_c -se "
    SELECT COUNT(*) FROM ligacargos_historico l_pend
    JOIN contrato c_pend ON l_pend.numcontrato=c_pend.numcontrato
    WHERE l_pend.categoria=6 AND l_pend.estado=0
      AND EXISTS (
          SELECT 1 FROM ligacargos_historico l_pag
          JOIN contrato c_pag ON l_pag.numcontrato=c_pag.numcontrato
          WHERE c_pag.numusuario=c_pend.numusuario
            AND l_pag.leyenda=l_pend.leyenda AND l_pag.categoria=6
            AND l_pag.estado=1 AND l_pag.monto>0
            AND l_pag.numcontrato!=l_pend.numcontrato
      );" 2>/dev/null)

log "  PRE-saneamiento — folios mixtos activa: ${PRE_FOLIOS_ACTIVA} | histórico: ${PRE_FOLIOS_HIST}"
log "  PRE-saneamiento — multas asamblea sinc. activa: ${PRE_MULTAS_ACTIVA} | histórico: ${PRE_MULTAS_HIST}"

log "Ejecutando pipeline de saneamiento post-sync..."
PIPELINE_OUTPUT=$(mysql_c < "${SCRIPT_DIR}/10_pipeline_saneamiento.sql" 2>&1)
echo "$PIPELINE_OUTPUT" | tee -a "$LOG_FILE"

# Extraer resultados clave del pipeline
POST_FOLIOS_ACTIVA=$(echo "$PIPELINE_OUTPUT" | grep -A1 "folios_mixtos_residuales$" | tail -1)
POST_FOLIOS_HIST=$(echo "$PIPELINE_OUTPUT" | grep -A1 "folios_mixtos_residuales_historico" | tail -1)
PASO2_REPARADOS=$(echo "$PIPELINE_OUTPUT" | grep -A1 "filas_reparadas_paso2$" | tail -1)
PASO2C_REPARADOS=$(echo "$PIPELINE_OUTPUT" | grep -A1 "filas_reparadas_paso2c" | tail -1)
MULTAS_SINC=$(echo "$PIPELINE_OUTPUT"      | grep -A1 "multas_asamblea_sincronizadas" | tail -1)
# patch_categorias_v2 emite una sola fila: "patch_categorias_v2<TAB>4<TAB>1<TAB>1"
PATCH_CATS_LINE=$(echo "$PIPELINE_OUTPUT" | grep "^patch_categorias_v2")

log "Ejecutando saneamiento de duplicados reales (Paso 8-C)..."
DUPL_OUTPUT=$(mysql_c < "${SCRIPT_DIR}/10c_saneamiento_duplicados.sql" 2>&1)
echo "$DUPL_OUTPUT" | tee -a "$LOG_FILE"

DUPL_QA_OUTPUT=""
if [ "$MODO" = "--with-qa" ]; then
    log "Ejecutando saneamiento de duplicados sintéticos QA (Paso 8-C QA)..."
    DUPL_QA_OUTPUT=$(mysql_c < "${SCRIPT_DIR}/10c_qa_duplicados.sql" 2>&1)
    echo "$DUPL_QA_OUTPUT" | tee -a "$LOG_FILE"
fi

ok "Pipeline de saneamiento completado"

# ── Inyección QA exclusiva Host C (post-saneamiento) ─────────────────────────
# UI-14 (cruce asimétrico asamblea 9007/9008): debe inyectarse DESPUÉS del
# saneamiento para que sp_sinc_asamblea_bulk no lo procese antes de la prueba.
if [ "$MODO" = "--with-qa" ]; then
    log "Inyectando datos QA post-saneamiento en Host C (UI-14)..."
    mysql_c < "${SCRIPT_DIR}/00_inject_qa_hostc_post.sql" 2>&1 | tee -a "$LOG_FILE"
    
    log "Inyectando setup de datos QA para Grupos A y B..."
    mysql_c < "${SCRIPT_DIR}/14_manual_test_setup_group_a_b.sql" 2>&1 | tee -a "$LOG_FILE"
    
    log "Inyectando setup de datos QA para Grupos C, D, E, F..."
    mysql_c < "${SCRIPT_DIR}/15_manual_test_setup_group_c_d_e_f.sql" 2>&1 | tee -a "$LOG_FILE"
    
    ok "Datos QA Host C post-saneamiento inyectados (UI-14 y Manual Tests)"
fi

# Guardar métricas para el tablero resumen
SANIT_FOLIOS_ACTIVA_DETECTADOS=${PRE_FOLIOS_ACTIVA:-0}
SANIT_FOLIOS_ACTIVA_REPARADOS=${PASO2_REPARADOS:-0}
SANIT_FOLIOS_HIST_DETECTADOS=${PRE_FOLIOS_HIST:-0}
SANIT_FOLIOS_HIST_REPARADOS=${PASO2C_REPARADOS:-0}
SANIT_MULTAS_ACTIVA_DETECTADAS=${PRE_MULTAS_ACTIVA:-0}
SANIT_MULTAS_HIST_DETECTADAS=${PRE_MULTAS_HIST:-0}
SANIT_MULTAS_SINCRONIZADAS=${MULTAS_SINC:-0}
SANIT_FOLIOS_ACTIVA_POST=${POST_FOLIOS_ACTIVA:-0}
SANIT_FOLIOS_HIST_POST=${POST_FOLIOS_HIST:-0}
# Duplicados: el SQL emite exactamente una línea de resultado tras el INSERT de trazabilidad
DUPL_REAL_OK=$(echo "$DUPL_OUTPUT"  | grep -c "Saneamiento de duplicados reales completado" || echo "0")
DUPL_QA_OK=$(echo "$DUPL_QA_OUTPUT" | grep -c "Saneamiento de duplicados QA completado"     || echo "0")

# =============================================================================
# PASO 8-B: SANEAMIENTO EXENCIÓN RECARGOS PRIMER AÑO
# Cancela recargos indebidos en contratos nuevos exentos (exento_recargo_primer_anio=1).
# Inocuo si no hay casos: ejecuta 0 filas sin efecto colateral.
# =============================================================================
section "PASO 8-B: SANEAMIENTO EXENCIÓN RECARGOS"

log "Ejecutando saneamiento de recargos en contratos exentos primer año..."
EXENCION_OUTPUT=$(mysql_c < "${SCRIPT_DIR}/10b_saneamiento_exencion_recargos.sql" 2>&1)
echo "$EXENCION_OUTPUT" | tee -a "$LOG_FILE"

EXENCION_DETECTADOS=$(echo "$EXENCION_OUTPUT" | grep -A1 "recargos_anomalos_detectados" | tail -1 | awk '{print $1}' || echo "0")
EXENCION_MONTO=$(echo "$EXENCION_OUTPUT"      | grep -A1 "recargos_anomalos_detectados" | tail -1 | awk '{print $2}' || echo "0")
EXENCION_SANEADOS=$(echo "$EXENCION_OUTPUT"   | grep -A1 "recargos_saneados$"           | tail -1 | awk '{print $1}' || echo "0")
EXENCION_AUDITORIA=$(echo "$EXENCION_OUTPUT"  | grep -A1 "registros_auditoria_creados"  | tail -1 | awk '{print $1}' || echo "0")

ok "Saneamiento exención recargos completado"

# =============================================================================
# PASO 8-D: SANEAMIENTO CARGOS Y RECARGOS (REGLA F05)
# =============================================================================
section "PASO 8-D: SANEAMIENTO CARGOS Y RECARGOS"

log "Ejecutando unificación de categorías y neutralización F05..."
F05_OUTPUT=$(mysql_c < "${SCRIPT_DIR}/13_saneamiento_cargos_recargos.sql" 2>&1)
echo "$F05_OUTPUT" | tee -a "$LOG_FILE"

ok "Saneamiento F05 completado"

# =============================================================================
# PASO 9: VALIDADOR DE ÉXITO (NUEVO V2.9)
# =============================================================================
section "PASO 9: TABLERO DE VALIDACIÓN FINAL"

log "Ejecutando validador de éxito de saneamiento (datos reales)..."
VAL_OUTPUT=$(mysql_c < "${SCRIPT_DIR}/12_validate_pipeline.sql" 2>&1)
echo "$VAL_OUTPUT" | tee -a "$LOG_FILE"

if [ "$MODO" = "--with-qa" ]; then
    log "Ejecutando validador de datos sintéticos QA (Paso 9 QA)..."
    mysql_c < "${SCRIPT_DIR}/12_validate_pipeline_qa.sql" 2>&1 | tee -a "$LOG_FILE"
    
    log "Ejecutando suite de auditoría automatizada (Regla F05 y Paridad)..."
    mysql_c < "${SCRIPT_DIR}/16_automated_sql_audit_test.sql" 2>&1 | tee -a "$LOG_FILE"
fi

# =============================================================================
# RESUMEN
# =============================================================================
section "SYNC COMPLETADO"

# ── Conteos finales Host C ────────────────────────────────────────────────────
CNT_USUARIO_C=$(mysql_c    -se "SELECT COUNT(*) FROM usuario;"             2>/dev/null)
CNT_CONTRATO_C=$(mysql_c   -se "SELECT COUNT(*) FROM contrato;"            2>/dev/null)
CNT_LC_ACTIVA=$(mysql_c    -se "SELECT COUNT(*) FROM ligacargos;"          2>/dev/null)
CNT_LC_HIST=$(mysql_c      -se "SELECT COUNT(*) FROM ligacargos_historico;" 2>/dev/null)
CNT_LC_TOTAL=$((CNT_LC_ACTIVA + CNT_LC_HIST))

log "════════════════════════════════════════════════════════"
log "  TABLERO RESUMEN EJECUTIVO — SYNC A → C               "
log "════════════════════════════════════════════════════════"
log ""
log "  DATOS TRANSFERIDOS"
log "  ─────────────────────────────────────────────────────"
log "  usuario             : ${CNT_USUARIO_C}"
log "  contrato            : ${CNT_CONTRATO_C}"
log "  ligacargos (activa) : ${CNT_LC_ACTIVA}    (anio >= 2026)"
log "  ligacargos_historico: ${CNT_LC_HIST}  (anio <= 2025)"
log "  ligacargos TOTAL    : ${CNT_LC_TOTAL}  (debe coincidir con Host A)"
log ""
log "  SANEAMIENTO SCHEMA — POST-IMPORT (Paso 5)"
log "  ─────────────────────────────────────────────────────"
log "  idpago_vinc='' (vacío en A) convertidos a NULL en C: ${IDPAGO_FIXED:-0}"
log "  cargos duplicados inactivos eliminados (nombre+anio): ${CARGOS_DUPL_INACTIVOS:-0}"
log ""
log "  SANEAMIENTO SPLIT (Paso 6)"
log "  ─────────────────────────────────────────────────────"
log "  Registros movidos a historico (anio <= 2025): ${CNT_HIS}"
log "  Registros activos restantes  (anio >= 2026) : ${CNT_ACT}"
log "  Contratos SDF (estado=4) en Host C          : ${SDF_CONTRATOS_C}"
log "  Cargos pendientes en SDF — activa           : ${SDF_PENDIENTES_C}   (debe ser 0 tras D7)"
log "  Cargos pendientes en SDF — histórico        : ${SDF_PENDIENTES_HIST_C}   (debe ser 0 tras D7)"
log ""
log "  SANEAMIENTO EXENCIÓN RECARGOS (Paso 8-B — 10b_saneamiento_exencion_recargos.sql)"
log "  ─────────────────────────────────────────────────────"
log "  Recargos indebidos detectados  : ${EXENCION_DETECTADOS:-0}  (\$${EXENCION_MONTO:-0} en total)"
log "  Recargos saneados (→ estado=-1): ${EXENCION_SANEADOS:-0}  (debe coincidir con detectados)"
log "  Registros de auditoría creados : ${EXENCION_AUDITORIA:-0}  (en tabla cambios, uno por contrato)"
log ""
log "  PIPELINE SANEAMIENTO (Paso 8 — 10_pipeline_saneamiento.sql)"
log "  ─────────────────────────────────────────────────────"
log "  Folios mixtos (estado=1+estado=-1) ACTIVA   detectados : ${SANIT_FOLIOS_ACTIVA_DETECTADOS}"
log "  Folios mixtos (estado=1+estado=-1) ACTIVA   reparados  : ${SANIT_FOLIOS_ACTIVA_REPARADOS}  (registros individuales)"
log "  Folios mixtos (estado=1+estado=-1) ACTIVA   residuales : ${SANIT_FOLIOS_ACTIVA_POST}   (debe ser 0)"
log "  Folios mixtos (estado=1+estado=-1) HISTÓRICO detectados: ${SANIT_FOLIOS_HIST_DETECTADOS}"
log "  Folios mixtos (estado=1+estado=-1) HISTÓRICO reparados : ${SANIT_FOLIOS_HIST_REPARADOS}  (registros individuales)"
log "  Folios mixtos (estado=1+estado=-1) HISTÓRICO residuales: ${SANIT_FOLIOS_HIST_POST}   (debe ser 0)"
log "  Multas asamblea pendientes pre-san.: ${SANIT_MULTAS_ACTIVA_DETECTADAS:-0}  activa | ${SANIT_MULTAS_HIST_DETECTADAS:-0}  histórico (total: $(( ${SANIT_MULTAS_ACTIVA_DETECTADAS:-0} + ${SANIT_MULTAS_HIST_DETECTADAS:-0} )))"
log "  Multas asamblea sincronizadas     : ${SANIT_MULTAS_SINCRONIZADAS}  (sp_sinc_asamblea_bulk procesa activa + histórico en un solo SP)"
PATCH_CATS_V=$(echo "$PATCH_CATS_LINE"    | awk '{print $2}')
PATCH_SINCAT_V=$(echo "$PATCH_CATS_LINE"  | awk '{print $3}')
PATCH_EGR_V=$(echo "$PATCH_CATS_LINE"     | awk '{print $4}')
log "  Patch categorías V2 (Paso 3-B)   : cats_especiales=${PATCH_CATS_V:-?}/4  cat_sin_cat=${PATCH_SINCAT_V:-?}/1  egresos_sin_cat_residuales=${PATCH_EGR_V:-?}  (debe ser 0)"
log ""
log "  SANEAMIENTO DUPLICADOS (Paso 8-C — 10c_saneamiento_duplicados.sql)"
log "  ─────────────────────────────────────────────────────"
log "  Duplicados reales procesados   : Martín (751→750) + Zenón (1590→1057) — completado: ${DUPL_REAL_OK}/1"
if [ "$MODO" = "--with-qa" ]; then
log "  Duplicados sintéticos QA       : casos 990x procesados — completado: ${DUPL_QA_OK}/1"
fi
log ""
log "════════════════════════════════════════════════════════"
log "Duración total: ${SECONDS} segundos"
log "Log:    ${LOG_FILE}"
log "Backup: ${BACKUP_FILE}"
log ""
log "=== SYNC A → C COMPLETADO EXITOSAMENTE ==="
log "    Revisar el log completo para verificar resultados de integridad:"
log "    ${LOG_FILE}"

```

</details>

---

## Agent Response

### Thinking

**Analyzing Potential Root Causes**

I've uncovered more insights. The script `run_sync.sh`'s comments highlight the need to remove inactive duplicates, given that Host A might have multiple entries with the same name and year. I'm focusing on why duplicates exist on Host A in the first place, and if there are additional scenarios.




### Actions

**Tool:** `mcp_bdawahost-c_describe_table`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.251492746s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:31 pm

---

## Agent Response

### Thinking

**Confirming Key Sequence**

I've confirmed the existence of a unique key, **`uk_nombre_anio`**, for the sequence. My attention has turned to the process as described. Host B's active cargo numbers are 621 and 624. Then a sync operation from B to A initiates a script which runs and executes a specific update statement.


**Analyzing Data Sync Impact**

I'm now focused on the A to C synchronization. Using `mysqldump --replace`, the order of the dump matters. Dumping 621 first, then 624, leads to 624 replacing 621 in Host C because of the `uk_nombre_anio` constraint. This means Host C is left with 624, the inactive record. Subsequently, the post-process runs, attempting a delete based on the active state, but 621 is gone, so nothing gets deleted, resulting in the preservation of the inactive record.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.208772651s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

MAS BIEN me gustaria analizar e implmentar  una solucion de saneamiento a esta situacion , profundiza y elabora un plan

<details>
<summary>Context</summary>

**Active File:** `.mcp.json`
**Language:** json
</details>

---

## Agent Response

### Thinking

**Addressing Duplicates in Cargo**

I've pinpointed the crux of the `cargos` duplication debacle. The problem stems from Host B's duplicates, and the subsequent deactivation by Host A. Host C's unique key and `mysqldump --replace` are then overwriting the active record with an inactive one. My current focus is to devise a sanitation strategy.


**Refining The De-Duplication**

I'm now zeroing in on a refined strategy to tackle cargo duplication within the database. My revised approach involves a two-pronged solution: pre-import sanitization on Host A, prioritizing the 'best' record (active/automatic) and hiding/deleting the rest, and post-import cleanup on Host C to ensure the merged record has the correct state. The `mysqldump --replace` function and the UNIQUE KEY is the problem, now that I analyze it. I need to make sure the process selects the right records.




### Actions

**Tool:** `mcp_bdawahost-a_describe_table`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.897239563s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:35 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_describe_table`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:35 pm

---

## Agent Response

### Thinking

**Refining The Focus**

Okay, I've clarified the core problem. It's not about `cargos.numconsec`, the critical aspect concerns multiple `cargos` records sharing the same `nombre`, `categoria`, and `anio`. This duplication is what breaks the catalog, while the existing systems remain unaffected. My understanding is solidifying around these key linkages.




### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.047969861s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:35 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `output.txt`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
[
  {
    "nombre": "2DA DESCARGA DE DRENAJE AÑO 2015",
    "anio": 2015,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "425,426"
  },
  {
    "nombre": "AGUA POTABLE 2009",
    "anio": 2009,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "362,363"
  },
  {
    "nombre": "AGUA POTABLE 2012 TIPO C",
    "anio": 2012,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "314,315"
  },
  {
    "nombre": "AGUA POTABLE ANUALIDAD 2011 TIPO (C)",
    "anio": 2011,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "189,219"
  },
  {
    "nombre": "ALCANTARILLADO AÑO 2010",
    "anio": 2010,
    "total": 4,
    "activos": "0",
    "inactivos": "4",
    "ids": "139,140,149,171"
  },
  {
    "nombre": "ALCANTARILLADO AÑO 2011",
    "anio": 2011,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "295,188"
  },
  {
    "nombre": "ANUALIDAD DEL AGUA 2012",
    "anio": 2012,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "301,316"
  },
  {
    "nombre": "ANUALIDAD DEL AGUA 2013",
    "anio": 2013,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "544,343"
  },
  {
    "nombre": "ANUALIDAD DEL AGUA 2016",
    "anio": 2016,
    "total": 2,
    "activos": "1",
    "inactivos": "0",
    "ids": "443,449"
  },
  {
    "nombre": "ANUALIDAD DEL AGUA 2026",
    "anio": 2026,
    "total": 2,
    "activos": "1",
    "inactivos": "1",
    "ids": "621,624"
  },
  {
    "nombre": "ANUALIDAD DEL AGUA AÑO 2015",
    "anio": 2015,
    "total": 2,
    "activos": "1",
    "inactivos": "1",
    "ids": "412,414"
  },
  {
    "nombre": "ANUALIDAD DEL AGUA AÑO 2015 TIPO (C)",
    "anio": 2015,
    "total": 2,
    "activos": "1",
    "inactivos": "1",
    "ids": "413,415"
  },
  {
    "nombre": "ANUALIDAD DEL DRENAJE 2016",
    "anio": 2016,
    "total": 2,
    "activos": "1",
    "inactivos": "0",
    "ids": "444,451"
  },
  {
    "nombre": "ANUALIDAD DEL DRENAJE 2018 TIPO (C)",
    "anio": 2018,
    "total": 2,
    "activos": "1",
    "inactivos": "1",
    "ids": "535,536"
  },
  {
    "nombre": "ANUALIDAD DEL DRENAJE TIPO (C)",
    "anio": 0,
    "total": 2,
    "activos": "2",
    "inactivos": "0",
    "ids": "571,503"
  },
  {
    "nombre": "CAMBIO DE PROPIETARIO",
    "anio": 0,
    "total": 2,
    "activos": "2",
    "inactivos": "0",
    "ids": "628,475"
  },
  {
    "nombre": "CANCELACION DE TOMA ",
    "anio": 0,
    "total": 5,
    "activos": "0",
    "inactivos": "5",
    "ids": "261,262,282,283,119"
  },
  {
    "nombre": "CANCELACION DE TOMA DE AGUA",
    "anio": 0,
    "total": 4,
    "activos": "1",
    "inactivos": "3",
    "ids": "284,304,350,351"
  },
  {
    "nombre": "COBRANZA DE NOTIFICACIONES",
    "anio": 0,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "257,258"
  },
  {
    "nombre": "COBRANZA-NOTIFICACIONES",
    "anio": 0,
    "total": 5,
    "activos": "0",
    "inactivos": "5",
    "ids": "102,216,217,218,229"
  },
  {
    "nombre": "CONTRATO DE AGUA",
    "anio": 0,
    "total": 5,
    "activos": "3",
    "inactivos": "2",
    "ids": "259,260,548,469,470"
  },
  {
    "nombre": "CONTRATO DE DRENAJE",
    "anio": 0,
    "total": 2,
    "activos": "2",
    "inactivos": "0",
    "ids": "619,462"
  },
  {
    "nombre": "EXCABACION Y CANCELACION DE TOMA DE AGUA",
    "anio": 0,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "264,236"
  },
  {
    "nombre": "FALTA ASAMBLEA 25 MAR 2012",
    "anio": 2012,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "321,334"
  },
  {
    "nombre": "FALTA ASAMBLEA 25 MAR 2018",
    "anio": 2018,
    "total": 2,
    "activos": "2",
    "inactivos": "0",
    "ids": "540,541"
  },
  {
    "nombre": "FALTA ASAMBLEA 25 SEP 2005",
    "anio": 2005,
    "total": 2,
    "activos": "1",
    "inactivos": "1",
    "ids": "10,526"
  },
  {
    "nombre": "FALTA ASAMBLEA 26 JUN 2011",
    "anio": 2011,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "234,235"
  },
  {
    "nombre": "FALTA ASAMBLEA 27 MAR 2011",
    "anio": 2011,
    "total": 3,
    "activos": "0",
    "inactivos": "3",
    "ids": "226,227,228"
  },
  {
    "nombre": "FALTA ASAMBLEA 30 SEP 2014",
    "anio": 2014,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "422,423"
  },
  {
    "nombre": "FONTANERO DE AGUA",
    "anio": 0,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "332,176"
  },
  {
    "nombre": "PAGO ANUAL DEL AGUA 2011",
    "anio": 2011,
    "total": 3,
    "activos": "0",
    "inactivos": "3",
    "ids": "275,285,286"
  },
  {
    "nombre": "PAGO ANUAL DEL SERVICIO DE AGUA 2011",
    "anio": 2011,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "273,274"
  },
  {
    "nombre": "RECARGO ANUAL AGUA 2000",
    "anio": 2000,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "246,247"
  },
  {
    "nombre": "RECARGO ANUAL AGUA 2003",
    "anio": 2003,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "206,250"
  },
  {
    "nombre": "RECARGO ANUAL AGUA 2004",
    "anio": 2004,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "163,207"
  },
  {
    "nombre": "RECARGO DE DRENAJE 2012",
    "anio": 2012,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "325,328"
  },
  {
    "nombre": "RECARGO DE DRENAJE MAY 2025",
    "anio": 2025,
    "total": 2,
    "activos": "2",
    "inactivos": "0",
    "ids": "609,610"
  },
  {
    "nombre": "RECARGO DEL AGUA 2013",
    "anio": 2013,
    "total": 3,
    "activos": "0",
    "inactivos": "3",
    "ids": "373,375,388"
  },
  {
    "nombre": "RECARGO DEL AGUA 2013 2013",
    "anio": 2013,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "374,387"
  },
  {
    "nombre": "RECARGOS ANUAL 2010",
    "anio": 2010,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "153,159"
  },
  {
    "nombre": "RECARGOS ANUAL AGUA",
    "anio": 0,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "154,155"
  },
  {
    "nombre": "RECARGOS ANUAL AGUA 2009",
    "anio": 2009,
    "total": 3,
    "activos": "0",
    "inactivos": "3",
    "ids": "132,134,136"
  },
  {
    "nombre": "RECARGOS ANUAL AGUA 2010",
    "anio": 2010,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "152,162"
  },
  {
    "nombre": "RECARGOS ANUAL DRENAJE 2008",
    "anio": 2008,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "122,123"
  },
  {
    "nombre": "RECONEXION DE AGUA ",
    "anio": 0,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "317,174"
  },
  {
    "nombre": "RECONEXION DE TOMA DE AGUA",
    "anio": 0,
    "total": 2,
    "activos": "1",
    "inactivos": "1",
    "ids": "290,320"
  },
  {
    "nombre": "REPARACION DE PAVIMENTO",
    "anio": 0,
    "total": 2,
    "activos": "2",
    "inactivos": "0",
    "ids": "523,547"
  },
  {
    "nombre": "REPOSICION DE CREDENCIAL",
    "anio": 0,
    "total": 3,
    "activos": "1",
    "inactivos": "2",
    "ids": "524,287,116"
  },
  {
    "nombre": "UN MES DE AGUA 2012",
    "anio": 2012,
    "total": 2,
    "activos": "0",
    "inactivos": "2",
    "ids": "309,310"
  }
]
```

</details>

---

## Agent Response

### Thinking

**Identifying Duplicate Entries**

I'm currently focused on pinpointing the duplicate entries flagged by diagnostics. I've found multiple, such as "ANUALIDAD DEL AGUA 2026," which has both an active and inactive version. The active duplicates of "RECARGO DE DRENAJE MAY 2025" are concerning and will cause a `REPLACE` conflict. This indicates that I will need to implement a data deduplication process, so this can be avoided.


**Refining De-Duplication Logic**

I'm now refining the SQL logic for the de-duplication script. I'll be creating `10d_saneamiento_catalogos.sql` to clean up duplicate records in `cargos`. The logic prioritizes active records (`estado=1`), followed by automatic records (`automatico=1`), and then the lowest `numconsec` as a tie-breaker. This should ensure that each `(nombre, anio)` combination has only one record. The post-process logic will be updated in `run_sync.sh` to leverage the "clean" state of Host A, and verification will be added to ensure Host C has no duplicates post-import. The `numconsec` of the "winner" must be determined so that others may be deleted.




### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.866103852s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:35 pm

---

## Agent Response

### Thinking

**Considering the SQL Strategy**

I'm now thinking I'll need to work with a JOIN approach to handle the `ROW_NUMBER()` absence on Host A, since I need to pick the smallest `numconsec` value for a given `nombre` and `anio`. I've begun to construct the `DELETE` statement.




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 5.848278336s
- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 25 Apr 2026, 8:35 pm

---

## Agent Response

### Thinking

**Correcting Path Navigation**

I realize I was using an incorrect path for the implementation plan; it's actually located within the `user_information`'s specified application data directory. I need to update my internal references accordingly. The plan is in `/home/carlos/.gemini/antigravity/brain/15a0d6b2-867b-4def-b663-82227bcf6ec6/implementation_plan.md`.




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.379252863s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 8:35 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

host A (este host linux), es el servira para la tranformacion y de aqui se pasaran a host c ?

<details>
<summary>Context</summary>

**Active File:** `.mcp.json`
**Language:** json
</details>

---

## Agent Response

### Thinking

**Confirming Host Role**

I've determined that this local Linux machine, Host A, indeed serves as the transition environment in the user's scenario. Data transformation and transmission to Host C will originate from here, per the defined configuration.




### Actions

**Tool:** `view_file`
**File:** `sync_config.sh`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.717112105s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# =============================================================================
# sync_config.sh — Configuración central de sincronización Host A → Host C
# ÚNICO archivo a editar entre sincronizaciones.
# =============================================================================

# ── IPs y passwords leídas del .mcp.json en raíz del proyecto ────────────────
_MCP_JSON="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)/.mcp.json"
_parse_mcp() {
    local host_key="$1" field="$2"
    local url
    url=$(grep -A10 "\"${host_key}\"" "$_MCP_JSON" | grep -o 'mysql://[^"]*' | head -1)
    case "$field" in
        user) echo "$url" | sed 's|mysql://\([^:]*\):.*|\1|' ;;
        pass) echo "$url" | sed 's|mysql://[^:]*:\([^@]*\)@.*|\1|' ;;
        host) echo "$url" | sed 's|.*@\([^:]*\):.*|\1|' ;;
        port) echo "$url" | sed 's|.*:\([0-9]*\)/.*|\1|' ;;
        db)   echo "$url" | sed 's|.*/\(.*\)|\1|' ;;
    esac
}

# ── Host A (Desarrollo / Fuente) ──────────────────────────────────────────────
HOST_A="127.0.0.1"
PORT_A="3306"
USER_A="$(_parse_mcp bdawahost-a user)"
PASS_A="$(_parse_mcp bdawahost-a pass)"

# ── Host C (V2 MariaDB / Destino) ─────────────────────────────────────────────
HOST_C="$(_parse_mcp bdawahost-c host)"
PORT_C="$(_parse_mcp bdawahost-c port)"
USER_C="$(_parse_mcp bdawahost-c user)"
PASS_C="$(_parse_mcp bdawahost-c pass)"

# ── Base de datos ─────────────────────────────────────────────────────────────
DB="awa"

# ── Binarios (XAMPP Host A) ───────────────────────────────────────────────────
MYSQL_BIN="/opt/lampp/bin/mysql"
MYSQLDUMP_BIN="/opt/lampp/bin/mysqldump"

# ── Directorios ───────────────────────────────────────────────────────────────
SYNC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORK_DIR="${SYNC_DIR}/work"
LOG_DIR="${SYNC_DIR}/logs"
BACKUP_DIR="${SYNC_DIR}/backups"

# =============================================================================
# CLASIFICACIÓN DE TABLAS
# =============================================================================

# REEMPLAZAR desde A en cada sync (datos operativos frescos)
TABLES_REPLACE=(
    "usuario"
    "contrato"
    "contrato_toma"     # ya calculada en A post-sync B→A
    "cargos"
    "ligacargos"        # se importa completa; split se hace en PASO 6
    "notas"
    "cambios"
    "egresos"
    "asamblea"
)

# PRESERVAR en C — NO tocar en cada sync
TABLES_PRESERVE=(
    "config_sistema"        # configuración exclusiva de C v2
    "folios_recibo"         # AUTO_INCREMENT activo en C — no resetear
)

# CATÁLOGOS — siempre reemplazar desde A (pequeñas, sin riesgo)
# categorias, categorias_egresos, firmantes, contrasenas → TABLES_DIRECT en run_sync.sh
#
# EXCEPCIÓN: users — guard en run_sync.sh:
#   - vacía (Proceso 2 setup desde cero) → poblar desde A
#   - con datos (Proceso 1 refresh diurno) → preservar contraseñas propias de C

# =============================================================================
# TRANSFORMACIONES REQUERIDAS (diferencias de schema A vs C)
# =============================================================================
# cambios:    A no tiene col id (AUTO_INCREMENT) — mysqldump --complete-insert
#             genera columnas explícitas; el id se genera automáticamente en C.
#
# ligacargos: idpago_vinc varchar('') en A → int NULL en C
#             Transformación: NULLIF(TRIM(idpago_vinc), '') → NULL
#
# ligacargos: fcobro/fpago datetime en A → date en C
#             Transformación: DATE(fcobro), DATE(fpago) en el SELECT/LOAD
#
# egresos:    A no tiene col id_categoria → C la tiene DEFAULT NULL
#             mysqldump --complete-insert omite la columna; C inserta NULL automáticamente.
#
# ligacargos: split anio<=2025 → ligacargos_historico (script 06_split_ligacargos.sql)

# =============================================================================
# CONTEOS ESPERADOS (actualizar después de cada sync exitoso)
# =============================================================================
EXPECTED_USUARIO=1491
EXPECTED_CONTRATO=1408
EXPECTED_LIGACARGOS_ACTIVA=4993       # anio >= 2026 — actualizado sync 2026-04-17
EXPECTED_LIGACARGOS_HISTORICO=193040  # anio <= 2025 — actualizado sync 2026-04-17
EXPECTED_NOTAS=3719
EXPECTED_CAMBIOS=4923
EXPECTED_EGRESOS=473
EXPECTED_CARGOS_MIN=585

# ── Exportar variables ────────────────────────────────────────────────────────
export HOST_A PORT_A USER_A PASS_A HOST_C PORT_C USER_C PASS_C DB
export MYSQL_BIN MYSQLDUMP_BIN
export SYNC_DIR WORK_DIR LOG_DIR BACKUP_DIR
export TABLES_REPLACE TABLES_PRESERVE
export EXPECTED_USUARIO EXPECTED_CONTRATO EXPECTED_LIGACARGOS_ACTIVA
export EXPECTED_LIGACARGOS_HISTORICO EXPECTED_NOTAS EXPECTED_CAMBIOS
export EXPECTED_EGRESOS EXPECTED_CARGOS_MIN

```

</details>

---

## Agent Response

### Thinking

**Identifying Host Configurations**

I've pinpointed the relevant configurations. Specifically, `HOST_A="127.0.0.1"` and `MYSQL_BIN="/opt/lampp/bin/mysql"` are key, and `HOST_C` is an external IP from `.mcp.json`. This confirms that the current host is Host A, which handles data import from the legacy Host B.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.131555518s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

Dale.

<details>
<summary>Context</summary>

**Active File:** `.mcp.json`
**Language:** json
</details>

---

## Agent Response

### Thinking

**Implementing Approved Plan**

Okay, the plan is approved. My next move is to modify `docs-dev/migration-aguav2/syncawa_hostb_to_hosta/03_sync_host_a.sql` with the generic sanitation for duplicate `cargos`. After that, I will modify `docs-dev/migration...`




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.330717506s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 8:38 pm

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 8:38 pm

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 8:38 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

Analiza todos los otros catalogos core y no core, para saber si hay que implementar la misma o similar saneamiento

<details>
<summary>Context</summary>

**Active File:** `03_sync_host_a.sql`
**Language:** oracle-sql
</details>

---

## Agent Response

### Thinking

**Identifying Catalog Tables**

I'm currently working on pinpointing the specific tables that are categorized as "catalogs." I've started by examining `sync_config.sh` and identified `categorias`, `categorias_egresos`, and `firmantes` as initial candidates. My next step will be analyzing other related configurations to create a more comprehensive list.




### Actions

**Tool:** `mcp_bdawahost-a_describe_table`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.409517999s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_describe_table`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_describe_table`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_describe_table`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Thinking

**Analyzing Master Table Dependencies**

I've confirmed that the 'contrasenas' table appears clean. My focus has shifted to the 'usuario' table, a crucial master table. While duplicates on the primary key, `noconsecutivo`, are impossible, I'm now investigating potential uniqueness constraints on the `nombre` field or other business logic. The `usuario` table usually has many.




### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.677157558s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 25 Apr 2026, 8:40 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:41 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:41 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:41 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:41 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:41 pm

---

## Agent Response

### Thinking

**Consolidating Asamblea Data**

I'm currently focused on consolidating `asamblea` data. My approach involves identifying a "winner" assembly for each date with multiple entries, based on attendee count. Once the winner is determined, I plan to update the `asistentes` table to reflect this consolidation by assigning the winning assembly's ID. This will clean up the minor discrepancies created by the orphan data I found.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.419829544s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

Despues de aplicar estos saneamientos, el impacto seria en incremento o reduccion de deuda, cartera vencida, ingresos en cortes de caja (en que años, peridos) ?

<details>
<summary>Context</summary>

**Active File:** `run_sync.sh`
**Language:** shellscript
</details>

---

## Agent Response

### Thinking

**Analyzing Sanitation Impacts**

I'm currently focused on determining the impact of sanitation actions on debt, overdue portfolios, and income in cash closures. I need to figure out which specific years and periods are most relevant for this analysis. I'm prioritizing understanding how each sanitation strategy influences these key financial indicators.




### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.435311642s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 8:49 pm

---

## Agent Response

### Thinking

**Analyzing Pending Records**

I've narrowed down the pending records to just two instances with 'monto=0'. My focus is now on the potential financial impact, specifically concerning 'Deuda / Cartera Vencida' for the 2026 fiscal year. I'm seeing a possible **INCREMENTO** as a result of correcting the 2026 catalog.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.409953207s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

SI, preparalo y se analiza congruentemente en el pipeline de saneamemiento existente en /opt/lampp/htdocs/agua/docs-dev/migration-aguav2/
Verificalo, y si todo ok, actualizas/añades lo que corresponda en:
/opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion/pmu/
y en
GEMINI.md y CLAUDE.md rules.
Yo ejecutare manualmente el .sh para pruebas.

<details>
<summary>Context</summary>

**Active File:** `run_sync.sh`
**Language:** shellscript
</details>

---

## Agent Response

### Thinking

**Consolidating the Sanitation Script**

I'm currently preparing the consolidated sanitation script. My focus now is on integrating it into the pipeline within the specified directory. Afterwards, I'll need to verify its functionality and ensure its seamless integration. Finally, I'll update or create the required documentation.


**Developing the SQL Script**

I've decided to incorporate the SQL sanitation script, `10d_saneamiento_catalogos.sql`, directly into `03_sync_host_a.sql` for simplicity, adding a new section for this purpose, after giving some consideration to creating a separate file if it grew too large. My next task is to build a solid SQL block for Host A, particularly for the assembly consolidation logic. Simultaneously, I will have to update the documentation, including `docs-dev/doc-estabilizacion/pmu/`, `GEMINI.md`, and the appropriate `.agents/rules/` files to reflect the changes.


**Refining the Host A SQL**

I'm working on refining the assembly consolidation logic in the SQL script. I've built the preliminary SQL code for Host A in MySQL 5.6. It leverages a subquery to find the assembly ID with the most attendees for each duplicated date and updates the `asistentes` table accordingly. The next step involves a dry-run to test the logic using select statements.


**Simplifying the Consolidation Logic**

I'm now simplifying the consolidation logic. The previous SQL was quite complex, so I'm moving toward using temporary tables for a clearer, non-interactive solution. I've designed a straightforward approach using `CREATE TEMPORARY TABLE` to hold the winners and further streamlined the initial logic to use `MAX(id)` for tie-breaking scenarios, and I'll adapt to removing duplicates.


**Revising Assembly Winner Logic**

I'm reconsidering the tie-breaking logic for choosing assembly winners. `MAX(id)` isn't ideal if an older assembly has more attendees. I'm building temporary tables to count attendees per assembly, and select the winner by highest attendee count, defaulting to higher ID if it's a tie. I will then move attendees from the losing assembly to the winning one. Finally, I will delete the losing assemblies.




### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 6.716850360s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `doc-estabilizacion` (14 items)</summary>

**Path:** `opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion`

| Name | Type | Size |
|------|------|------|
| `29092025-29122025-Corte de Caja Resumen.pdf` | File | 109446 bytes |
| `GOLIVE_CHECKLIST.md` | File | 5580 bytes |
| `Guia de Pruebas — Tester Humano (V1.0).md` | File | 74695 bytes |
| `MIGRATION_PROTOCOL.md` | File | 19040 bytes |
| `Plan de Pruebas — Sprint Post-Correcciones.md` | File | 144232 bytes |
| `REPORTES_CAJA_CARTERA_DECLARACION.md` | File | 12925 bytes |
| `analisis-encuadre-ingresos.md` | File | 6473 bytes |
| `analisis-reportes-v2.md` | File | 3256 bytes |
| `cudre-finan-hostc-hostb.md` | File | 4799 bytes |
| `datos-verificar` | Directory | - |
| `notasAtencionRqsAguapp` | File | 21839 bytes |
| `pmu` | Directory | - |
| `reglas-negocio-por-menu.md` | File | 33969 bytes |
| `reporte_bd_awa.md` | File | 4108 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion/pmu`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `pmu` (2 items)</summary>

**Path:** `opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion/pmu`

| Name | Type | Size |
|------|------|------|
| `analisis_paridad_3hosts.md` | File | 4115 bytes |
| `transiciones_estado_contratos.md` | File | 9212 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `GEMINI.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# GEMINI.md - Central Project Context for Agua (MASTER INDEX)

Este archivo es el punto de entrada principal para el asistente de IA (Antigravity/Gemini) y un resumen del contexto del proyecto **Agua**. El conocimiento detallado y las reglas de oro se han distribuido en archivos modulares dentro de `.agents/rules/`.

> [!IMPORTANT]
> **Gemini**: Debes consultar y seguir las reglas detalladas en el directorio `.agents/rules/` para cada tarea orquestada en este proyecto.

---

## 🗺️ Índice de Reglas y Conocimiento (Ground Truth)

| Regla | Descripción | Archivo |
| :--- | :--- | :--- |
| **01** | **Infraestructura y Hosts** | [.agents/rules/01-infra-hosts.md](file:///.agents/rules/01-infra-hosts.md) |
| **02** | **Diccionario de Reglas por Módulo** | [.agents/rules/02-reglas-negocio.md](file:///.agents/rules/02-reglas-negocio.md) |
| **03** | **Sincronización de Datos (B -> A)** | [.agents/rules/03-sincronizacion-b-a.md](file:///.agents/rules/03-sincronizacion-b-a.md) |
| **04** | **Arquitectura MVC y Directorios** | [.agents/rules/04-arquitectura-mvc.md](file:///.agents/rules/04-arquitectura-mvc.md) |
| **05** | **Despliegue y Automatización (Host C)** | [.agents/rules/05-despliegue-host-c.md](file:///.agents/rules/05-despliegue-host-c.md) |
| **06** | **Accesos, Rutas y Herramientas** | [.agents/rules/06-accesos-rutas.md](file:///.agents/rules/06-accesos-rutas.md) |
| **07** | **Control de Versiones y Git Workflow** | [.agents/rules/07-git-workflow.md](file:///.agents/rules/07-git-workflow.md) |
| **08** | **Integridad del Ground Truth / Runbook** | [.agents/rules/08-integridad-ground-truth.md](file:///.agents/rules/08-integridad-ground-truth.md) |
| **09** | **Documentación de Sesión** | [.agents/rules/09-sesion-summary.md](file:///.agents/rules/09-sesion-summary.md) |
| **10** | **Limitantes Conocidas de la Webapp** | [.agents/rules/10-limitantes-webapp.md](file:///.agents/rules/10-limitantes-webapp.md) |
| **11** | **Estándares de Código y Seguridad** | [.agents/rules/11-estandares-codigo.md](file:///.agents/rules/11-estandares-codigo.md) |
| **12** | **Uso Seguro de `Conexion.php` (mysqli)** | [.agents/rules/12-estandar-conexion-mysqli.md](file:///.agents/rules/12-estandar-conexion-mysqli.md) |

---

## 🛠️ Skills Personalizadas (Workflows y Estándares)
Estas habilidades definen **cómo** ejecuto las tareas técnicas:
- **[UI/UX Modern Refactor](file:///.agents/skills/skill-ui-modern-refactor/SKILL.md)**: Estándares de CSS/HTML para el Host C.
- **[Dynamic UI & AJAX](file:///.agents/skills/skill-dynamic-html-ajax/SKILL.md)**: Interactividad con `paxscript.js`.
- **[Plates Templating Patterns](file:///.agents/skills/skill-plates-templating/SKILL.md)**: Uso del motor de plantillas Views.
- **[PHP-Migration-74](file:///.agents/skills/skill-migration-php74/SKILL.md)**: Refactorización de PHP 5.5 a 7.4.
- **[Database Evolution](file:///.agents/skills/skill-database-evolution/SKILL.md)**: Partición de `ligacargos` y migración a MariaDB.

---

## 🏗️ Workflows Disponibles (Procesos Detallados)
- **[/update-business-data](file:///.agents/workflows/update-business-data.md)**: Sync B → A (Comando: `Sync-B2A`)
- **[/deploy-to-host-c](file:///.agents/workflows/deploy-to-host-c.md)**: Sync A → C (Comando: `Sync-A2C`)

---

## 🚨 Módulos Críticos y Auditoría Constante
Existen funcionalidades core que requieren especial atención para asegurar la congruencia de datos:
- **Lógica Híbrida y Retroactividad (V2)**: Motor de Mora Continuo y Reglas de Paridad en `transiciones_estado_contratos.md`.
- **Estados de Contrato**: Transiciones entre `1 (ACTIVO)`, `2 (SUSPENSIÓN TEMPORAL)` y `5 (SUSPENSIÓN ADMINISTRATIVA)`.
- **Cartera Vencida (`carteravencida.php`)**: Validación de deuda morosa.
- **Corte de Caja (`concentradocortecaja.php`)**: Ingresos diarios contra reportes detallados.
- **Resumen de Caja (`reportes/concentradocortecajaresumen.php`)**: Consolidación total.
- **Plan de Pruebas Maestro**: `docs-dev/doc-estabilizacion/Plan de Pruebas — Sprint Post-Correcciones.md`.

---

## 🚀 Estado Actual: Host C UP & RUNNING (2026-04-07)

- Split `ligacargos` **completado**: 2,513 activa (≥2026) + 192,545 histórico (≤2025)
- Schema v2 completo + webapp PHP 7.4 adaptada en `feature/upgrade-v2-win-xampp`
- Pipeline de Sincronización B → A → C **Maestro** (Comando: `Full-Pipeline-Sync`)
- Puertos Host C: Apache **7001**, MariaDB **7002**
- Protocolo de Migración: `docs-dev/migration-aguav2/MIGRATION_PROTOCOL.md`
- Checklist pase a producción: `docs-dev/migration-aguav2/host-c-setup/07_transferir_datos.md`

> **⚠️ Filosofía de Uso**: Los scripts `Sync-*` y `Full-Pipeline-Sync` son **Herramientas de Migración**, no tareas recurrentes. Se ejecutan durante el desarrollo para estabilizar Host C. En producción (Go-Live) se ejecutan **una última vez** y luego se retiran. Host C opera autónomamente.

> Ver tabla de comandos canónicos y comportamiento de flags en: `docs-dev/migration-aguav2/MIGRATION_PROTOCOL.md`

## 🐛 Bugs Host C corregidos (2026-04-07, commit `bd1cb2f`)

Derivados del split `ligacargos`: 5 PHPs usaban `FROM ligacargos` directa (perdían datos ≤2025).

| Archivo | Fix aplicado |
|---------|-------------|
| `reportes/listadeudores.php` | Eliminado cross join implícito `ligacargos.monto` → `vw_ligacargos_pendientes.monto` |
| `reportes/carteravencida.php` | Añadido `OR anio IS NULL` para históricos migrados sin anio |
| `reportes/concentradocortecajaresumen.php` | `FROM ligacargos` → `FROM vw_ligacargos_all` |
| `includes/negocio/cargos.php` | SELECT duplicados y UPDATE masivo corregidos (UPDATE ahora aplica en ambas tablas) |
| `docs-dev/sanemiento-limpieza/reportes/genera_csv.php` | 4 JOINs directos → `vw_ligacargos_all` |

**Regla para nuevos PHPs**: Todo SELECT debe usar `vw_ligacargos_all` o `vw_ligacargos_pendientes`. Ver [skill-database-evolution/SKILL.md](.agents/skills/skill-database-evolution/SKILL.md).

---
---

## 🏗️ Arquitectura Brain / Ground Truth (2026-04-09)

Todo el contexto de agentes IA vive en `agua_chatledger`. El repo `agua` tiene solo symlinks (8/8).
**Antes de cualquier refactoring de archivos meta, leer regla 08.**

Validar integridad:
```bash
bash docs-dev/ga-cl-ia/chatledger_validate.sh
```

**Última actualización**: 2026-04-16

> [!IMPORTANT]
> **Terminología de Sesión**:
> - **Ground Truth**: Denominación del contexto maestro para **Claude**.
> - **Runbook**: Denominación del contexto maestro (GEMINI.md + .agents/) para **Gemini**.

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `03-sincronizacion-b-a.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 03: Procedimiento de Sincronización de Datos (B -> A)

Reglas para transformar datos operativos del espejo legado (Host B) hacia el ambiente de TRANSICIÓN (Host A / V1+).

---

## 🗑️ Borrado Selectivo (Mandatario)
Al actualizar la BD en el Host A, se debe priorizar la limpieza de **"datos de negocio"** para evitar duplicidades o inconsistencias:
- **Borrar**: Pagos, cargos, movimientos, bitácoras operativas, adeudos y folios.
- **NUNCA Borrar**: Registros de tipo **Configuración**, **Diseño** o **Catálogos**. Esto incluye:
    - Calles (nombres de calles).
    - Tarifas base.
    - Configuraciones del sistema en General (`config_gral` u otras).
    - Mejoras en descripciones de catálogos realizadas en A.

---

## 📐 Adaptación Estructural (Estructura A)
- **Regla**: Los registros transportados de B deben **"mapearse"** a la estructura de Transición de A.
- **Mandato**: Host A mantiene el esquema de **tabla única** (`ligacargos`) para actuar como puente estable. El split histórico se reserva para el Host C.
- **Consistencia**: El post-procesamiento transforma campos V1 a V1+ (ej. `exento_recargo`, `batch_id`) asegurando integridad inmediata.

---

## 🔗 Integridad Referencial
Cualquier movimiento parcial de datos debe asegurar que las claves foráneas (`idusuario`, `idsuadmin`, `numcontrato`) sigan apuntando a registros válidos existentes en A, evitando **"registros huérfanos"**.

## 🗂️ Scripts de Sincronización (Implementación Real)

Los scripts que implementan este protocolo ya existen y fueron utilizados exitosamente. Están en:

```
docs-dev/migration-aguav2/syncawa_hostb_to_hosta/
```

| Script | Rol |
| :--- | :--- |
| `sync_config.sh` | **Config central** — único archivo a editar entre syncs (credenciales, listas de tablas, conteos esperados) |
| `run_sync.sh` | **Orquestador** — ejecuta el pipeline completo. Modos: `--pre-flight`, `--solo-validar`, `--solo-backup` |
| `00_pre_flight.sh` | Compara schemas A vs B, detecta drift de tablas y columnas sin modificar datos |
| `01_backup_host_a.sh` | Backup comprimido de Host A antes de cualquier modificación |
| ~~`02_dump_host_b.sh`~~ | **ELIMINADO** — absorbido por `run_sync.sh`. No recrear. |
| `03_sync_host_a.sql` | **Unificación y Saneamiento** — Única fuente de verdad para post-procesamiento V1+. Vacía tablas, importa y aplica D1-D7 (SDF V1+). |
| `04_recalc_contrato_toma` | Recalc de infraestructura (Transición V1+) |
| `05_validate.sql` | Valida conteos y consistencia referencial post-sync |

### Clasificación de Tablas (en `sync_config.sh`)
- **`TABLES_BUSINESS`**: Se reemplazan desde B — `usuario`, `contrato`, `ligacargos`, `notas`, `cambios`, `egresos`, `asamblea`, `cargos`
- **`TABLES_A_ONLY`**: Se preservan en A — `contrato_toma`, `config_sistema`
- **`TABLES_CATALOG`**: Se preservan en A — `categorias`, `firmantes`, `contrasenas`, `users`
- **`TABLES_IGNORE_IN_B`**: Existen en B pero eliminadas en A — `asistentes`, `recargos`, `ligacategorias`

### Columnas nuevas en A (no existen en B)
Al importar desde B, el post-procesamiento recalcula automáticamente:
- `contrato.exento_recargo_primer_anio` → `1` si `YEAR(fecha) = año actual`
- `cargos.monto_comercial` → `monto * 2` para categorías 2/3 automáticas
- `ligacargos.idpago_vinc` → `''` donde sea NULL

### Comando de Uso
```bash
# Vía orquestador maestro (recomendado):
cd docs-dev/migration-aguav2/
./Full-Pipeline-Sync.sh                    # Producción: B→A→C (datos vienen de Host B)
./Full-Pipeline-Sync.sh --skip-b           # Offline: salta volcado de B, usa A tal como está → C
./Full-Pipeline-Sync.sh --with-qa          # Testing: B→A→C + inyecta datos sintéticos en A→C
./Full-Pipeline-Sync.sh --with-qa --skip-b # Testing offline: sin conectar a Host B
# Cualquier otra flag causa exit 1 con "Flag desconocida: X"

# Vía script individual (emergencia):
cd docs-dev/migration-aguav2/syncawa_hostb_to_hosta/
./run_sync.sh               # Sync B→A completo
./run_sync.sh --pre-flight  # Solo comparar schemas (seguro, sin modificar)
./run_sync.sh --solo-backup # Solo backup de A
```

### Retención de artefactos
- **Logs** (`logs/sync_*.log`): se conservan los **2 más recientes** — rotación automática al inicio de cada ejecución.
- **Backups** (`bd-schema/sync/backups/backup_host_a_*.sql.gz`): se conservan los **2 más recientes**.

---
**Nota para Gemini/Claude**: Al recibir la instrucción de "refrescar datos" o "importar producción", el comando canónico es `Full-Pipeline-Sync.sh`. Los scripts individuales existen para emergencia — referenciarlos antes de proponer pasos manuales.



```

</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 9:15 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_list_tables`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:15 pm

---

## Agent Response

### Thinking

**Confirming Host A Capabilities**

I've confirmed `asistentes` exists in Host A, so Rule 03's text appears inaccurate or refers to another detail. I can now proceed with the consolidation directly on Host A. The next step involves modifying the `03_sync_host_a.sql` script to reflect the implementation.




### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.296413805s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:15 pm

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 56dc8f40-c378-4477-8cb6-fb1541288a38: Stabilizing Agua V2 Financial Engine
- Created: 2026-04-24T16:42:58Z
- Last modified: 2026-04-26T00:39:24Z

## Conversation 79a8e9a2-6401-44f1-a5db-8896eda906a6: Validating Pipeline Synchronization Logs
- Created: 2026-04-24T06:44:25Z
- Last modified: 2026-04-24T08:24:54Z

### USER Objective:
Stabilizing Financial Data Integrity

Objective: Finalize the stabilization and audit-readiness of the Agua V2 financial engine by enforcing strict data validation and architectural integrity.

Goals:
1. Implement Poka-Yoke sanitization protocols across core PHP modules (cargos, contratos) to prevent malicious or malformed data entry.
2. Enforce database-level uniqueness constraints (UNIQUE KEYs) in the schema to permanently eliminate operational data duplication.
3. Validate the hybrid surcharge logic and F05 compliance through the established automated SQL audit pipeline.
4. Prepare the system for final production deployment by securing input sanitation and validating historical data parity.

## Conversation 7b4df0fd-8f9f-4e1c-9691-7e0bbc280aa5: Validating Contract Exemption Logic
- Created: 2026-04-23T16:57:43Z
- Last modified: 2026-04-24T06:42:03Z

### USER Objective:
Stabilizing Agua V2 Surcharge Architecture

Main Objective: Finalize the stabilization of the Agua V2 financial engine by enforcing robust debt reconciliation and audit traceability.

Goals:
1. Reconcile historical surcharge logic by aligning the V2 parametric engine with the legacy data structure, abandoning hardcoded fallbacks.
2. Sanitize the `cargos` catalog to correctly flag historical surcharge eligibility without corrupting financial data.
3. Validate the `Contrato 500` UI-9 transition to confirm the system correctly triggers multi-year surcharge calculations.
4. Eliminate reliance on "soft" flags by utilizing the `es_recargo_moratorio` alias in views for financial auditing and reporting.
5. Execute a surgical data fix in the `cargos` catalog to ensure the surcharge motor remains "obedient" and accurate, guaranteeing audit-ready data integrity for 2024–2025.

## Conversation 6d27cf24-4496-444d-913c-de2298a07da5: UI Optimization for Suspended Contracts
- Created: 2026-04-23T03:17:22Z
- Last modified: 2026-04-23T05:53:51Z

### USER Objective:
Stabilizing Agua V2 State Transitions

Objective: Finalize the stabilization of Agua V2 state transition protocols by addressing financial data integrity and enhancing administrative diagnostics.

Goals:
1. Complete manual test case execution for state transitions (D → G) and resolve discrepancies in financial reporting.
2. Validate and patch root causes for incorrect charge generation during contract reactivations (e.g., Cto #1006).
3. Ensure financial consistency in reporting modules (contratoinfo2.php) and verify forensic reflection of contract states.
4. Finalize the integration of administrative reporting for "Suspensión Definitiva" contracts to ensure full audit readiness.

## Conversation 2c24dbf0-a237-4a36-8172-98282de6cf2d: Troubleshooting Amnistía UI Logic
- Created: 2026-04-22T21:09:14Z
- Last modified: 2026-04-23T02:52:01Z

### USER Objective:
Auditing Financial State Transitions

Objective: Finalize the implementation of a rigorous, self-auditing financial transaction layer across all Agua V2 modules.

Goals:
1. Standardize a universal "PRE/POST Financial Snapshot" pattern across all transaction functions (State Changes, Payments, Cancellations, Reassignments, and Manual Applications).
2. Automate the generation of audit logs in the `cambios` table to capture the precise impact on debt totals and adeudo counts per operation.
3. Enhance the `historial_mov_cto.php` report to visualize these financial snapshots with color-coded event classification.
4. Ensure full consistency in financial reporting, even for legacy charges and state-based recalibrations (paridad), to guarantee complete forensic traceability for every administrative action.

## Conversation 772b23ae-0897-4270-9446-4689fdf95548: Executing UI Test Suite
- Created: 2026-04-20T04:38:49Z
- Last modified: 2026-04-20T05:36:46Z

### USER Objective:
Stabilizing Agua UI Tests

USER Objective: Complete the validation of the Agua V2 testing suite (Section 1 / Group A) to ensure the system's operational readiness.
Goals:
1. Systematically execute UI test cases for contract management, state transitions, and infrastructure configuration based on the stabilized test plan.
2. Refine automation protocols by documenting specific UI interactions, such as using TAB for field auto-completion and handling browser confirmation dialogues.
3. Validate system behavior against business rules, specifically addressing contract creation constraints, parity synchronization, and administrative blocking mechanisms.
4. Update the formal test documentation to reflect empirical findings and UI-specific interaction patterns discovered during manual and automated execution.

## Conversation cbf979ab-fe6f-4218-97aa-78333e6a1a56: Audit Caja Reconciliation Discrepancies
- Created: 2026-04-20T01:04:06Z
- Last modified: 2026-04-20T04:13:17Z

### USER Objective:
Stabilizing Agua Reporting Modules

Objective: Resolve identified logic gaps and architectural inconsistencies in the Agua V2 reporting and receipt modules on Host C.

Goals:
1. Patch the date logic in `reciboegreso.php` to ensure correct temporal mapping of expenditures.
2. Address identified bugs and legacy function dependencies in `credencial.php` to improve module robustness.
3. Verify all code changes against the updated forensic audit documentation to maintain system-wide congruency.
4. Finalize and push all stabilization patches to the production repository to ensure full operational readiness.

## Conversation 70313f54-0ccd-4b31-b9dd-0a85cd24482b: Validating Host C PHP Errors
- Created: 2026-04-20T02:37:26Z
- Last modified: 2026-04-20T02:43:35Z

### USER Objective:
Validating Host C PHP Errors

Main Objective: Evaluate the current status of reported PHP notices from Host C logs without performing any code modifications.

Goals:
1. Confirm if the "Undefined index" notices in `contrasenas.php` (lines 71-116) and `carteravencida.php` (line 50) are still valid based on existing file content.
2. Verify the persistence of the "Undefined property" notice for `Conexion::$insert_id` in `usuarios.php` (line 296).
3. Provide a clear, non-corrective status report to the user regarding the state of these specific runtime errors.

## Conversation d93a3dd6-def6-407e-bf68-58e09c7b5178: Refactoring Agua Assembly Module
- Created: 2026-04-19T00:37:18Z
- Last modified: 2026-04-19T01:46:32Z

### USER Objective:
Refining Asamblea Administrative Interface

Main Objective: Finalize the stabilization and UI refactor of the Asamblea V2 administrative module on Host C.

Goals:
1. Complete the transition of the application entry point to the "Administración" view.
2. Implement dynamic, database-driven labels for the "Multa por Inasistencia" to replace hardcoded inputs.
3. Standardize and fix the administrative action table to ensure proper state-based control buttons (Start/Close/Download) appear for all assemblies.
4. Clean up the UI by removing redundant navigation elements like the "Pase de Lista" button.
5. Deploy changes manually to the production-ready Host C environment following established architectural constraints and legacy system protocols.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 25 Apr 2026, 9:15 pm

---

## Agent Response

### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:15 pm

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:15 pm

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:16 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `08-integridad-ground-truth.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 08: Integridad del Ground Truth (agua_chatledger)

Esta regla protege los assets de configuración compartidos entre Claude Code y Google Antigravity/Gemini.
**Leer antes de cualquier refactoring, cleanup o reorganización de archivos en agua_chatledger.**

---

## Mapa de assets — rol de cada archivo

| Archivo | Rol | Prohibido |
|---------|-----|-----------|
| `.mcp.json` | Config MCP activa — leída automáticamente por Claude y Gemini al iniciar | Vaciar, eliminar, cambiar `docker` por `npx` directo |
| `.agents/mcp_config.json` | Fuente de referencia — debe ser idéntico a `.mcp.json` | Usarlo como reemplazo de `.mcp.json` |
| `.clauderules` | Directiva de entrada para Claude — máx ~25 líneas | Agregar notas, JSON, claves, URLs |
| `CLAUDE.md` | Entry point Claude — índice hacia `.agents/` | Duplicar reglas aquí en lugar de en `.agents/` |
| `GEMINI.md` | Entry point Gemini — índice hacia `.agents/` | Duplicar reglas aquí en lugar de en `.agents/` |
| `.agents/rules/` | Verdades permanentes — se leen en cada sesión | Eliminar sin migrar el conocimiento |
| `docs-dev/ga-cl-ia/entrypoint-patch.sh` | Patch al contenedor Docker para soporte puerto ≠ 3306 | Eliminar — sin él `bdawahost-c` falla con ETIMEDOUT |
| `docs-dev/ga-cl-ia/docker-compose.yml` | Define contenedor `context7-mcp-mysql` con el patch | Eliminar o cambiar imagen sin validar |

---

## Arquitectura MCP — NO modificar sin entender

Los tres MCPs usan **un solo contenedor Docker** con patches aplicados al arrancar:

```
Claude/Gemini → .mcp.json → docker exec -i context7-mcp-mysql npx ... mysql://host:PORT/db
                                    ↓
                          entrypoint-patch.sh (aplicado al arrancar)
                          — permite puertos no estándar (Host C: 7002)
```

**Si se reemplaza `docker exec` por `npx` directo:** el patch no aplica → `bdawahost-c` falla con ETIMEDOUT.
**Si se vacía `.mcp.json`:** ambos agentes pierden todos los MCPs sin aviso de error claro.
**Si se elimina `bdawahost-c` de `.mcp.json`:** se pierde acceso a Host C (MariaDB 7002).

---

## Reglas de modificación

### `.mcp.json` y `mcp_config.json`
- Siempre deben ser **idénticos**
- Si se edita uno, actualizar el otro en el mismo commit
- Estructura obligatoria: `docker exec -i context7-mcp-mysql npx -y @f4ww4z/mcp-mysql-server mysql://...`
- Deben contener los 3 hosts: `bdawahost-a`, `bdawahost-b`, `bdawahost-c`

### Symlinks en repo `agua`
- Los 7 symlinks son gestionados por `chatledger_sync_ga_lnks.sh`
- No recrear manualmente sin usar el script
- No convertir symlinks en archivos reales (rompe la sincronización entre ramas)

### `.clauderules`
- Solo directivas de comportamiento para Claude (< 30 líneas)
- Notas, referencias, claves → `docs-dev/ga-cl-ia/claude-ga-leeme.txt`

### Antes de cualquier "cleanup" o refactoring
1. Ejecutar `bash docs-dev/ga-cl-ia/chatledger_validate.sh`
2. Si algo falla → corregir antes de continuar
3. Nunca eliminar un archivo por considerarlo "redundante" sin verificar su rol en esta regla

---

## Historial de incidentes

| Fecha | Incidente | Causa | Fix |
|-------|-----------|-------|-----|
| 2026-04-08 | `.mcp.json` vaciado — MCPs rotos en ambos agentes | GA eliminó contenido por considerarlo redundante con `mcp_config.json` | Restaurar contenido Docker + 3 hosts |
| 2026-04-09 | `settings.json` desincronizado — usaba `npx` directo sin Docker | Restauración incorrecta desde fuente equivocada | Sincronizar con `mcp_config.json` |

---

## Validación rápida (correr antes de commitear)

```bash
bash /opt/lampp/htdocs/agua/docs-dev/ga-cl-ia/chatledger_validate.sh
```

Si el script no existe o falla: **no commitear** hasta resolver.

```

</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

quiza sea despues o antes...lo de poner alguna restriccion para que esos catalogos no se vuelvan a ensuciar, q opinas ?

<details>
<summary>Context</summary>

**Active File:** `run_sync.sh`
**Language:** shellscript
</details>

---

## Agent Response

### Thinking

**Considering Catalog Hygiene**

I'm now focusing on implementing safeguards against data corruption in our catalogs. Specifically, in Host C (Production/V2), I'm evaluating how to prevent the `asamblea` catalog from future issues. The `cargos` catalog seems adequately protected, because it already uses `uk_nombre_anio`, but I'm planning to introduce a `UNIQUE KEY (fecha)` constraint to the `asamblea` catalog to avoid duplication on that field.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.951186910s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:18 pm

---

## Agent Response

### Thinking

**Addressing Data Integrity**

I'm focusing on data integrity, especially the risk of duplicate entries. The lack of unique keys, beyond the primary key, is a significant concern. A second assembly could be added for the same day, throwing the whole system into disarray. My plan is to add unique keys to the Host C schema and update migration scripts to maintain data integrity.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.776991108s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

noo., esos cambios deben ir en alguno de los scripts sql q corresponda. Y ademas añadir se pueda permitir hasta 3 asambleas el mismo dia, solo para ese catalogo

<details>
<summary>Context</summary>

**Active File:** `run_sync.sh`
**Language:** shellscript
</details>

---

## Agent Response

### Thinking

**Considering Implementation Details**

I've hit a snag. The user's request to allow "up to 3" assemblies on the same day within `asamblea` poses a problem with UNIQUE keys. It's technically impossible as stated. I need to consider either composite keys or a different structural approach to fulfill this.




### Actions

**Tool:** `list_dir`
**Path:** `/opt/lampp/htdocs/agua/docs-dev/migration-aguav2/host-c-setup`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.790660132s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `host-c-setup` (11 items)</summary>

**Path:** `opt/lampp/htdocs/agua/docs-dev/migration-aguav2/host-c-setup`

| Name | Type | Size |
|------|------|------|
| `02_schema_tablas_base.sql` | File | 21731 bytes |
| `03_config_datos_catalogo.sql` | File | 2022 bytes |
| `04_views.sql` | File | 4011 bytes |
| `05_stored_procedures.sql` | File | 13869 bytes |
| `06_split_ligacargos.sql` | File | 4845 bytes |
| `07_patch_categorias_v2.sql` | File | 4853 bytes |
| `08_saneamiento_catalogo.sql` | File | 984 bytes |
| `09_idx_covering_ligacargos.sql` | File | 1561 bytes |
| `09_qa_financial_congruence.sql` | File | 1259 bytes |
| `manual` | Directory | - |
| `run_setup.sh` | File | 3569 bytes |

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `08_saneamiento_catalogo.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 08_saneamiento_catalogo.sql — Estrategia de Corte 2026
-- =============================================================================
USE `awa`;

-- 1. Eliminar duplicados exactos (mismo nombre y año) dejando el ID más bajo
DELETE c1 FROM cargos c1
INNER JOIN cargos c2 
WHERE c1.numconsec > c2.numconsec 
  AND c1.nombre = c2.nombre 
  AND c1.anio = c2.anio;

-- 2. Resetear todos los flags moratorios a 0 (Corte Histórico / Estabilidad)
UPDATE cargos SET recargo = 0;

-- 3. Activar flags moratorios SOLO para 2026 (Agua y Drenaje / Rigor Futuro)
-- Esto habilita el motor V2 para cargos nuevos sin alterar el encuadre pasado.
UPDATE cargos 
SET recargo = 1 
WHERE anio = 2026 
  AND categoria IN (2, 3);

-- 4. Log de verificación
SELECT 'CATALOGO SANEADO' AS status, COUNT(*) AS duplicados_restantes 
FROM (SELECT nombre, anio FROM cargos GROUP BY nombre, anio HAVING COUNT(*) > 1) AS d;

```

</details>

---

## Agent Response

### Thinking

**Refining SQL Implementation**

Okay, so I've decided to incorporate the UNIQUE keys directly into `02_schema_tablas_base.sql`. Now, regarding the "up to 3 assemblies" rule, I'm leaning heavily towards implementing it using a TRIGGER within `05_stored_procedures.sql`. This approach would allow me to conduct the count check *before* the insertion occurs, which feels cleaner.




### Actions

**Tool:** `view_file`
**File:** `02_schema_tablas_base.sql`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.643850959s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 02_schema_tablas_base.sql — Esquema completo de tablas base de BD awa
-- Host C: MariaDB 10.4.27 / Windows 10 XAMPP 7.4.33 / 192.168.1.128
-- Fuente autoritativa: Host C real (auditado 2026-04-06)
--
-- CAMBIOS vs versión anterior (optimizaciones aplicadas por el equipo):
--   - float  → decimal(10,2/4) en cargos, asamblea, ligacargos, egresos
--   - ligacargos: PK cambiada a id AUTO_INCREMENT; idpago_vinc int; índices nuevos
--   - cambios:    PK cambiada a id AUTO_INCREMENT; timestamp automático; índices
--   - FKs nuevas: cargos→categorias, contrato_toma→contrato,
--                 ligacargos→categorias, egresos→categorias_egresos,
--                 notas→contrato (ON DELETE SET NULL)
--   - Índices de rendimiento en: contrato, cargos, usuario, notas, egresos,
--                                ligacargos (6), ligacargos_historico (5)
--
-- Ejecutar: mysql -u root -p awa < 02_schema_tablas_base.sql
-- =============================================================================

USE `awa`;

SET FOREIGN_KEY_CHECKS = 0;

-- -----------------------------------------------------------------------------
-- Tabla: usuario
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuario` (
  `noconsecutivo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre`        varchar(255)     DEFAULT NULL,
  `domicilio`     mediumtext       DEFAULT NULL,
  `masdatos`      mediumtext       DEFAULT NULL,
  `telefono`      varchar(30)      DEFAULT NULL,
  `email`         varchar(45)      DEFAULT NULL,
  `estado`        int(11)          DEFAULT 1,
  `no_localizado` tinyint(1)       NOT NULL DEFAULT 0,
  PRIMARY KEY (`noconsecutivo`),
  KEY `idx_usuario_nombre`  (`nombre`),
  KEY `idx_no_localizado`   (`no_localizado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: categorias (catálogo de categorías de cargos)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `categorias` (
  `id`          int(11)     NOT NULL AUTO_INCREMENT,
  `nombre`      varchar(30) NOT NULL,
  `nombrecorto` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: categorias_egresos
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `categorias_egresos` (
  `id`     int(11)     NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: contrato
-- CAMBIO: índice duplicado eliminado (KEY `numusuario` redundante con idx_contrato_usuario)
--         índice nuevo: idx_contrato_estado
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `contrato` (
  `numcontrato`                varchar(10)      NOT NULL,
  `numusuario`                 int(10) unsigned NOT NULL,
  `numtoma`                    int(10) unsigned DEFAULT NULL,
  `domicilio`                  mediumtext       NOT NULL,
  `masdatos`                   mediumtext       DEFAULT NULL,
  `tipo`                       int(10) unsigned NOT NULL,
  `agua`                       int(10) unsigned NOT NULL,
  `drenaje`                    int(10) unsigned NOT NULL,
  `observaciones`              mediumtext       NOT NULL,
  `estado`                     int(10) unsigned NOT NULL DEFAULT 1,
  `numcontratoresp`            varchar(10)      NOT NULL,
  `numcontratoletras`          varchar(10)      NOT NULL,
  `fecha`                      date             NOT NULL,
  `metros`                     int(10)          NOT NULL,
  `exento_recargo_primer_anio` int(11)          DEFAULT 0,
  PRIMARY KEY (`numcontrato`),
  KEY `idx_contrato_usuario` (`numusuario`),
  KEY `idx_contrato_estado`  (`estado`),
  CONSTRAINT `fk_contrato_usuario` FOREIGN KEY (`numusuario`)
    REFERENCES `usuario` (`noconsecutivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: contrato_toma (estructura de tomas — Migración v2 2026-03-13)
-- CAMBIO: idx_numcontrato eliminado (cubierto por uk_cto_toma)
--         FK nueva: fk_toma_contrato
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `contrato_toma` (
  `id`             int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numcontrato`    varchar(10)      NOT NULL,
  `num_toma`       tinyint(1)       NOT NULL DEFAULT 1,
  `tipo`           tinyint(1)       NOT NULL DEFAULT 0,
  `tiene_agua`     tinyint(1)       NOT NULL DEFAULT 0,
  `tiene_drenaje`  tinyint(1)       NOT NULL DEFAULT 0,
  `estado_agua`    tinyint(1)       NOT NULL DEFAULT 1,
  `estado_drenaje` tinyint(1)       NOT NULL DEFAULT 1,
  `fecha_alta`     date             NOT NULL,
  `observaciones`  varchar(255)     DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_cto_toma` (`numcontrato`, `num_toma`),
  CONSTRAINT `fk_toma_contrato` FOREIGN KEY (`numcontrato`)
    REFERENCES `contrato` (`numcontrato`)
    ON UPDATE CASCADE ON DELETE CASCADE
    -- CASCADE: si se elimina un contrato, sus tomas se eliminan en cascada
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: cargos (catálogo de cargos periódicos)
-- CAMBIO: monto/monto_comercial float → decimal(10,2)
--         FK nueva: fk_cargo_categoria → categorias.id
--         Índices nuevos: idx_cat_anio_estado, idx_nombre
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `cargos` (
  `numconsec`       int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre`          varchar(50)      NOT NULL,
  `monto`           decimal(10,2)    NOT NULL,
  `recargo`         int(10) unsigned NOT NULL,
  `observaciones`   mediumtext       DEFAULT NULL,
  `mensualidades`   int(10) unsigned NOT NULL,
  `categoria`       int(11)          NOT NULL,
  `estado`          int(11)          NOT NULL,
  `anio`            int(11)          NOT NULL,
  `repetir`         int(1)           NOT NULL,
  `metros`          int(1)           NOT NULL,
  `automatico`      int(11)          NOT NULL,
  `monto_comercial` decimal(10,2)    NOT NULL DEFAULT 0.00
    COMMENT 'Tarifa Comercial. 0=usa monto x2 como fallback',
  PRIMARY KEY (`numconsec`),
  UNIQUE KEY `uk_nombre_anio` (`nombre`, `anio`),
  KEY `idx_cat_anio_estado` (`categoria`, `anio`, `estado`),
  KEY `idx_nombre`          (`nombre`),
  CONSTRAINT `fk_cargo_categoria` FOREIGN KEY (`categoria`)
    REFERENCES `categorias` (`id`)
    -- RESTRICT (default): no borrar categoría si tiene cargos activos
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: ligacargos (cargos activos — anio >= 2026)
-- CAMBIO MAYOR:
--   - PK compuesta (numcontrato,leyenda,repetido) → PK id AUTO_INCREMENT
--   - monto: float → decimal(10,2) DEFAULT 0.00
--   - fcobro: datetime NOT NULL → date DEFAULT NULL
--   - fpago:  datetime → date
--   - recargo: int DEFAULT NULL → decimal(10,2) NOT NULL DEFAULT 0.00
--   - idpago_vinc: varchar(10) → int(11) DEFAULT NULL
--   - anio: NOT NULL → DEFAULT NULL
--   - numcontratoresp: NOT NULL → DEFAULT NULL
--   - repetido: int(10) NOT NULL → int(11) DEFAULT 0
--   - estado: DEFAULT añadido 0
--   - Índices: 6 especializados (fcobro/fpago se conservan en activa — útiles
--     para queries de caja diaria y reportes de período en tabla pequeña ~2K filas)
--   - FK fk_lc_contrato: ON DELETE CASCADE (si se borra contrato, se borran sus cargos)
--   - FK fk_lc_categoria: ON DELETE SET NULL (si se borra categoría, categoria queda NULL)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `ligacargos` (
  `id`              int(11)       NOT NULL AUTO_INCREMENT,
  `numcontrato`     varchar(10)   NOT NULL,
  `leyenda`         varchar(100)  NOT NULL,
  `monto`           decimal(10,2) NOT NULL DEFAULT 0.00,
  `fcobro`          date          DEFAULT NULL,
  `fpago`           date          DEFAULT NULL,
  `estado`          int(11)       NOT NULL DEFAULT 0,
  `recargo`         decimal(10,2) NOT NULL DEFAULT 0.00,
  `folio`           int(11)       DEFAULT NULL,
  `anio`            int(11)       DEFAULT NULL,
  `numcontratoresp` varchar(10)   DEFAULT NULL,
  `idpago_vinc`     int(11)       DEFAULT NULL,
  `categoria`       int(11)       DEFAULT NULL,
  `repetido`        int(11)       DEFAULT 0,
  `f_sinc_mlt_asam` datetime      DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lc_contrato_estado` (`numcontrato`, `estado`),
  KEY `idx_lc_anio`            (`anio`),
  KEY `idx_lc_folio`           (`folio`),
  KEY `idx_lc_fcobro`          (`fcobro`),
  KEY `idx_lc_fpago`           (`fpago`),
  KEY `fk_lc_categoria`        (`categoria`),
  CONSTRAINT `fk_lc_contrato`  FOREIGN KEY (`numcontrato`)
    REFERENCES `contrato` (`numcontrato`)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT `fk_lc_categoria` FOREIGN KEY (`categoria`)
    REFERENCES `categorias` (`id`)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: ligacargos_historico (cargos históricos — anio <= 2025)
-- Solo lectura — los SPs escriben en ella via sp_pagar_cargo/sp_cancelar_cargo.
-- ÍNDICES (3): solo los que cubren queries reales del código PHP vía vistas.
--   - idx_lch_contrato_estado: WHERE numcontrato=X AND estado=0 (vw_ligacargos_pendientes)
--   - idx_lch_anio:            WHERE anio=X (sincronizacion, reportes de año)
--   - idx_lch_folio:           WHERE folio=X (sp_sinc_asamblea_puntual busca pagos)
--   ELIMINADOS por no tener uso en queries reales (ratio índice/datos: 110%→49%):
--   - idx_lch_fcobro: fcobro no aparece en WHERE de ningún query sobre historico
--   - idx_lch_fpago:  fpago  no aparece en WHERE de ningún query sobre historico
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `ligacargos_historico` (
  `id`              int(11)       NOT NULL AUTO_INCREMENT,
  `numcontrato`     varchar(10)   NOT NULL,
  `leyenda`         varchar(100)  NOT NULL,
  `monto`           decimal(10,2) NOT NULL DEFAULT 0.00,
  `fcobro`          date          DEFAULT NULL,
  `fpago`           date          DEFAULT NULL,
  `estado`          int(11)       NOT NULL DEFAULT 0,
  `recargo`         decimal(10,2) NOT NULL DEFAULT 0.00,
  `folio`           int(11)       DEFAULT NULL,
  `anio`            int(11)       DEFAULT NULL,
  `numcontratoresp` varchar(10)   DEFAULT NULL,
  `idpago_vinc`     int(11)       DEFAULT NULL,
  `categoria`       int(11)       DEFAULT NULL,
  `repetido`        int(11)       DEFAULT 0,
  `f_sinc_mlt_asam` datetime      DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lch_contrato_estado` (`numcontrato`, `estado`),
  KEY `idx_lch_anio`            (`anio`),
  KEY `idx_lch_folio`           (`folio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: folios_recibo (secuencia atómica de folios — reemplaza MAX(folio)+1)
-- AUTO_INCREMENT inicial calculado dinámicamente en 06_split_ligacargos.sql
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `folios_recibo` (
  `id`    int(11)    NOT NULL AUTO_INCREMENT,
  `dummy` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: asamblea
-- CAMBIO: multa float → decimal(10,2)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `asamblea` (
  `id`     int(11)       NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100)  NOT NULL,
  `fecha`  date          NOT NULL,
  `multa`  decimal(10,2) NOT NULL,
  `notas`  mediumtext    NOT NULL,
  `inicio` datetime      NOT NULL,
  `final`  datetime      NOT NULL,
  `estado` int(11)       NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: asistentes (Registro de asistencia a asamblea — Migración v2)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistentes` (
  `id_asamblea` int(11)      NOT NULL,
  `id_contrato` varchar(20)  NOT NULL,
  `entrada`     datetime     NOT NULL,
  `salida`      datetime     NOT NULL,
  `nota`        text         NOT NULL,
  `estado`      int(11)      NOT NULL,
  PRIMARY KEY (`id_asamblea`, `id_contrato`),
  CONSTRAINT `fk_asistentes_asamblea` FOREIGN KEY (`id_asamblea`)
    REFERENCES `asamblea` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: egresos
-- CAMBIO: monto double → decimal(10,2)
--         id_categoria reubicado después de categoria (orden físico real)
--         FK nueva: fk_egreso_categoria → categorias_egresos.id (ON DELETE SET NULL)
--         Índices nuevos: idx_fecha, idx_id_categoria
-- NOTA: id_categoria=NULL para registros históricos sin clasificar (Host A no tiene esta col)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `egresos` (
  `id`           int(11)       NOT NULL AUTO_INCREMENT,
  `leyenda`      mediumtext    NOT NULL,
  `monto`        decimal(10,2) NOT NULL,
  `categoria`    varchar(60)   NOT NULL,
  `id_categoria` int(11)       DEFAULT NULL
    COMMENT 'FK a categorias_egresos.id — NULL para registros históricos sin clasificar',
  `fecha`        datetime      NOT NULL,
  `estado`       int(11)       NOT NULL,
  `motivoelimina` varchar(255) NOT NULL,
  `detalle`      mediumtext    NOT NULL,
  `recibe`       varchar(255)  NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fecha`        (`fecha`),
  KEY `idx_id_categoria` (`id_categoria`),
  CONSTRAINT `fk_egreso_categoria` FOREIGN KEY (`id_categoria`)
    REFERENCES `categorias_egresos` (`id`)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: notas
-- CAMBIO: FK nueva fk_nota_contrato → contrato.numcontrato ON DELETE SET NULL
--         contrato nullable (requerido para ON DELETE SET NULL)
--         Índices nuevos: idx_notas_contrato, idx_notas_estado
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `notas` (
  `id`              int(11)     NOT NULL AUTO_INCREMENT,
  `fecha`           datetime    NOT NULL,
  `contrato`        varchar(10) DEFAULT NULL,
  `texto`           mediumtext  NOT NULL,
  `estado`          int(11)     NOT NULL,
  `numcontratosin`  varchar(10) NOT NULL DEFAULT '',
  `numcontratoresp` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_notas_contrato` (`contrato`),
  KEY `idx_notas_estado`   (`estado`),
  CONSTRAINT `fk_nota_contrato` FOREIGN KEY (`contrato`)
    REFERENCES `contrato` (`numcontrato`)
    ON UPDATE CASCADE ON DELETE SET NULL
    -- SET NULL: si se elimina el contrato, la nota queda huérfana pero no se pierde
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: firmantes
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `firmantes` (
  `id`                    int(11)      NOT NULL AUTO_INCREMENT,
  `presidente`            varchar(100) NOT NULL,
  `vicepresidente`        varchar(100) NOT NULL,
  `secretario`            varchar(100) NOT NULL,
  `tesorero`              varchar(100) NOT NULL,
  `vocal1`                varchar(100) NOT NULL,
  `vocal2`                varchar(100) NOT NULL,
  `vocal3`                varchar(100) NOT NULL,
  `vocal4`                varchar(100) NOT NULL,
  `presidente_vigilancia` varchar(100) NOT NULL,
  `secretario_vigilancia` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: contrasenas
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `contrasenas` (
  `id`         int(11)      NOT NULL AUTO_INCREMENT,
  `rol`        varchar(30)  NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: users (usuarios del sistema web — contraseñas bcrypt)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `users` (
  `id`     int(11)      NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `clave`  varchar(255) NOT NULL COMMENT 'bcrypt — migrado de md5 al primer login',
  `rol`    int(1)       NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: cambios (auditoría de cambios)
-- CAMBIO MAYOR: PK cambiada de `fecha` → `id` AUTO_INCREMENT
--               fecha: DEFAULT current_timestamp() (automático)
--               Índices nuevos: idx_fecha, idx_numcontrato, idx_descripcion
-- Razón: la PK anterior (fecha) colisionaba cuando había múltiples cambios
--        en el mismo instante; el id secuencial elimina ese problema.
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `cambios` (
  `id`          int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha`       datetime         NOT NULL DEFAULT current_timestamp(),
  `descripcion` varchar(200)     NOT NULL,
  `antes`       mediumtext       NOT NULL,
  `despues`     mediumtext       NOT NULL,
  `numcontrato` varchar(255)     DEFAULT NULL,
  `batch_id`    int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fecha`       (`fecha`),
  KEY `idx_numcontrato` (`numcontrato`),
  KEY `idx_descripcion` (`descripcion`),
  KEY `idx_batch_id`    (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: config_sistema (parámetros configurables del negocio)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `config_sistema` (
  `clave`       varchar(60)  NOT NULL,
  `valor`       varchar(200) NOT NULL DEFAULT '',
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: fallback_log (bitácora de errores y fallbacks SQL — Host C estabilización)
-- Propósito: Monitorear queries que fallan silenciosamente o activan rutas de
--            fallback en PHPs. Conexion::q() escribe aquí automáticamente.
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `fallback_log` (
  `id`          int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha`       datetime         NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nivel`       enum('ERROR','FALLBACK','WARN') NOT NULL,
  `origen`      varchar(120)     NOT NULL COMMENT 'Archivo PHP (:linea si disponible)',
  `funcion`     varchar(80)      DEFAULT NULL COMMENT 'Función o método PHP que originó el query',
  `query_type`  enum('SELECT','INSERT','UPDATE','DELETE','CALL','OTHER') NOT NULL,
  `query_hash`  char(8)          NOT NULL COMMENT 'CRC32 hex del query para agrupar repeticiones',
  `query_text`  mediumtext       NOT NULL COMMENT 'Query completo sin truncar',
  `filas_afect` smallint(6)      DEFAULT NULL COMMENT 'affected_rows para INSERT/UPDATE/DELETE',
  `error_msg`   varchar(300)     DEFAULT NULL COMMENT 'mysqli_error() al momento del fallo',
  `usuario_ses` varchar(40)      DEFAULT NULL COMMENT 'Usuario de sesión PHP ($_SESSION[usuario])',
  `numcontrato` varchar(10)      DEFAULT NULL COMMENT 'Contrato activo en contexto si disponible',
  PRIMARY KEY (`id`),
  KEY `idx_fl_fecha`  (`fecha`),
  KEY `idx_fl_nivel`  (`nivel`),
  KEY `idx_fl_origen` (`origen`(40))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Bitácora de fallbacks y errores SQL — Host C estabilización';

SET FOREIGN_KEY_CHECKS = 1;

-- Verificar tablas creadas
SELECT TABLE_NAME, ENGINE, TABLE_COLLATION
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'awa'
  AND TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `05_stored_procedures.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 05_stored_procedures.sql — Stored Procedures para operaciones en split ligacargos
-- Depende de: 02_schema_tablas_base.sql (ligacargos, ligacargos_historico, contrato)
-- Ejecutar: mysql -u root -p awa < 05_stored_procedures.sql
-- NOTA: MCP no soporta DELIMITER. Ejecutar con cliente mysql directamente.
-- =============================================================================

USE `awa`;

-- Limpiar SPs previos si existen
DROP PROCEDURE IF EXISTS `sp_pagar_cargo`;
DROP PROCEDURE IF EXISTS `sp_cancelar_cargo`;
DROP PROCEDURE IF EXISTS `sp_sinc_asamblea_puntual`;
DROP PROCEDURE IF EXISTS `sp_sinc_asamblea_bulk`;
DROP PROCEDURE IF EXISTS `sp_revertir_sinc_asamblea`;

DELIMITER $$

-- -----------------------------------------------------------------------------
-- sp_pagar_cargo — Pagar un cargo buscando en activa primero, luego histórico
--
-- Parámetros:
--   p_id_cargo     INT           — ID físico del cargo (0 = usar tríada)
--   p_numcontrato  VARCHAR(10)   — contrato del cargo
--   p_leyenda      VARCHAR(100)  — leyenda del cargo
--   p_repetido     INT           — valor del campo repetido
--   p_folio        INT           — folio de pago (de folios_recibo.id)
--   p_idpago_vinc  VARCHAR(10)   — contrato que origina el pago (para sinc)
--   p_monto_final  DECIMAL(10,2) — monto final cobrado (puede diferir por descuento)
--   p_filas        INT OUT       — filas afectadas (0 = no encontrado)
-- -----------------------------------------------------------------------------
CREATE PROCEDURE `sp_pagar_cargo`(
  IN  p_id_cargo     INT,
  IN  p_numcontrato  VARCHAR(10),
  IN  p_leyenda      VARCHAR(100),
  IN  p_repetido     INT,
  IN  p_folio        INT,
  IN  p_idpago_vinc  VARCHAR(10),
  IN  p_monto_final  DECIMAL(10,2),
  OUT p_filas        INT
)
BEGIN
  UPDATE `ligacargos`
  SET fpago       = NOW(),
      estado      = 1,
      folio       = p_folio,
      idpago_vinc = p_idpago_vinc,
      monto       = p_monto_final
  WHERE (p_id_cargo > 0 AND id = p_id_cargo)
     OR (p_id_cargo = 0 AND numcontrato = p_numcontrato AND leyenda = p_leyenda AND repetido = p_repetido)
    AND estado = 0;

  IF ROW_COUNT() > 0 THEN
    SET p_filas = 1;
  ELSE
    UPDATE `ligacargos_historico`
    SET fpago       = NOW(),
        estado      = 1,
        folio       = p_folio,
        idpago_vinc = p_idpago_vinc,
        monto       = p_monto_final
    WHERE (p_id_cargo > 0 AND id = p_id_cargo)
       OR (p_id_cargo = 0 AND numcontrato = p_numcontrato AND leyenda = p_leyenda AND repetido = p_repetido)
      AND estado = 0;
    SET p_filas = ROW_COUNT();
  END IF;
END$$

-- -----------------------------------------------------------------------------
-- sp_cancelar_cargo — Cancelar un cargo (estado=-1) en activa o histórico
--
-- Parámetros:
--   p_id_cargo     INT           — ID físico del cargo (0 = usar tríada)
--   p_numcontrato  VARCHAR(10)
--   p_leyenda      VARCHAR(100)
--   p_repetido     INT
--   p_filas        INT OUT
-- -----------------------------------------------------------------------------
CREATE PROCEDURE `sp_cancelar_cargo`(
  IN  p_id_cargo     INT,
  IN  p_numcontrato  VARCHAR(10),
  IN  p_leyenda      VARCHAR(100),
  IN  p_repetido     INT,
  OUT p_filas        INT
)
BEGIN
  UPDATE `ligacargos`
  SET fpago  = NOW(),
      estado = -1
  WHERE (p_id_cargo > 0 AND id = p_id_cargo)
     OR (p_id_cargo = 0 AND numcontrato = p_numcontrato AND leyenda = p_leyenda AND repetido = p_repetido)
    AND estado = 0;

  IF ROW_COUNT() > 0 THEN
    SET p_filas = 1;
  ELSE
    UPDATE `ligacargos_historico`
    SET fpago  = NOW(),
        estado = -1
    WHERE (p_id_cargo > 0 AND id = p_id_cargo)
       OR (p_id_cargo = 0 AND numcontrato = p_numcontrato AND leyenda = p_leyenda AND repetido = p_repetido)
      AND estado = 0;
    SET p_filas = ROW_COUNT();
  END IF;
END$$

-- -----------------------------------------------------------------------------
-- sp_sinc_asamblea_puntual — Sincronizar cargo de asamblea de un usuario puntual
-- Si un usuario de la misma familia pagó, marca los pendientes del resto como
-- pagados (monto=0, vinculados al folio del que pagó).
--
-- Parámetros:
--   p_numusuario   INT           — ID del usuario a sincronizar
--   p_leyenda      VARCHAR(100)  — leyenda del cargo de asamblea
--   p_anio         INT           — año (0 = todos los años)
--   p_filas        INT OUT       — filas sincronizadas
-- -----------------------------------------------------------------------------
CREATE PROCEDURE `sp_sinc_asamblea_puntual`(
  IN  p_numusuario INT,
  IN  p_leyenda    VARCHAR(100),
  IN  p_anio       INT,
  OUT p_filas      INT
)
BEGIN
  DECLARE v_folio   INT          DEFAULT NULL;
  DECLARE v_fpago   DATETIME     DEFAULT NULL;
  DECLARE v_cto_pag VARCHAR(10)  DEFAULT NULL;
  DECLARE v_total   INT          DEFAULT 0;

  -- Buscar el pago en ligacargos activa
  SELECT l.folio, l.fpago, l.numcontrato
  INTO   v_folio, v_fpago, v_cto_pag
  FROM   `ligacargos` l
    JOIN `contrato` c ON l.numcontrato = c.numcontrato
  WHERE  c.numusuario = p_numusuario
    AND  l.leyenda    = p_leyenda
    AND  l.categoria  = 6
    AND  l.estado     = 1
    AND  l.monto      > 0
    AND  (p_anio = 0 OR l.anio = p_anio)
  LIMIT 1;

  -- Si no, buscar en histórico
  IF v_folio IS NULL THEN
    SELECT l.folio, l.fpago, l.numcontrato
    INTO   v_folio, v_fpago, v_cto_pag
    FROM   `ligacargos_historico` l
      JOIN `contrato` c ON l.numcontrato = c.numcontrato
    WHERE  c.numusuario = p_numusuario
      AND  l.leyenda    = p_leyenda
      AND  l.categoria  = 6
      AND  l.estado     = 1
      AND  l.monto      > 0
      AND  (p_anio = 0 OR l.anio = p_anio)
    LIMIT 1;
  END IF;

  IF v_folio IS NOT NULL THEN
    -- Sincronizar pendientes en ligacargos activa
    UPDATE `ligacargos` l
      JOIN `contrato` c ON l.numcontrato = c.numcontrato
    SET l.estado          = 1,
        l.monto           = 0,
        l.folio           = v_folio,
        l.fpago           = v_fpago,
        l.idpago_vinc     = v_cto_pag,
        l.f_sinc_mlt_asam = NOW()
    WHERE c.numusuario   = p_numusuario
      AND l.leyenda      = p_leyenda
      AND l.categoria    = 6
      AND l.estado       = 0
      AND l.numcontrato != v_cto_pag
      AND (p_anio = 0 OR l.anio = p_anio);
    SET v_total = v_total + ROW_COUNT();

    -- Sincronizar pendientes en histórico
    UPDATE `ligacargos_historico` l
      JOIN `contrato` c ON l.numcontrato = c.numcontrato
    SET l.estado          = 1,
        l.monto           = 0,
        l.folio           = v_folio,
        l.fpago           = v_fpago,
        l.idpago_vinc     = v_cto_pag,
        l.f_sinc_mlt_asam = NOW()
    WHERE c.numusuario   = p_numusuario
      AND l.leyenda      = p_leyenda
      AND l.categoria    = 6
      AND l.estado       = 0
      AND l.numcontrato != v_cto_pag
      AND (p_anio = 0 OR l.anio = p_anio);
    SET v_total = v_total + ROW_COUNT();
  END IF;

  SET p_filas = v_total;
END$$

-- -----------------------------------------------------------------------------
-- sp_sinc_asamblea_bulk — Sincronizar todos los cargos de asamblea de un año
-- Para todos los usuarios: si al menos un contrato del mismo usuario pagó,
-- marca los demás contratos del usuario como pagados (monto=0, vinculados).
--
-- Parámetros:
--   p_anio   INT      — año a procesar (0 = todos)
--   p_filas  INT OUT  — total de filas sincronizadas
-- -----------------------------------------------------------------------------
CREATE PROCEDURE `sp_sinc_asamblea_bulk`(
  IN  p_anio  INT,
  OUT p_filas INT
)
BEGIN
  DECLARE v_total INT DEFAULT 0;

  -- Sincronizar en ligacargos activa
  UPDATE `ligacargos` l_pend
    JOIN `contrato` c_pend  ON l_pend.numcontrato = c_pend.numcontrato
    JOIN `contrato` c_pag   ON c_pend.numusuario  = c_pag.numusuario
    JOIN `ligacargos` l_pag ON c_pag.numcontrato  = l_pag.numcontrato
  SET l_pend.estado          = 1,
      l_pend.monto           = 0,
      l_pend.folio           = l_pag.folio,
      l_pend.fpago           = l_pag.fpago,
      l_pend.idpago_vinc     = l_pag.numcontrato,
      l_pend.f_sinc_mlt_asam = NOW()
  WHERE l_pag.categoria  = 6
    AND l_pag.estado     = 1
    AND l_pag.monto      > 0
    AND l_pend.categoria = 6
    AND l_pend.estado    = 0
    AND l_pag.leyenda    = l_pend.leyenda
    AND l_pag.numcontrato != l_pend.numcontrato
    AND (p_anio = 0 OR (l_pend.anio = p_anio AND l_pag.anio = p_anio));
  SET v_total = v_total + ROW_COUNT();

  -- Sincronizar en histórico (pago encontrado en ligacargos activa)
  UPDATE `ligacargos_historico` l_pend
    JOIN `contrato` c_pend  ON l_pend.numcontrato = c_pend.numcontrato
    JOIN `contrato` c_pag   ON c_pend.numusuario  = c_pag.numusuario
    JOIN `ligacargos` l_pag ON c_pag.numcontrato  = l_pag.numcontrato
  SET l_pend.estado          = 1,
      l_pend.monto           = 0,
      l_pend.folio           = l_pag.folio,
      l_pend.fpago           = l_pag.fpago,
      l_pend.idpago_vinc     = l_pag.numcontrato,
      l_pend.f_sinc_mlt_asam = NOW()
  WHERE l_pag.categoria  = 6
    AND l_pag.estado     = 1
    AND l_pag.monto      > 0
    AND l_pend.categoria = 6
    AND l_pend.estado    = 0
    AND l_pag.leyenda    = l_pend.leyenda
    AND l_pag.numcontrato != l_pend.numcontrato
    AND (p_anio = 0 OR (l_pend.anio = p_anio AND l_pag.anio = p_anio));
  SET v_total = v_total + ROW_COUNT();

  -- Sincronizar en activo (pago encontrado en ligacargos_historico)
  -- Cubre el gap: pendientes 2026+ donde el pagador maestro está en histórico (<=2025).
  UPDATE `ligacargos` l_pend
    JOIN `contrato` c_pend            ON l_pend.numcontrato = c_pend.numcontrato
    JOIN `contrato` c_pag             ON c_pend.numusuario  = c_pag.numusuario
    JOIN `ligacargos_historico` l_pag ON c_pag.numcontrato  = l_pag.numcontrato
  SET l_pend.estado          = 1,
      l_pend.monto           = 0,
      l_pend.folio           = l_pag.folio,
      l_pend.fpago           = l_pag.fpago,
      l_pend.idpago_vinc     = l_pag.numcontrato,
      l_pend.f_sinc_mlt_asam = NOW()
  WHERE l_pag.categoria  = 6
    AND l_pag.estado     = 1
    AND l_pag.monto      > 0
    AND l_pend.categoria = 6
    AND l_pend.estado    = 0
    AND l_pag.leyenda    = l_pend.leyenda
    AND l_pag.numcontrato != l_pend.numcontrato
    AND (p_anio = 0 OR (l_pend.anio = p_anio AND l_pag.anio = p_anio));
  SET v_total = v_total + ROW_COUNT();

  -- Sincronizar en histórico (pago encontrado en ligacargos_historico)
  -- Cubre el gap: multas ≤2025 donde el pagador también está en histórico.
  UPDATE `ligacargos_historico` l_pend
    JOIN `contrato` c_pend       ON l_pend.numcontrato = c_pend.numcontrato
    JOIN `contrato` c_pag        ON c_pend.numusuario  = c_pag.numusuario
    JOIN `ligacargos_historico` l_pag ON c_pag.numcontrato = l_pag.numcontrato
  SET l_pend.estado          = 1,
      l_pend.monto           = 0,
      l_pend.folio           = l_pag.folio,
      l_pend.fpago           = l_pag.fpago,
      l_pend.idpago_vinc     = l_pag.numcontrato,
      l_pend.f_sinc_mlt_asam = NOW()
  WHERE l_pag.categoria  = 6
    AND l_pag.estado     = 1
    AND l_pag.monto      > 0
    AND l_pend.categoria = 6
    AND l_pend.estado    = 0
    AND l_pag.leyenda    = l_pend.leyenda
    AND l_pag.numcontrato != l_pend.numcontrato
    AND (p_anio = 0 OR (l_pend.anio = p_anio AND l_pag.anio = p_anio));
  SET v_total = v_total + ROW_COUNT();

  SET p_filas = v_total;
END$$

-- -----------------------------------------------------------------------------
-- sp_revertir_sinc_asamblea — Revertir sincronización de asamblea
-- Deshace el efecto de sp_sinc_asamblea_puntual / sp_sinc_asamblea_bulk:
-- restaura estado=0, monto original, limpia folio/fpago/idpago_vinc.
--
-- Parámetros:
--   p_numcontrato  VARCHAR(10)  — contrato específico (NULL = todos)
--   p_leyenda      VARCHAR(100) — leyenda específica (NULL = todas)
--   p_anio         INT          — año (0 = todos)
--   p_filas        INT OUT      — filas revertidas
-- -----------------------------------------------------------------------------
CREATE PROCEDURE `sp_revertir_sinc_asamblea`(
  IN  p_numcontrato VARCHAR(10),
  IN  p_leyenda     VARCHAR(100),
  IN  p_anio        INT,
  OUT p_filas       INT
)
BEGIN
  DECLARE v_total      INT           DEFAULT 0;
  DECLARE v_monto_orig DECIMAL(10,2) DEFAULT 150.00;

  IF p_leyenda IS NOT NULL THEN
    SELECT monto INTO v_monto_orig
    FROM `cargos`
    WHERE nombre = p_leyenda
    LIMIT 1;
  END IF;

  UPDATE `ligacargos`
  SET estado          = 0,
      monto           = v_monto_orig,
      folio           = 0,
      fpago           = NULL,
      idpago_vinc     = NULL,
      f_sinc_mlt_asam = NULL
  WHERE categoria   = 6
    AND idpago_vinc IS NOT NULL
    AND estado      = 1
    AND monto       = 0
    AND (p_numcontrato IS NULL OR numcontrato = p_numcontrato)
    AND (p_leyenda   IS NULL OR leyenda      = p_leyenda)
    AND (p_anio = 0 OR anio = p_anio);
  SET v_total = v_total + ROW_COUNT();

  UPDATE `ligacargos_historico`
  SET estado          = 0,
    monto           = v_monto_orig,
    folio           = 0,
    fpago           = NULL,
    idpago_vinc     = NULL,
    f_sinc_mlt_asam = NULL
  WHERE categoria   = 6
    AND idpago_vinc IS NOT NULL
    AND estado      = 1
    AND monto       = 0
    AND (p_numcontrato IS NULL OR numcontrato = p_numcontrato)
    AND (p_leyenda   IS NULL OR leyenda      = p_leyenda)
    AND (p_anio = 0 OR anio = p_anio);
  SET v_total = v_total + ROW_COUNT();

  SET p_filas = v_total;
END$$

DELIMITER ;

-- Verificar SPs creados
SELECT ROUTINE_NAME, ROUTINE_TYPE
FROM information_schema.ROUTINES
WHERE ROUTINE_SCHEMA = 'awa' AND ROUTINE_TYPE = 'PROCEDURE'
ORDER BY ROUTINE_NAME;

```

</details>

---

## Agent Response

### Thinking

**Adjusting Implementation Plan**

I'm making a slight change to the implementation plan. The trigger will now be added at the end of `05_stored_procedures.sql`. Also, I'll be updating `02_schema_tablas_base.sql` to account for the UNIQUE keys as well.




### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.066275406s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:26 pm

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:26 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

Analiza estos dos docs:  analisis_paridad_3hosts.md , transiciones_estado_contratos.md, y determina en cual se integra o complementa el nuevo saneamiento_estructural_catalogos.md, para evitar redundancia y solo queden dos md

<details>
<summary>Context</summary>

**Active File:** `run_sync.sh`
**Language:** shellscript
</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `analisis_paridad_3hosts.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
He profundizado en los scripts y en el Host B para ofrecerte la visión completa de los 3 niveles. Aquí está el análisis detallado de los saneamientos y la comparativa de paridad extendida.

---

### 📈 Certificación de Paridad Extendida (B → A → C) v1.0.0

El cotejo inicial reveló el impacto financiero real del saneamiento automatizado aplicado durante la primera transición.

| Métrica | Host B (Legado Raw) | Host A (Saneado V1+) | Host C (Target V2) | Estado / Impacto |
| :--- | :---: | :---: | :---: | :---: |
| **Contratos** | 1,406 | 1,406 | 1,406 | ✅ Match |
| **Cargos Totales** | 195,070 | 195,070 | 195,070 | ✅ Match |
| **Suma Pendiente** | **$3,254,369** | **$3,147,287** | **$3,147,287** | **-$107,082** (Depurado) |
| **Bitácora (Audit)** | 4,890 | 4,891 | 4,891 | +1 (Lote Maestro) |

> [!NOTE]
> **Análisis v1.0.0**: Los **$107,082.00** de diferencia entre el Host B y el Host A representan la "Deuda Fantasma" de contratos en Suspensión Definitiva (Estado 4) que fue depurada automáticamente para evitar saldos incobrables en el nuevo sistema.

---

### 📈 Certificación de Paridad Extendida (B → A → C) v1.0.1 (Post-Lógica Híbrida)

El recalculo actual demuestra el efecto continuo de la limpieza de datos, pruebas funcionales recientes y la aplicación rigurosa de la Lógica Híbrida en los tres entornos.

| Métrica | Host B (Legado Raw) | Host A (Saneado V1+) | Host C (Target V2) | Estado / Impacto |
| :--- | :---: | :---: | :---: | :---: |
| **Contratos** | 1,408 | 1,418 | 1,419 | Diferencia por pruebas |
| **Cargos Totales** | 198,047 | 198,059 | 197,974 | Depuración D4/D5 |
| **Suma Pendiente** | **$3,437,031** | **$3,331,900** | **$3,265,974** | **-$171,057** vs B |
| **Bitácora (Audit)** | 4,919 | 4,920 | 4,930 | Incremento Actividad |

> [!NOTE]
> **Análisis v1.0.1**: La mayor reducción de la deuda en Host C ($3.26M vs $3.43M) refleja la estabilización exitosa del Motor V2. La Lógica Híbrida ajustó las moras continuas, mientras que la estricta Regla C05 purga radicalmente cualquier deuda residual en suspensiones definitivas.

---

### 🛡️ Otros Saneamientos Realizados en los Scripts

Además de la depuración de contratos con Estado 4, los scripts ejecutan estas tareas críticas de integridad:

1.  **Amnistía de Bienvenida (D1)**: 
    -   Se detectan contratos creados en 2026 que el Host B no marcó correctamente. El script fuerza `exento_recargo_primer_anio = 1` para proteger a los nuevos usuarios de recargos punitivos inmediatos.
2.  **Ajuste de Tarifa Comercial (D2)**:
    -   Calcula automáticamente el `monto_comercial` (doble del doméstico) para cargos que en el Host B estaban planos, asegurando la equidad fiscal en tomas de negocios.
3.  **Saneamiento de Vinculación (`idpago_vinc`) (D3)**:
    -   Host B tiene inconsistencias (NULLs) en el campo que vincula las multas con sus pagos. El script de Host A lo unifica y el de Host C lo transforma a `int NULL` binario, evitando errores de coincidencia en consultas MariaDB.
4.  **Limpieza de Residuos de Desarrollo (D4/D5)**:
    -   Eliminación de cargos del año 2027 y registros con prefijos "test_" o "cbm_" que se usaron durante las pruebas de la migración y que no deben llegar al ambiente C.
5.  **Normalización de Infraestructura (Toms ON/OFF)**:
    -   Si el contrato es Estado 4, no solo se cancela su deuda; el script `04_recalc_contrato_toma.sql` fuerza a que todas sus tomas aparezcan en **OFF** (`estado_agua=0`). Esto previene que un usuario con contrato suspendido aparezca con servicios activos en la ficha técnica.
6.  **Unificación de Folios (D6)**:
    -   Corrige folios `NULL` convirtiéndolos en `0` para que el sistema de búsqueda sea consistente y no ignore registros históricos al emitir reportes de caja.

> [!TIP]
> **Nota de Arquitectura V2 (Lógica Híbrida)**: Para ver la documentación exhaustiva sobre la Barrera de No-Retroactividad, Motor de Mora Continuo, Neutralización de la Regla F05 y Amnistía C06, consulte el Ground Truth oficial: [transiciones_estado_contratos.md](transiciones_estado_contratos.md).

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `transiciones_estado_contratos.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Matriz de Transiciones y Protocolos Financieros de Contratos (Agua V2)

Este documento define las reglas de operación para la gestión de estados y el comportamiento de la deuda ante cambios administrativos en el sistema Agua V2 (Estabilización 2026).

---

## 1. Estados del Contrato
El sistema reconoce **4 estados** fundamentales. El estado del contrato rige la facturación automática y los permisos de edición.

1.  **Activo (1)**: Estado operativo normal. Genera anualidades y recargos.
2.  **Suspensión Temporal (2)**: Suspensión a solicitud del usuario. Congela la facturación de nuevas anualidades.
3.  **Suspensión Administrativa (3)**: Suspensión por sanción o adeudo. Mantiene la deuda íntegra y permite el crecimiento de recargos.
4.  **Suspensión Definitiva (4)**: Baja total e irreversible. Inmoviliza el registro y depura deudas pendientes (Regla C05).

---

## 2. Matriz de Transiciones Permitidas

| Origen ↓ \ Destino → | 1 (Activo) | 2 (S. Temporal) | 3 (S. Administrativa) | 4 (S. Definitiva) |
| :--- | :---: | :---: | :---: | :---: |
| **1 (Activo)** | — | ✅ *Sí* | ✅ *Sí* | ✅ *Sí* |
| **2 (S. Temporal)** | ✅ *Reactivación* | — | ❌ *Bloqueado* | ✅ *Sí* |
| **3 (S. Administrativa)** | ✅ *Reactivación* | ❌ *Bloqueado* | — | ✅ *Sí* |
| **4 (S. Definitiva)** | ❌ *Bloqueado* | ❌ *Bloqueado* | ❌ *Bloqueado* | — |

> **Nota**: No se permite el salto directo entre suspensiones (2 ↔ 3). El contrato debe reactivarse (pasar a 1) para cambiar el tipo de suspensión.

---

## 3. Lógica Híbrida y Reglas de Retroactividad Financiera

La Estabilización 2026 introduce la **Lógica Híbrida**, un diseño que protege el costo original de las deudas del pasado, pero actualiza dinámicamente la mora generada. Esta lógica se divide en dos comportamientos clave:

### 3.1. Escenario Base: Regla de No Retroactividad (Protección del Pasado)
Las modificaciones en la naturaleza administrativa o infraestructura del contrato **solo afectan la deuda base del ejercicio actual y de los ejercicios futuros** (`anio_cargo >= anio_actual`). 
La deuda base del pasado (ej. `anio_cargo <= 2025`) queda "congelada" en su valor original.

**Cambios que obedecen la No Retroactividad:**
*   **Cambio de Tipo de Toma (Normal ↔ Comercial)**: Si un usuario cambia hoy su toma a comercial, el costo incrementado (ej. el doble) solo aplicará al año actual en adelante. Sus deudas de años pasados seguirán costando la tarifa "normal" que debían en su momento.
*   **Modificación de Metros Lineales**: Solo afecta la facturación futura.
*   **Aumento en Catálogo de Tarifas**: Las deudas de años anteriores no sufren aumentos ni reducciones por fluctuaciones en el catálogo vigente.

### 3.2. Escenario Dinámico: Regla Retroactiva (Recargos Multi-año)
A diferencia de la deuda base, los recargos moratorios (Categorías 16 y 17) **sí son retroactivos**. El motor V2 evalúa continuamente *toda* la deuda viva del usuario.
*   **Motor de Mora Continuo**: Se eliminó la limitante legacy que frenaba la mora al terminar el año calendario. Un adeudo de 2024 acumulará recargos continuos por todos los meses transcurridos a través del 2025 y 2026.
*   **Mantenimiento Financiero**: Al cambiar una tarifa base (presente) o al cambiar de estado, el sistema reevalúa ("llena los huecos") la mora de todos los años pendientes. La base de 2024 se mantiene original, pero sus recargos se mantienen al día (Lógica Híbrida).

### 3.3. Regla de Suma de Unidades (Multi-Toma)
El sistema reemplazó el modelo de "Tarifa Mayor" por **Suma de Unidades**. 
*   El costo de Agua y Drenaje resulta de sumar individualmente la tarifa (Normal o Comercial) de cada toma física conectada al contrato.

---

## 4. Configuración del Motor V2 (Catálogo de Cargos)

### 4.1. Activación de Flags Moratorios (2026 en adelante)
Para que las anualidades generen mora (recargos) a través del Motor V2, el catálogo de `cargos` utiliza la columna `recargo` como un *Flag de Elegibilidad*.
*   **Deudas Base Nuevas (>= 2026)**: Tienen explícitamente `recargo = 1` en el catálogo. Esto le indica al motor que esta anualidad es elegible para acumular mora mes a mes.
*   **Recargos Físicos (Categorías 16 y 17)**: Tienen explícitamente `recargo = 0` en el catálogo (Regla F05) para evitar la paradoja de "recargos sobre recargos".
*   Las referencias tarifarias de UI consultan exclusivamente cargos base obviando este flag (`estado=1 AND categoria IN (2,3)`), adaptándose así a la estructura V2.

---

## 5. Excepciones Administrativas y Purgas

### 5.1. Amnistía de Recargos (Regla C06)
Aplicada exclusivamente en la **Reactivación de Susp. Temporal (2 → 1)**. 
*   El sistema cancela de forma retroactiva todos los recargos acumulados (categorías 16 y 17) de años pasados para facilitar el retorno del usuario al estado Activo. 
*   Esta amnistía ocurre *después* de que la Paridad Financiera estabiliza la deuda base.
*   **Excepción**: La reactivación desde *Suspensión Administrativa (3 → 1)* NO goza de amnistía. El usuario debe pagar su mora completa.

### 5.2. Purga por Baja (Estado 4 - SDF)
Al pasar a **Suspensión Definitiva**, el sistema activa una purga radical:
*   Depura (cambia a `estado = -1`) absolutamente toda la deuda pendiente (`estado = 0`) de ese contrato, tanto en la tabla activa (`ligacargos`) como en la partición histórica (`ligacargos_historico`).
*   Desconecta físicamente las tomas de la UI y bloquea cualquier cambio de propietario, anotación u otro estado.

---

## Apéndice: Clasificación de Cargos por Categoría

| Categoría | Concepto | Comportamiento | Lógica PHP/BD |
| :--- | :--- | :--- | :--- |
| **2, 3** | Agua / Drenaje | **No Retroactivo** | Sincronización de base limitada a `anio >= actual`. Requieren flag `recargo=1` en V2. |
| **7** | Metros Lineales | **No Retroactivo** | Multiplicador ligado a la infraestructura actual. |
| **16, 17** | Recargos Mora | **Retroactivo** | Se recalculan dinámicamente para toda la deuda viva (Híbrido/Multi-año). Flag `recargo=0` (Regla F05). |
| **6** | Falta Asamblea | **Estático** | Tarifa fija por evento. No cambia tras la emisión. |
| **14, 15** | Conexiones | **Puntual** | Cargos únicos generados por eventos de alta/reactivación. |
| **19, 21** | Trámites | **Puntual** | Cargos únicos generados por solicitud. |

---

## Apéndice B: Retrospectiva Arquitectónica y Deuda Técnica (V2)

Este ejercicio documenta las decisiones y hallazgos clave durante la estabilización del Motor V2 (Lógica Híbrida) y su contraste con el sistema Legacy.

### 1. La Ilusión en el Host B (El "Ciego" y el "Sordo")
*   **Problema (Legacy):** En el Host B, la base de datos tenía un bug en el catálogo donde el flag `recargo` de las anualidades estaba en `0` (Ciego). Sin embargo, la operación continuaba porque el código PHP ignoraba la BD y aplicaba un 10% quemado en duro (Sordo).
*   **Solución (V2):** El código PHP ahora es estricto y lee el catálogo. Para que las anualidades de 2026 generen mora, se inyectó explícitamente `UPDATE cargos SET recargo = 1` en el catálogo de Host C (`08_saneamiento_catalogo.sql`), despertando así el flag de elegibilidad.

### 2. Estabilidad Histórica vs. Rigor Futuro
*   **Problema (Legacy):** Cualquier alteración a la tarifa o infraestructura modificaba arbitrariamente la deuda del pasado.
*   **Solución (V2 - Lógica Híbrida):** Se aplicó la condición matemática `if ($anio_cargo >= $anio_actual)`. El pasado se estabiliza (montos base congelados), pero el rigor futuro asegura que cualquier toma nueva o cambio (ej. a Comercial) facture correctamente del 2026 en adelante, sin detener el cálculo continuo de mora en ningún año.

### 3. Neutralización en lugar de Exterminio
*   **Problema (Legacy):** Los recargos físicos (cat 16/17) en `ligacargos` tenían valores físicos en su columna `recargo`, provocando el bug de "recargo sobre recargo".
*   **Solución (V2):** Regla F05. Se "neutralizó" la columna física (`UPDATE ligacargos SET recargo = 0.00 WHERE categoria IN (16,17)`). Esto corrigió el bug de lógica sin eliminar la columna del esquema, garantizando compatibilidad con el pipeline de sincronización B→A→C.

### 4. Persistencia Total del Concepto
*   **Problema (Legacy):** Ausencia de tipificación clara para los recargos (nombres genéricos, no persistidos claramente).
*   **Solución (V2):** Cada recargo es una fila física (`ligacargos` o `_historico`) ligada estricta y únicamente a las categorías 16 y 17, con fechas de emisión forenses. El alias virtual `es_recargo_moratorio` permite consultar su estado instantáneamente en vistas.

### 5. ¿Eliminar el campo neutralizado? (Limitantes)
*   No es posible eliminar la columna `recargo` por dos razones:
    1. **Sobrecarga (Overloading)**: En el catálogo (`cargos`), el campo sí es vital (actúa como Flag Maestro de elegibilidad).
    2. **Paridad Estructural**: Eliminarlo de `ligacargos` rompería instantáneamente la sincronización de datos con el esquema de Host A/B.
*   *Mejora Futura (V3)*: Renombrar `cargos.recargo` a `genera_mora` y deprecar `ligacargos.recargo`.

```

</details>

---

## Agent Response

### Thinking

**Analyzing Parity Differences**

I'm currently focused on `analisis_paridad_3hosts.md`, specifically the parity metrics and the differences observed between hosts B, A, and C. The "Otros Saneamientos Realizados en los Scripts" section, detailing fixes D1-D6, is under scrutiny. My analysis centers around the table data and identifying discrepancies in the totals to pinpoint the underlying causes of the parity variations.


**Consolidating Data Perspectives**

I'm now integrating insights from `saneamiento_estructural_catalogos.md` into `analisis_paridad_3hosts.md`. This consolidation focuses on addressing unicity issues in `cargos`, `asamblea`, and the cleanup of `usuario`, alongside implementing UNIQUE KEYs and triggers (blindage). The goal is to provide a complete view of data transformation relevant to the parity analysis. I'm aiming for a streamlined narrative, as suggested.




### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.687417929s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:31 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 9:31 pm

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:31 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

este analisis_paridad_3hosts.md, ya contiene los demas saneamientos ?  y en cual esta lo de de logica hibrida ?

<details>
<summary>Context</summary>

**Active File:** `run_sync.sh`
**Language:** shellscript
</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

voy a ejecutar el .sh , y te digo para q valides cierto ?

<details>
<summary>Context</summary>

**Active File:** `run_sync.sh`
**Language:** shellscript
</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

termino, analiza todo logs, bd , informa

<details>
<summary>Context</summary>

**Active File:** `02_schema_tablas_base.sql`
**Language:** oracle-sql
</details>

---

<details>
<summary>File: `Unknown file` (L31-62)</summary>

**Path:** `Unknown file`

```
  `email`         varchar(45)      DEFAULT NULL,
  `estado`        int(11)          DEFAULT 1,
  `no_localizado` tinyint(1)       NOT NULL DEFAULT 0,
  PRIMARY KEY (`noconsecutivo`),
  KEY `idx_usuario_nombre`  (`nombre`),
  KEY `idx_no_localizado`   (`no_localizado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: categorias (catálogo de categorías de cargos)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `categorias` (
  `id`          int(11)     NOT NULL AUTO_INCREMENT,
  `nombre`      varchar(30) NOT NULL,
  `nombrecorto` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: categorias_egresos
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `categorias_egresos` (
  `id`     int(11)     NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: contrato
-- CAMBIO: índice duplicado eliminado (KEY `numusuario` redundante con idx_contrato_usuario)
```

</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 9:46 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 9:46 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `sync_20260425_213830.log`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
[21:38:30] === INICIO SYNC AWA: Host B → Host A ===
[21:38:30] Modo: completo
[21:38:30] Timestamp: 20260425_213830
[21:38:30] Log: /opt/lampp/htdocs/agua/docs-dev/migration-aguav2/syncawa_hostb_to_hosta/logs/sync_20260425_213830.log
[21:38:30] Config: /opt/lampp/htdocs/agua/docs-dev/migration-aguav2/syncawa_hostb_to_hosta/sync_config.sh

════════════════════════════════════════
  PASO 1: VERIFICAR CONECTIVIDAD
════════════════════════════════════════
[21:38:30] Verificando Host A (127.0.0.1:3306)...
Warning: Using a password on the command line interface can be insecure.
status	version
Host A OK	5.6.20-log
[  OK  ] Host A: conectado
[21:38:30] Verificando Host B (192.168.0.112:3306)...
Warning: Using a password on the command line interface can be insecure.
status	version
Host B OK	5.1.41
[  OK  ] Host B: conectado

════════════════════════════════════════
  PASO 2: BACKUP HOST A
════════════════════════════════════════
[21:38:31] Realizando backup de seguridad de Host A...
[21:38:31] === BACKUP HOST A ===
[21:38:31] Base de datos: awa @ 127.0.0.1:3306
[21:38:31] Destino: /opt/lampp/htdocs/agua/bd-schema/sync/backups/backup_host_a_20260425_213831.sql.gz
[21:38:31] Conectividad Host A: OK
Warning: Using a password on the command line interface can be insecure.
[21:38:32] Backup completado. Tamaño: 2.7M
[21:38:32] Archivo: /opt/lampp/htdocs/agua/bd-schema/sync/backups/backup_host_a_20260425_213831.sql.gz
[21:38:32] Limpiando backups antiguos (conservando últimos 2)...
[21:38:32] === BACKUP COMPLETADO ===
/opt/lampp/htdocs/agua/bd-schema/sync/backups/backup_host_a_20260425_213831.sql.gz
[  OK  ] Backup completado: /opt/lampp/htdocs/agua/bd-schema/sync/backups/backup_host_a_20260425_213831.sql.gz

════════════════════════════════════════
  PASO 3: DUMP DESDE HOST B
════════════════════════════════════════
[21:38:32]   Extrayendo catálogo categorias desde Host B...
[  OK  ]   categorias: 1 (bulk) sentencias INSERT
[21:38:32]   Extrayendo catálogo categorias_egresos desde Host B...
[  OK  ]   categorias_egresos: 1 (bulk) sentencias INSERT
[21:38:32]   Extrayendo catálogo contrasenas desde Host B...
[  OK  ]   contrasenas: 1 (bulk) sentencias INSERT
[21:38:32]   Extrayendo catálogo firmantes desde Host B...
[  OK  ]   firmantes: 1 (bulk) sentencias INSERT
[21:38:32]   Extrayendo catálogo users desde Host B...
[  OK  ]   users: 1 (bulk) sentencias INSERT
[21:38:32]   Extrayendo usuario desde Host B...
[  OK  ]   usuario: 1 sentencias INSERT
[21:38:32]   Extrayendo contrato desde Host B...
[  OK  ]   contrato: 1 sentencias INSERT
[21:38:32]   Extrayendo ligacargos desde Host B...
[  OK  ]   ligacargos: 22 sentencias INSERT
[21:38:35]   Extrayendo notas desde Host B...
[  OK  ]   notas: 1 sentencias INSERT
[21:38:35]   Extrayendo cambios desde Host B...
[  OK  ]   cambios: 2 sentencias INSERT
[21:38:35]   Extrayendo egresos desde Host B...
[  OK  ]   egresos: 1 sentencias INSERT
[21:38:35]   Extrayendo asamblea desde Host B...
[  OK  ]   asamblea: 1 sentencias INSERT
[21:38:35]   Extrayendo asistentes desde Host B...
[  OK  ]   asistentes: 2 sentencias INSERT
[21:38:35]   Extrayendo cargos desde Host B...
[  OK  ]   cargos: 1 sentencias INSERT
[21:38:35]   Validación dump: tablas críticas con datos OK
[21:38:35] Guardando conteos de referencia de Host B...
Warning: Using a password on the command line interface can be insecure.
tabla	cnt
usuario	1491
contrato	1408
ligacargos	198033
notas	3719
cambios	4919
egresos	473
asamblea	61
asistentes	23018
cargos	585

════════════════════════════════════════
  PASO 4: SINCRONIZAR HOST A - VACIAR TABLAS
════════════════════════════════════════
[21:38:36] Ejecutando limpieza y vaciado de tablas en Host A...
Warning: Using a password on the command line interface can be insecure.
step
categorias_egresos vaciada: 9 filas
step
categorias vaciada: 18 filas
step
contrasenas vaciada: 2 filas
step
firmantes vaciada: 1 filas
step
users vaciada: 2 filas
step
ligacargos vaciada: 198033 filas
step
notas vaciada: 3719 filas
step
cambios vaciada: 4920 filas
step
contrato_toma vaciada: 1430 filas
step
contrato vaciada: 1408 filas
step
usuario vaciada: 1491 filas
step
egresos vaciada: 473 filas
step
asamblea vaciada: 61 filas
step
asistentes vaciada: 23018 filas
step
cargos vaciada: 585 filas
[  OK  ] Tablas vaciadas correctamente

════════════════════════════════════════
  PASO 5: IMPORTAR DATOS EN HOST A
════════════════════════════════════════
[21:38:41]   Importando catálogo categorias...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   categorias: 18 registros importados
[21:38:41]   Importando catálogo categorias_egresos...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   categorias_egresos: 9 registros importados
[21:38:41]   Importando catálogo contrasenas...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   contrasenas: 2 registros importados
[21:38:41]   Importando catálogo firmantes...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   firmantes: 1 registros importados
[21:38:41]   Importando catálogo users...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   users: 2 registros importados
[21:38:41]   Importando usuario...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   usuario: 1491 registros importados
[21:38:41]   Importando contrato...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   contrato: 1408 registros importados
[21:38:41]   Importando cargos...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   cargos: 585 registros importados
[21:38:41]   Importando asamblea...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   asamblea: 61 registros importados
[21:38:41]   Importando asistentes...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   asistentes: 23018 registros importados
[21:38:41]   Importando ligacargos...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   ligacargos: 198033 registros importados
[21:38:53]   Importando notas...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   notas: 3719 registros importados
[21:38:54]   Importando cambios...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   cambios: 4919 registros importados
[21:38:54]   Importando egresos...
Warning: Using a password on the command line interface can be insecure.
[  OK  ]   egresos: 473 registros importados

════════════════════════════════════════
  PASO 6: POST-PROCESAMIENTO CAMPOS NUEVOS HOST A
════════════════════════════════════════
[21:38:54] Ejecutando script de unificación y saneamiento en Host A...

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `sync_20260425_213830.log`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L168-168)</summary>

**Path:** `Unknown file`


</details>

---

## Agent Response

### Thinking

**Analyzing the Error Log**

I've pinpointed a discrepancy - a line count mismatch! I was expecting line 170, but the file only goes up to line 169. This strongly suggests the log stopped prematurely, which is confirmed by the file size. The execution command helps clarify that a unification and sanitation script was the last action performed before the issue arose.




### Actions

**Tool:** `view_file`
**File:** `pipeline_20260425_213830.log`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.718149268s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
[21:38:30] === FULL-PIPELINE-SYNC INICIADO ===
[21:38:30] Modo: producción
[21:38:30] Log maestro: /opt/lampp/htdocs/agua/docs-dev/migration-aguav2/sync_hosta_to_hostc/logs/pipeline_20260425_213830.log
[21:38:30] PASO 1: Iniciando sincronización Host B → Host A...

```

</details>

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:46 pm

---

## Agent Response

### Thinking

**Troubleshooting Persistent Duplicates**

I'm frustrated; the duplicates persist on Host A. It seems `03_sync_host_a.sql` didn't execute fully, likely failing before my Section D addition. The log's abrupt end at line 169 is suspicious, I need to understand that.


**Analyzing Potential Host A Issues**

I'm now zeroing in on a possible syntax problem in `03_sync_host_a.sql`, specifically Section D, which seems to have triggered the abrupt log termination. I'm focusing on the temporary table creation and subsequent use within the same query, because that sometimes breaks in older MySQL versions. I must review the MySQL 5.6 compatibility.




### Actions

**Tool:** `view_file`
**File:** `run_sync.sh`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.538924204s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# =============================================================================
# run_sync.sh — Orquestador principal de sincronización BD
# Ejecuta: pre-flight → backup → dump → sync → validate
#
# USO:
#   ./run_sync.sh                  # Sincronización completa
#   ./run_sync.sh --pre-flight     # Solo compara schemas A vs B (sin modificar)
#   ./run_sync.sh --solo-validar   # Solo ejecuta validaciones en A (sin modificar)
#   ./run_sync.sh --solo-backup    # Solo hace backup de A
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# ── Cargar configuración central ──────────────────────────────────────────────
# shellcheck source=sync_config.sh
source "${SCRIPT_DIR}/sync_config.sh"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
mkdir -p "$WORK_DIR" "$LOG_DIR"

# Rotación de logs: conservar últimos 2
ls -t "${LOG_DIR}"/sync_*.log 2>/dev/null | tail -n +3 | xargs rm -f 2>/dev/null || true

# ── Funciones ─────────────────────────────────────────────────────────────────
log()     { echo "[$(date '+%H:%M:%S')] $*" | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"; }
err()     { echo "[ERROR] $*" | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log" >&2; exit 1; }
ok()      { echo "[  OK  ] $*" | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"; }
section() { echo "" | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"
            echo "════════════════════════════════════════" | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"
            echo "  $*" | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"
            echo "════════════════════════════════════════" | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"; }

mysql_a() { $MYSQL_BIN -h "$MYSQL_HOST_A" -P "$MYSQL_PORT_A" -u "$MYSQL_USER_A" -p"$MYSQL_PASS_A" --default-character-set=utf8mb4 "$MYSQL_DB_A" "$@"; }
mysql_b() { $MYSQL_BIN -h "$MYSQL_HOST_B" -P "$MYSQL_PORT_B" -u "$MYSQL_USER_B" -p"$MYSQL_PASS_B" --default-character-set=utf8 "$MYSQL_DB_B" "$@"; }

mysqldump_b() {
    $MYSQLDUMP_BIN \
        -h "$MYSQL_HOST_B" \
        -P "$MYSQL_PORT_B" \
        -u "$MYSQL_USER_B" \
        -p"$MYSQL_PASS_B" \
        --no-create-info \
        --skip-triggers \
        --replace \
        --complete-insert \
        --default-character-set=utf8 \
        --set-charset \
        --lock-tables \
        "$MYSQL_DB_B" "$@"
}

# ── Modo de ejecución ─────────────────────────────────────────────────────────
MODO="${1:-completo}"

log "=== INICIO SYNC AWA: Host B → Host A ==="
log "Modo: ${MODO}"
log "Timestamp: ${TIMESTAMP}"
log "Log: ${LOG_DIR}/sync_${TIMESTAMP}.log"
log "Config: ${SCRIPT_DIR}/sync_config.sh"

# ── Manejo de argumentos ──────────────────────────────────────────────────────
if [ "$MODO" = "--pre-flight" ]; then
    section "PRE-FLIGHT CHECK"
    bash "${SCRIPT_DIR}/00_pre_flight.sh"
    exit 0
fi

if [ "$MODO" = "--solo-validar" ]; then
    section "SOLO VALIDACIONES"
    log "Ejecutando validaciones en Host A..."
    mysql_a < "${SCRIPT_DIR}/05_validate.sql"
    log "=== VALIDACIONES COMPLETADAS ==="
    exit 0
fi

if [ "$MODO" = "--solo-backup" ]; then
    section "SOLO BACKUP"
    bash "${SCRIPT_DIR}/01_backup_host_a.sh"
    log "=== BACKUP COMPLETADO ==="
    exit 0
fi

# =============================================================================
# PASO 1: VERIFICAR CONECTIVIDAD
# =============================================================================
section "PASO 1: VERIFICAR CONECTIVIDAD"

log "Verificando Host A (${MYSQL_HOST_A}:${MYSQL_PORT_A})..."
mysql_a -e "SELECT 'Host A OK' AS status, VERSION() AS version;" 2>&1 | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log" \
    || err "No se puede conectar a Host A"
ok "Host A: conectado"

log "Verificando Host B (${MYSQL_HOST_B}:${MYSQL_PORT_B})..."
mysql_b -e "SELECT 'Host B OK' AS status, VERSION() AS version;" 2>&1 | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log" \
    || err "No se puede conectar a Host B. Verificar red (ping 192.168.1.120) y firewall."
ok "Host B: conectado"

# =============================================================================
# PASO 2: BACKUP DE HOST A
# =============================================================================
section "PASO 2: BACKUP HOST A"
log "Realizando backup de seguridad de Host A..."
bash "${SCRIPT_DIR}/01_backup_host_a.sh" 2>&1 | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"
BACKUP_FILE=$(ls -t /opt/lampp/htdocs/agua/bd-schema/sync/backups/backup_host_a_*.sql.gz 2>/dev/null | head -1 || echo "(no encontrado)")
ok "Backup completado: ${BACKUP_FILE}"

# =============================================================================
# PASO 3: DUMP DESDE HOST B
# =============================================================================
section "PASO 3: DUMP DESDE HOST B"

TABLES_CATALOGOS=(
    "categorias"
    "categorias_egresos"
    "contrasenas"
    "firmantes"
    "users"
)

TABLES_BUSINESS=(
    "usuario"
    "contrato"
    "ligacargos"
    "notas"
    "cambios"
    "egresos"
    "asamblea"
    "asistentes"
    "cargos"
)

for tbl in "${TABLES_CATALOGOS[@]}"; do
    log "  Extrayendo catálogo ${tbl} desde Host B..."
    mysqldump_b "$tbl" > "${WORK_DIR}/${tbl}.sql"
    CNT=$(grep -c "^REPLACE INTO" "${WORK_DIR}/${tbl}.sql" 2>/dev/null || echo "0")
    ok "  ${tbl}: ${CNT} (bulk) sentencias INSERT"
done

for tbl in "${TABLES_BUSINESS[@]}"; do
    log "  Extrayendo ${tbl} desde Host B..."
    mysqldump_b "$tbl" > "${WORK_DIR}/${tbl}.sql"
    CNT=$(grep -c "^REPLACE INTO" "${WORK_DIR}/${tbl}.sql" 2>/dev/null || echo "0")
    ok "  ${tbl}: ${CNT} sentencias INSERT"
done

# Validar que las tablas críticas no vinieron vacías desde B
# Si mysqldump extrajo 0 filas, abortar para no trabajar con datos del WORK_DIR anterior
for tbl in "usuario" "contrato" "ligacargos"; do
    if ! grep -q "^REPLACE INTO" "${WORK_DIR}/${tbl}.sql" 2>/dev/null; then
        err "DUMP VACÍO en tabla crítica '${tbl}' desde Host B — sync abortado. Verificar permisos (LOCK TABLES, SELECT) y engine de tablas en Host B."
    fi
done
log "  Validación dump: tablas críticas con datos OK"

# Guardar conteos de referencia
log "Guardando conteos de referencia de Host B..."
mysql_b -e "
SELECT 'usuario' AS tabla, COUNT(*) AS cnt FROM usuario
UNION ALL SELECT 'contrato', COUNT(*) FROM contrato
UNION ALL SELECT 'ligacargos', COUNT(*) FROM ligacargos
UNION ALL SELECT 'notas', COUNT(*) FROM notas
UNION ALL SELECT 'cambios', COUNT(*) FROM cambios
UNION ALL SELECT 'egresos', COUNT(*) FROM egresos
UNION ALL SELECT 'asamblea', COUNT(*) FROM asamblea
UNION ALL SELECT 'asistentes', COUNT(*) FROM asistentes
UNION ALL SELECT 'cargos', COUNT(*) FROM cargos;
" > "${WORK_DIR}/conteos_b_${TIMESTAMP}.txt" 2>&1
cat "${WORK_DIR}/conteos_b_${TIMESTAMP}.txt" | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"

# =============================================================================
# PASO 4: SINCRONIZAR HOST A (Sección B+C del script SQL)
# =============================================================================
section "PASO 4: SINCRONIZAR HOST A - VACIAR TABLAS"

log "Ejecutando limpieza y vaciado de tablas en Host A..."
mysql_a 2>&1 <<'EOSQL' | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"
SET foreign_key_checks = 0;
SET sql_mode = '';

-- Vaciar catálogos (vienen frescos de Host B)
DELETE FROM categorias_egresos;
SELECT CONCAT('categorias_egresos vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM categorias;
SELECT CONCAT('categorias vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM contrasenas;
SELECT CONCAT('contrasenas vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM firmantes;
SELECT CONCAT('firmantes vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM users;
SELECT CONCAT('users vaciada: ', ROW_COUNT(), ' filas') AS step;

-- Vaciar tablas de negocio (orden FK-safe)
DELETE FROM ligacargos;
SELECT CONCAT('ligacargos vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM notas;
SELECT CONCAT('notas vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM cambios;
SELECT CONCAT('cambios vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM contrato_toma;
SELECT CONCAT('contrato_toma vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM contrato;
SELECT CONCAT('contrato vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM usuario;
SELECT CONCAT('usuario vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM egresos;
SELECT CONCAT('egresos vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM asamblea;
SELECT CONCAT('asamblea vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM asistentes;
SELECT CONCAT('asistentes vaciada: ', ROW_COUNT(), ' filas') AS step;
DELETE FROM cargos;
SELECT CONCAT('cargos vaciada: ', ROW_COUNT(), ' filas') AS step;

SET foreign_key_checks = 1;
EOSQL

ok "Tablas vaciadas correctamente"

# =============================================================================
# PASO 5: IMPORTAR DATOS DESDE HOST B
# =============================================================================
section "PASO 5: IMPORTAR DATOS EN HOST A"

# Catálogos primero (sin dependencias FK de negocio)
for tbl in "${TABLES_CATALOGOS[@]}"; do
    log "  Importando catálogo ${tbl}..."
    mysql_a --default-character-set=utf8mb4 < "${WORK_DIR}/${tbl}.sql" 2>&1 | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"
    CNT=$(mysql_a -se "SELECT COUNT(*) FROM ${tbl};" 2>/dev/null)
    ok "  ${tbl}: ${CNT} registros importados"
done

# Tablas de negocio (FK-safe: primero los padres)
IMPORT_ORDER=("usuario" "contrato" "cargos" "asamblea" "asistentes" "ligacargos" "notas" "cambios" "egresos")

for tbl in "${IMPORT_ORDER[@]}"; do
    log "  Importando ${tbl}..."
    mysql_a --default-character-set=utf8mb4 < "${WORK_DIR}/${tbl}.sql" 2>&1 | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"
    CNT=$(mysql_a -se "SELECT COUNT(*) FROM ${tbl};" 2>/dev/null)
    ok "  ${tbl}: ${CNT} registros importados"
done

# =============================================================================
# PASO 6: POST-PROCESAMIENTO (campos nuevos de Host A)
# =============================================================================
section "PASO 6: POST-PROCESAMIENTO CAMPOS NUEVOS HOST A"

log "Ejecutando script de unificación y saneamiento en Host A..."
POST_OUTPUT=$(mysql_a < "${SCRIPT_DIR}/03_sync_host_a.sql" 2>&1)
echo "$POST_OUTPUT" | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"

# Capturar métricas de saneamiento para el tablero resumen
SAN_D1=$(echo "$POST_OUTPUT" | grep "D1:" | grep -oP '\d+$' || echo "0")
SAN_D2=$(echo "$POST_OUTPUT" | grep "D2:" | grep -oP '\d+$' || echo "0")
SAN_D4=$(echo "$POST_OUTPUT" | grep "D4:" | grep -oP '\d+$' || echo "0")
SAN_D5=$(echo "$POST_OUTPUT" | grep "D5:" | grep -oP '\d+$' || echo "0")
SAN_D6=$(echo "$POST_OUTPUT" | grep "D6:" | grep -oP '\d+$' || echo "0")
SAN_D7=$(echo "$POST_OUTPUT" | grep "D7:" | grep -oP '\d+$' || echo "0")

ok "Post-procesamiento completado"

# =============================================================================
# PASO 7: RECALCULAR contrato_toma
# =============================================================================
section "PASO 7: RECALCULAR contrato_toma"

log "Ejecutando recálculo de contrato_toma..."
mysql_a < "${SCRIPT_DIR}/04_recalc_contrato_toma.sql" 2>&1 | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"
CNT=$(mysql_a -se "SELECT COUNT(*) FROM contrato_toma;" 2>/dev/null)
ok "contrato_toma recalculada: ${CNT} registros"

# =============================================================================
# PASO 8: VALIDACIONES FINALES
# =============================================================================
section "PASO 8: VALIDACIONES FINALES"

log "Ejecutando validaciones de consistencia..."
mysql_a < "${SCRIPT_DIR}/05_validate.sql" 2>&1 | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"

# =============================================================================
# RESUMEN
# =============================================================================
section "SYNC COMPLETADO"

# Conteos finales en Host A
CNT_USR_A=$(mysql_a   -se "SELECT COUNT(*) FROM usuario;"    2>/dev/null || echo "?")
CNT_CTR_A=$(mysql_a   -se "SELECT COUNT(*) FROM contrato;"   2>/dev/null || echo "?")
CNT_LC_A=$(mysql_a    -se "SELECT COUNT(*) FROM ligacargos;" 2>/dev/null || echo "?")
CNT_SDF_A=$(mysql_a   -se "SELECT COUNT(*) FROM contrato WHERE estado=4;" 2>/dev/null || echo "?")

DURATION=$SECONDS

log "════════════════════════════════════════════════════════"
log "  TABLERO RESUMEN EJECUTIVO — SYNC B → A               "
log "════════════════════════════════════════════════════════"
log ""
log "  DATOS TRANSFERIDOS (Host A resultante)"
log "  ─────────────────────────────────────────────────────"
log "  [CATÁLOGOS desde B]"
log "  categorias        : $(mysql_a -se 'SELECT COUNT(*) FROM categorias;'        2>/dev/null)"
log "  categorias_egresos: $(mysql_a -se 'SELECT COUNT(*) FROM categorias_egresos;' 2>/dev/null)"
log "  contrasenas       : $(mysql_a -se 'SELECT COUNT(*) FROM contrasenas;'        2>/dev/null)"
log "  firmantes         : $(mysql_a -se 'SELECT COUNT(*) FROM firmantes;'          2>/dev/null)"
log "  users             : $(mysql_a -se 'SELECT COUNT(*) FROM users;'              2>/dev/null)"
log "  [NEGOCIO desde B]"
log "  usuario           : ${CNT_USR_A}"
log "  contrato          : ${CNT_CTR_A}   (SDF estado=4: ${CNT_SDF_A})"
log "  ligacargos        : ${CNT_LC_A}"
log ""
log "  SANEAMIENTO HOST A (03_sync_host_a.sql)"
log "  ─────────────────────────────────────────────────────"
log "  D1 — Contratos exentos recargo año actual         : ${SAN_D1:-0}"
log "  D2 — Cargos con monto_comercial calculado         : ${SAN_D2:-0}"
log "  D4 — Cargos año 2027 eliminados (basura dev)      : ${SAN_D4:-0}"
log "  D5 — Cargos prueba/dev eliminados                 : ${SAN_D5:-0}"
log "  D6 — Folios NULL normalizados a 0                 : ${SAN_D6:-0}"
log "  D7 — Cargos pendientes en contratos SDF cancelados: ${SAN_D7:-0}"
log ""
log "════════════════════════════════════════════════════════"
log "Duración total: ${DURATION} segundos"
log "Log:    ${LOG_DIR}/sync_${TIMESTAMP}.log"
log "Backup: ${BACKUP_FILE}"
log ""
log "=== SYNC B → A COMPLETADO EXITOSAMENTE ==="

```

</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 9:47 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `03_sync_host_a.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 03_sync_host_a.sql
-- Script UNIFICADO de post-procesamiento para Host A (Ambiente de Transición V1+).
-- Propósito: Transformar datos provenientes del Host B (Legado) al modelo V1+.
-- 
-- Mantiene el esquema de tabla única (ligacargos) de Host A.
-- =============================================================================

SET NAMES utf8mb4;
SET foreign_key_checks = 0;
SET sql_mode = '';

-- =============================================================================
-- SECCIÓN A: COMPENSACIÓN DE COLUMNAS NUEVAS (TRANSICIÓN V1+)
-- =============================================================================

SELECT '=== APLICANDO DEFAULTS DE TRANSICIÓN (D1-D6) ===' AS info;

-- D1: exento_recargo_primer_anio (Feature V2 adoptada en A)
UPDATE contrato SET exento_recargo_primer_anio = 0;
UPDATE contrato SET exento_recargo_primer_anio = 1 WHERE YEAR(fecha) = YEAR(NOW());
SELECT CONCAT('D1: Contratos exentos (año actual): ', SUM(exento_recargo_primer_anio)) AS status FROM contrato;

-- D2: monto_comercial en cargos
UPDATE cargos SET monto_comercial = monto * 2
WHERE categoria IN (2, 3) AND automatico = 1 AND monto_comercial = 0;
SELECT CONCAT('D2: Cargos con monto_comercial: ', COUNT(*)) AS status FROM cargos WHERE monto_comercial > 0;

-- D3: idpago_vinc default
UPDATE ligacargos SET idpago_vinc = '' WHERE idpago_vinc IS NULL;

-- D4: Limpiar basura de desarrollo (Cargos 2027)
DELETE FROM cargos WHERE anio = 2027;
SELECT CONCAT('D4: Cargos 2027 eliminados: ', ROW_COUNT()) AS status;

-- D5: Limpiar cargos de prueba (estado=2 dev)
DELETE FROM cargos WHERE estado = 2 AND nombre REGEXP '^(cargo[0-9]|cbm_|prueba_)';
SELECT CONCAT('D5: Cargos test eliminados: ', ROW_COUNT()) AS status;

-- D6: Normalización de folios (NULL -> 0)
UPDATE ligacargos SET folio = 0 WHERE folio IS NULL;
SELECT CONCAT('D6: Folios normalizados: ', ROW_COUNT()) AS status;

-- =============================================================================
-- SECCIÓN B: SANEAMIENTO SDF (Estándar de Paridad Transición)
-- =============================================================================

SELECT '=== EJECUTANDO SANEAMIENTO SDF (UNIFICADO V1+) ===' AS info;

-- 1. Registro en Bitácora (Audit Trail)
-- Se usa un Batch ID de sistema (0) o el ID actual en cambios.
INSERT INTO cambios (fecha, descripcion, antes, despues, numcontrato, batch_id)
SELECT NOW(), 
       CONCAT('Saneamiento Automático SDF (Sync Transition): ', COUNT(DISTINCT lc.numcontrato), ' contratos depurados'), 
       'Cargos: Pendientes (V1+)', 
       'Estado: -1 (Depurado)', 
       '',
       0 -- Batch ID genérico para sync
FROM ligacargos lc
JOIN contrato c ON lc.numcontrato = c.numcontrato
WHERE c.estado = 4 AND lc.estado = 0
HAVING COUNT(*) > 0;

-- 2. Depuración masiva en tabla única
UPDATE ligacargos lc
JOIN contrato c ON lc.numcontrato = c.numcontrato
SET lc.estado = -1
WHERE c.estado = 4 AND lc.estado = 0;

SELECT CONCAT('D7: Cargos SDF depurados en Host A: ', ROW_COUNT()) AS status;

-- =============================================================================
-- SECCIÓN C: NORMALIZACIÓN DE CATÁLOGOS ESPECÍFICOS
-- =============================================================================

SELECT '=== SANEAMIENTO DE DUPLICADOS EN CATÁLOGO (CARGOS) ===' AS info;

-- 1. Eliminar inactivos donde existe un gemelo activo (mismo nombre y año)
DELETE c1 FROM cargos c1
JOIN cargos c2 ON c1.nombre = c2.nombre AND c1.anio = c2.anio
WHERE c1.estado = 0 AND c2.estado = 1;

-- 2. Eliminar manuales donde existe un gemelo automático (mismo estado, nombre y año)
DELETE c1 FROM cargos c1
JOIN cargos c2 ON c1.nombre = c2.nombre AND c1.anio = c2.anio
WHERE c1.automatico = 0 AND c2.automatico = 1 AND c1.estado = c2.estado;

-- 3. Eliminar IDs mayores en duplicados idénticos restantes (mismo estado y automaticidad)
-- Esto garantiza la unicidad para la UNIQUE KEY uk_nombre_anio en Host C.
DELETE c1 FROM cargos c1
JOIN cargos c2 ON c1.nombre = c2.nombre AND c1.anio = c2.anio
WHERE c1.numconsec > c2.numconsec AND c1.estado = c2.estado AND c1.automatico = c2.automatico;

SELECT CONCAT('D8: Duplicados eliminados en catálogo: ', ROW_COUNT()) AS status;

SET foreign_key_checks = 1;

SELECT '=== POST-PROCESAMIENTO EN HOST A COMPLETADO (SDF) ===' AS info;

-- =============================================================================
-- SECCIÓN D: SANEAMIENTO ESTRUCTURAL EXTENDIDO (PMU-2026)
-- Propósito: Corregir inconsistencias históricas de Host B antes de pasar a C.
-- =============================================================================

SELECT '=== INICIANDO SANEAMIENTO ESTRUCTURAL EXTENDIDO ===' AS info;

-- 1. CONSOLIDACIÓN DE ASAMBLEAS DUPLICADAS POR FECHA
-- Identificar asambleas ganadoras (mayor asistencia, luego mayor ID)
CREATE TEMPORARY TABLE tmp_asamb_winners AS
SELECT t1.id as winner_id, t1.fecha
FROM (
    SELECT asamb.id, asamb.fecha, 
           (SELECT COUNT(*) FROM asistentes WHERE id_asamblea = asamb.id) as cnt
    FROM asamblea asamb
) t1
WHERE t1.id = (
    SELECT t2.id 
    FROM (
        SELECT id, fecha, (SELECT COUNT(*) FROM asistentes WHERE id_asamblea = asamblea.id) as cnt
        FROM asamblea
    ) t2 
    WHERE t2.fecha = t1.fecha 
    ORDER BY t2.cnt DESC, t2.id DESC 
    LIMIT 1
);

-- Mover asistentes de perdedores a ganadores
UPDATE asistentes a
JOIN asamblea asamb_orig ON a.id_asamblea = asamb_orig.id
JOIN tmp_asamb_winners w ON asamb_orig.fecha = w.fecha
SET a.id_asamblea = w.winner_id
WHERE a.id_asamblea <> w.winner_id;

-- Eliminar asambleas perdedoras
DELETE FROM asamblea WHERE id NOT IN (SELECT winner_id FROM tmp_asamb_winners);
SELECT CONCAT('D9: Asambleas consolidadas: ', ROW_COUNT()) AS status;

-- 2. DEPURACIÓN DE USUARIOS PLACEHOLDER (SIN NOMBRE)
-- Solo eliminar si no tienen contratos asociados para preservar integridad
DELETE FROM usuario 
WHERE (nombre IS NULL OR TRIM(nombre) = '') 
  AND noconsecutivo NOT IN (SELECT DISTINCT numusuario FROM contrato);
SELECT CONCAT('D10: Usuarios sin nombre depurados: ', ROW_COUNT()) AS status;

-- 3. LIMPIEZA DE REGISTROS HUÉRFANOS
DELETE FROM asistentes WHERE id_asamblea NOT IN (SELECT id FROM asamblea);
SELECT CONCAT('D11: Asistentes huérfanos eliminados: ', ROW_COUNT()) AS status;

DROP TABLE tmp_asamb_winners;

SET foreign_key_checks = 1;

SELECT '=== SANEAMIENTO ESTRUCTURAL COMPLETADO ===' AS info;

```

</details>

---

## Agent Response

### Thinking

**Identifying a Potential Issue**

I've hit a snag. It appears there might be an issue lurking in Section D, specifically with Host A running MySQL 5.6. I'm scrutinizing a temporary table creation statement, `tmp_asamb_winners`, because a subtle problem is bubbling up from that section. My next step will be to explore this in detail.




### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.227532973s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:47 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:47 pm

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 56dc8f40-c378-4477-8cb6-fb1541288a38: Stabilizing Agua V2 Financial Engine
- Created: 2026-04-24T16:42:58Z
- Last modified: 2026-04-26T00:39:24Z

## Conversation 79a8e9a2-6401-44f1-a5db-8896eda906a6: Validating Pipeline Synchronization Logs
- Created: 2026-04-24T06:44:25Z
- Last modified: 2026-04-24T08:24:54Z

### USER Objective:
Stabilizing Financial Data Integrity

Objective: Finalize the stabilization and audit-readiness of the Agua V2 financial engine by enforcing strict data validation and architectural integrity.

Goals:
1. Implement Poka-Yoke sanitization protocols across core PHP modules (cargos, contratos) to prevent malicious or malformed data entry.
2. Enforce database-level uniqueness constraints (UNIQUE KEYs) in the schema to permanently eliminate operational data duplication.
3. Validate the hybrid surcharge logic and F05 compliance through the established automated SQL audit pipeline.
4. Prepare the system for final production deployment by securing input sanitation and validating historical data parity.

## Conversation 7b4df0fd-8f9f-4e1c-9691-7e0bbc280aa5: Validating Contract Exemption Logic
- Created: 2026-04-23T16:57:43Z
- Last modified: 2026-04-24T06:42:03Z

### USER Objective:
Stabilizing Agua V2 Surcharge Architecture

Main Objective: Finalize the stabilization of the Agua V2 financial engine by enforcing robust debt reconciliation and audit traceability.

Goals:
1. Reconcile historical surcharge logic by aligning the V2 parametric engine with the legacy data structure, abandoning hardcoded fallbacks.
2. Sanitize the `cargos` catalog to correctly flag historical surcharge eligibility without corrupting financial data.
3. Validate the `Contrato 500` UI-9 transition to confirm the system correctly triggers multi-year surcharge calculations.
4. Eliminate reliance on "soft" flags by utilizing the `es_recargo_moratorio` alias in views for financial auditing and reporting.
5. Execute a surgical data fix in the `cargos` catalog to ensure the surcharge motor remains "obedient" and accurate, guaranteeing audit-ready data integrity for 2024–2025.

## Conversation 6d27cf24-4496-444d-913c-de2298a07da5: UI Optimization for Suspended Contracts
- Created: 2026-04-23T03:17:22Z
- Last modified: 2026-04-23T05:53:51Z

### USER Objective:
Stabilizing Agua V2 State Transitions

Objective: Finalize the stabilization of Agua V2 state transition protocols by addressing financial data integrity and enhancing administrative diagnostics.

Goals:
1. Complete manual test case execution for state transitions (D → G) and resolve discrepancies in financial reporting.
2. Validate and patch root causes for incorrect charge generation during contract reactivations (e.g., Cto #1006).
3. Ensure financial consistency in reporting modules (contratoinfo2.php) and verify forensic reflection of contract states.
4. Finalize the integration of administrative reporting for "Suspensión Definitiva" contracts to ensure full audit readiness.

## Conversation 2c24dbf0-a237-4a36-8172-98282de6cf2d: Troubleshooting Amnistía UI Logic
- Created: 2026-04-22T21:09:14Z
- Last modified: 2026-04-23T02:52:01Z

### USER Objective:
Auditing Financial State Transitions

Objective: Finalize the implementation of a rigorous, self-auditing financial transaction layer across all Agua V2 modules.

Goals:
1. Standardize a universal "PRE/POST Financial Snapshot" pattern across all transaction functions (State Changes, Payments, Cancellations, Reassignments, and Manual Applications).
2. Automate the generation of audit logs in the `cambios` table to capture the precise impact on debt totals and adeudo counts per operation.
3. Enhance the `historial_mov_cto.php` report to visualize these financial snapshots with color-coded event classification.
4. Ensure full consistency in financial reporting, even for legacy charges and state-based recalibrations (paridad), to guarantee complete forensic traceability for every administrative action.

## Conversation 772b23ae-0897-4270-9446-4689fdf95548: Executing UI Test Suite
- Created: 2026-04-20T04:38:49Z
- Last modified: 2026-04-20T05:36:46Z

### USER Objective:
Stabilizing Agua UI Tests

USER Objective: Complete the validation of the Agua V2 testing suite (Section 1 / Group A) to ensure the system's operational readiness.
Goals:
1. Systematically execute UI test cases for contract management, state transitions, and infrastructure configuration based on the stabilized test plan.
2. Refine automation protocols by documenting specific UI interactions, such as using TAB for field auto-completion and handling browser confirmation dialogues.
3. Validate system behavior against business rules, specifically addressing contract creation constraints, parity synchronization, and administrative blocking mechanisms.
4. Update the formal test documentation to reflect empirical findings and UI-specific interaction patterns discovered during manual and automated execution.

## Conversation cbf979ab-fe6f-4218-97aa-78333e6a1a56: Audit Caja Reconciliation Discrepancies
- Created: 2026-04-20T01:04:06Z
- Last modified: 2026-04-20T04:13:17Z

### USER Objective:
Stabilizing Agua Reporting Modules

Objective: Resolve identified logic gaps and architectural inconsistencies in the Agua V2 reporting and receipt modules on Host C.

Goals:
1. Patch the date logic in `reciboegreso.php` to ensure correct temporal mapping of expenditures.
2. Address identified bugs and legacy function dependencies in `credencial.php` to improve module robustness.
3. Verify all code changes against the updated forensic audit documentation to maintain system-wide congruency.
4. Finalize and push all stabilization patches to the production repository to ensure full operational readiness.

## Conversation 70313f54-0ccd-4b31-b9dd-0a85cd24482b: Validating Host C PHP Errors
- Created: 2026-04-20T02:37:26Z
- Last modified: 2026-04-20T02:43:35Z

### USER Objective:
Validating Host C PHP Errors

Main Objective: Evaluate the current status of reported PHP notices from Host C logs without performing any code modifications.

Goals:
1. Confirm if the "Undefined index" notices in `contrasenas.php` (lines 71-116) and `carteravencida.php` (line 50) are still valid based on existing file content.
2. Verify the persistence of the "Undefined property" notice for `Conexion::$insert_id` in `usuarios.php` (line 296).
3. Provide a clear, non-corrective status report to the user regarding the state of these specific runtime errors.

## Conversation d93a3dd6-def6-407e-bf68-58e09c7b5178: Refactoring Agua Assembly Module
- Created: 2026-04-19T00:37:18Z
- Last modified: 2026-04-19T01:46:32Z

### USER Objective:
Refining Asamblea Administrative Interface

Main Objective: Finalize the stabilization and UI refactor of the Asamblea V2 administrative module on Host C.

Goals:
1. Complete the transition of the application entry point to the "Administración" view.
2. Implement dynamic, database-driven labels for the "Multa por Inasistencia" to replace hardcoded inputs.
3. Standardize and fix the administrative action table to ensure proper state-based control buttons (Start/Close/Download) appear for all assemblies.
4. Clean up the UI by removing redundant navigation elements like the "Pase de Lista" button.
5. Deploy changes manually to the production-ready Host C environment following established architectural constraints and legacy system protocols.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 25 Apr 2026, 9:47 pm

---

## Agent Response

### Thinking

**Analyzing the Problem**

I've been examining the query, and initially, I thought `ORDER BY cnt` was the culprit. However, it looks like `cnt` is a valid column within the subquery. Now, I see the issue. The join condition seems off.
```sql
    WHERE t2.fecha = t1.fecha 
    ORDER BY t2.cnt DESC, t2.
```


**Refining the Approach**

I'm now thinking I had a misconception about `t2` not being a derived table. It IS a derived table, which might be the source of my MySQL 5.6 problem. The issue might be using it inside a subquery with an equals sign. To circumvent this, I'm simplifying by using temporary tables to store counts, then select the winners.
```
```




### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.150093171s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:47 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:47 pm

---

## Agent Response

### Thinking

**Analyzing Script Execution**

I've confirmed that the cleanup of "ANUALIDAD DEL AGUA 2026" (ID 621, 624) was successful. Section C (D8) performed as expected. However, the script failed in Section D. I'm re-examining the data related to "ANUALIDAD DEL AGUA 2016" because it seems duplicates persist. I'm focusing on the data structure now.




### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.574127060s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:47 pm

---

## Agent Response

### Thinking

**Identifying the Mismatch**

I've pinpointed a crucial issue: the trailing space in the name "ANUALIDAD DEL AGUA 2016 " (ID 449) is thwarting the JOIN. The current comparison, `c1.nombre = c2.nombre`, is failing due to the space's impact on the string matching. A subtle but significant detail!


**Investigating the Discrepancy**

I'm deep-diving into the collation settings now; it seems MySQL's VARCHAR comparison behavior might be the key. The user's GROUP BY revealed the space, yet my DELETE operation missed it. I'm exploring whether different states and 'automatico' values played a role. However, the critical issue seems to be a failure in Section D (Asambleas). I'm focusing on the logs from `run_sync.sh` to understand this crucial error.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.854666062s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:47 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Full-Pipeline-Sync.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# =============================================================================
# Full-Pipeline-Sync.sh — Orquestador Maestro B → A → C
#
# Propósito: Refresco y migración total en cadena hacia la nueva Arquitectura V2.
#            Actúa de forma destructiva sobre Host C garantizando cero deriva
#            de configuración (Configuration Drift).
#
# USO:
#   ./Full-Pipeline-Sync.sh                        # Producción: B→A→C (datos vienen de Host B)
#   ./Full-Pipeline-Sync.sh --with-qa              # Testing: B→A→C + inyecta datos sintéticos en A→C
#   ./Full-Pipeline-Sync.sh --skip-b               # Offline: salta volcado de B, usa A tal como está → C
#   ./Full-Pipeline-Sync.sh --with-qa --skip-b     # Testing offline: sin conectar a Host B
# =============================================================================
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WITH_QA=false
SKIP_B=false

# Parseo de argumentos
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --with-qa) WITH_QA=true ;;
        --skip-b) SKIP_B=true ;;
        *) echo "Flag desconocida: $1"; exit 1 ;;
    esac
    shift
done

# Log maestro del orquestador
FPS_TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FPS_LOG_DIR="${ROOT_DIR}/sync_hosta_to_hostc/logs"
mkdir -p "$FPS_LOG_DIR"
FPS_LOG="${FPS_LOG_DIR}/pipeline_${FPS_TIMESTAMP}.log"
fps_log() { echo "[$(date '+%H:%M:%S')] $*" | tee -a "$FPS_LOG"; }

fps_log "=== FULL-PIPELINE-SYNC INICIADO ==="
MODO_LABEL="producción"
[ "$WITH_QA" = true ] && MODO_LABEL="${MODO_LABEL} +with-qa"
[ "$SKIP_B"  = true ] && MODO_LABEL="${MODO_LABEL} +skip-b"
fps_log "Modo: ${MODO_LABEL}"
fps_log "Log maestro: ${FPS_LOG}"

echo "════════════════════════════════════════════════════════"
echo "  INICIANDO FULL-PIPELINE-SYNC (B → A → C)              "
if [ "$WITH_QA" = true ]; then echo "  [MODO TESTING ACTIVADO: --with-qa]"; fi
if [ "$SKIP_B" = true ]; then echo "  [MODO OFFLINE ACTIVADO: --skip-b]"; fi
echo "════════════════════════════════════════════════════════"

# Paso 1: B -> A
if [ "$SKIP_B" = true ]; then
    fps_log "PASO 1: [SALTADO] Sincronización Host B → Host A (--skip-b activo)"
    echo ">>> PASO 1: [SALTADO] Sincronización Host B → Host A (--skip-b activo)"
else
    fps_log "PASO 1: Iniciando sincronización Host B → Host A..."
    echo ">>> PASO 1: Sincronizando Host B a Host A..."
    cd "${ROOT_DIR}/syncawa_hostb_to_hosta"
    ./run_sync.sh
    fps_log "PASO 1: Sincronización B → A completada"
fi

# Paso 2: Setup obligatorio (DROP y recreación de esquema en Host C)
# IMPORTANTE: este paso ejecuta DROP DATABASE sobre Host C — siempre ocurre, sin excepción.
fps_log "PASO 2: DROP DATABASE + recreación esquema V2 en Host C — INICIANDO"
echo ">>> PASO 2: Destruyendo y Reconstruyendo esquema V2 en Host C..."
cd "${ROOT_DIR}/host-c-setup"
./run_setup.sh
fps_log "PASO 2: DROP DATABASE + recreación esquema V2 en Host C — COMPLETADO"

# Paso 3: A -> C (Migración de datos + Inyección QA opcional)
fps_log "PASO 3: Iniciando sincronización Host A → Host C$([ "$WITH_QA" = true ] && echo ' (con datos QA)' || true)..."
echo ">>> PASO 3: Sincronizando Host A a Host C..."
cd "${ROOT_DIR}/sync_hosta_to_hostc"
if [ "$WITH_QA" = true ]; then
    ./run_sync.sh --with-qa
else
    ./run_sync.sh
fi
fps_log "PASO 3: Sincronización A → C completada"

# Paso 4: Saneamiento de Catálogo y QA de Paridad Financiera
fps_log "PASO 4: Iniciando Saneamiento y QA de Paridad Financiera..."
echo ">>> PASO 4: Aplicando Saneamiento de Catálogo y Pruebas QA..."
cd "${ROOT_DIR}/host-c-setup"

# Cargar configuración de DB
source "${ROOT_DIR}/sync_hosta_to_hostc/sync_config.sh"

fps_log "  -> Ejecutando 08_saneamiento_catalogo.sql..."
$MYSQL_BIN -h "$HOST_C" -P "$PORT_C" -u "$USER_C" -p"$PASS_C" "$DB" < "08_saneamiento_catalogo.sql" 2>&1 | tee -a "$FPS_LOG"

if [ "$WITH_QA" = true ]; then
    fps_log "  -> Ejecutando 09_qa_financial_congruence.sql..."
    $MYSQL_BIN -h "$HOST_C" -P "$PORT_C" -u "$USER_C" -p"$PASS_C" "$DB" < "09_qa_financial_congruence.sql" 2>&1 | tee -a "$FPS_LOG"
fi

fps_log "PASO 4: Saneamiento y QA completado"


fps_log "=== FULL-PIPELINE-SYNC COMPLETADO CON ÉXITO ==="
echo "════════════════════════════════════════════════════════"
echo "  FULL-PIPELINE-SYNC COMPLETADO CON ÉXITO               "
echo "════════════════════════════════════════════════════════"

```

</details>

---

## Agent Response

### Thinking

**Analyzing Error Handling**

I'm focusing now on error handling. I realized `Full-Pipeline-Sync.sh` is using `set -euo pipefail`. This means a failure in `run_sync.sh` *should* halt the process. However, that wasn't the case. I'm investigating why. Looking into `run_sync.sh`, specifically the `POST_OUTPUT` line, to see if I can find the problem. Is an error suppressed?


**Addressing Error Handling Bug**

I've identified the root cause of the error handling failure: `run_sync.sh` captures the error from `mysql` but continues due to the `echo` command's success. This is a bug! Now, I am suspecting section D in `03_sync_host_a.sql` had a syntax error that MySQL 5.6 didn't like. The focus now is on robustly fixing `03_sync_host_a.sql` to be more 5.6-compatible.




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.131368030s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:48 pm

---

## Agent Response

### Thinking

**Updating Sync Script**

I'm currently working to improve the error handling in `run_sync.sh`. My immediate goal is to ensure the script fails explicitly if the `mysql_a` command, when running the `03_sync_host_a.sql` script, returns an error. I've added a check to accomplish this. I'm focusing on robust error detection for smoother execution.




### Actions

**Tool:** `view_file`
**File:** `run_sync.sh`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.330015457s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L247-251)</summary>

**Path:** `Unknown file`

```

log "Ejecutando script de unificación y saneamiento en Host A..."
POST_OUTPUT=$(mysql_a < "${SCRIPT_DIR}/03_sync_host_a.sql" 2>&1)
echo "$POST_OUTPUT" | tee -a "${LOG_DIR}/sync_${TIMESTAMP}.log"

```

</details>

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:48 pm

---

## Agent Response

### Thinking

**Verifying Host C Configurations**

I'm now focusing on `host-c-setup`. I must check `run_setup.sh` to determine whether I can integrate the `asamblea` trigger there as well. I've already added the trigger to `05_stored_procedures.sql`. Also, I'm performing a final check on `categorias` unicity in Host C for thoroughness.




### Actions

**Tool:** `mcp_bdawahost-a_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.921442891s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:48 pm

---

## Agent Response

### Thinking

**Identifying the Root Cause**

I've pinpointed the root cause! The issue was confined to Section D within `03_sync_host_a.sql`, specifically with Asambleas and Users, stemming from 5.6 syntax incompatibility. I realized the pipeline reported "success" despite the data being corrupted because the error wasn't properly handled.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.520030282s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** CORTEX_STEP_STATUS_ERROR
**Created:** 25 Apr 2026, 9:48 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:48 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `run_setup.sh`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
#!/usr/bin/env bash
# =============================================================================
# run_setup.sh — Orquestador de Setup Limpio (Host C V2)
#
# Propósito: Reconstruir la base de datos 'awa' en Host C desde cero.
#            Equivalente al comando: Setup-Full-C
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SYNC_CONFIG="${SCRIPT_DIR}/../sync_hosta_to_hostc/sync_config.sh"

if [ ! -f "$SYNC_CONFIG" ]; then
    echo "ERROR: No se encuentra sync_config.sh en $SYNC_CONFIG"
    exit 1
fi

source "$SYNC_CONFIG"

# Log propio del setup (compartido con el directorio de logs del pipeline A→C)
SETUP_TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
LOG_DIR_AC="${SCRIPT_DIR}/../sync_hosta_to_hostc/logs"
mkdir -p "$LOG_DIR_AC"
LOG_SETUP="${LOG_DIR_AC}/setup_${SETUP_TIMESTAMP}.log"

setup_log() { echo "[$(date '+%H:%M:%S')] $*" | tee -a "$LOG_SETUP"; }

echo "════════════════════════════════════════════════════════"
echo "  INICIANDO SETUP-FULL-C (Simulación Producción)        "
echo "  Destino: $HOST_C:$PORT_C                               "
echo "════════════════════════════════════════════════════════"
setup_log "=== SETUP-FULL-C INICIADO ==="
setup_log "Destino: ${HOST_C}:${PORT_C} | DB: ${DB}"

# 1. Recrear Base de Datos
echo "[1/3] Recreando base de datos 'awa'..."
setup_log "OPERACIÓN DROP DATABASE: DROP DATABASE IF EXISTS ${DB} en ${HOST_C}:${PORT_C}"
$MYSQL_BIN -h "$HOST_C" -P "$PORT_C" -u "$USER_C" -p"$PASS_C" \
    -e "DROP DATABASE IF EXISTS $DB; CREATE DATABASE $DB CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;" 2>&1 \
    | tee -a "$LOG_SETUP"
setup_log "DROP + CREATE DATABASE completado: ${DB} recreada en ${HOST_C}:${PORT_C}"

# 2. Ejecutar Scripts de Estructura y Catálogos
echo "[2/3] Instalando esquema, vistas y procedimientos..."
setup_log "Instalando esquema, vistas y procedimientos..."
SQL_FILES=(
    "02_schema_tablas_base.sql"
    "03_config_datos_catalogo.sql"
    "04_views.sql"
    "05_stored_procedures.sql"
    "07_patch_categorias_v2.sql"
    "09_idx_covering_ligacargos.sql"
    # 10_fallback_log.sql eliminado — fallback_log ya está en 02_schema_tablas_base.sql
)

for f in "${SQL_FILES[@]}"; do
    echo "  -> Ejecutando $f..."
    setup_log "  -> Ejecutando $f..."
    $MYSQL_BIN -h "$HOST_C" -P "$PORT_C" -u "$USER_C" -p"$PASS_C" "$DB" < "${SCRIPT_DIR}/$f" 2>&1 \
        | tee -a "$LOG_SETUP"
done

# 3. Validar Estructura
echo "[3/3] Validando integridad de tablas..."
setup_log "Validando integridad de tablas..."
$MYSQL_BIN -h "$HOST_C" -P "$PORT_C" -u "$USER_C" -p"$PASS_C" "$DB" \
    -e "SELECT table_name, engine, table_rows FROM information_schema.tables WHERE table_schema='$DB' AND table_type='BASE TABLE' ORDER BY table_name;" 2>&1 \
    | tee -a "$LOG_SETUP"

setup_log "=== SETUP-FULL-C COMPLETADO ==="
setup_log "Log: ${LOG_SETUP}"
echo "════════════════════════════════════════════════════════"
echo "  SETUP-FULL-C COMPLETADO CON ÉXITO                      "
echo "════════════════════════════════════════════════════════"

```

</details>

---

## Agent Response

### Thinking

**Analyzing Script Interactions**

I've been examining the execution flow and realized `run_setup.sh` directly calls `05_stored_procedures.sql`. I earlier incorporated a trigger in that SQL file. Now I've noticed a comment indicating that the target system, MCP, does not support DELIMITER statements. This might require some adjustments.




### Actions

**Tool:** `view_file`
**File:** `05_stored_procedures.sql`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.538146231s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L359-388)</summary>

**Path:** `Unknown file`

```
  SET v_total = v_total + ROW_COUNT();

  SET p_filas = v_total;
END$$

-- -----------------------------------------------------------------------------
-- Triggers de Integridad Administrativa
-- -----------------------------------------------------------------------------

DROP TRIGGER IF EXISTS `tr_asamblea_limit_3`;

DELIMITER $$
CREATE TRIGGER `tr_asamblea_limit_3`
BEFORE INSERT ON `asamblea`
FOR EACH ROW
BEGIN
    DECLARE asamb_count INT;
    SELECT COUNT(*) INTO asamb_count FROM `asamblea` WHERE `fecha` = NEW.`fecha`;
    IF asamb_count >= 3 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Maximo de 3 asambleas permitidas por fecha para evitar fragmentacion.';
    END IF;
END$$
DELIMITER ;

-- Verificar SPs creados
SELECT ROUTINE_NAME, ROUTINE_TYPE
FROM information_schema.ROUTINES
WHERE ROUTINE_SCHEMA = 'awa' AND ROUTINE_TYPE = 'PROCEDURE'
ORDER BY ROUTINE_NAME;

```

</details>

---

## Agent Response

### Thinking

**Identifying the Duplication**

I've pinpointed a crucial issue: duplicate delimiter declarations. I noticed `DELIMITER $$` on line 371. Upon closer inspection, line 17 already contained this declaration. Even more puzzling, I was inside the scope of the original delimiter, as line 363 ends with `END$$`. Thus, there's a redundant declaration that needs to be addressed.


**Refining Delimiter Usage**

I've been examining the implications of delimiter changes in the SQL script. My focus is on ensuring clarity and avoiding potential client-side confusion. I decided to simplify the script by removing the redundant `DELIMITER $$` statement. Now, I'm working to achieve consistent use of delimiters to enhance script readability and reliability. I want to make sure the script runs smoothly by avoiding any ambiguity in delimiter handling. I'm also checking why a trigger wasn't created.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 2.771414562s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:48 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `02_schema_tablas_base.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file` (L39-59)</summary>

**Path:** `Unknown file`

```
-- -----------------------------------------------------------------------------
-- Tabla: categorias (catálogo de categorías de cargos)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `categorias` (
  `id`          int(11)     NOT NULL AUTO_INCREMENT,
  `nombre`      varchar(30) NOT NULL,
  `nombrecorto` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -----------------------------------------------------------------------------
-- Tabla: categorias_egresos
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `categorias_egresos` (
  `id`     int(11)     NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

```

</details>

---

## Agent Response

### Thinking

**Investigating Key Discrepancy**

I've confirmed the file *does* contain the unique keys, so the question becomes why they aren't reflected in the database. My initial suspicion was a failure during stored procedure setup, but the schema script runs first. Now I'm focused on the possibility of an error in `02_schema.sql` itself.




### Actions

**Tool:** `mcp_bdawahost-c_describe_table`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.550261229s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 9:48 pm

---

## Agent Response

### Thinking

**Investigating a Database Mystery**

I'm puzzled. The database should have a `nombre` key, especially after a fresh recreation. The file claims `UNIQUE KEY uk_nombre (nombre)`, but I'm not seeing it. Could the `mysql` client have botched the file parsing? Or perhaps the command itself failed? Further tests are necessary.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.813542362s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 9:48 pm

---

## Agent Response

### Thinking

**Analyzing Missing Execution**

I've hit a snag. The date suggests a crucial setup step, "PASO 2," wasn't executed during the last run. My primary focus is on pinpointing the root cause. I'm revisiting the logs, specifically `pipeline_20260425_213830.log`, hoping to find the failure point. I'm focusing on the logs to find any clues that might indicate why PASO 2 did not run.




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 17.306624897s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:49 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

rning: Using a password on the command line interface can be insecure.
ERROR 1137 (HY000) at line 106: Can't reopen table: 'c'

<details>
<summary>Context</summary>

**Active File:** `02_schema_tablas_base.sql`
**Language:** oracle-sql
</details>

---

## Agent Response

### Thinking

**Addressing the Error**

I encountered error 1137, indicating a "Can't reopen table" problem with a temporary table in MySQL. My current focus is identifying how the query is attempting to re-reference the temporary table in a way that triggers this specific limitation. I need to figure out the code that's the culprit.




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.226453920s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 9:53 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

ERROR 1062 (23000) at line 107: Duplicate entry '131-102' for key 'PRIMARY'
info


<details>
<summary>Context</summary>

**Active File:** `02_schema_tablas_base.sql`
**Language:** oracle-sql
</details>

---

## Agent Response

### Thinking

**Investigating Duplicate Key Error**

I'm currently trying to understand a "Duplicate entry" error related to a primary key. The error message indicates an issue at line 107. Digging deeper, it seems the problem is in `03_sync_host_a.sql`, around the `UPDATE asistentes` line. I'm scrutinizing the SQL file now to find the root cause of this error.


**Refining Error Resolution**

I've pinpointed the cause of the duplicate key error! It occurs because `asistentes` has a composite primary key (`id_asamblea`, `id_contrato`). Transferring an assistant from assembly A to assembly B triggers the error if the assistant already exists in B for that day. My solution is now clear: the merging strategy for `asistentes` should involve deleting records from "loser" assemblies if they exist in the "winner" for that date, and then updating the rest.


**Revising Collision Handling**

I've realized my approach to eliminating duplicate keys using DELETE with JOIN and EXISTS might be problematic with the database version 5.6. It would be safer to implement a temporary or even a physical table to identify collisions. Alternatively, I'm considering using `UPDATE IGNORE` to bypass duplicate key errors during the update process, which seems the most elegant way to solve it! This requires further testing.




### Actions

**Tool:** `write_to_file`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 4.540294971s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 10:35 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

segun con exito, revisa full

<details>
<summary>Context</summary>

**Active File:** `02_schema_tablas_base.sql`
**Language:** oracle-sql
</details>

---

## Agent Response

### Thinking

**Validating Host C Operations**

I'm now focused on validating operations within Host C, as requested. Currently, I'm checking for **cargo** unicity, then **assembly** unicity, and now the **unique keys** in `categorias` and `contrasenas`. I'm systematically ensuring everything is running with precision.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.718542931s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 10:39 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 10:39 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 10:39 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 10:39 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 10:39 pm

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 10:39 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

actualiza los md /opt/lampp/htdocs/agua/docs-dev/doc-estabilizacion/pmu/ y los de claude y gemini

<details>
<summary>Context</summary>

**Active File:** `02_schema_tablas_base.sql`
**Language:** oracle-sql
</details>

---

## Agent Response

### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 10:41 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 10:41 pm

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 10:42 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `CLAUDE.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# CLAUDE.md — Entry Point para Claude Code · Proyecto Agua

Cargado automáticamente por **Claude Code** en cada sesión.

> [!IMPORTANT]
> Este proyecto es asistido simultáneamente por **Claude Code** y **Google Antigravity/Gemini**.
> Ambos comparten el mismo Ground Truth en `.agents/`. No duplicar reglas aquí — editar los archivos `.agents/` directamente.
> Entry Point de Antigravity/Gemini: [GEMINI.md](GEMINI.md)

---

## Mapa de Conocimiento (Ground Truth Compartido)

| Tipo | Descripción | Directorio |
| :--- | :--- | :--- |
| **Reglas** | Reglas permanentes (negocio, infra, git, protocolo cierre sesión) | [.agents/rules/](.agents/rules/) |
| **Skills** | Estándares técnicos (Plates, AJAX, PHP 7.4, DB) | [.agents/skills/](.agents/skills/) |
| **Workflows** | Procesos repetibles (Sync B→A→C, Deploy Host C) | [.agents/workflows/](.agents/workflows/) |

### 🗂️ Índice de Reglas (01–10)

| # | Regla | Archivo |
| :---: | :--- | :--- |
| **01** | Infraestructura y Hosts (A/B/C, puertos, MCP) | [.agents/rules/01-infra-hosts.md](.agents/rules/01-infra-hosts.md) |
| **02** | Reglas de Negocio por Módulo — **leer antes de editar lógica financiera** | [.agents/rules/02-reglas-negocio.md](.agents/rules/02-reglas-negocio.md) |
| **03** | Sincronización de Datos B→A | [.agents/rules/03-sincronizacion-b-a.md](.agents/rules/03-sincronizacion-b-a.md) |
| **04** | Arquitectura MVC y Directorios | [.agents/rules/04-arquitectura-mvc.md](.agents/rules/04-arquitectura-mvc.md) |
| **05** | Despliegue y Automatización Host C | [.agents/rules/05-despliegue-host-c.md](.agents/rules/05-despliegue-host-c.md) |
| **06** | Accesos, Rutas y Herramientas (3 hosts, Docker MCP) | [.agents/rules/06-accesos-rutas.md](.agents/rules/06-accesos-rutas.md) |
| **07** | Control de Versiones y Git Workflow | [.agents/rules/07-git-workflow.md](.agents/rules/07-git-workflow.md) |
| **08** | Integridad del Ground Truth — **leer antes de refactorizar** | [.agents/rules/08-integridad-ground-truth.md](.agents/rules/08-integridad-ground-truth.md) |
| **09** | Documentación de Sesión — Protocolo de Commit y Resumen de Issues | [.agents/rules/09-sesion-summary.md](.agents/rules/09-sesion-summary.md) |
| **10** | Limitantes Conocidas de la Webapp — **leer antes de proponer mejoras automáticas** | [.agents/rules/10-limitantes-webapp.md](.agents/rules/10-limitantes-webapp.md) |
| **11** | Estándares de Código y Seguridad (Hardening) | [.agents/rules/11-estandares-codigo.md](.agents/rules/11-estandares-codigo.md) |
| **12** | **Uso Seguro de `Conexion.php` — Regla E01 (mysqli guard)** — **leer antes de usar `real_escape_string` o `q()`** | [.agents/rules/12-estandar-conexion-mysqli.md](.agents/rules/12-estandar-conexion-mysqli.md) |


Estructura interna documentada en [.agents/README.md](.agents/README.md).
Inventario completo de assets en [.agents/INVENTORY.md](.agents/INVENTORY.md).

---

## Hosts (Infraestructura)

| Host | Propósito | Rama Git | MCP |
| :---: | :--- | :--- | :--- |
| **A** | Producción activa — Linux XAMPP, MySQL 5.6 | `main` | `bdawahost-a` → 127.0.0.1:3306 |
| **B** | Espejo producción (MySQL 5.1) — solo lectura datos frescos | N/A | `bdawahost-b` → 192.168.1.120:3306 |
| **C** | V2 MariaDB 10.4.27 — Windows XAMPP 7.4.33 | `feature/upgrade-v2-win-xampp` | `bdawahost-c` → 192.168.1.128:**7002** |

- **Acceso Web Host A:** `http://localhost/agua/login/index2.php` (nancy / 260180)
- **Acceso Web Host C:** `http://192.168.1.128:7001/agua` (Apache 7001, MariaDB 7002)
- **Repo GitHub:** `https://github.com/cbena999/aguaclmhj.git`

---

## Estado de Migración Host C (2026-04-07)

- Schema v2 completo, webapp PHP adaptada — **UP & RUNNING**
- Pipeline sync B→A→C validado en ejecución real (7/7 checks OK)
- Scripts setup en `docs-dev/migration-aguav2/host-c-setup/` (02→09, manual/)
- Checklist pase a producción en `host-c-setup/07_transferir_datos.md`
- Ver regla detallada: [.agents/rules/05-despliegue-host-c.md](.agents/rules/05-despliegue-host-c.md)

---

## Reglas de Negocio Críticas (Resumen)

> Leer siempre [.agents/rules/02-reglas-negocio.md](.agents/rules/02-reglas-negocio.md) antes de editar lógica financiera.

- **Facturación habilitada** solo en estados `1 (ACTIVO)`, `2 (SUSP. TEMPORAL)` y `3 (SUSP. ADMINISTRATIVA)`.
- **Límite de tomas:** Máximo 2 contratos activos por usuario en el mismo domicilio.
- **Split ligacargos:** activa (≥2026) en `ligacargos` · histórico (≤2025) en `ligacargos_historico`.
- **Caja/Reportes:** Sumatoria de listas debe coincidir siempre con totales de encabezado.

---

## Módulos Críticos

| Módulo | Archivo | Riesgo |
| :--- | :--- | :--- |
| Lógica Híbrida (V2) | `docs-dev/doc-estabilizacion/pmu/transiciones_estado_contratos.md` | Crítico |
| Cambio de Estados | Transiciones 1, 2 y 3 | Alto |
| Facturación / Cartera | `carteravencida.php` | Alto |
| Caja Diaria | `concentradocortecaja.php` | Alto |
| Resumen de Caja | `reportes/concentradocortecajaresumen.php` | Alto |

---

## Arquitectura Brain / Ground Truth (2026-04-09)

Todo el contexto de agentes IA vive en `agua_chatledger`. El repo `agua` solo tiene symlinks:

| Symlink en `agua` | Destino |
| :--- | :--- |
| `.claude/` | `.chatledger/.claude/` (settings.json + settings.local.json) |
| `.agents/` | `.chatledger/.agents/` |
| `.mcp.json` | `.chatledger/.mcp.json` |
| `CLAUDE.md` / `GEMINI.md` / `.clauderules` | `.chatledger/[archivo]` |
| `docs-dev/ga-cl-ia/` | `agua_chatledger/docs-dev/ga-cl-ia/` |

**Validar integridad antes de commitear en agua_chatledger:**
```bash
bash docs-dev/ga-cl-ia/chatledger_validate.sh
```

## Comandos Rápidos

```bash
# Git
git push origin main
git push origin feature/upgrade-v2-win-xampp

# XAMPP Host A
/opt/lampp/bin/mysql -u root awa
```

> **⚠️ Filosofía de Uso**: Los scripts de orquestación (`Sync-*` y `Full-Pipeline-Sync`) son **Herramientas de Migración**, no tareas operativas recurrentes.
> Ver tabla de comandos canónicos, rutas exactas y comportamiento de flags en: `docs-dev/doc-estabilizacion/MIGRATION_PROTOCOL.md`

---

**Última actualización:** 2026-04-17 · Depuración scripts migración (01, 08, scripts_deseable eliminados)

> **Nombre canónico del Ground Truth**: El conjunto `CLAUDE.md` + todo `.agents/` (rules, skills, workflows) se denomina **"el Ground Truth"** del proyecto.
> **Nota de terminología**: Gemini denomina este mismo conjunto **"el Runbook"**. Son el mismo repositorio de conocimiento — `.agents/` es compartido. Solo difiere el nombre según el agente.
> **Protocolo de cierre de sesión**: Ver [.agents/rules/09-sesion-summary.md](.agents/rules/09-sesion-summary.md)

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `02-reglas-negocio.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Regla 02: Diccionario de Reglas de Negocio por Módulo

Este documento es una entidad viva para registrar el descubrimiento y clasificación de todas las reglas de negocio contenidas en la base de datos `awa` y la webapp **Agua**.

---

## 📋 Clasificación por Módulos Funcionales

### 📂 Módulo 01: Gestión de Contratos (Core)
| ID | Regla | Estado |
|:---:|---|:---:|
| **C01** | Límite de **2 tomas (contratos)** activas por usuario en el mismo domicilio físico. | Implementada |
| **C02** | Prohibida la modificación de estado de contratos en `4 (SUSPENSIÓN DEFINITIVA)`. | Implementada |
| **C03** | Registro obligatorio de folios únicos por cada nuevo contrato. | Validada |
| **C04** | **Motor de Paridad Universal**: Sincronización obligatoria; si una toma se activa/reconecta, su cargo anual debe restaurarse automáticamente. | Implementada |
| **C05** | **Limpieza por Suspensión Definitiva**: Al pasar a Estado 4, se debe forzar la desconexión física y la cancelación de deuda anual actual. | Implementada |
| **C06** | **Amnistía de Recargos en Reactivación**: Al pasar un contrato de `2 (SUSPENSIÓN TEMPORAL)` a `1 (ACTIVO)`, los recargos de años anteriores al año en curso se cancelan automáticamente (`estado=-1`). Solo permanece vigente la deuda del año actual. **NO aplica si el origen es estado `3 (SUSPENSIÓN ADMINISTRATIVA)`**: el adeudo íntegro se conserva (incluyendo anualidad del año en curso y todos los recargos históricos). Implementado en `_amnistiaRecargosHistoricos()` (contratos.php) + `_sincronizaParidadFinanciera()`. El registro en `cambios` indica explícitamente si se aplicó o no la amnistía. | Implementada |
| **C07** | **Restricción de Transiciones de Suspensión**: Prohibido el salto directo entre estados de suspensión (`2` y `3`). El contrato debe ser regularizado a `1 (ACTIVO)` primero para asegurar que los disparadores de paridad y amnistía se ejecuten según el origen correcto. Enforzado en UI (`ficha.php`) y Servidor (`contratos.php`). | Implementada |
| **C08** | **Límite de Tomas Físicas**: Restricción operativa de un máximo de **2 tomas físicas** registrables por cada contrato/domicilio. Enforzado en la UI de gestión de tomas. | Implementada |

### 📂 Módulo 02: Facturación, Cargos y Recargos
| ID | Regla | Estado |
|:---:|---|:---:|
| **F01** | Solo contratos en estado `1 (ACTIVO)` y `3 (SUSPENSIÓN ADMINISTRATIVA)` generan recargos automáticos. Estado `2 (SUSPENSIÓN TEMPORAL)` está **excluido** — la anualidad ya está cancelada (`estado=-1`) y no procede recargo sobre ella. Estado `4` también excluido. Implementado en `calcula_recargos()` (`cargos.php`). | Implementada |
| **F02** | Cargos manuales a contratos en `4 (SUSPENSIÓN DEFINITIVA)` están prohibidos. | Crítica |
| **F03** | **Auditoría de Reasignación de Cargos**: `regresarCargoCancelado()` valida estado del contrato (bloquea en estado 4) y registra la identidad del operador (`$_SESSION['usuario']`) en la tabla `cambios`. Requiere confirmación de usuario en la UI. | Implementada |
| **F04** | El cálculo de la deuda debe ser atómico (Cargos + Recargos = Deuda Total). | Validada |
| **F05** | **Semántica dual del campo `recargo` — NUNCA contabilizar como monto financiero ni usar como filtro de tipo en `ligacargos`** — El campo `recargo` existe con dos semánticas incompatibles según la tabla: (1) En `cargos` (catálogo): es un **flag entero `INT(0/1)`** que indica si el tipo de cargo puede generar recargo moratorio — uso correcto en UI y filtros sobre la tabla `cargos`. (2) En `ligacargos` / `ligacargos_historico`: es un **monto decimal heredado** del catálogo al momento del INSERT — en Host C vale `0.00` para casi todos los registros; en datos migrados de Host A/B puede valer `1.00` (artefacto histórico de cuando el flag se copió como float). **Reglas críticas**: (a) Nunca sumar `ligacargos.recargo` como parte de la deuda o ingreso. (b) Nunca usar `AND ligacargos.recargo = 1` como filtro de tipo de cargo — siempre falla en Host C produciendo falsos negativos silenciosos. (c) El discriminador canónico para identificar recargos moratorios es `categoria IN (16, 17)` (configurables en `config_sistema`: `recargo_categoria_agua`, `recargo_categoria_drenaje`) o el alias `es_recargo_moratorio` de las vistas. (d) Para reclasificaciones de leyendas especiales usar `leyenda LIKE + categoria` como fuente de verdad, sin `recargo`. **Archivos corregidos** (2026-04-15): `admin/reportes/auditoria_integridad_bd.php` líneas 69 y 136 (recargos huérfanos), `docs-dev/migration-aguav2/host-c-setup/07_patch_categorias_v2.sql` (reclasificación cat 19-22). **Usos válidos de `recargo` que NO deben tocarse**: filtros sobre tabla `cargos` (`AND recargo=0` en contratos.php:55/399), coloreado UI en `views/cargos/` y `views/contratos/ficha.php` — todos operan sobre el catálogo donde `recargo` sí es flag INT. | Implementada |

| **F06** | **Cobertura dual obligatoria en operaciones sobre ligacargos (Host C split-schema)** — En Host C, los cargos de `anio<=2025` viven en `ligacargos_historico` y los de `anio>=2026` en `ligacargos` activa. Cualquier operación PHP que lea, modifique o cancele cargos **debe cubrir ambas tablas**. Reglas concretas: **(a) SELECTs de cargos cancelados/pendientes**: usar siempre `vw_ligacargos_all` o `vw_ligacargos_pendientes` (las vistas hacen UNION automáticamente) — nunca `FROM ligacargos` directo en queries de ficha/cartera. **(b) Subqueries de id_cargo**: usar `COALESCE((SELECT id FROM ligacargos WHERE ...), (SELECT id FROM ligacargos_historico WHERE ...))` para obtener el PK correcto sin importar en qué tabla vive el registro. **(c) UPDATEs de estado**: cuando se opera por `id_cargo` conocido, ejecutar UPDATE en ambas tablas siempre — la que no contiene el registro simplemente afecta 0 filas, sin daño. `UPDATE ligacargos SET estado=X WHERE id=$id AND numcontrato='$c'` + `UPDATE ligacargos_historico SET estado=X WHERE id=$id AND numcontrato='$c'`. Es más robusto que pasar un flag `en_historico` que puede llegar incorrecto. **(d) Fallback por leyenda**: también cubrir ambas tablas. **Por qué se repite el bug**: cada sesión tiende a escribir solo `FROM ligacargos` olvidando el histórico. Si el fix solo opera en una tabla, el cargo del año equivocado no se modifica y el INSERT de auditoría en `cambios` puede ejecutarse pero sin efecto real en BD. **Archivos críticos**: `includes/negocio/cargos.php` (`regresarCargoCancelado`, `pagacancelacargos`), `includes/negocio/contratos.php` (SELECT cancelados para ficha), `_amnistiaRecargosHistoricos` (ya correcto: opera en ambas tablas). | Implementada |
| **F07** | **Exención de Recargos 1er Año**: Los contratos nuevos están exentos de recargos moratorios durante su primer año calendario de vida (año de alta). Enforzado por el flag `contrato.exento_recargo_primer_anio=1` y saneamiento D1. | Implementada |
| **F08** | **Coherencia de Infraestructura**: Prohibido el cobro de servicios (ej. drenaje) en contratos que no cuenten con la infraestructura instalada (`contrato.drenaje=0`). La UI debe bloquear la asignación manual de estos cargos. | Implementada |

### 📂 Módulo 03: Usuarios y Segmentación
| ID | Regla | Estado |
|:---:|---|:---:|
| **U01** | Usuario estado `2` = **No Localizado**. Excluido de búsquedas estándar. | Implementada |
| **U02** | Clasificación de "Usuarios Especiales": Aquellos sin contratos vinculados o con todos en suspensión definitiva. | Reporte V2 |
| **U03** | **Tratamiento de No Localizados**: Usuarios con `estado=2` disparan la suspensión definitiva de sus contratos vinculados. Su deuda **no segmenta ni contabiliza** en los reportes financieros operativos (cortes de caja, cartera vencida) — ver R06. | Implementada |

### 📂 Módulo 04: Pagos, Caja y Folios
| ID | Regla | Estado |
|:---:|---|:---:|
| **P01** | Cada pago debe generar un folio único e incremental que vincule a `ligacargos`. | Validada |
| **P02** | Los folios de pago manuales no deben solaparse con folios de contratos nuevos. | En Revisión |

### 📂 Módulo 05: Reportes y Validación de Datos
| ID | Regla | Estado |
|:---:|---|:---:|
| **R01** | Sincronización estricta entre sumatoria de listas y totales de encabezado en todos los reportes operativos. | Validada |
| **R02** | **Filtros Canónicos de Cartera y Deuda** — Todos los reportes financieros deben aplicar los mismos filtros para consistencia entre sí. `excluir_cartera = [6, 19, 20, 21, 22]`: categorías excluidas de cartera vencida y deuda total (cat 6=multas asamblea, 19-22=conceptos únicos CB/PROP, MLT/DESP, CNT/NADO, CNC/FUGA). Cat 16/17 (REC/AGUA, REC/DREN) **SÍ se incluyen** en cartera desde v2 — sus rezagos (anio < anio_ref) van a R.CART. `sin_anio = [6]`: solo FALTAS DE ASAMBLEA es sin filtro de año (acumulativa por diseño); cats 16/17 usan `anio = anio_ref`. Cat 11 (recargos normales) SÍ se incluye en cartera. Siempre añadir `AND c.estado != 4` y `AND u.estado != 2` explícito en reportes de cartera. Implementado en `concentradocortecaja.php`, `concentradocortecajaresumen.php`, `carteravencida.php`, `listadeudores.php`. | Implementada |
| **R03** | **Semántica canónica de estados en `ligacargos` / `ligacargos_historico`** — `estado=0`: pendiente de cobro. `estado=1`: pagado (por `sp_pagar_cargo` o caja.php). `estado=-1`: cancelado canónico (por `sp_cancelar_cargo`, D7, Paso 8-B, saneamiento 10c). **`estado=2` NO EXISTE** como valor válido en ligacargos — era un bug en scripts previos; todos corregidos. `estado=-2`: legacy pre-2018 (≈68 registros históricos, solo lectura). `estado=-3`: legacy pre-2018 (≈166 registros históricos, solo lectura). Para cartera y deuda solo consultar `estado=0`. Toda cancelación produce `estado=-1` con `fpago=NOW()`. Documentado en `docs-dev/doc-estabilizacion/MIGRATION_PROTOCOL.md`. | Implementada |
| **R04** | **SQL dinámico desde catálogo** — `concentradocortecaja.php` y `concentradocortecajaresumen.php` construyen sus CASE/COUNT dinámicamente desde `SELECT id, nombre, nombrecorto FROM categorias ORDER BY id`. Esto asegura que las categorías 19–22 (V2) estén incluidas automáticamente sin hardcoding. Nunca hardcodear IDs de categoría en los reportes de caja; leer siempre desde el catálogo. | Implementada |
| **R05** | **Conteo de folios en caja** — Un folio puede cubrir múltiples contratos del mismo usuario. El contador por columna en `concentradocortecaja.php` usa `$folios_c[$cid][$folio] = true` (array-set) para contar folios únicos, no filas del GROUP BY. El total al pie usa `COUNT(DISTINCT folio)`. Ambos deben coincidir con los `(n=X)` de `concentradocortecajaresumen.php`. Verificado $0 diferencia en 5 períodos 2024-2026. | Implementada |
| **R06** | **C.N.L. (Cartera No Localizada, `u.estado=2`) excluida de reportes financieros** — Usuarios con `estado=2` (NO LOCALIZADO) y sus cargos de cartera se excluyen de todos los reportes: `concentradocortecaja.php` (columna eliminada, `u.estado != 2` en R.CART), `concentradocortecajaresumen.php` (línea eliminada, `u.estado != 2` en cartera), `carteravencida.php` (segmentación eliminada, tabla unificada). En `concentradocortecaja.php` queda solo la definición en el Glosario de Conceptos como referencia informativa. En Host C actualmente no existen usuarios con `estado=2`, por lo que el impacto numérico es $0. | Implementada |
| **R07** | **Parámetros URL de reportes de caja** — `concentradocortecaja.php`: `inicio` (DD/MM/AAAA), `fin` (DD/MM/AAAA), `anio_corte` (opcional, override de año de ciclo). `concentradocortecajaresumen.php`: ídem + `existencia_anterior` (requerido). `anio_corte` solo es necesario cuando `inicio` y `fin` son de años distintos (período que cruza cambio de año); sin él el PHP usa `anio_i` como default (correcto para todos los períodos reales del sistema). El modal HTML en `listados.php` / `paxscript.js` muestra el campo `anio_corte` condicionalmente y con nota explicativa. `carteravencida.php`: solo `anio` (default = año actual). | Implementada |

---

## 🔍 Bitácora de Descubrimiento (Pendientes de Validar)
Espacio para anotar comportamientos detectados en el código legado o procedimientos manuales que deben formalizarse como reglas:
1.  **[D001]**: Investigar el trigger exacto de `calcula_recargos.php` para definir la fecha de corte mensual.
2.  **[D002]**: Validar la lógica de "Metros Lineales" y su impacto en la deuda histórica.
3.  **[D003]**: Determinar si existen descuentos automáticos por "Pronto Pago" no documentados.

---

---

**Nota para todos los agentes IA (Claude Code y Antigravity/Gemini)**: Al explorar el código, si descubres una nueva restricción o lógica condicional, agrégala aquí con un ID incremental y su módulo correspondiente.

```

</details>

---

## Agent Response

### Thinking

**Defining New Rules**

I've decided to add Rule U04 to Module 03 for placeholder user cleanup. Also, I'm introducing Rule A01 in a newly created Module 06, focused on assembly consolidation and limitations.




### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.838813156s
- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 10:42 pm

---

## Agent Response

### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 10:42 pm

---

<details>
<summary>Conversation History</summary>

# Conversation History
Here are the conversation IDs, titles, and summaries of your most recent 9 conversations, in reverse chronological order:

<conversation_summaries>
## Conversation 56dc8f40-c378-4477-8cb6-fb1541288a38: Stabilizing Agua V2 Financial Engine
- Created: 2026-04-24T16:42:58Z
- Last modified: 2026-04-26T00:39:24Z

## Conversation 79a8e9a2-6401-44f1-a5db-8896eda906a6: Validating Pipeline Synchronization Logs
- Created: 2026-04-24T06:44:25Z
- Last modified: 2026-04-24T08:24:54Z

### USER Objective:
Stabilizing Financial Data Integrity

Objective: Finalize the stabilization and audit-readiness of the Agua V2 financial engine by enforcing strict data validation and architectural integrity.

Goals:
1. Implement Poka-Yoke sanitization protocols across core PHP modules (cargos, contratos) to prevent malicious or malformed data entry.
2. Enforce database-level uniqueness constraints (UNIQUE KEYs) in the schema to permanently eliminate operational data duplication.
3. Validate the hybrid surcharge logic and F05 compliance through the established automated SQL audit pipeline.
4. Prepare the system for final production deployment by securing input sanitation and validating historical data parity.

## Conversation 7b4df0fd-8f9f-4e1c-9691-7e0bbc280aa5: Validating Contract Exemption Logic
- Created: 2026-04-23T16:57:43Z
- Last modified: 2026-04-24T06:42:03Z

### USER Objective:
Stabilizing Agua V2 Surcharge Architecture

Main Objective: Finalize the stabilization of the Agua V2 financial engine by enforcing robust debt reconciliation and audit traceability.

Goals:
1. Reconcile historical surcharge logic by aligning the V2 parametric engine with the legacy data structure, abandoning hardcoded fallbacks.
2. Sanitize the `cargos` catalog to correctly flag historical surcharge eligibility without corrupting financial data.
3. Validate the `Contrato 500` UI-9 transition to confirm the system correctly triggers multi-year surcharge calculations.
4. Eliminate reliance on "soft" flags by utilizing the `es_recargo_moratorio` alias in views for financial auditing and reporting.
5. Execute a surgical data fix in the `cargos` catalog to ensure the surcharge motor remains "obedient" and accurate, guaranteeing audit-ready data integrity for 2024–2025.

## Conversation 6d27cf24-4496-444d-913c-de2298a07da5: UI Optimization for Suspended Contracts
- Created: 2026-04-23T03:17:22Z
- Last modified: 2026-04-23T05:53:51Z

### USER Objective:
Stabilizing Agua V2 State Transitions

Objective: Finalize the stabilization of Agua V2 state transition protocols by addressing financial data integrity and enhancing administrative diagnostics.

Goals:
1. Complete manual test case execution for state transitions (D → G) and resolve discrepancies in financial reporting.
2. Validate and patch root causes for incorrect charge generation during contract reactivations (e.g., Cto #1006).
3. Ensure financial consistency in reporting modules (contratoinfo2.php) and verify forensic reflection of contract states.
4. Finalize the integration of administrative reporting for "Suspensión Definitiva" contracts to ensure full audit readiness.

## Conversation 2c24dbf0-a237-4a36-8172-98282de6cf2d: Troubleshooting Amnistía UI Logic
- Created: 2026-04-22T21:09:14Z
- Last modified: 2026-04-23T02:52:01Z

### USER Objective:
Auditing Financial State Transitions

Objective: Finalize the implementation of a rigorous, self-auditing financial transaction layer across all Agua V2 modules.

Goals:
1. Standardize a universal "PRE/POST Financial Snapshot" pattern across all transaction functions (State Changes, Payments, Cancellations, Reassignments, and Manual Applications).
2. Automate the generation of audit logs in the `cambios` table to capture the precise impact on debt totals and adeudo counts per operation.
3. Enhance the `historial_mov_cto.php` report to visualize these financial snapshots with color-coded event classification.
4. Ensure full consistency in financial reporting, even for legacy charges and state-based recalibrations (paridad), to guarantee complete forensic traceability for every administrative action.

## Conversation 772b23ae-0897-4270-9446-4689fdf95548: Executing UI Test Suite
- Created: 2026-04-20T04:38:49Z
- Last modified: 2026-04-20T05:36:46Z

### USER Objective:
Stabilizing Agua UI Tests

USER Objective: Complete the validation of the Agua V2 testing suite (Section 1 / Group A) to ensure the system's operational readiness.
Goals:
1. Systematically execute UI test cases for contract management, state transitions, and infrastructure configuration based on the stabilized test plan.
2. Refine automation protocols by documenting specific UI interactions, such as using TAB for field auto-completion and handling browser confirmation dialogues.
3. Validate system behavior against business rules, specifically addressing contract creation constraints, parity synchronization, and administrative blocking mechanisms.
4. Update the formal test documentation to reflect empirical findings and UI-specific interaction patterns discovered during manual and automated execution.

## Conversation cbf979ab-fe6f-4218-97aa-78333e6a1a56: Audit Caja Reconciliation Discrepancies
- Created: 2026-04-20T01:04:06Z
- Last modified: 2026-04-20T04:13:17Z

### USER Objective:
Stabilizing Agua Reporting Modules

Objective: Resolve identified logic gaps and architectural inconsistencies in the Agua V2 reporting and receipt modules on Host C.

Goals:
1. Patch the date logic in `reciboegreso.php` to ensure correct temporal mapping of expenditures.
2. Address identified bugs and legacy function dependencies in `credencial.php` to improve module robustness.
3. Verify all code changes against the updated forensic audit documentation to maintain system-wide congruency.
4. Finalize and push all stabilization patches to the production repository to ensure full operational readiness.

## Conversation 70313f54-0ccd-4b31-b9dd-0a85cd24482b: Validating Host C PHP Errors
- Created: 2026-04-20T02:37:26Z
- Last modified: 2026-04-20T02:43:35Z

### USER Objective:
Validating Host C PHP Errors

Main Objective: Evaluate the current status of reported PHP notices from Host C logs without performing any code modifications.

Goals:
1. Confirm if the "Undefined index" notices in `contrasenas.php` (lines 71-116) and `carteravencida.php` (line 50) are still valid based on existing file content.
2. Verify the persistence of the "Undefined property" notice for `Conexion::$insert_id` in `usuarios.php` (line 296).
3. Provide a clear, non-corrective status report to the user regarding the state of these specific runtime errors.

## Conversation d93a3dd6-def6-407e-bf68-58e09c7b5178: Refactoring Agua Assembly Module
- Created: 2026-04-19T00:37:18Z
- Last modified: 2026-04-19T01:46:32Z

### USER Objective:
Refining Asamblea Administrative Interface

Main Objective: Finalize the stabilization and UI refactor of the Asamblea V2 administrative module on Host C.

Goals:
1. Complete the transition of the application entry point to the "Administración" view.
2. Implement dynamic, database-driven labels for the "Multa por Inasistencia" to replace hardcoded inputs.
3. Standardize and fix the administrative action table to ensure proper state-based control buttons (Start/Close/Download) appear for all assemblies.
4. Clean up the UI by removing redundant navigation elements like the "Pase de Lista" button.
5. Deploy changes manually to the production-ready Host C environment following established architectural constraints and legacy system protocols.

</conversation_summaries>

</details>

---

### CORTEX_STEP_TYPE_KNOWLEDGE_ARTIFACTS

**Status:** Completed
**Created:** 25 Apr 2026, 10:42 pm

---

## Agent Response

### Actions

**Tool:** `replace_file_content`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Code Edit

**Status:** Completed
**Created:** 25 Apr 2026, 10:42 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

los dos puntos 1 y 2, en cuales documentos quedaron actualizadas ? 

<details>
<summary>Context</summary>

**Active File:** `02_schema_tablas_base.sql`
**Language:** oracle-sql
</details>

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

sube todo, a los repos correspondientes.
Recuerdame en q nos quedamos o q pendientes hay

<details>
<summary>Context</summary>

**Active File:** `03_sync_host_a.sql`
**Language:** oracle-sql
</details>

---

<details>
<summary>File: `Unknown file` (L82-113)</summary>

**Path:** `Unknown file`

```
INSERT INTO _san_asamb_counts
SELECT asamb.id, asamb.fecha, 
       (SELECT COUNT(*) FROM asistentes WHERE id_asamblea = asamb.id)
FROM asamblea asamb;

-- B. Identificar asambleas ganadoras
DROP TABLE IF EXISTS _san_asamb_winners;
CREATE TABLE _san_asamb_winners (
    winner_id INT PRIMARY KEY,
    fecha DATE,
    KEY (fecha)
) ENGINE=InnoDB;

INSERT INTO _san_asamb_winners
SELECT MAX(c.id), c.fecha
FROM _san_asamb_counts c
INNER JOIN (
    SELECT fecha, MAX(cnt) as max_cnt
    FROM _san_asamb_counts
    GROUP BY fecha
) m ON c.fecha = m.fecha AND c.cnt = m.max_cnt
GROUP BY c.fecha;

-- C. Mover asistentes (UPDATE IGNORE para evitar colisiones de PK)
-- Si un contrato ya existe en la ganadora, el registro se queda en la perdedora
-- y será eliminado en el paso F (Limpieza de Huérfanos).
UPDATE IGNORE asistentes a
JOIN asamblea asamb_orig ON a.id_asamblea = asamb_orig.id
JOIN _san_asamb_winners w ON asamb_orig.fecha = w.fecha
SET a.id_asamblea = w.winner_id
WHERE a.id_asamblea <> w.winner_id;

```

</details>

---

## Agent Response

### Thinking

**Reviewing Tasks and Reminders**

I'm focusing on the user's instructions: pushing code to repositories and providing reminders on pending tasks. I'm making sure to address both the `agua` and `agua_chatledger` repositories as they are both relevant to the instructions. I'll need to figure out what needs to be pushed and what pending work is outstanding.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.000490776s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 10:56 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 10:56 pm

---

## Agent Response

### Thinking

**Clarifying Folder Structure**

I'm currently focused on the file system organization. I've confirmed that the `.agents/` directory is a symbolic link, pointing to the `.chatledger/.agents` location. Also, I've verified that files like `CLAUDE.md` and `GEMINI.md` are symbolic links as well. It looks like `docs-dev/doc-estabilizacion/` is a real directory, unlike the others, and it resides in the `agua` repository. The `.chatledger/` itself is also likely a symbolic link to `agua_chatledger`, which I should look into next.




<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.433012651s
- **Model:** Gemini 3 Flash
</details>

---

## User Request

commite y sube todo a  los repos q corresponda

<details>
<summary>Context</summary>

**Active File:** `03_sync_host_a.sql`
**Language:** oracle-sql
</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 11:04 pm

---

## Agent Response

### Actions

**Tool:** `command_status`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Process Monitor

**Status:** Completed
**Created:** 25 Apr 2026, 11:04 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 25 Apr 2026, 11:05 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 11:05 pm

---

## Agent Response

### Actions

**Tool:** `list_dir`
**Path:** `/home/carlos/GitHub/agua_chatledger`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>Directory: `agua_chatledger` (97 items)</summary>

**Path:** `home/carlos/GitHub/agua_chatledger`

| Name | Type | Size |
|------|------|------|
| `.agents` | Directory | - |
| `.claude` | Directory | - |
| `.clauderules` | File | 1145 bytes |
| `.git` | Directory | - |
| `.mcp.json` | File | 1036 bytes |
| `Agua_Contract_Logic_Stabilization_0788fab82e28.md` | File | 218211 bytes |
| `Analyzing_Agua_Reporting_Discrepancies_78333e6a1a56.md` | File | 14777 bytes |
| `Analyzing_Automatic_Surcharge_Generation_217b5c14bee6.md` | File | 107221 bytes |
| `Analyzing_User_Search_Duplicates_010475e00de2.md` | File | 454368 bytes |
| `Analyzing_Water_Service_Debt_be7c9c8d1c27.md` | File | 390425 bytes |
| `Assisting_With_Ongoing_Projects_9679e4515c82.md` | File | 10161 bytes |
| `Audit_Caja_Reconciliation_Discrepancies_78333e6a1a56.md` | File | 110970 bytes |
| `Auditing_Water_Service_Debt_be7c9c8d1c27.md` | File | 390748 bytes |
| `CLAUDE.md` | File | 6833 bytes |
| `Checking_MySQL_Database_Version_589c291d1256.md` | File | 14561 bytes |
| `Counting_Users_On_Host_C_005796c7496e.md` | File | 90970 bytes |
| `Database_Backup_And_Verification_17f11d2170ba.md` | File | 56576 bytes |
| `Database_Import_Character_Set_Issues_688e9222f44e.md` | File | 91640 bytes |
| `Debugging_Contract_Surcharge_Assignment_fa60e5753421.md` | File | 395434 bytes |
| `Defining_No_Localizado_User_Behavior_167dc8a65232.md` | File | 406181 bytes |
| `Enhancing_User_Search_And_Display_010475e00de2.md` | File | 137013 bytes |
| `Establishing_Project_Context_Configuration_31f503c35747.md` | File | 204759 bytes |
| `Executing_Agua_Saneamiento_Tests_5e5a2d20b173.md` | File | 99892 bytes |
| `Executing_Agua_Stabilization_Tests_1c737ab57f1d.md` | File | 159252 bytes |
| `Executing_Agua_Stabilization_Tests_21d726b91352.md` | File | 462139 bytes |
| `Executing_Agua_Stabilization_Tests_4fb8ebf18699.md` | File | 360675 bytes |
| `Executing_Agua_Stabilization_Tests_5db69ff35126.md` | File | 578819 bytes |
| `Executing_UI_Test_Suite_4689fdf95548.md` | File | 167230 bytes |
| `FEATURE_RESTRICT_2_tomas_por_usuario_mismo_domicil_c6a72e3570c9.md` | File | 9570 bytes |
| `Financial_Data_Reconciliation_And_Repair_e36204f92811.md` | File | 922640 bytes |
| `Fixing_Contract_Toma_Report_dcfcff5f1f9f.md` | File | 332965 bytes |
| `Fixing_Duplicate_Contract_Notes_979d81d75006.md` | File | 508360 bytes |
| `Fixing_Financial_Data_Inconsistencies_e36204f92811.md` | File | 922637 bytes |
| `Fixing_Login_Authentication_Error_91efba210118.md` | File | 247311 bytes |
| `GEMINI.md` | File | 6841 bytes |
| `Generating_High_Debt_Report_1f70e1f78a4c.md` | File | 305194 bytes |
| `Identifying_Project_Host_Configurations_81800a54b171.md` | File | 41789 bytes |
| `Implementing_User_Menu_Features_261c83016221.md` | File | 380590 bytes |
| `Implementing_Usuarios_Menu_Feature_261c83016221.md` | File | 380593 bytes |
| `Investigating_Charge_Cancellation_49a7205b417b.md` | File | 355085 bytes |
| `Investigating_Host_Synchronization_Anomalies_f2c3598f2011.md` | File | 562186 bytes |
| `Issues_Resueltos_Amnistia_Auditoria_PanelTomas_a966039d.md` | File | 6592 bytes |
| `Issues_Resueltos_Auditoria_a8ff3fa8.md` | File | 4416 bytes |
| `Issues_Resueltos_BitacoraPipeline_UI_00c5008.md` | File | 5180 bytes |
| `Issues_Resueltos_Encuadre_Saneamientos_b6ff3b22.md` | File | 6957 bytes |
| `Issues_Resueltos_P1-AuditoriaReasignacion_20260414.md` | File | 5562 bytes |
| `Issues_Resueltos_PlanPruebas_DatosPrecisos_da20fec1.md` | File | 6293 bytes |
| `Issues_Resueltos_ReporteContratosToma_3f90b4f.md` | File | 5773 bytes |
| `Issues_Resueltos_RestriccionEstados_b5b0a269.md` | File | 2901 bytes |
| `Issues_Resueltos_UX_Ficha_Formulario_a966039d.md` | File | 3381 bytes |
| `LEPP_Stack_Migration_Plan_c114864f3832.md` | File | 110180 bytes |
| `Migrating_Assembly_V2_Webapp_a427816e51bc.md` | File | 705647 bytes |
| `Migrating_Legacy_Webapp_Architecture_3b519f250f4e.md` | File | 68202 bytes |
| `Migrating_Menu_to_Options_Page_5f80cd857141.md` | File | 504487 bytes |
| `Modifying_Validation_Sync_Report_78853b857322.md` | File | 182006 bytes |
| `Optimizing_MariaDB_Slow_Query_Logging_ec9516a28366.md` | File | 322095 bytes |
| `Primero_realiza_el_cambio_a_rama_feature_upgrade_v_a427816e51bc.md` | File | 10415 bytes |
| `QUERY_FOR_INFORMATION_CONTRACTS_CHARGES_MANUAL_ASS_fa60e5753421.md` | File | 10245 bytes |
| `QUERY_FOR_INFORMATION_CONTRACT_STATES_Validar_si_u_3b4cf5dfe0b1.md` | File | 10631 bytes |
| `Reassigning_Contracts_And_Data_e38f996ec9ea.md` | File | 443276 bytes |
| `Reconciling_Financial_Data_Records_39c977638cec.md` | File | 282247 bytes |
| `Recovering_Audit_File_Logic_eb607b5a8861.md` | File | 32312 bytes |
| `Refactoring_Agua_Assembly_Module_58e09c7b5178.md` | File | 167634 bytes |
| `Reorganizing_Agua_Configuration_Dashboard_a9c52c17a702.md` | File | 167247 bytes |
| `Reporte_de_Caja_Precisi_n_6ea5589911bc.md` | File | 414415 bytes |
| `Resolving_Contract_Data_Inconsistencies_e38f996ec9ea.md` | File | 186499 bytes |
| `Resolving_Contract_Status_Transitions_d5f2fead4c34.md` | File | 106667 bytes |
| `Resolving_Financial_Data_Access_Errors_fb1541288a38.md` | File | 576344 bytes |
| `Restricting_User_Service_Connections_c6a72e3570c9.md` | File | 91762 bytes |
| `Restricting_User_Water_Connections_c6a72e3570c9.md` | File | 420524 bytes |
| `Resumen_de_sesion_16042026_antes_7_pm_para_pruebas_ca7e0610a7ef.md` | File | 12058 bytes |
| `Stabilizing_Agua_V2_Financial_Engine_fb1541288a38.md` | File | 264164 bytes |
| `Stabilizing_Cash_Register_Reports_a80243dc2be6.md` | File | 885993 bytes |
| `Stabilizing_Contract_UI_Status_Mapping_979d81d75006.md` | File | 3175 bytes |
| `Stabilizing_User_Search_Filters_585e551c238f.md` | File | 808895 bytes |
| `Swapping_User_Contract_IDs_534bc4a2df7b.md` | File | 663196 bytes |
| `Syncing_Agua_Chatledger_Repository_fc826768033e.md` | File | 10849 bytes |
| `Tracking_Contract_Status_Changes_423733a337f5.md` | File | 58554 bytes |
| `Troubleshooting_Amnist_a_UI_Logic_98282de6cf2d.md` | File | 754600 bytes |
| `UI_Optimization_for_Suspended_Contracts_de2298a07da5.md` | File | 513959 bytes |
| `Unifying_Agua_Testing_Protocols_f6e0f00ed9f2.md` | File | 281950 bytes |
| `Validating_Agua_Test_Plan_587e879d4278.md` | File | 425873 bytes |
| `Validating_Agua_Testing_Protocols_f555583cc739.md` | File | 227820 bytes |
| `Validating_Automated_Debt_Sanitation_f0ca8f22ce82.md` | File | 597453 bytes |
| `Validating_Cash_Report_Consistency_a80243dc2be6.md` | File | 885994 bytes |
| `Validating_Contract_Activation_Surcharges_3b4cf5dfe0b1.md` | File | 112326 bytes |
| `Validating_Contract_Exemption_Logic_7e0bbc280aa5.md` | File | 352776 bytes |
| `Validating_Contract_State_Transitions_3b4cf5dfe0b1.md` | File | 154856 bytes |
| `Validating_Contract_Surcharge_Logic_3b4cf5dfe0b1.md` | File | 13809 bytes |
| `Validating_Host_C_PHP_Errors_0a85cd24482b.md` | File | 77734 bytes |
| `Validating_Multas_Sync_Logic_c459b96c204c.md` | File | 84307 bytes |
| `Validating_Pipeline_Synchronization_Logs_8896eda906a6.md` | File | 854948 bytes |
| `Validating_UI_9_Tariff_Recalculation_82227bcf6ec6.md` | File | 393401 bytes |
| `Web_App_Migration_Plan_c114864f3832.md` | File | 110177 bytes |
| `aguav2-scope` | Directory | - |
| `docs-dev` | Directory | - |
| `logs` | Directory | - |

</details>

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Execution Error

**Status:** Completed
**Created:** 25 Apr 2026, 11:06 pm

---

## Agent Response

### Thinking

**Considering Directory Limitations**

I've hit a roadblock. It seems I can't execute commands directly on a directory, even if I have permission to list its contents. The path discrepancy between the workspace and the target directory might be the issue. I'm going to revisit the symlink approach, but with a different perspective.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.943651776s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 11:06 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 11:06 pm

---

## Agent Response

### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 11:06 pm

---

## Agent Response

### Actions

**Tool:** `command_status`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

### Process Monitor

**Status:** Completed
**Created:** 25 Apr 2026, 11:06 pm

---

## Agent Response

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

## User Request

Revisa a detalle los casos de los docs:  Guia de Pruebas — Tester Humano (V1.0).md, y tambien Plan de Pruebas — Sprint Post-Correcciones.md , para:

. Hacer que ambos esten alineados al 100% a lo que dictan:  analisis_paridad_3hosts.md y transiciones_estado_contratos.md; y a la rules de gemini.md
. Analiza si esta completo el caso de prueba del cto 405 (antes UI-9), del cual hemos estado alineando por mucho. 
. Dale otra analizada a los scripts sql, si todo esta en orden completo y correcto; por que se habia perdido el cambio de reversal_threshold, fue recuperado hace un momento.
. Informa de la consistencia y completud. 

<details>
<summary>Context</summary>

**Active File:** `03_sync_host_a.sql`
**Language:** oracle-sql
</details>

---

## Agent Response

### Thinking

**Aligning Test Documents**

I am working to ensure complete alignment between the test documentation, specifically `Guia de Pruebas — Tester Humano (V1.0).md` and `Plan de Pruebas — Sprint Post-Correcciones.md`, and the core analyses, including `analisis_paridad_3hosts.md`, `transiciones_estado_contratos.md`, and `GEMINI.md`. My focus is on achieving 100% concordance.




### Actions

**Tool:** `run_command`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.604421985s
- **Model:** Gemini 3 Flash
</details>

---

### Terminal Command Execution

**Status:** Completed
**Created:** 25 Apr 2026, 11:54 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Plan de Pruebas — Sprint Post-Correcciones.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# 📜 Plan de Pruebas Maestro: Estabilización e Integridad (V2.20)

Este documento define la suite de pruebas final para validar la migración a la arquitectura V2 (MariaDB/PHP 7.4).
Usa datos reales verificados de Host C y datos sintéticos QA (contratos mártires 9001–9008, inyectados vía `--with-qa`).

> **Nota sobre datos QA**: Los contratos/usuarios 9001–9008 / 9901–9907 **no existen en Host C en modo normal**.
> Se inyectan en Host A antes del sync mediante `00_inject_qa_tests.sql` ejecutado con `Full-Pipeline-Sync.sh --with-qa`.
> Las pruebas marcadas **[Dato Real]** son ejecutables directamente en Host C sin sync especial.

> **URL base ÚNICA (Host C - MariaDB/V2)**: `http://192.168.0.111:7001/agua`
> **Acceso QA**: usuario `nancy` / contraseña `260180`
> *Nota: Host A y B son exclusivos para transformación de datos; no se deben usar para navegar la webapp.*

---

## 🤖 Convenciones para Automatización de Browser

Cada caso de Sección 1 y 2 incluye un bloque `[AUTO]` con los campos mínimos para que una herramienta de automatización (Playwright, Selenium, Puppeteer, agente IA con browser) lo ejecute sin ambigüedad:

| Campo | Descripción |
|---|---|
| `url` | Ruta relativa desde `BASE_URL`. Salvo que se indique `[Host C]`, usar Host A. |
| `login` | Secuencia de login si no hay sesión activa: `campo #usuariologin = nancy` → `campo #passwordlogin = 260180` → `submit`. `skip` si ya hay sesión activa. |
| `precond_sql` | Query SQL a ejecutar vía MCP `bdawahost-c` (o `mysql -u root awa` en Host C) antes del test para verificar/preparar estado inicial. |
| `accion` | Interacción UI con selector CSS o texto exacto del elemento. Formato: `selector → acción`. |
| `assert_ui` | Texto o selector visible en pantalla que confirma el resultado. |
| `assert_sql` | Query SQL en Host C que confirma el resultado en BD. |
| `revert_sql` | Query SQL para dejar la BD en estado neutro después del test. |
| `datos_qa` | `si` = requiere `--with-qa`; `no` = usa datos reales siempre disponibles. |

> ### ⚠️ Protocolo obligatorio para pruebas de UI con browser
>
> **Leer y analizar todos los mensajes de respuesta de la pantalla** — alerts nativos del browser (`window.alert`, `window.confirm`, `window.prompt`), mensajes renderizados en el DOM (divs de error/éxito, modales jQuery, texto inyectado vía AJAX) — **antes de continuar al siguiente paso o caso**.
>
> **Propósito**: Muchas acciones de la webapp retornan el resultado exclusivamente vía alert o texto AJAX. Ignorarlos impide saber si la operación fue exitosa, generó un error de negocio (ej. "No se permite saltar entre suspensiones") o fue bloqueada por una validación (ej. "mínimo 20 caracteres"). Sin leer el mensaje, el agente avanza sobre un estado de BD incorrecto y contamina los casos siguientes.
>
> **Regla de impedimento**: Si el mensaje indica que la operación fue **rechazada o bloqueada** (texto que contenga: `"Error"`, `"No se permite"`, `"no aplica"`, `"no pudieron"`, `"mínimo"`, o cualquier condición negativa), el caso se marca como **IMPEDIDO** y se avanza al siguiente sin ejecutar el `assert_sql` ni el `revert_sql`. Registrar el texto exacto del mensaje en el reporte.
>
> **Cómo capturar alerts nativos**: Interceptar con `page.on('dialog', ...)` (Playwright) o `driver.switch_to.alert` (Selenium) antes de ejecutar la acción que los dispara. Aceptar el diálogo y guardar su texto para el reporte.
>
> Este protocolo está alineado con la Regla 10 del Ground Truth (Claude) / Runbook (Gemini): *"Ante un bloqueo de la herramienta, leer el mensaje resultante e identificar si es un impedimento para avanzar al siguiente caso."*

> **Configuración de entorno** (definir antes de ejecutar la suite):
> - `BASE_URL` = `http://192.168.0.111:7001/agua` (Host C — único ambiente Webapp)
> - La BD de verificación (`precond_sql`, `assert_sql`, `revert_sql`) es Host C vía MCP `bdawahost-c` o cli `mysql -h 192.168.0.111 -P 7002 -u root awa`.
> - **Ruta de assets de prueba**: `docs-dev/doc-estabilizacion/`

> **Orden de ejecución recomendado**: Grupo A → B → C → D → E → F.
> Los casos destructivos (UI-5 sub-casos C/E/G, UI-19) deben ejecutarse al final o con datos QA.
> Si un caso modifica datos, ejecutar `revert_sql` antes del siguiente caso que use el mismo contrato.

> ### 🔴 Issues de Ejecutabilidad Automatizada — Secciones 1 y 2
>
> Tabla de bloqueos identificados que impiden la ejecución no-atascada de una herramienta de browser automation (Google Antigravity / Enable Browser Tools / Playwright).
>
> | ID | Caso | Tipo | Descripción del Issue | Corrección Aplicada |
> |:---:|:---:|:---:|---|:---:|
> | ISS-01 | UI-3 (A y B) | **Atasco** | El `accion` no incluye `textarea[name=texto]` con motivo ≥20 chars. El backend rechaza el cambio de estado por motivo vacío ANTES de validar la transición C07 — el test nunca llega al assert correcto. | ✅ Sección accion corregida |
> | ISS-02 | UI-5-A | **Atasco** | Sub-caso 1→2 bloqueado fuera de diciembre: el backend retorna "Solo puede solicitarse en Diciembre" y la herramienta lo lee como error de negocio, no como bloqueo esperado. No hay protocolo de qué hacer si se ejecuta en otro mes. | ✅ precond_sql + manejo IMPEDIDO |
> | ISS-03 | UI-5-D | **Datos** | Sub-caso 2→1 usa contrato `1006`. Si UI-1 ya lo reactivó (estado=1 en lugar de 2), el precond falla silenciosamente y la herramienta intenta cambiar de 1→1 sin error explícito, corrompiendo la secuencia. | ✅ precond IMPEDIDO explícito |
> | ISS-04 | UI-5-G | **Ambigüedad** | El contrato a usar es `"9002 o 405 post-revert"` — la herramienta no puede resolver esta condición sin saber el estado actual. Sin variable resuelta, el accion queda incompleto. | ✅ Prioridad resuelta: QA `9002` si estado=3, sino IMPEDIDO |
> | ISS-05 | UI-6 (B,C,D) | **Datos** | Los sub-casos B, C y D asumen `COUNT(*) FROM contrato WHERE numusuario=1 = 0`, pero si el sub-caso A falló a mitad y dejó un contrato huérfano, los sub-casos siguientes fallan por el mismo usuario. | ✅ precond_sql reforzado con DELETE previo |
> | ISS-06 | UI-6-E | **Selector** | El `accion` no especifica el domicilio exacto del contrato `100` — solo dice "mismo domicilio". La herramienta necesita el string exacto para ingresar el domicilio en el campo de texto. | ✅ precond_sql recupera domicilio real |
> | ISS-07 | UI-7 | **Duplicado** | UI-7 y UI-6-E son el mismo caso (bloqueo de 3ra toma via Nuevo Contrato). UI-7 dice "también vía guardaContrato()" pero no tiene sub-caso para edición de contrato existente. | ✅ Sub-caso B añadido: bloqueo vía edición de contrato existente |
> | ISS-08 | UI-9 | **Revert incompleto** | El `revert_sql` describe una acción UI ("Editar contrato 500 → tipo=Normal → Guardar") pero no incluye SQL directo. Si la UI falla en el revert, queda contrato 500 en tipo Comercial, rompiendo UI-10 y UI-11. | ✅ revert_sql SQL directo añadido como fallback. `ligacargos_historico` no requiere revert (No Retroactividad). |
> | ISS-09 | UI-10 | **Contaminación** | UI-9, UI-10 y UI-11 usan el mismo contrato `500`. Si UI-9 no revirtió el tipo a Normal, UI-10 opera sobre contrato Comercial y el monto esperado de la ANUALIDAD cambia. El precond de UI-10 no verifica el tipo de toma. | ✅ precond_sql verifica `tipo=0` |
> | ISS-10 | UI-11 | **Selector faltante** | El `accion` dice "localizar botón de cambio rápido de conexión agua" sin dar selector CSS ni ID del botón. La herramienta no puede encontrarlo. | ✅ Selector `button[data-servicio="agua"]` o AJAX endpoint documentado |
> | ISS-11 | UI-11 | **Revert UI** | El `revert_sql` es una acción UI ("Clic en botón de reconexión"). Si la herramienta no puede hacer clic, no hay SQL fallback. | ✅ revert_sql SQL directo añadido |
> | ISS-12 | UI-13 | **Revert incorrecto** | El `revert_sql` usa `ORDER BY id DESC LIMIT 1` sin folio como filtro. Si se cobró más de un cargo, solo revierte 1 y quedan los otros en estado=1 contaminando UI-14 y posteriores. | ✅ revert_sql usa folio capturado |
> | ISS-13 | UI-14 | **Flujo ambiguo** | El paso 1 dice "si ya está pagada, inyectar un cargo pendiente nuevo" — instrucción manual imposible para la herramienta. El precond_sql ya cubre esto con IMPEDIDO, pero el cuerpo del caso no está alineado. | ✅ Paso 1 simplificado — solo IMPEDIDO si precond falla |
> | ISS-14 | UI-16 | **Revert SQL peligroso** | El `revert_sql` usa subconsulta anidada con `SELECT id FROM ligacargos` en el WHERE de un UPDATE — MariaDB no permite actualizar y leer la misma tabla en subconsulta. Error de SQL garantizado. | ✅ revert_sql reescrito con DELETE seguro |
> | ISS-15 | UI-17 | **Flujo cancelación** | El `accion` de sub-caso A dice "clicar link `#botoncancelar` de nuevo o confirmar según flujo JS" — ambigüedad total. La herramienta necesita el flujo exacto: qué selector activa la cancelación. | ✅ Flujo de cancelación documentado paso a paso |
> | ISS-16 | UI-18 | **precond incorrecto** | `SELECT ... FROM vw_ligacargos_pendientes WHERE estado=-1` es incorrecto: `vw_ligacargos_pendientes` solo retorna `estado=0`. Los cancelados están en `vw_ligacargos_all`. | ✅ precond_sql corregido a `vw_ligacargos_all` |
> | ISS-17 | UI-19 | **Sin aislamiento** | Modificar la tarifa de "ANUALIDAD DEL AGUA 2026" afecta todos los contratos reales con ese cargo pendiente. Si el revert falla (error de red, timeout), todos los contratos quedan con monto=601. Sin dato QA alternativo. | ✅ Cargo de prueba aislado añadido como alternativa |
> | ISS-18 | UI-21 | **Selector faltante** | El `accion` dice "buscar por apellido un usuario diferente" sin especificar selector del campo de búsqueda de propietario. La herramienta no sabe cómo disparar la búsqueda dentro del panel de cambio de propietario. | ✅ Selector `#busqueda_usuario_cambio` documentado |
> | ISS-19 | UI-23 | **Dependencia implícita** | `precond_sql` dice "ninguno — depende de UI-17" pero no hay guard: si UI-17 no se ejecutó, el assert siempre falla (no hay registro de cancelación). | ✅ precond_sql con guard explícito |
> | ISS-20 | UI-24 | **Dependencia implícita** | Depende de UI-17 y UI-18 pero no tiene precond_sql para verificar que existen los registros previos. Si no existen, el `accion` navega al historial y no hay nada que verificar — fallo silencioso. | ✅ precond_sql con guard |
> | ISS-21 | UI-25 | **URL faltante** | La URL de `reporte_morosos.php` no existe como ruta absoluta confirmada — solo dice "equivalente". Si la ruta no existe en Host C, la herramienta obtiene 404 y no puede continuar. | ✅ URL canónica verificada |
> | ISS-22 | UI-27 | **Selector faltante** | Mismo issue que UI-21: el panel "Cambio de propietario" no tiene selector documentado para la búsqueda de usuario. | ✅ Idéntico a ISS-18, mismo fix |
> | ISS-23 | UI-28 | **Estado inicial incierto** | Sub-caso A asume que el filtro de estado 1 está seleccionado por defecto. No hay reset de la pantalla de búsqueda antes del sub-caso. El estado previo de los checkboxes contamina los resultados. | ✅ accion incluye reset explícito de filtros |
> | ISS-24 | UI-30 | **Sin URL de login** | La mini-webapp `/asamblea/` dice `login: skip` pero no documenta si tiene alguna validación de sesión. Si tiene, la herramienta queda bloqueada en una pantalla de login desconocida. | ✅ Nota de autenticación clarificada |
> | ISS-25 | UI-32 | **Paso manual imposible** | La copia del archivo `cone.txt` como `lastassambly` es una instrucción de shell — la herramienta de browser no puede ejecutarla. Necesita un endpoint HTTP o un accion alternativo. | ✅ Alternativa: endpoint de upload documentado o precond_manual explícito |
> | ISS-26 | UI-33 | **Datos fantasma** | `assert_sql` menciona contrato `'10','100','1001'` pero los datos del `cone.txt` de referencia nunca se especifican. La herramienta no sabe qué contratos estarán en el archivo procesado en UI-32. | ✅ assert_sql vinculado al resultado de UI-32, no a lista hardcodeada |
> | ISS-27 | RC-1 | **Selector frágil** | `accion` dice anotar `h3:has-text("TOTAL:") b` — si el reporte usa otro formato de encabezado, el selector falla. Además no dice cómo seleccionar el período del reporte antes de generarlo. | ✅ Flujo de selección de período documentado |
> | ISS-28 | RC-2 | **assert_ui vago** | "Total cartera visible en pie de página" sin selector CSS. La herramienta no puede extraer el número para compararlo. | ✅ assert_sql complementario que no depende de UI parsing |
> | ISS-29 | RC-3 | **Dependencia encadenada** | Depende de UI-26 completado, pero no hay guard si UI-26 fue revertido con `DELETE`. | ✅ precond_sql verifica existencia del egreso |
> | ISS-30 | RC-5 | **Dependencia encadenada** | Depende de "cualquier operación reciente" — no hay precond concreto. Si la sesión de prueba empieza por RC-5, el assert falla. | ✅ precond_sql con operación propia autónoma |

> **Comandos Canónicos de Sincronización (BE-1)**:
> | Comando | Propósito |
> | :--- | :--- |
> | `Full-Pipeline-Sync.sh` | Producción: B→A→C (datos vienen de Host B) |
> | `Full-Pipeline-Sync.sh --skip-b` | Offline: salta volcado de B, usa A tal como está → C |
> | `Full-Pipeline-Sync.sh --with-qa` | Testing: B→A→C + inyecta datos sintéticos en A→C |
> | `Full-Pipeline-Sync.sh --with-qa --skip-b` | Testing offline: sin conectar a Host B |

---

## 📑 ÍNDICE DE CASOS DE PRUEBA

### [SECCIÓN 1: PRUEBAS DE INTERFAZ DE USUARIO (UI)](#seccion-1)

#### Grupo A — Gestión de Contratos y Transiciones de Estado
- **1.1 UI-1**: [Amnistía Histórica al Reactivar desde Susp. Temporal (Regla C06)](#ui-1)
- **1.2 UI-2**: [Sin Amnistía al Reactivar desde Susp. Administrativa (Regla C06)](#ui-2)
- **1.3 UI-3**: [Prevención de Saltos de Estado directos 2↔3 (Regla C07)](#ui-3)
- **1.4 UI-4**: [Bloqueos Estrictos en Suspensión Definitiva (Reglas C02/F02)](#ui-4)
- **1.5 UI-5**: [Transiciones de Estado — Cobertura Completa (7 flujos)](#ui-5)
- **1.6 UI-6**: [Creación de Nuevo Contrato — Cobertura Completa (6 sub-casos: A=base, B=sin drenaje, C=comercial, D=2 tomas, E=bloqueo 3ra toma, F=ID duplicado)](#ui-6)

#### Grupo B — Tomas Físicas y Paridad Financiera
- **1.7 UI-7**: [Restricción de 2 Tomas por Domicilio (Regla C08)](#ui-7)
- **1.8 UI-8**: [Bloqueo de Cargos de Drenaje Sin Infraestructura (Regla F08)](#ui-8)
- **1.9 UI-9**: [Recálculo Dinámico de Tarifa al Cambiar Tipo Normal↔Comercial](#ui-9)
- **1.10 UI-10**: [Paridad Físico-Financiera al Desconectar Infraestructura (Motor C04)](#ui-10)
- **1.11 UI-11**: [Cambio Rápido de Conexión y Paridad](#ui-11)
- **1.12 UI-12**: [Contratos Multi-toma en Reporte de Tomas](#ui-12)

#### Grupo C — Pagos, Recibos y Folios
- **1.13 UI-13**: [Flujo Completo de Cobro — Folio Atómico y Recibo](#ui-13)
- **1.14 UI-14**: [Sincronización de Asamblea al Pagar (sp_sinc_asamblea_puntual)](#ui-14)
- **1.15 UI-15**: [Prevención de Cargos Duplicados por Refresh (Refresh-bomb)](#ui-15)

#### Grupo D — Cargos, Tarifas y Cancelaciones
- **1.16 UI-16**: [Agregar Cargos — Normal y Mensualidades](#ui-16)
- **1.17 UI-17**: [Cancelación de Cargos con Nota de Auditoría (mín. 20 chars)](#ui-17)
- **1.18 UI-18**: [Restauración de Cargos Cancelados (Activa + Histórico)](#ui-18)
- **1.19 UI-19**: [Modificación de Tarifa en Catálogo con Propagación Masiva](#ui-19)
- **1.20 UI-20**: [Cruce de Años en Historial de Cargos (Activa + Histórico)](#ui-20)

#### Grupo E — Usuarios, Auditoría y Operaciones Generales
- **1.21 UI-21**: [Cambio de Propietario con Registro de Auditoría](#ui-21)
- **1.22 UI-22**: [Acción 'Hacer Anotación' y Soft-delete](#ui-22)
- **1.23 UI-23**: [Auditoría y Trazabilidad de Operador en Cancelaciones](#ui-23)
- **1.24 UI-24**: [Trazabilidad Visual en Historial (Colores y Segundos)](#ui-24)
- **1.25 UI-25**: [Visibilidad de Usuarios No Localizados (Reglas U01/U03)](#ui-25)
- **1.26 UI-26**: [Categorización de Egresos por ID](#ui-26)
- **1.27 UI-27**: [Fusión Visual de Usuarios — Reasignación de Contrato](#ui-27)
- **1.28 UI-28**: [Búsqueda de Contratos — Filtros Combinados](#ui-28)
- **1.29 UI-29**: [Disposición Visual de Ficha (UX — Layout y Campos)](#ui-29)

#### Grupo F — Módulo Asistencias (Mini-webapp Asamblea ↔ Agua)
- **1.30 UI-30**: [Registro de Asistencia en Mini-webapp Asamblea](#ui-30)
- **1.31 UI-31**: [Descarga de cone.txt / TXT con Firma MD5](#ui-31)
- **1.32 UI-32**: [Procesamiento de Asistencias en Agua (Botón Verde "Asistencias")](#ui-32)
- **1.33 UI-33**: [Verificación de Cargos Cancelados Post-procesamiento](#ui-33)

### [SECCIÓN 2: REPORTES Y CONGRUENCIA FINANCIERA](#seccion-2)
- **2.1 RC-1**: [Empate Detalle vs Resumen de Caja al Centavo](#rc-1)
- **2.2 RC-2**: [Exclusiones Canónicas en Cartera Vencida (categorías 6, 16/17, 19–22)](#rc-2)
- **2.3 RC-3**: [Sincronización de Egresos por ID de Categoría](#rc-3)
- **2.4 RC-4**: [Segmentación de Cartera — Sub-total Deuda Incobrable](#rc-4)
- **2.5 RC-5**: [Trazabilidad de Segundos en Auditoría (HH:MM:SS)](#rc-5)

### [SECCIÓN 3: PRUEBAS DE BACKEND (EJECUCIÓN POR IA)](#seccion-3)

#### Grupo I — Integridad de Schema y Vistas
- **3.1 BE-1**: [Health Check Post-Pipeline (12_validate_pipeline.sql)](#be-1)
- **3.2 BE-2**: [Integridad de Vista Maestra — Empate de Conteos](#be-2)
- **3.3 BE-3**: [Discriminador Canónico de Recargos Moratorios en Vista](#be-3)

#### Grupo II — Saneamiento y Limpieza de Datos
- **3.4 BE-4**: [Limpieza de Deuda en SDF — Depuración Total (Regla C05)](#be-4)
- **3.5 BE-5**: [Reparación de Folios Mixtos (Estado Inconsistente)](#be-5)
- **3.6 BE-6**: [Saneamiento de Usuarios Duplicados — Fusión Automática](#be-6)
- **3.7 BE-7**: [Exención de Recargos en Primer Año de Contrato (Regla F07)](#be-7)
- **3.8 BE-8**: [Normalización de Folios NULL → 0 (Saneamiento D-folio)](#be-8)
- **3.9 BE-9**: [Conservación de Categorías V2 (IDs 19–22) Post-Sync](#be-9)

#### Grupo III — Sincronización de Asambleas
- **3.10 BE-10**: [Sincronización Bulk de Multas de Asamblea (sp_sinc_asamblea_bulk)](#be-10)

#### Grupo IV — Validación Financiera
- **3.11 BE-11**: [Empate Financiero Detalle vs Resumen por Folio](#be-11)
- **3.12 BE-12**: [Consistencia de Exclusiones de Cartera (Regla R02)](#be-12)

---

<a name="seccion-1"></a>
## 🖥️ SECCIÓN 1: PRUEBAS DE INTERFAZ DE USUARIO (UI)

---

### GRUPO A — Gestión de Contratos y Transiciones de Estado

---

<a name="ui-1"></a>
### 1.1 UI-1: Amnistía Histórica al Reactivar desde Susp. Temporal (Regla C06)

**Qué valida**: Que `cambiaestado()` ejecute `_amnistiaRecargosHistoricos()` al transitar `2→1`, cancelando recargos moratorios (cat 16/17) de años `< 2026`. Capital (cat 2/3) y recargos del año actual permanecen.

**Precondición crítica**: Requiere un contrato en Estado 2 **con recargos cat 16/17 pendientes (estado=0) de años < 2026** en `ligacargos_historico`.

**Dato Real**: Contrato `1006` (Estado 2 ✅). ⚠️ Verificado en Host C: **no tiene recargos cat 16/17 pendientes en histórico** — todos ya fueron cancelados (estado=-1) en syncs anteriores. El dato real **no satisface la precondición** para este caso.

**Dato QA** (`--with-qa`, **preferido**): Contrato `9002` (Estado 2, con RECARGO 2024 cat 16 y RECARGO 2025 cat 17 inyectados en `ligacargos_historico`, más ANUALIDAD AGUA 2026 cat 2 en activa que debe conservarse).

**Pasos** (usar contrato `9002` con `--with-qa`):
1. Navegar a `BASE_URL` → buscar contrato `9002` → abrir ficha.
2. Anotar cuántos recargos (cat 16/17 de años < 2026) hay en la tabla de adeudos pendientes (esperado: 2 filas).
3. Clic "Modificar información" → cambiar Estado a `1 (Activo)` → escribir motivo de ≥20 caracteres → clic "Guardar".

**Resultado Esperado**:
- Los recargos de años anteriores (cat 16/17, anio < 2026) desaparecen de la tabla de adeudos.
- La ANUALIDAD AGUA 2026 (cat 2) permanece en `estado=0`.
- En BD: `SELECT descripcion, antes, despues FROM cambios WHERE numcontrato='9002' ORDER BY id DESC LIMIT 3` → debe existir registro `descripcion='Amnistia de Recargos en Reactivacion (C06)'`.

> **[AUTO]**
> `url`: `BASE_URL/` | `login`: `#usuariologin=nancy` → `#passwordlogin=260180` → `button[name=opc]` submit | `datos_qa`: `si`
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='9002'` → `estado=2`. Luego: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='9002' AND categoria IN (16,17) AND estado=0 AND anio < 2026` → debe retornar `2`. Si 0, marcar IMPEDIDO — el script QA no inyectó correctamente.
> `accion`: Buscar contrato `9002` → clic `a:has-text("Modificar información")` → `select[name=estado]` = `1` → `textarea[name=texto]` = `"Reactivacion de contrato prueba QA - amnistia C06"` → clic `input[value="Cambiar estado"]`
> `assert_ui`: Tabla de adeudos no contiene filas RECARGO de años < 2026; ANUALIDAD AGUA 2026 sigue visible
> `assert_sql`:
> - Recargos históricos cancelados: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='9002' AND categoria IN (16,17) AND estado=0 AND anio < 2026` → `0`
> - Recargos en activa también cancelados (por si acaso existe alguno ahí): `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='9002' AND categoria IN (16,17) AND estado=0 AND anio < 2026` → `0`
> - ANUALIDAD AGUA 2026 conservada (no cancelada por amnistía): `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='9002' AND categoria=2 AND anio=2026 AND estado=0` → `≥ 1`
> - Estado del contrato actualizado: `SELECT estado FROM contrato WHERE numcontrato='9002'` → `1`
> `revert_sql`: `UPDATE contrato SET estado=2 WHERE numcontrato='9002'; UPDATE ligacargos_historico SET estado=0 WHERE numcontrato='9002' AND categoria IN (16,17) AND anio < 2026;`

---

<a name="ui-2"></a>
### 1.2 UI-2: Sin Amnistía al Reactivar desde Susp. Administrativa (Regla C06)

**Qué valida**: Que transitar `3→1` **NO** aplique amnistía. El adeudo íntegro (capital + recargos históricos) se conserva. El registro en `cambios` debe indicar explícitamente la ausencia de amnistía.

**Dato Real**: Contrato `405` (Estado 3, usuario 392). ~~Contrato `310` — verificado en Host C: está en Estado 1, no sirve como dato real para este caso.~~

**Precondición**: El contrato debe estar en Estado `3`. Verificar con `precond_sql` antes de ejecutar.

> **⚠️ Nota de implementación (3→1 y Motor de Paridad C04)**: Al reactivar desde Estado 3, `cambiaestado()` SÍ llama a `_sincronizaParidadFinanciera()` (línea 319 de `contratos.php`) — igual que en 2→1. Esto significa que si el contrato `405` tiene tomas con `estado_agua=1` y `estado_drenaje=1`, la paridad restaurará o confirmará los cargos anuales (no los cancela). **No confundir con amnistía**: la paridad actúa sobre el estado de la toma, no sobre los recargos moratorios. La amnistía C06 NO se ejecuta en 3→1.

**Pasos**:
1. Ficha del contrato `405` → anotar total de adeudos pendientes (número de filas y suma).
2. Clic "Modificar información" → cambiar Estado a `1 (Activo)` → motivo ≥20 chars → Guardar.
3. Verificar que recargos históricos y capital NO fueron cancelados.

**Resultado Esperado**:
- Los recargos moratorios (cat 16/17) siguen en `estado=0` — no se cancelaron.
- El capital (cat 2/3) también conserva `estado=0`.
- BD `cambios`: el campo `despues` del registro de cambio de estado contiene `'Sin amnistía C06: adeudo íntegro conservado (viene de Suspensión Administrativa).'` y **no** hay registro de tipo `'Amnistia de Recargos en Reactivacion (C06)'`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='405'` → debe retornar `3`. Si retorna `1` (viene de limpieza de UI-3-B, UI-5-F u otro caso anterior): ejecutar `UPDATE contrato SET estado=3 WHERE numcontrato='405'` y reintentar. Si retorna `4` → marcar caso como **IMPEDIDO** (dato real destruido, no recuperable).
> `accion`: Buscar contrato `405` → clic `a:has-text("Modificar información")` → select Estado=`1` → textarea motivo=`"Reactivacion desde susp. administrativa prueba QA"` → clic `input[value="Cambiar estado"]`
> `assert_ui`: Tabla de adeudos muestra las mismas filas y montos que antes del cambio de estado
> `assert_sql`:
> - Sin amnistía aplicada: `SELECT COUNT(*) FROM cambios WHERE numcontrato='405' AND descripcion='Amnistia de Recargos en Reactivacion (C06)' ORDER BY id DESC LIMIT 1` → `0`
> - Recargos moratorios aún pendientes: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='405' AND categoria IN (16,17) AND estado=0` → igual o mayor que antes de ejecutar (no disminuyó)
> - Estado actualizado: `SELECT estado FROM contrato WHERE numcontrato='405'` → `1`
> `revert_sql`: `UPDATE contrato SET estado=3 WHERE numcontrato='405'`

---

<a name="ui-3"></a>
### 1.3 UI-3: Prevención de Saltos de Estado 2↔3 (Regla C07)

**Qué valida**: Que `cambiaestado()` (`contratos.php:275`) bloquee saltos directos entre tipos de suspensión sin pasar por Estado 1.

**Dato Real**: Contrato `1006` (Estado 2) para sub-caso A / Contrato `405` (Estado 3) para sub-caso B. ~~Contrato `310` descartado — verificado en Host C: está en Estado 1, no en Estado 3.~~

**Pasos** (sub-caso A — intento 2→3):
1. Ficha contrato `1006` (Estado 2) → "Modificar información" → seleccionar Estado `3` → Guardar.
2. **Verificar**: Mensaje de error `'No se permite saltar entre diferentes tipos de suspensión directamente. El contrato debe ser Regularizado a Activo primero...'`
3. Confirmar en BD que `estado` sigue siendo `2`.

**Pasos** (sub-caso B — intento 3→2):
1. Ficha contrato `405` (Estado 3) → "Modificar información" → seleccionar Estado `2` → Guardar.
2. **Verificar**: Mismo mensaje de error. Estado sigue siendo `3` en BD.

**Resultado Esperado**: Ambos intentos retornan error de servidor. El estado no cambia en BD en ningún sub-caso.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('1006','405')` → esperado `1006=2`, `405=3`. Si difieren: si `1006≠2` → ejecutar `UPDATE contrato SET estado=2 WHERE numcontrato='1006'`; si `405=1` (viene de limpieza de UI-2, UI-5-F u otro caso anterior) → ejecutar `UPDATE contrato SET estado=3 WHERE numcontrato='405'`; si `405=4` → sub-caso B: marcar **IMPEDIDO** (dato real destruido, no recuperable).
> `accion` (sub-caso A): Buscar contrato `1006` → clic `a:has-text("Modificar información")` → select Estado=`3` → `textarea[name=texto]` = `"Prueba bloqueo salto suspension directa C07"` → clic `input[value="Cambiar estado"]`
> `accion` (sub-caso B): Buscar contrato `405` → clic `a:has-text("Modificar información")` → select Estado=`2` → `textarea[name=texto]` = `"Prueba bloqueo salto suspension directa C07"` → clic `input[value="Cambiar estado"]`
> `assert_ui`: Mensaje de error visible que incluye `"No se permite saltar entre diferentes tipos de suspensión"`
> `assert_sql`: `SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('1006','405')` → `1006=2`, `405=3` (sin cambio)
> `revert_sql`: *(ninguno — estados no deben cambiar)*

---

<a name="ui-4"></a>
### 1.4 UI-4: Bloqueos Estrictos en Suspensión Definitiva (Reglas C02/F02)

**Qué valida**: Que la ficha de un contrato en Estado `4` sea inmutable: sin edición de datos, sin agregar cargos, sin cambiar estado.

**Dato Real**: Contrato `1028` (Estado 4, usuario 722).
**Dato QA** (`--with-qa`): Contrato `9003`.

**Pasos**:
1. Ficha del contrato `1028` → verificar que no aparece botón "Modificar información".
2. Intentar agregar un cargo (si la UI lo permitiera) o forzar vía llamada AJAX a `ruteador.php?opc=contrato&accion=guardaContrato`.
3. Intentar cambiar de estado.

**Resultado Esperado**:
- UI: botones de edición y cobro ocultos/deshabilitados para Estado 4.
- Backend: `guardaContrato()` retorna `'Error: Este contrato se encuentra en SUSPENSIÓN DEFINITIVA...'`
- Backend: `aplicacargos()` retorna alerta de SDF.
- Backend: `cambiaestado()` retorna `'No es posible cambiar el estado...'`

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='1028'` → `estado=4`
> `accion`: Buscar contrato `1028` → verificar ausencia del enlace `a:has-text("Modificar información")` en la ficha
> `assert_ui`: Enlace "Modificar información" no visible; sección de cobro (botones `#botonpagar`, `#botoncancelar`) ausente o deshabilitada
> `assert_sql`: `SELECT estado FROM contrato WHERE numcontrato='1028'` → `4` (sin cambio)
> `revert_sql`: *(ninguno — solo lectura)*

---

<a name="ui-5"></a>
### 1.5 UI-5: Transiciones de Estado — Cobertura Completa (7 Flujos)

**Qué valida**: Los 7 flujos válidos del ciclo de vida del contrato con sus efectos financieros correspondientes.

> **Precaución sub-casos C, E, G**: Son operaciones destructivas (depuración total). Revertir via BD después o usar datos QA.

| Sub-caso | Transición | Contrato de Prueba | Estado Verificado Host C | Efecto Esperado |
|:---:|---|---|---|---|
| **A** | `1→2` Susp. Temporal | `200` | Estado 1 ✅ | Solo permitido en mes `config_sistema.susptemp_mes_permitido` (dic). **`_sincronizaParidadFinanciera()` NO se llama** en esta transición — la anualidad permanece como está en BD. Solo se registra nota "Facturación congelada." en `cambios`. |
| **B** | `1→3` Susp. Administrativa | `500` | Estado 1 ✅ | **`_sincronizaParidadFinanciera()` NO se llama** en esta transición. Conserva deuda íntegra sin modificación. Nota: "Suspensión sancionatoria. Adeudo íntegro conservado." |
| **C** | `1→4` Susp. Definitiva | Usar QA `9001` | QA — requiere `--with-qa` | Depuración total (C05): `_sincronizaParidadFinanciera()` cancela todos los cargos pendientes → `estado=-1`. Además: `contrato.agua=0`, `contrato.drenaje=0`, `contrato_toma.estado_agua=0`, `contrato_toma.estado_drenaje=0`. |
| **D** | `2→1` Reactivar | `1006` | Estado 2 ✅ | Orden de ejecución: ① `_sincronizaParidadFinanciera()` restaura/confirma cargos anuales según tomas activas; ② `_amnistiaRecargosHistoricos()` cancela cat 16/17 de anio < año actual. Nota indica amnistía C06. |
| **E** | `2→4` Baja definitiva | Usar QA `9002` | QA — requiere `--with-qa` | Depuración total (C05): todos los cargos pendientes → `estado=-1`. `contrato.agua=0`, `contrato.drenaje=0`, `contrato_toma.estado_agua=0`, `contrato_toma.estado_drenaje=0`. |
| **F** | `3→1` Reactivar | `405` | Estado 3 ✅ | Orden: ① `_sincronizaParidadFinanciera()` restaura/confirma cargos anuales según tomas activas; ② **`_amnistiaRecargosHistoricos()` NO se ejecuta** — adeudo íntegro conservado. Nota indica ausencia de amnistía. ~~`310` descartado — está en Estado 1 en Host C.~~ |
| **G** | `3→4` Baja definitiva | Usar QA `9002` o `405` post-revert | Verificar estado antes | Depuración total (C05). Preferir dato QA para evitar destruir datos reales. |

**Verificaciones transversales** (para todos los sub-casos):
- Intentos `2↔3` bloqueados (ver UI-3).
- Intento de modificar Estado 4 bloqueado (ver UI-4).
- Todos los cambios generan registro en `cambios` con snapshot financiero (`'Adeudos: N | Deuda: $X.XX'`).
- El motivo del cambio debe ser ≥20 caracteres; sin eso el backend rechaza la operación.
- ⚠️ **Paridad y amnistía solo se ejecutan en transiciones hacia Estado 1 o Estado 4.** Transiciones a Estado 2 o 3 NO modifican cargos en `ligacargos`.
- ⚠️ **Secuencia crítica**: ejecutar A y B en ese orden, revertir A antes de B si usan el mismo contrato. Usar contratos distintos para sub-casos con mismo estado origen.

**Detalle por sub-caso — qué verificar en BD:**

**Sub-caso A (1→2, contrato `200`)**:
> `precond_sql`: `SELECT MONTH(NOW())` → si resultado ≠ `12` (diciembre), marcar sub-caso A como **IMPEDIDO** (bloqueo esperado por regla de negocio, no es fallo de código). No continuar con `accion`. Si es diciembre: `SELECT estado FROM contrato WHERE numcontrato='200'` → `1`. Anotar cargos pendientes: `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='200' AND estado=0`.
> `assert_sql`: `SELECT estado FROM contrato WHERE numcontrato='200'` → `2`. Cargos sin cambio: `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='200' AND estado=0` → mismo valor que precond (paridad NO corrió).
> `revert_sql`: `UPDATE contrato SET estado=1 WHERE numcontrato='200'`

**Sub-caso B (1→3, contrato `500`)**:
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='500'` → `1`.
> `assert_sql`: `SELECT estado FROM contrato WHERE numcontrato='500'` → `3`. Cargos sin cambio: `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='500'` → igual que antes.
> `revert_sql`: `UPDATE contrato SET estado=1 WHERE numcontrato='500'`

**Sub-caso C (1→4, QA contrato `9001`)**:
> `precond_sql`: `SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='9001'` → `estado=1`. `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='9001'` → ≥ 1 cargo pendiente.
> `assert_sql`:
> - `SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='9001'` → `estado=4, agua=0, drenaje=0`
> - `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='9001' AND (estado_agua != 0 OR estado_drenaje != 0)` → `0` (todas las tomas desconectadas)
> - `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='9001'` → `0` (todos cancelados)
> - `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='9001' AND estado=-1` → ≥ 1 (registros cancelados en activa)
> *(No revertir — dato QA destructivo. Re-inyectar con `--with-qa` para siguiente run.)*

**Sub-caso D (2→1, contrato `1006`)**:
> *Nota: Para probar amnistía completa usar UI-1 con QA contrato `9002`. Sub-caso D con `1006` valida el flujo general: paridad + intento de amnistía (puede resultar en 0 recargos cancelados si `1006` no tiene recargos históricos pendientes).*
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='1006'` → si resultado ≠ `2` (p.ej. `1` porque UI-1 o sub-caso D anterior ya lo reactivó), marcar sub-caso D como **IMPEDIDO**. Ejecutar `revert_sql` de UI-1 antes de reintentar: `UPDATE contrato SET estado=2 WHERE numcontrato='1006'`. Si es `2`: Anotar: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='1006' AND categoria IN (16,17) AND estado=0`.
> `assert_sql`: `SELECT estado FROM contrato WHERE numcontrato='1006'` → `1`. `SELECT descripcion FROM cambios WHERE numcontrato='1006' ORDER BY id DESC LIMIT 3` → debe existir registro con `descripcion` referenciando paridad (`'Calibracion automatica de Deudas'` o `'Amnistia de Recargos en Reactivacion (C06)'` si había recargos).
> `revert_sql`: `UPDATE contrato SET estado=2 WHERE numcontrato='1006'`

**Sub-caso E (2→4, QA contrato `9002`)**:
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='9002'` → `2`.
> `assert_sql`:
> - `SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='9002'` → `estado=4, agua=0, drenaje=0`
> - `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='9002' AND (estado_agua != 0 OR estado_drenaje != 0)` → `0`
> - `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='9002'` → `0`
> *(No revertir — dato QA destructivo.)*

**Sub-caso F (3→1, contrato `405`)**:
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='405'` → debe retornar `3`. Si retorna `1` (viene de limpieza de UI-2, UI-3-B u otro caso anterior): ejecutar `UPDATE contrato SET estado=3 WHERE numcontrato='405'` y reintentar. Si retorna `4` → marcar sub-caso F como **IMPEDIDO** (dato real destruido, no recuperable). Anotar recargos pendientes: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='405' AND categoria IN (16,17) AND estado=0`.
> `assert_sql`:
> - `SELECT estado FROM contrato WHERE numcontrato='405'` → `1`
> - Sin amnistía: `SELECT COUNT(*) FROM cambios WHERE numcontrato='405' AND descripcion='Amnistia de Recargos en Reactivacion (C06)' ORDER BY id DESC LIMIT 1` → `0`
> - Recargos conservados: `SELECT COUNT(*) FROM ligacargos_historico WHERE numcontrato='405' AND categoria IN (16,17) AND estado=0` → igual o mayor que precond
> `revert_sql`: `UPDATE contrato SET estado=3 WHERE numcontrato='405'`

**Sub-caso G (3→4, QA contrato `9002` — preferido — o `405` como fallback)**:
> `precond_sql`: Resolver contrato a usar:
> 1. `SELECT estado FROM contrato WHERE numcontrato='9002'` → si resultado = `3`, usar `9002` (QA, preferido).
> 2. Si resultado = `1` o `2` (viene de UI-1 u otro caso que lo reactivó o dejó en estado inicial): ejecutar `UPDATE contrato SET estado=3 WHERE numcontrato='9002'` → usar `9002`.
> 3. Si resultado = `4` (destruido en UI-5-E): pasar a verificar `405`.
> 4. `SELECT estado FROM contrato WHERE numcontrato='405'` → si = `3`, usar `405` (dato real — operación irreversible, confirmar antes).
> 5. Si `405=1` (viene de limpieza de UI-2, UI-3-B o UI-5-F): ejecutar `UPDATE contrato SET estado=3 WHERE numcontrato='405'` → usar `405`.
> 6. Si `405=4` → marcar sub-caso G como **IMPEDIDO** (ambos contratos destruidos, no recuperables).
> `assert_sql` (reemplazar `<cto>` con el contrato resuelto en precond):
> - `SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='<cto>'` → `estado=4, agua=0, drenaje=0`
> - `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='<cto>' AND (estado_agua != 0 OR estado_drenaje != 0)` → `0`
> - `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='<cto>'` → `0`
> *(Si se usó `405` sobre dato real, operación irreversible — documentar en reporte.)*

> **[AUTO] — precond global**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no` (sub-casos A,B,D,F) / `si` (sub-casos C,E,G)
> `precond_sql` (verificar estados antes de iniciar): `SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('200','500','1006','405')` → esperado: `200=1`, `500=1`, `1006=2`, `405=3`. Si alguno difiere y el estado es recuperable: `UPDATE contrato SET estado=1 WHERE numcontrato IN ('200','500')` si están en ≠1; `UPDATE contrato SET estado=2 WHERE numcontrato='1006'` si ≠2; `UPDATE contrato SET estado=3 WHERE numcontrato='405'` si = 1 (viene de limpieza anterior). Si `405=4` → sub-casos F y G: marcar **IMPEDIDO** (dato real destruido). Ver instrucciones de restore detalladas en cada sub-caso.
> `accion` (patrón): Para cada sub-caso: buscar contrato → clic `a:has-text("Modificar información")` → seleccionar estado destino → motivo=`"Cambio de estado prueba cobertura QA - [Subcaso X]"` (≥20 chars) → clic `input[value="Cambiar estado"]`
> `assert_ui`: Mensaje de confirmación visible; ficha recarga con el nuevo estado en el badge
> Ver assert_sql detallado por sub-caso arriba.

---

<a name="ui-5r"></a>
### 1.5R UI-5R: Revertir Transición de Estado — Contrato 405 (reversal_threshold + Regla F05)

**Qué valida**: El mecanismo completo de `_getReversal()` + `revertirTransicion()`:
1. El botón `#btn-revertir-transicion` aparece **solo** cuando `deuda_total ≥ reversal_threshold` Y existe `REVERSAL_SNAPSHOT` con `despues='PENDIENTE'` posterior al último cambio de estado.
2. Al ejecutar la reversión, `revertirTransicion()` deshace exactamente lo que hizo `cambiaestado()`: restaura estado, cancela cargos nuevos, restaura cargos amnistiados, y marca el snapshot como `REVERTIDO`.
3. El desglose cargos/recargos del cto 405 usa el discriminador canónico `categoria IN (16,17)` (Regla F05) — no el campo legacy `recargo`.

**Dato Real**: Contrato `405` (Estado 3, usuario 392, deuda ~$10,686).

**Contexto histórico**: Durante la sesión de estabilización, el cto 405 (3→1) reveló que:
- La paridad C04 sí corre en 3→1 pero **sin** amnistía C06.
- Host B reportaba cargos/recargos incorrectamente ($6,636/$4,050) por usar `recargo=1` como discriminador — Host C V2 los reporta correctamente ($7,770/$2,916) via `categoria IN (16,17)`.
- `reversal_threshold` **no existía** en `config_sistema` — el botón nunca aparecía porque el default de $15k supera la deuda del 405.

**Reglas cubiertas**: `revertirTransicion` (contratos.php:1298), `_getReversal` (contratos.php:1242), Regla F05, config_sistema.reversal_threshold.

---

**Sub-caso A — Insertar reversal_threshold en config_sistema y verificar en pantalla de Configuración**

**Pasos**:
1. Verificar y/o insertar la clave en BD.
2. Navegar a `admin/operaciones/configuracion.php` → ajustar valor a `10000` → Guardar.

**Resultado Esperado**: `config_sistema.reversal_threshold = 10000`. La pantalla de Configuración Global muestra la clave.

> **[AUTO]**
> `url`: `/agua/admin/operaciones/configuracion.php` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT valor FROM config_sistema WHERE clave='reversal_threshold'` → si vacío: `INSERT INTO config_sistema (clave, valor, descripcion) VALUES ('reversal_threshold','15000','Umbral de deuda ($) para habilitar botón Revertir Transición.')` → luego continuar.
> `accion`: Navegar a `configuracion.php` → localizar fila `reversal_threshold` → editar valor a `10000` → clic `button:has-text("Guardar Configuración")` → confirmar popup
> `assert_ui`: Mensaje de éxito visible; fila `reversal_threshold` muestra valor `10000`
> `assert_sql`: `SELECT valor FROM config_sistema WHERE clave='reversal_threshold'` → `10000`
> `revert_sql`: *(restaurar al final de todos los sub-casos)* `UPDATE config_sistema SET valor='15000' WHERE clave='reversal_threshold'`

---

**Sub-caso B — El botón aparece con snapshot pendiente y deuda ≥ umbral**

**Prerequisito**: Sub-caso A completado (umbral=10000) + UI-5 sub-caso F ejecutado (cambio 3→1 del cto 405 generó REVERSAL_SNAPSHOT).

**Resultado Esperado**: Botón `#btn-revertir-transicion` visible (fondo amarillo). El `confirm()` muestra transición, conteos de cargos y deuda pre-reversión exacta.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`:
> - Snapshot pendiente: `SELECT id FROM cambios WHERE numcontrato='405' AND descripcion='REVERSAL_SNAPSHOT' AND despues='PENDIENTE' ORDER BY id DESC LIMIT 1` → debe retornar fila. Si no: ejecutar UI-5 sub-caso F primero.
> - Estado actual: `SELECT estado FROM contrato WHERE numcontrato='405'` → debe ser `1` (vino de UI-5-F que lo cambió a Activo).
> - Deuda: `SELECT IFNULL(SUM(monto),0) FROM vw_ligacargos_pendientes WHERE numcontrato='405'` → debe ser > 10000.
> `accion`: Buscar contrato `405` → verificar presencia del elemento `a#btn-revertir-transicion` en la ficha
> `assert_ui`: Botón `#btn-revertir-transicion` visible con estilo amarillo/naranja; clic en él dispara `confirm()` con texto que incluye `"REVERTIR TRANSICIÓN"` y la transición `[1] → [3]`
> `assert_sql`: `SELECT despues FROM cambios WHERE numcontrato='405' AND descripcion='REVERSAL_SNAPSHOT' ORDER BY id DESC LIMIT 1` → `PENDIENTE`
> `revert_sql`: *(ninguno — solo verificación)*

---

**Sub-caso C — Ejecutar la reversión y verificar estado 3 restaurado**

**Prerequisito**: Sub-caso B verificado (botón visible, estado=1).

**Resultado Esperado**:
- `contrato.estado = 3` restaurado.
- `REVERSAL_SNAPSHOT.despues = 'REVERTIDO'`.
- `cambios` registra `'Reversión de transición: ACTIVO → SUSPENSIÓN ADMINISTRATIVA'`.
- Deuda post-reversión coincide con `deuda_pre` del snapshot (estado financiero pre-cambio restaurado).
- Botón `#btn-revertir-transicion` desaparece (snapshot consumido).

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT estado FROM contrato WHERE numcontrato='405'` → `1`. Anotar deuda: `SELECT IFNULL(SUM(monto),0) AS d FROM vw_ligacargos_pendientes WHERE numcontrato='405'`.
> `accion`: Buscar contrato `405` → clic `a#btn-revertir-transicion` → interceptar `confirm()` con `page.on('dialog', d => d.accept())` → esperar respuesta AJAX en `#nara`
> `assert_ui`: Panel `#nara` muestra mensaje de reversión exitosa; badge de estado muestra `Susp. Administrativa`; botón `#btn-revertir-transicion` ya no existe en el DOM
> `assert_sql`:
> - `SELECT estado FROM contrato WHERE numcontrato='405'` → `3`
> - `SELECT despues FROM cambios WHERE numcontrato='405' AND descripcion='REVERSAL_SNAPSHOT' ORDER BY id DESC LIMIT 1` → `REVERTIDO`
> - `SELECT descripcion FROM cambios WHERE numcontrato='405' ORDER BY id DESC LIMIT 1` → contiene `'Reversión de transición'`
> - `SELECT IFNULL(SUM(monto),0) FROM vw_ligacargos_pendientes WHERE numcontrato='405'` → debe coincidir con `deuda_pre` del snapshot (financiero pre-cambio)
> `revert_sql`: *(el cto 405 queda en estado 3 = estado original correcto)*. Restaurar umbral: `UPDATE config_sistema SET valor='15000' WHERE clave='reversal_threshold'`

---

**Sub-caso D — El botón NO aparece con deuda < umbral**

**Resultado Esperado**: Con `reversal_threshold=50000` y deuda del cto 405 ~$10,686, `_getReversal()` retorna `null` — botón ausente.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `UPDATE config_sistema SET valor='50000' WHERE clave='reversal_threshold'`
> `accion`: Buscar contrato `405` → verificar ausencia de `a#btn-revertir-transicion`
> `assert_ui`: El botón amarillo de reversión **no aparece** en la ficha
> `assert_sql`: `SELECT valor FROM config_sistema WHERE clave='reversal_threshold'` → `50000`
> `revert_sql`: `UPDATE config_sistema SET valor='15000' WHERE clave='reversal_threshold'`

---

**Sub-caso E — Desglose cargos/recargos cto 405 via Regla F05 (BD)**

**Qué valida**: Que `categoria IN (16,17)` sea el discriminador canónico de recargos en Host C, y que el desglose difiera del reportado por Host B (que usaba el campo `recargo=1` incluyendo multas de asamblea cat 6 como "recargos").

**Dato Real**: Contrato `405`. No requiere QA ni cambio de estado.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='405'` → debe retornar > 0 (contrato con deuda).
> `accion`: Buscar contrato `405` → revisar tabla de adeudos en ficha
> `assert_ui`: Las filas de recargo moratorio (cat 16/17) son conceptos de AGUA/DRENAJE; las multas de asamblea (cat 6) aparecen como cargos separados, NO como recargos.
> `assert_sql`:
> - Total pendiente: `SELECT IFNULL(SUM(monto),0) FROM vw_ligacargos_pendientes WHERE numcontrato='405'` → ~$10,686
> - Cargos base (V2): `SELECT SUM(CASE WHEN categoria NOT IN (16,17) THEN monto ELSE 0 END) AS cargos, SUM(CASE WHEN categoria IN (16,17) THEN monto ELSE 0 END) AS recargos FROM vw_ligacargos_pendientes WHERE numcontrato='405'` → cargos ~$7,770 | recargos ~$2,916
> - Cat 6 NO clasificada como recargo: `SELECT COUNT(*) FROM vw_ligacargos_pendientes WHERE numcontrato='405' AND categoria=6 AND categoria IN (16,17)` → `0`
> `revert_sql`: *(ninguno — solo lectura)*

---

<a name="ui-6"></a>
### 1.6 UI-6: Creación de Nuevo Contrato — Cobertura Completa (6 sub-casos)

**Qué valida**: El ciclo completo de `guardaNuevoContrato()` (`contratos.php:817`): validaciones previas, creación de tomas, sincronización de campos legacy, paridad inicial, exención F07, bloqueos de infraestructura y restricción de límite de tomas.

**Reglas cubiertas**: M2-R01 (ID autoincremento), M2-R02 (F07 exento), M2-R03 (límite tomas), M2-R04 (tomas con estado inicial), M2-R05 (campos legacy), M2-R06 (paridad inicial), M2-R07 (auditoría), M2-R08 (tarifas referencia), M2-R09 (tipo comercial en Toma 2), M2-R10 (siempre Estado 1), M2-R11 (fecha NOW()).

> **⚠️ Nota F07 — `exento_recargo_primer_anio`**: Este flag NO cancela anualidades. Actúa **solo en `calcula_recargos()`**: si el contrato se creó en el año actual y `exento=1`, no se generan recargos moratorios (cat 16/17) en ese año. Las anualidades las genera `_sincronizaParidadFinanciera()` independientemente del flag.

> **⚠️ Nota sobre anualidades faltantes**: Si `ANUALIDAD DEL AGUA 2026` o `ANUALIDAD DEL DRENAJE 2026` no existen en el catálogo con `estado=1`, la UI mostrará advertencia `faltan_cargos` y `_sincronizaParidadFinanciera()` no insertará cargos. Verificar con precond antes de ejecutar.

**Usuario base para sub-casos**: `1` (ABAD CRUZ BLANCO — verificado Host C: sin contratos activos).

---

**Sub-caso A — 1 Toma Normal: agua + drenaje (caso base)**

**Qué valida**: Creación exitosa con 1 toma Normal, agua y drenaje. Cargos automáticos generados. Exención F07.

**Pasos**:
1. Verificar que `ANUALIDAD DEL AGUA 2026` y `ANUALIDAD DEL DRENAJE 2026` existen en catálogo.
2. Ir a "Nuevo Contrato" → en el campo de usuario escribir `"ABAD"` o `"ABAD CRUZ BLANCO"` → presionar **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** de la lista → clic en label **"Nueva dirección..."** → ingresar domicilio=`"CALLE PRUEBA AUTO 6A"` → tipo Normal → Toma 1: agua=sí, drenaje=sí → Clic "Guardar" → **Confirmar popup** (Aceptar/Ok).
3. Anotar el número de contrato creado (`nuevo_id`).
4. Abrir ficha del nuevo contrato.

**Resultado Esperado**:
- Contrato creado en BD con `estado=1`, `agua=1`, `drenaje=1`, `tipo=0` (Normal), `exento_recargo_primer_anio=1`.
- `contrato_toma`: 1 fila con `num_toma=1`, `tipo=0`, `tiene_agua=1`, `tiene_drenaje=1`, `estado_agua=1`, `estado_drenaje=1`.
- `ligacargos`: 2 registros pendientes `"ANUALIDAD DEL AGUA 2026"` (cat 2, estado=0) y `"ANUALIDAD DEL DRENAJE 2026"` (cat 3, estado=0). Monto según tarifa Normal del catálogo.
- `cambios`: registro `'Registro de Nuevo Contrato'` con `antes='NUEVO'`, `despues='Usuario: 1 | Domicilio: CALLE PRUEBA AUTO 6A'`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) FROM cargos WHERE nombre IN ('ANUALIDAD DEL AGUA 2026','ANUALIDAD DEL DRENAJE 2026') AND estado=1` → `2`. Si retorna < 2, marcar IMPEDIDO. También: `SELECT COUNT(*) FROM contrato WHERE numusuario=1` → `0`.
> `accion`: Menú "Nuevo Contrato" → en campo usuario escribir `"ABAD CRUZ BLANCO"` → presionar **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** de la lista → clic en label **"Nueva dirección..."** → ingresar domicilio=`"CALLE PRUEBA AUTO 6A"` → tipo=`Normal` → Toma 1: marcar agua y drenaje → clic `input[value="Guardar Contrato"]` → **Confirmar popup** (Aceptar/Ok)
> `assert_ui`: Ficha del nuevo contrato visible con estado `Activo`; adeudos muestran ANUALIDAD AGUA y DRENAJE 2026 en estado pendiente
> `assert_sql`:
> - `SELECT estado, agua, drenaje, tipo, exento_recargo_primer_anio FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1` → `1, 1, 1, 0, 1`
> - `SELECT num_toma, tipo, tiene_agua, tiene_drenaje, estado_agua, estado_drenaje FROM contrato_toma WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1)` → `1, 0, 1, 1, 1, 1`
> - `SELECT COUNT(*) FROM ligacargos WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1) AND categoria IN (2,3) AND estado=0` → `2`
> - `SELECT descripcion FROM cambios WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1) ORDER BY id DESC LIMIT 1` → `'Registro de Nuevo Contrato'`
> `revert_sql`: `SET @nid=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6A' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@nid; DELETE FROM contrato_toma WHERE numcontrato=@nid; DELETE FROM contrato WHERE numcontrato=@nid;`

---

**Sub-caso B — 1 Toma Normal: solo agua, sin drenaje**

**Qué valida**: Que la paridad inicial genere solo ANUALIDAD AGUA, no ANUALIDAD DRENAJE. Regla M2-R06 + F08.

**Pasos**:
1. "Nuevo Contrato" → en campo usuario escribir `"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → clic label **"Nueva dirección..."** → domicilio=`"CALLE PRUEBA AUTO 6B"` → Toma 1: agua=sí, **drenaje=NO** → Guardar → **Confirmar popup**.

**Resultado Esperado**:
- `contrato.drenaje=0`, `contrato_toma.tiene_drenaje=0`, `contrato_toma.estado_drenaje=0`.
- `ligacargos`: solo 1 cargo pendiente — ANUALIDAD AGUA. Sin ANUALIDAD DRENAJE.

> **[AUTO]**
> `precond_sql`: Limpiar huérfano de runs anteriores: `SET @h=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6B' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@h; DELETE FROM contrato_toma WHERE numcontrato=@h; DELETE FROM contrato WHERE numcontrato=@h;` — Luego verificar: `SELECT COUNT(*) FROM contrato WHERE numusuario=1` → `0`.
> `accion`: Igual que A pero desmarcando drenaje en Toma 1.
> `assert_sql`: `SELECT agua, drenaje FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1` → `1, 0`. `SELECT COUNT(*) FROM ligacargos WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1) AND categoria IN (2,3) AND estado=0` → `1` (solo agua).
> `revert_sql`: `SET @nid=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6B' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@nid; DELETE FROM contrato_toma WHERE numcontrato=@nid; DELETE FROM contrato WHERE numcontrato=@nid;`

---

**Sub-caso C — 1 Toma Comercial: recálculo de tarifa (monto_comercial)**

**Qué valida**: Que al seleccionar tipo Comercial en Toma 1, el monto de la ANUALIDAD AGUA sea `monto_comercial` (no `monto × 2`). Regla M2-R09 + `_sincronizaDeudaPendienteContrato()`.

**Pasos**:
1. Verificar `monto_comercial` del catálogo: `SELECT monto, monto_comercial FROM cargos WHERE nombre='ANUALIDAD DEL AGUA 2026' LIMIT 1`.
2. "Nuevo Contrato" → en campo usuario escribir `"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → clic label **"Nueva dirección..."** → domicilio=`"CALLE PRUEBA AUTO 6C"` → Toma 1: tipo=**Comercial**, agua=sí, drenaje=sí → Guardar → **Confirmar popup**.

**Resultado Esperado**:
- `contrato.tipo=1` (Comercial, = MAX(tipo) de tomas).
- ANUALIDAD AGUA 2026 en `ligacargos` con `monto = monto_comercial` del catálogo (si > 0), o `monto × 2` si `monto_comercial=0`.
- `cambios`: incluye `'Calibracion automatica de Deudas'` si el monto fue ajustado por tipo.

> **[AUTO]**
> `precond_sql`: Limpiar huérfano de runs anteriores: `SET @h=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6C' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@h; DELETE FROM contrato_toma WHERE numcontrato=@h; DELETE FROM contrato WHERE numcontrato=@h;` — Luego: `SELECT monto, monto_comercial FROM cargos WHERE nombre='ANUALIDAD DEL AGUA 2026' AND estado=1 LIMIT 1` → anotar valores para comparación.
> `accion`: Igual que A pero seleccionando tipo=`Comercial` en Toma 1.
> `assert_sql`: `SELECT tipo FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1` → `1`. `SELECT monto FROM ligacargos WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1) AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0 LIMIT 1` → debe coincidir con `monto_comercial` del catálogo (o `monto*2` si `monto_comercial=0`).
> `revert_sql`: `SET @nid=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6C' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@nid; DELETE FROM contrato_toma WHERE numcontrato=@nid; DELETE FROM contrato WHERE numcontrato=@nid;`

---

**Sub-caso D — 2 Tomas: Normal + Comercial (máximo permitido)**

**Qué valida**: Que el sistema acepte 2 tomas y que el monto de ANUALIDAD AGUA sea la suma de ambas tarifas (o el `MAX(tipo)` determine el tipo de tarifa). Regla M2-R04 + M2-R09 + C08.

**Pasos**:
1. "Nuevo Contrato" → en campo usuario escribir `"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → clic label **"Nueva dirección..."** → domicilio=`"CALLE PRUEBA AUTO 6D"` → Toma 1: tipo=Normal, agua=sí, drenaje=sí → **activar Toma 2**: tipo=Comercial, agua=sí, drenaje=no → Guardar → **Confirmar popup**.

**Resultado Esperado**:
- `contrato_toma`: 2 filas. Toma 1: `tipo=0`, `tiene_agua=1, tiene_drenaje=1`. Toma 2: `tipo=1`, `tiene_agua=1, tiene_drenaje=0`.
- `contrato.agua=2` (COUNT de tomas con agua=1), `contrato.drenaje=1`, `contrato.tipo=1` (MAX tipo = Comercial).
- ANUALIDAD AGUA 2026: monto = `(monto_comercial_o_2x) * 2 tomas` = tarifa Comercial × 2.
- ANUALIDAD DRENAJE 2026: monto = tarifa Comercial × 1 toma (solo Toma 1 tiene drenaje).
- `cambios`: `'Registro de Nuevo Contrato'` + posiblemente `'Calibracion automatica de Deudas'`.

> **[AUTO]**
> `precond_sql`: Limpiar huérfano de runs anteriores: `SET @h=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6D' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@h; DELETE FROM contrato_toma WHERE numcontrato=@h; DELETE FROM contrato WHERE numcontrato=@h;` — Luego: `SELECT monto, monto_comercial FROM cargos WHERE nombre IN ('ANUALIDAD DEL AGUA 2026','ANUALIDAD DEL DRENAJE 2026') AND estado=1` → anotar tarifas.
> `accion`: "Nuevo Contrato" → campo usuario=`"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → domicilio=`"CALLE PRUEBA AUTO 6D"` → activar 2 tomas → Toma 1: Normal, agua+drenaje → Toma 2: Comercial, solo agua → Guardar.
> `assert_sql`:
> - `SELECT agua, drenaje, tipo FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1` → `2, 1, 1`
> - `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1)` → `2`
> - `SELECT monto FROM ligacargos WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1) AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0` → valor = tarifa Comercial × 2
> `revert_sql`: `SET @nid=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6D' ORDER BY numcontrato DESC LIMIT 1); DELETE FROM ligacargos WHERE numcontrato=@nid; DELETE FROM contrato_toma WHERE numcontrato=@nid; DELETE FROM contrato WHERE numcontrato=@nid;`

---

**Sub-caso E — Bloqueo: 3ra toma en domicilio con 2 existentes**

**Qué valida**: Que `guardaNuevoContrato()` rechace crear un contrato si el usuario ya tiene 2 tomas en el mismo domicilio (en otros contratos). Regla M2-R03 / C08.

**Pasos**:
1. Verificar que usuario `706` tiene 2 tomas en el domicilio de contrato `100`.
2. Intentar crear nuevo contrato → en campo usuario escribir `"IBÁÑEZ"` (apellido del usuario 706) → **TAB** → seleccionar usuario **706** de la lista → clic label **"Nueva dirección..."** → ingresar el domicilio capturado del precond → 1 toma → Guardar → **Confirmar popup**.

**Resultado Esperado**: Alert de rechazo. No se crea ningún contrato. Mensaje incluye `"Solo se permiten hasta 2 tomas por usuario en el mismo domicilio"`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT domicilio FROM contrato WHERE numcontrato='100' LIMIT 1` → capturar el valor exacto del domicilio (ej. `"INDEPENDENCIA 100"`) — este string es el que debe ingresarse en el campo domicilio del formulario. Luego: `SELECT COUNT(ct.id) FROM contrato c JOIN contrato_toma ct ON c.numcontrato=ct.numcontrato WHERE c.numusuario=706 AND c.estado!=4` → debe retornar `2`. Si retorna ≠ 2, marcar IMPEDIDO.
> `accion`: "Nuevo Contrato" → campo usuario=`"IBÁÑEZ"` → **TAB** → seleccionar usuario **706** de la lista → domicilio=valor capturado en precond (domicilio exacto de contrato `100`) → Toma 1 → clic Guardar.
> `assert_ui`: Alert con texto que incluye `"Solo se permiten hasta 2 tomas por usuario en el mismo domicilio"`.
> `assert_sql`: `SELECT COUNT(*) FROM contrato WHERE numusuario=706` → mismo valor que antes (no creó contrato nuevo).
> `revert_sql`: *(ninguno)*

---

**Sub-caso F — Bloqueo: ID de contrato ya existe**

**Qué valida**: Que el sistema rechace un contrato si el ID sugerido ya fue tomado por otro operador concurrentemente (o si el operador fuerza un ID duplicado). Regla M2-R01.

**Pasos**:
1. En la pantalla de "Nuevo Contrato", modificar manualmente el campo `numcontrato` a un valor ya existente (ej. `100`).
2. Completar el resto del formulario: en campo usuario escribir `"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → clic label **"Nueva dirección..."** → domicilio=`"CALLE PRUEBA AUTO 6F"` → Toma 1 → Guardar → **Confirmar popup**.

**Resultado Esperado**: Mensaje `"No ha sido posible agregar este contrato a la base de datos."` (INSERT falla por PK duplicada). No se crean tomas ni cargos.

> **[AUTO]**
> `precond_sql`: `SELECT numcontrato FROM contrato WHERE numcontrato='100'` → debe existir.
> `accion`: "Nuevo Contrato" → editar campo `numcontrato` → ingresar `100` → campo usuario=`"ABAD CRUZ BLANCO"` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** → domicilio=`"CALLE PRUEBA AUTO 6F"` → Toma 1 → Guardar.
> `assert_ui`: Mensaje de error visible: `"No ha sido posible agregar este contrato"`.
> `assert_sql`: `SELECT COUNT(*) FROM contrato WHERE domicilio='CALLE PRUEBA AUTO 6F'` → `0` (no se creó).
> `revert_sql`: *(ninguno)*

---

**Verificaciones transversales UI-6** (aplican a todos los sub-casos exitosos):
- `contrato.fecha` = fecha de hoy (`CURDATE()`): `SELECT DATE(fecha)=CURDATE() FROM contrato WHERE numcontrato=<nuevo>` → `1`.
- No se generan recargos cat 16/17 al crear (exento F07): `SELECT COUNT(*) FROM ligacargos WHERE numcontrato=<nuevo> AND categoria IN (16,17)` → `0`.
- `contrato.numtoma=0` (campo legacy, siempre 0 en V2): `SELECT numtoma FROM contrato WHERE numcontrato=<nuevo>` → `0`.
- La UI muestra tarifas de referencia (Normal/Comercial) antes de guardar — verificar que los montos coinciden con `cargos WHERE automatico=1 AND categoria IN (2,3) AND anio=2026`.
- Si `_verificaAnualidades()` detecta que faltan anualidades del año, la UI muestra advertencia. Validar que la advertencia desaparece cuando las anualidades existen.

---

### GRUPO B — Tomas Físicas y Paridad Financiera

---

<a name="ui-7"></a>
### 1.7 UI-7: Restricción de 2 Tomas por Domicilio (Regla C08)

**Qué valida**: Que `guardaContrato()` y `guardaNuevoContrato()` bloqueen agregar toma cuando el usuario ya tiene 2 en ese domicilio.

**Dato Real**: Usuario `706` ya tiene contratos `100` y `160` en el mismo domicilio.
**Dato QA** (`--with-qa`): Contrato `9001`.

**Sub-caso A — vía `guardaNuevoContrato()` (formulario Nuevo Contrato)**

**Pasos**:
1. Ir a "Nuevo Contrato" → asignar usuario `706` → ingresar el mismo domicilio que contrato `100` → 1 toma → Guardar.

**Resultado Esperado**: Alerta: *"El usuario ya cuenta con 2 toma(s) en otros contratos para el domicilio indicado. Solo se permiten hasta 2 tomas por usuario en el mismo domicilio, previendo asignar 1 extra."* No se crea el contrato en BD.

> **[AUTO] sub-caso A**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT domicilio FROM contrato WHERE numcontrato='100' LIMIT 1` → capturar domicilio exacto. Luego: `SELECT COUNT(*) FROM contrato WHERE numusuario=706` → debe retornar ≥ 2.
> `accion`: Ir a "Nuevo Contrato" → campo usuario=`"IBÁÑEZ"` → **TAB** → seleccionar usuario **706** de la lista → ingresar domicilio capturado en precond → 1 toma → clic "Guardar"
> `assert_ui`: Mensaje de error visible que incluye `"Solo se permiten hasta 2 tomas por usuario en el mismo domicilio"`
> `assert_sql`: `SELECT COUNT(*) FROM contrato WHERE numusuario=706` → mismo número que precond (no creó nuevo contrato)
> `revert_sql`: *(ninguno — no se crea contrato)*

---

**Sub-caso B — vía `guardaContrato()` (edición de contrato existente con 1 toma, intentar agregar 2da)**

**Qué valida**: Que la restricción C08 también se aplique al intentar agregar una 3ra toma desde la ficha de edición de un contrato existente del mismo domicilio.

**Pasos**:
1. Ficha del contrato `100` (usuario 706, ya tiene 2 tomas en su domicilio entre contratos 100 y 160) → clic "Modificar información".
2. Intentar agregar una 3ra toma en el formulario de edición → Guardar.

**Resultado Esperado**: `guardaContrato()` rechaza la operación con el mismo mensaje de límite de tomas. El contrato `100` mantiene su número de tomas original.

> **[AUTO] sub-caso B**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT COUNT(*) FROM contrato_toma ct JOIN contrato c ON ct.numcontrato=c.numcontrato WHERE c.numusuario=706 AND c.estado!=4` → debe retornar `2` (para que el intento de agregar una 3ra sea bloqueado).
> `accion`: Buscar contrato `100` → clic `a:has-text("Modificar información")` → activar campo "Toma 3" o ajustar `n_tomas` a 3 → motivo=`"Prueba bloqueo 3ra toma via edicion C08"` → clic `input[value="Guardar Cambios"]`
> `assert_ui`: Mensaje de error con texto que incluye `"Solo se permiten hasta 2 tomas"`
> `assert_sql`: `SELECT COUNT(*) FROM contrato_toma WHERE numcontrato='100'` → mismo valor que antes de la acción (sin toma nueva)
> `revert_sql`: *(ninguno)*

---

<a name="ui-8"></a>
### 1.8 UI-8: Bloqueo de Cargos de Drenaje Sin Infraestructura (Regla F08)

**Qué valida**: Que `aplicacargos()` rechace un cargo de categoría 3 (drenaje) en contrato sin `tiene_drenaje=1`.

**Dato Real**: Contrato `1` (usuario 1536, `drenaje=0`, Estado 1).
**Dato QA** (`--with-qa`): Contrato `9006`.

**Pasos**:
1. Ficha del contrato `1` → "Agregar cargos" → buscar "ANUALIDAD DEL DRENAJE 2026" → Aplicar.

**Resultado Esperado**: Mensaje `'El cargo ANUALIDAD DEL DRENAJE 2026 no aplica porque el contrato 1 no tiene toma de drenaje conectada.'` El cargo no se inserta en `ligacargos`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT drenaje FROM contrato WHERE numcontrato='1'` → debe retornar `0`
> `accion`: Buscar contrato `1` → "Agregar cargos" → buscar `"ANUALIDAD DEL DRENAJE 2026"` → clic "Aplicar"
> `assert_ui`: Mensaje de error visible que incluye `"no tiene toma de drenaje conectada"`
> `assert_sql`: `SELECT COUNT(*) FROM ligacargos WHERE numcontrato='1' AND leyenda='ANUALIDAD DEL DRENAJE 2026' AND estado=0` → `0`
> `revert_sql`: *(ninguno — cargo no fue insertado)*

---

<a name="ui-9"></a>
### 1.9 UI-9: Recálculo Dinámico de Tarifa al Cambiar Tipo Normal↔Comercial

**Qué valida**: Que `guardaContrato()` llame a `_sincronizaDeudaPendienteContrato()` al cambiar el tipo de toma, actualizando montos de anualidades pendientes según `monto_comercial` del catálogo.

**Dato Real**: Contrato `500` (Estado 1, agua=1, drenaje=1, toma tipo Normal). ⚠️ Contrato `100` descartado: verificado en Host C — no tiene ANUALIDAD DEL AGUA 2026 pendiente (ya pagada). Contrato `500` sí tiene ANUALIDAD DEL AGUA 2026 en `estado=0`, monto `$600.00`.

**Pasos**:
1. Ficha contrato `500` → "Modificar información" → en Toma 1 cambiar Tipo de `Normal` a `Comercial` → Guardar (motivo ≥20 chars).
2. Verificar monto de "ANUALIDAD DEL AGUA 2026" en adeudos.
3. Repetir cambiando de vuelta a `Normal` → verificar que el monto regresa.

**Nota sobre `monto_comercial`**: El script `00_inject_qa_tests.sql` (V2.13+) ya revierte `monto_comercial` a `1200.00` al final de su ejecución. Verificar con `precond_sql` antes de correr este caso.

**Resultado Esperado**:
- Normal→Comercial: monto ANUALIDAD AGUA pasa de `$600.00` a `$1,200.00` (valor de `monto_comercial` en catálogo).
- `cambios` incluye registros `'Cambio de Tarifa Toma 1'` y `'Calibracion automatica de Deudas'`.
- Comercial→Normal: monto regresa a `$600.00`.

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT monto_comercial FROM cargos WHERE nombre='ANUALIDAD DEL AGUA 2026' LIMIT 1` → debe ser `1200.00`. Si es `99.99`, el script QA no ejecutó la sección 5 de revert — corregir manualmente antes de continuar. Luego: `SELECT monto FROM ligacargos WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0 LIMIT 1` → debe retornar `600.00`.
> `accion`: Buscar contrato `500` → clic `a:has-text("Modificar información")` → en Toma 1 cambiar radio `Normal` a `Comercial` (`#t_tipo_1_1`) → motivo=`"Cambio tipo comercial prueba QA tarifa"` → clic `input[value="Guardar Cambios"]`
> `assert_ui`: Monto de "ANUALIDAD DEL AGUA 2026" en adeudos muestra `$1,200.00`
> `assert_sql`: `SELECT monto FROM ligacargos WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0 LIMIT 1` → `1200.00`
> `revert_sql` (UI primero): Buscar contrato `500` → clic "Modificar información" → Toma 1 tipo=`Normal` (`#t_tipo_1_0`) → motivo=`"Revert cambio tipo Normal prueba QA"` → Guardar. `revert_sql` (fallback SQL directo si UI falla): `UPDATE contrato_toma SET tipo=0 WHERE numcontrato='500' AND num_toma=1; UPDATE contrato SET tipo=0 WHERE numcontrato='500'; UPDATE ligacargos SET monto=600.00 WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL AGUA 2026' AND estado=0;` — Nota: `ligacargos_historico` no requiere revert porque la Lógica Híbrida (No Retroactividad, secc. 3.1 de `transiciones_estado_contratos.md`) impide que el cambio de tipo modifique montos base ≤2025.

---

<a name="ui-10"></a>
### 1.10 UI-10: Paridad Físico-Financiera al Desconectar Infraestructura (Motor C04)

**Qué valida**: Que desmarcar la infraestructura de una toma en `guardaContrato()` llame a `_quitaCargoAnual()` + `_sincronizaParidadFinanciera()`, cancelando el cargo anual del servicio desconectado.

**Dato Real**: Contrato `500` (agua=1, drenaje=1, Estado 1). ⚠️ Contrato `100` descartado: verificado en Host C — no tiene ANUALIDAD DEL DRENAJE 2026 pendiente (ya pagada). Contrato `500` sí tiene ANUALIDAD DEL AGUA 2026 y ANUALIDAD DEL DRENAJE 2026 en `estado=0`.

**Pasos**:
1. Ficha contrato `500` → "Modificar información" → en Toma 1 desmarcar "tiene drenaje" → Guardar (motivo ≥20 chars).
2. Verificar que "ANUALIDAD DEL DRENAJE 2026" desaparece de la tabla de adeudos.
3. Revertir (marcar drenaje de nuevo) → verificar que el cargo se restaura a `estado=0`.

**Resultado Esperado**:
- Al desconectar: "ANUALIDAD DEL DRENAJE 2026" pasa a `estado=-1`.
- `cambios` registra `'Desconexion drenaje toma 1'`.
- Al reconectar: `_sincronizaParidadFinanciera()` restaura el cargo a `estado=0` (reaparece en adeudos).

> **[AUTO]**
> `url`: `/agua/` | `login`: `nancy/260180` | `datos_qa`: `no`
> `precond_sql`: `SELECT tipo FROM contrato_toma WHERE numcontrato='500' AND num_toma=1 LIMIT 1` → debe retornar `0` (tipo Normal). Si retorna `1` (Comercial), ejecutar revert de UI-9 antes de continuar. Luego: `SELECT tiene_drenaje FROM contrato_toma WHERE numcontrato='500' LIMIT 1` → `1`. Luego: `SELECT estado FROM ligacargos WHERE numcontrato='500' AND leyenda='ANUALIDAD DEL DRENAJE 2026' AND estado=0` → debe retornar fila.
> `accion`: Buscar contrato `500` → clic `a:has-text("Modificar información")` → en Toma 1 desmarcar checkbox `#t_drenaje_1` → motivo=`"Prueba desconexion drenaje QA toma 1"` → clic `input[value="Guardar Cambios"]`
> `assert_ui`: "ANUALIDAD DEL DRENAJE 2026" desaparece de la tabla de adeudos pendientes
```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `Guia de Pruebas — Tester Humano (V1.0).md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# 🧑‍💻 Guía de Pruebas — Tester Humano (V1.1)

> Derivado del Plan de Pruebas Maestro V2.20 — Secciones 1 y 2.
> Este documento contiene **solo lo que necesita el tester humano**: pasos claros, qué verificar en pantalla, qué consultar en BD, y cómo dejar el sistema limpio.
> La información interna de implementación (nombres de funciones PHP, líneas de código, selectores CSS de automatización) fue eliminada.
>
> **V1.1 — 2026-04-20**: Corrección de pasos incompletos en UI-6 (A–F), UI-7, UI-21, UI-27 y otros casos donde los datos de prueba exactos o los pasos del formulario estaban colapsados o implícitos.

---

## ⚙️ Configuración Inicial

| Parámetro | Valor |
|---|---|
| **URL de la webapp** | `http://192.168.0.111:7001/agua` |
| **Usuario** | `nancy` |
| **Contraseña** | `260180` |
| **BD para verificación** | Host C → `mysql -h 192.168.0.111 -P 7002 -u root awa` |

**Datos QA** (contratos de prueba sintéticos):
- Requieren sincronización previa: `Full-Pipeline-Sync.sh --with-qa`
- Contratos QA: `9001`, `9002`, `9003`, `9004`, `9005`, `9006`, `9007`, `9008`
- Sin ese sync, **los contratos QA no existen** en la base de datos.

---

## 🚦 Reglas Generales

1. **Leer cada mensaje de alerta** antes de continuar. La webapp usa alerts de browser y mensajes AJAX — ambos son resultado de la operación.
2. Si la operación fue **rechazada o bloqueada** (mensaje con "Error", "No se permite", "no aplica", "mínimo"), anotar el texto exacto y marcar el caso como **IMPEDIDO**. Pasar al siguiente.
3. Después de cada caso que modifica datos, ejecutar la **limpieza (revert)** antes de iniciar el siguiente caso que use el mismo contrato.
4. **Orden de ejecución**: Grupo A → B → C → D → E → F → Sección 2.
5. Los casos destructivos (UI-5 sub-casos C/E/G) usan contratos QA — no revierten automáticamente.

---

## 📑 ÍNDICE

### SECCIÓN 1 — Interfaz de Usuario

**Grupo A — Gestión de Contratos y Transiciones de Estado**
- [UI-1](#ui-1) Amnistía de recargos al reactivar desde Susp. Temporal
- [UI-2](#ui-2) Sin amnistía al reactivar desde Susp. Administrativa
- [UI-3](#ui-3) Bloqueo de saltos de estado 2↔3
- [UI-4](#ui-4) Bloqueos en Suspensión Definitiva
- [UI-5](#ui-5) Transiciones de estado — 7 flujos (A a G)
- [UI-5R](#ui-5r) Revertir Transición — Contrato 405 (reversal_threshold + Regla F05)
- [UI-6](#ui-6) Creación de Nuevo Contrato — 6 sub-casos (A a F)

**Grupo B — Tomas Físicas y Paridad Financiera**
- [UI-7](#ui-7) Restricción de 2 tomas por domicilio
- [UI-8](#ui-8) Bloqueo de cargos de drenaje sin infraestructura
- [UI-9](#ui-9) Recálculo de tarifa Normal↔Comercial
- [UI-10](#ui-10) Paridad al desconectar infraestructura
- [UI-11](#ui-11) Cambio rápido de conexión y paridad
- [UI-12](#ui-12) Contratos multi-toma en reporte

**Grupo C — Pagos, Recibos y Folios**
- [UI-13](#ui-13) Flujo completo de cobro y recibo
- [UI-14](#ui-14) Sincronización de asamblea al pagar
- [UI-15](#ui-15) Prevención de cargos duplicados por refresco

**Grupo D — Cargos, Tarifas y Cancelaciones**
- [UI-16](#ui-16) Agregar cargos — normal y mensualidades
- [UI-17](#ui-17) Cancelación de cargos con nota de auditoría
- [UI-18](#ui-18) Restauración de cargos cancelados
- [UI-19](#ui-19) Modificación de tarifa con propagación masiva
- [UI-20](#ui-20) Cruce de años en historial de cargos

**Grupo E — Usuarios, Auditoría y Operaciones Generales**
- [UI-21](#ui-21) Cambio de propietario
- [UI-22](#ui-22) Hacer anotación y eliminarla (soft-delete)
- [UI-23](#ui-23) Trazabilidad del operador en cancelaciones
- [UI-24](#ui-24) Trazabilidad visual en historial (colores y horarios)
- [UI-25](#ui-25) Visibilidad de usuarios no localizados
- [UI-26](#ui-26) Categorización de egresos
- [UI-27](#ui-27) Reasignación de contrato (fusión de usuario)
- [UI-28](#ui-28) Búsqueda de contratos con filtros combinados
- [UI-29](#ui-29) Disposición visual de la ficha (UX)

**Grupo F — Módulo Asistencias (Mini-webapp)**
- [UI-30](#ui-30) Registro de asistencia en mini-webapp
- [UI-31](#ui-31) Descarga del TXT con firma MD5
- [UI-32](#ui-32) Procesamiento de asistencias en Agua
- [UI-33](#ui-33) Verificación de cargos cancelados post-procesamiento

### SECCIÓN 2 — Reportes
- [RC-1](#rc-1) Empate detalle vs resumen de caja al centavo
- [RC-2](#rc-2) Exclusiones canónicas en cartera vencida
- [RC-3](#rc-3) Sincronización de egresos por categoría
- [RC-4](#rc-4) Sub-total de deuda incobrable
- [RC-5](#rc-5) Trazabilidad de segundos en auditoría

---

## 🖥️ SECCIÓN 1 — Interfaz de Usuario

### GRUPO A — Gestión de Contratos y Transiciones de Estado

---

<a name="ui-1"></a>
### UI-1 · Amnistía de recargos al reactivar desde Susp. Temporal

**Qué valida**: Al pasar un contrato de Estado 2 (Susp. Temporal) → Estado 1 (Activo), los recargos moratorios de años anteriores deben cancelarse automáticamente. Las anualidades del año en curso deben conservarse.

**Datos QA requeridos**: Sí — contrato `9002` (Estado 2, con recargos 2024 y 2025 pendientes).

**Antes de empezar** — verificar en BD:
```sql
SELECT estado FROM contrato WHERE numcontrato='9002';
-- Esperado: 2

SELECT COUNT(*) FROM ligacargos_historico
WHERE numcontrato='9002' AND categoria IN (16,17) AND estado=0 AND anio < 2026;
-- Esperado: 2 (si retorna 0, marcar IMPEDIDO — datos QA no inyectados)
```

**Pasos**:
1. Buscar contrato `9002` → abrir ficha.
2. Anotar cuántos recargos aparecen en la tabla de adeudos (esperado: 2 recargos de años < 2026 + 1 anualidad 2026).
3. Clic **"Modificar información"** → cambiar Estado a **1 (Activo)** → escribir motivo de **mínimo 20 caracteres** → clic **"Cambiar estado"**.
4. Leer el mensaje de respuesta.

**Qué verificar en pantalla**:
- Los recargos de años anteriores (2024, 2025) desaparecen de la tabla de adeudos.
- La **ANUALIDAD AGUA 2026** sigue visible y pendiente.
- El badge de estado muestra **"Activo"**.

**Verificación en BD**:
```sql
-- Recargos históricos cancelados:
SELECT COUNT(*) FROM ligacargos_historico
WHERE numcontrato='9002' AND categoria IN (16,17) AND estado=0 AND anio < 2026;
-- Esperado: 0

-- Anualidad 2026 conservada:
SELECT COUNT(*) FROM ligacargos
WHERE numcontrato='9002' AND categoria=2 AND anio=2026 AND estado=0;
-- Esperado: ≥ 1

-- Registro de amnistía en historial:
SELECT descripcion FROM cambios WHERE numcontrato='9002' ORDER BY id DESC LIMIT 3;
-- Esperado: debe aparecer 'Amnistia de Recargos en Reactivacion (C06)'
```


---

<a name="ui-2"></a>
### UI-2 · Sin amnistía al reactivar desde Susp. Administrativa

**Qué valida**: Al pasar de Estado 3 (Susp. Administrativa) → Estado 1 (Activo), **no** se cancela ningún recargo ni deuda. Todo el adeudo se conserva íntegro.

> ⚠️ **Diferencia clave con UI-1**: Susp. Temporal (2→1) sí aplica amnistía. Susp. Administrativa (3→1) NO aplica amnistía. El contrato queda activo pero con toda la deuda anterior.

**Datos**: Contrato `405` (Estado 3, dato real).

**Antes de empezar** — verificar en BD:
```sql
SELECT estado FROM contrato WHERE numcontrato='405';
-- Esperado: 3.
-- Si retorna 1 (viene de limpieza de UI-3-B, UI-5-F u otro caso anterior):
--   UPDATE contrato SET estado=3 WHERE numcontrato='405';
-- Si retorna 4 → marcar IMPEDIDO (dato real destruido, no recuperable).

SELECT COUNT(*) FROM ligacargos_historico
WHERE numcontrato='405' AND categoria IN (16,17) AND estado=0;
-- Anotar este número — debe ser igual DESPUÉS del test.
```

**Pasos**:
1. Ficha del contrato `405` → anotar número de filas y suma total de adeudos.
2. Clic **"Modificar información"** → Estado `1 (Activo)` → motivo ≥20 caracteres → **"Cambiar estado"**.
3. Verificar que la tabla de adeudos muestra **exactamente las mismas filas** de antes.

**Qué verificar en pantalla**:
- Los recargos moratorios (filas de recargo) siguen presentes — no desaparecieron.
- El monto total de deuda es igual al anotado antes del cambio.

**Verificación en BD**:
```sql
-- Sin amnistía aplicada (debe retornar 0):
SELECT COUNT(*) FROM cambios
WHERE numcontrato='405' AND descripcion='Amnistia de Recargos en Reactivacion (C06)'
ORDER BY id DESC LIMIT 1;
-- Esperado: 0

-- Estado actualizado:
SELECT estado FROM contrato WHERE numcontrato='405';
-- Esperado: 1
```


---

<a name="ui-3"></a>
### UI-3 · Bloqueo de saltos de estado 2↔3

**Qué valida**: No es posible pasar directamente de Susp. Temporal (2) a Susp. Administrativa (3) ni viceversa. El sistema obliga a pasar primero por Estado 1 (Activo).

**Datos**: Contrato `1006` (Estado 2) para sub-caso A / Contrato `405` (Estado 3) para sub-caso B.

**Antes de empezar** — verificar en BD:
```sql
SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('1006','405');
-- Esperado: 1006=2, 405=3.
-- Si 1006 ≠ 2: UPDATE contrato SET estado=2 WHERE numcontrato='1006';
-- Si 405 = 1 (viene de limpieza de UI-2, UI-5-F u otro caso anterior):
--   UPDATE contrato SET estado=3 WHERE numcontrato='405';
-- Si 405 = 4 → sub-caso B: marcar IMPEDIDO (dato real destruido, no recuperable).
```

**Sub-caso A — intento 2→3:**
1. Ficha contrato `1006` → **"Modificar información"** → seleccionar Estado **3 (Susp. Administrativa)** → escribir motivo ≥20 caracteres → **"Cambiar estado"**.
2. Leer el mensaje de respuesta.

**Sub-caso B — intento 3→2:**
1. Ficha contrato `405` → **"Modificar información"** → seleccionar Estado **2 (Susp. Temporal)** → escribir motivo ≥20 caracteres → **"Cambiar estado"**.
2. Leer el mensaje de respuesta.

**Qué verificar en pantalla (ambos sub-casos)**:
- Mensaje de error que incluye: `"No se permite saltar entre diferentes tipos de suspensión"`
- El badge de estado NO cambia.

**Verificación en BD**:
```sql
SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('1006','405');
-- Esperado: 1006=2, 405=3 (sin cambio en ninguno)
```

**Limpieza**: Ninguna — los estados no deben haber cambiado.

---

<a name="ui-4"></a>
### UI-4 · Bloqueos en Suspensión Definitiva

**Qué valida**: Un contrato en Estado 4 (Susp. Definitiva) es completamente inmutable — no permite edición, ni agregar cargos, ni cambiar estado.

**Datos**: Contrato `1028` (Estado 4, dato real).

**Antes de empezar** — verificar en BD:
```sql
SELECT estado FROM contrato WHERE numcontrato='1028';
-- Esperado: 4
```

**Pasos**:
1. Buscar y abrir la ficha del contrato `1028`.
2. Verificar que el botón **"Modificar información"** no está visible.
3. Verificar que los botones de cobro y cancelación tampoco están visibles o están deshabilitados.
4. *(Opcional — si la UI lo permite)* Intentar cambiar el estado → leer mensaje de error.

**Qué verificar en pantalla**:
- No hay enlace ni botón "Modificar información".
- No hay botones de cobrar o cancelar cargos.
- Si se intenta cambiar estado: mensaje `"No es posible cambiar el estado..."`.

**Verificación en BD**:
```sql
SELECT estado FROM contrato WHERE numcontrato='1028';
-- Esperado: 4 (sin cambio)
```

**Limpieza**: Ninguna — solo lectura.

---

<a name="ui-5"></a>
### UI-5 · Transiciones de estado — 7 flujos (A a G)

**Qué valida**: El ciclo de vida completo de un contrato: todas las transiciones válidas y sus efectos sobre la deuda y la infraestructura.

> ⚠️ **Sub-casos C, E y G son destructivos** — dejan el contrato en Estado 4 sin posibilidad de revert automático. Usar siempre datos QA para ellos.

> ⚠️ **El motivo es obligatorio** — mínimo 20 caracteres en todos los sub-casos. Sin motivo, el backend rechaza la operación antes de cualquier validación de negocio.

**Resumen de sub-casos:**

| Sub | Transición | Contrato | Condición especial | Efecto en deuda |
|:---:|---|---|---|---|
| A | 1→2 Susp. Temporal | `200` | **Solo ejecutable en diciembre** | Sin cambios en cargos |
| B | 1→3 Susp. Administrativa | `500` | Ninguna | Sin cambios en cargos |
| C | 1→4 Susp. Definitiva | QA `9001` | Destructivo — no revertir | **Todos los cargos cancelados**; agua=0, drenaje=0 |
| D | 2→1 Reactivar | `1006` | Verificar estado=2 antes | Paridad + amnistía de recargos viejos |
| E | 2→4 Baja definitiva | QA `9002` | Destructivo — no revertir | **Todos los cargos cancelados**; agua=0, drenaje=0 |
| F | 3→1 Reactivar | `405` | Verificar estado=3 antes | Paridad — sin amnistía |
| G | 3→4 Baja definitiva | QA `9002` o `405` | QA preferido | **Todos los cargos cancelados**; agua=0, drenaje=0 |

**Antes de empezar** — verificar estados en BD:
```sql
SELECT numcontrato, estado FROM contrato WHERE numcontrato IN ('200','500','1006','405');
-- Esperado: 200=1, 500=1, 1006=2, 405=3
-- Si alguno difiere, ese sub-caso se marca IMPEDIDO.
```

---

**Sub-caso A — 1→2 (contrato `200`)**

> ⚠️ **Solo ejecutable en diciembre.** Si la fecha actual no es diciembre, marcar IMPEDIDO — el sistema bloqueará la operación por regla de negocio, no por error.

1. Ficha contrato `200` → **"Modificar información"** → Estado **2 (Susp. Temporal)** → motivo ≥20 chars → **"Cambiar estado"**.

**Verificar**: Estado cambió a 2. La tabla de adeudos no cambió (los cargos siguen igual).

**Limpieza**: `UPDATE contrato SET estado=1 WHERE numcontrato='200';`

---

**Sub-caso B — 1→3 (contrato `500`)**

1. Ficha contrato `500` → **"Modificar información"** → Estado **3 (Susp. Administrativa)** → motivo ≥20 chars → **"Cambiar estado"**.

**Verificar**: Estado cambió a 3. La tabla de adeudos no cambió (los cargos siguen igual).

**Limpieza**: `UPDATE contrato SET estado=1 WHERE numcontrato='500';`

---

**Sub-caso C — 1→4 (QA contrato `9001`) — DESTRUCTIVO**

Requiere datos QA (`--with-qa`). Verificar antes:
```sql
SELECT estado FROM contrato WHERE numcontrato='9001';
-- Esperado: 1
SELECT COUNT(*) FROM ligacargos WHERE numcontrato='9001' AND estado=0;
-- Esperado: ≥ 1 cargo pendiente
```

1. Ficha contrato `9001` → **"Modificar información"** → Estado **4 (Susp. Definitiva)** → motivo ≥20 chars → **"Cambiar estado"**.

**Verificar en pantalla**: Badge muestra Estado 4. Tabla de adeudos vacía (todos cancelados).

**Verificar en BD**:
```sql
SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='9001';
-- Esperado: estado=4, agua=0, drenaje=0

SELECT COUNT(*) FROM ligacargos WHERE numcontrato='9001' AND estado=0;
-- Esperado: 0 (ningún cargo pendiente)
```

**Sin limpieza** — re-inyectar con `--with-qa` para el siguiente ciclo de pruebas.

---

**Sub-caso D — 2→1 (contrato `1006`)**

Verificar antes:
```sql
SELECT estado FROM contrato WHERE numcontrato='1006';
-- Si retorna ≠ 2, marcar IMPEDIDO. Restaurar: UPDATE contrato SET estado=2 WHERE numcontrato='1006';
```

1. Ficha contrato `1006` → **"Modificar información"** → Estado **1 (Activo)** → motivo ≥20 chars → **"Cambiar estado"**.

**Verificar**: Estado cambió a 1. Si había recargos históricos pendientes (cat 16/17 de años < 2026), ya no aparecen.

**Verificar en BD**:
```sql
SELECT estado FROM contrato WHERE numcontrato='1006';
-- Esperado: 1

SELECT descripcion FROM cambios WHERE numcontrato='1006' ORDER BY id DESC LIMIT 3;
-- Debe aparecer 'Calibracion automatica de Deudas' o 'Amnistia de Recargos en Reactivacion (C06)'
```

**Limpieza**: `UPDATE contrato SET estado=2 WHERE numcontrato='1006';`

---

**Sub-caso E — 2→4 (QA contrato `9002`) — DESTRUCTIVO**

Verificar antes:
```sql
SELECT estado FROM contrato WHERE numcontrato='9002';
-- Esperado: 2
```

1. Ficha contrato `9002` → **"Modificar información"** → Estado **4 (Susp. Definitiva)** → motivo ≥20 chars → **"Cambiar estado"**.

**Verificar en BD**:
```sql
SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='9002';
-- Esperado: estado=4, agua=0, drenaje=0

SELECT COUNT(*) FROM ligacargos WHERE numcontrato='9002' AND estado=0;
-- Esperado: 0
```

**Sin limpieza** — dato QA destructivo.

---

**Sub-caso F — 3→1 (contrato `405`)**

Verificar antes:
```sql
SELECT estado FROM contrato WHERE numcontrato='405';
-- Esperado: 3.
-- Si retorna 1 (viene de limpieza de UI-2, UI-3-B u otro caso anterior):
--   UPDATE contrato SET estado=3 WHERE numcontrato='405';
-- Si retorna 4 → marcar IMPEDIDO (dato real destruido, no recuperable).
```

1. Ficha contrato `405` → **"Modificar información"** → Estado **1 (Activo)** → motivo ≥20 chars → **"Cambiar estado"**.

**Verificar**: Estado cambió a 1. Los recargos históricos (si existían) **siguen pendientes** — no se cancelaron (a diferencia de la transición 2→1).

**Verificar en BD**:
```sql
SELECT estado FROM contrato WHERE numcontrato='405';
-- Esperado: 1

-- No debe haber registro de amnistía:
SELECT COUNT(*) FROM cambios
WHERE numcontrato='405' AND descripcion='Amnistia de Recargos en Reactivacion (C06)'
ORDER BY id DESC LIMIT 1;
-- Esperado: 0
```

**Limpieza**: `UPDATE contrato SET estado=3 WHERE numcontrato='405';`

---

**Sub-caso G — 3→4 (QA `9002` preferido, o `405` como último recurso)**

Determinar qué contrato usar:
```sql
SELECT estado FROM contrato WHERE numcontrato='9002';
-- Si = 3 → usar 9002 (QA, preferido) — continuar.
-- Si = 1 (viene de UI-1 u otro caso que lo reactivó) o = 2 (estado inicial QA):
--   UPDATE contrato SET estado=3 WHERE numcontrato='9002';
--   Luego usar 9002.
-- Si = 4 → 9002 ya fue destruido en UI-5-E; pasar a verificar 405.

SELECT estado FROM contrato WHERE numcontrato='405';
-- Si = 3 → usar 405 (dato real — operación irreversible, confirmar antes).
-- Si = 1 (viene de limpieza de UI-2, UI-3-B o UI-5-F):
--   UPDATE contrato SET estado=3 WHERE numcontrato='405';
--   Luego usar 405.
-- Si = 4 → marcar IMPEDIDO (ambos contratos destruidos, no recuperables).
```

1. Ficha del contrato elegido → **"Modificar información"** → Estado **4 (Susp. Definitiva)** → motivo ≥20 chars → **"Cambiar estado"**.

**Verificar en BD** (reemplazar `<cto>` con el contrato usado):
```sql
SELECT estado, agua, drenaje FROM contrato WHERE numcontrato='<cto>';
-- Esperado: estado=4, agua=0, drenaje=0

SELECT COUNT(*) FROM ligacargos WHERE numcontrato='<cto>' AND estado=0;
-- Esperado: 0
```

**Sin limpieza** — si se usó `405` sobre dato real, documentar en el reporte.

---

<a name="ui-5r"></a>
### UI-5R · Revertir Transición de Estado — Contrato 405 (Regla reversal_threshold)

**Qué valida**: Que el botón **"⟳ Revertir transición"** aparezca en la ficha cuando la deuda del contrato supera el umbral configurado en `config_sistema.reversal_threshold` (default $15,000) y existe un `REVERSAL_SNAPSHOT` pendiente. Al ejecutar la reversión, el sistema deshace exactamente lo que hizo `cambiaestado()`: restaura el estado anterior, cancela los cargos generados, y restaura los recargos amnistiados.

> **Origen de este caso**: El cto 405 (Susp. Administrativa, deuda ~$10,686) reveló durante la sesión de estabilización que:
> - La transición 3→1 llama a `_sincronizaParidadFinanciera()` (paridad) pero **NO** a amnistía C06.
> - El desglose cargos/recargos difiere entre Host B y Host C por la Regla F05 (`categoria IN (16,17)` como discriminador canónico, no el campo `recargo`).
> - El botón de reversión **no aparecía** porque `reversal_threshold` no está en `config_sistema` y el default de $15k supera la deuda del 405. Este caso cubre ambas condiciones.

> ⚠️ **Prerequisito BD**: `reversal_threshold` debe insertarse en `config_sistema` con un valor ≤ deuda del contrato de prueba para que el botón aparezca. Ver sub-caso A.

> ⚠️ **Este caso es semi-destructivo**: modifica el estado del contrato de prueba. Usar el **contrato QA `9001`** (o `9004`) para sub-casos donde se necesite destruir/revertir, salvo que se indique usar el cto 405 dato real.

---

**Sub-caso A — Verificar que `reversal_threshold` existe en config_sistema y que la pantalla "Configuración Global" lo muestra**

**Qué valida**: Que la clave `reversal_threshold` exista en `config_sistema` y sea visible/editable en `admin/operaciones/configuracion.php`.

**Antes de empezar**:
```sql
SELECT clave, valor FROM config_sistema WHERE clave='reversal_threshold';
-- Si no retorna fila → la clave NO está en BD. Insertarla:
INSERT INTO config_sistema (clave, valor, descripcion)
VALUES ('reversal_threshold', '15000',
        'Umbral de deuda ($) a partir del cual se habilita el botón Revertir Transición en la ficha.');
-- Luego verificar de nuevo.
```

**Pasos**:
1. Navegar a `http://192.168.0.111:7001/agua/admin/operaciones/configuracion.php`.
2. Localizar la fila `reversal_threshold` en la tabla de configuraciones.
3. Cambiar el valor a `10000` (para que el cto 405 con ~$10,686 de deuda supere el umbral) → clic **"Guardar Configuración"** → confirmar popup.

**Verificar en pantalla**: Mensaje de confirmación de guardado. La fila `reversal_threshold` muestra el nuevo valor `10000`.

**Verificar en BD**:
```sql
SELECT valor FROM config_sistema WHERE clave='reversal_threshold';
-- Esperado: 10000
```

**Limpieza**: Al terminar todos los sub-casos de UI-5R, restaurar a `15000`:
```sql
UPDATE config_sistema SET valor='15000' WHERE clave='reversal_threshold';
```

---

**Sub-caso B — El botón "Revertir transición" aparece con deuda ≥ umbral y snapshot pendiente**

**Qué valida**: Que `_getReversal()` retorne datos y la ficha muestre el botón `#btn-revertir-transicion` cuando:
1. La deuda total del contrato ≥ `reversal_threshold`.
2. Existe un `REVERSAL_SNAPSHOT` con `despues='PENDIENTE'` más reciente que el último cambio de estado.

**Prerequisito**: Sub-caso A completado (umbral = 10000) y haberse ejecutado UI-5 sub-caso F (3→1 del cto 405) para que exista el snapshot.

**Antes de empezar**:
```sql
-- Verificar que existe snapshot pendiente para 405:
SELECT id, fecha, LEFT(antes, 80) AS snap
FROM cambios
WHERE numcontrato='405' AND descripcion='REVERSAL_SNAPSHOT' AND despues='PENDIENTE'
ORDER BY id DESC LIMIT 1;
-- Si no retorna fila: ejecutar primero UI-5 sub-caso F (cambiar estado 405 de 3→1).

-- Verificar que la deuda total supera el umbral:
SELECT IFNULL(SUM(monto),0) AS deuda_total
FROM vw_ligacargos_pendientes WHERE numcontrato='405';
-- Esperado: > 10000 (umbral configurado). Cto 405 tiene ~$10,686.
```

**Pasos**:
1. Abrir la ficha del contrato `405`.
2. Verificar que aparece el botón **"⟳ Revertir transición"** (fondo amarillo, borde naranja) en la barra de opciones de la ficha.
3. Clic en el botón → leer el `confirm()` que aparece — debe mostrar:
   - Estado destino → Estado origen (ej. `[1] ACTIVO → [3] SUSPENSIÓN ADMINISTRATIVA`)
   - Cargos generados a cancelar: N
   - Recargos amnistiados a restaurar: N
   - Deuda tras reversión (exacta): $X,XXX.XX
4. **NO confirmar todavía** — anotar los valores del popup. Clic **Cancelar**.

**Verificar en pantalla**:
- El botón `#btn-revertir-transicion` es visible con estilo amarillo.
- El texto del `confirm()` contiene la transición correcta y los conteos de cargos.

**Verificar en BD** (sin ejecutar la reversión aún):
```sql
SELECT id, fecha, despues FROM cambios
WHERE numcontrato='405' AND descripcion='REVERSAL_SNAPSHOT'
ORDER BY id DESC LIMIT 1;
-- despues debe ser 'PENDIENTE' (no revertido aún)
```

**Limpieza**: Ninguna — solo lectura.

---

**Sub-caso C — Ejecutar la reversión y verificar que el estado regresa a 3 (SPA)**

**Qué valida**: Que `revertirTransicion()` deshaga completamente el cambio de estado 3→1:
- Restaura `contrato.estado = 3`.
- Cancela los cargos que `_sincronizaParidadFinanciera()` generó al reactivar (`lc_ids_nuevos`: estado=0 → estado=-1).
- Restaura cargos que la paridad canceló (`lc_ids_cancelados`: estado=-1 → estado=0).
- Restaura recargos amnistiados si los hubiera (`hist_ids_amnist`: estado=-1 → estado=0).
- Marca el snapshot como `despues='REVERTIDO'`.
- Registra entrada en `cambios` con descripción `'Reversión de transición: ...'`.

**Prerequisito**: Sub-caso B completado (snapshot existe, botón visible, estado actual = 1).

**Antes de empezar** — anotar estado financiero previo:
```sql
SELECT COUNT(*) AS n_cargos, IFNULL(SUM(monto),0) AS deuda
FROM vw_ligacargos_pendientes WHERE numcontrato='405';
-- Anotar n_cargos y deuda para comparar post-reversión.

SELECT estado FROM contrato WHERE numcontrato='405';
-- Esperado: 1 (activo — estado que se va a revertir)
```

**Pasos**:
1. Ficha del contrato `405` → clic botón **"⟳ Revertir transición"** → leer el confirm() → clic **Aceptar/OK**.
2. Verificar el mensaje de resultado que aparece en `#nara`.
3. Verificar que la ficha se actualiza (el badge de estado muestra **Susp. Administrativa**).
4. Verificar que el botón **"⟳ Revertir transición"** ya **no aparece** (snapshot consumido).

**Verificar en BD** (post-reversión):
```sql
-- Estado restaurado a 3:
SELECT estado FROM contrato WHERE numcontrato='405';
-- Esperado: 3

-- Snapshot marcado como revertido:
SELECT despues FROM cambios
WHERE numcontrato='405' AND descripcion='REVERSAL_SNAPSHOT'
ORDER BY id DESC LIMIT 1;
-- Esperado: 'REVERTIDO' (ya no es 'PENDIENTE')

-- Registro de reversión en bitácora:
SELECT descripcion, LEFT(antes,80) AS antes, LEFT(despues,80) AS despues
FROM cambios WHERE numcontrato='405' ORDER BY id DESC LIMIT 3;
-- Debe existir 'Reversión de transición: ACTIVO → SUSPENSIÓN ADMINISTRATIVA'

-- Deuda consistente post-reversión:
SELECT COUNT(*) AS n_cargos, IFNULL(SUM(monto),0) AS deuda
FROM vw_ligacargos_pendientes WHERE numcontrato='405';
-- El conteo y suma deben coincidir con el valor 'deuda_pre' del snapshot (deuda original antes del cambio 3→1)
```

**Limpieza**: El contrato queda en estado 3 (SPA) — que es su estado original de dato real. Restaurar `reversal_threshold`:
```sql
UPDATE config_sistema SET valor='15000' WHERE clave='reversal_threshold';
```

---

**Sub-caso D — El botón NO aparece si la deuda está por debajo del umbral**

**Qué valida**: Que `_getReversal()` retorne `null` cuando `deuda_total < reversal_threshold`, ocultando el botón. Evita que contratos con deudas pequeñas muestren la opción de reversión.

**Pasos**:
1. Restaurar `reversal_threshold` a un valor mayor que la deuda del cto 405:
   ```sql
   UPDATE config_sistema SET valor='50000' WHERE clave='reversal_threshold';
   ```
2. Abrir la ficha del contrato `405`.
3. Verificar que el botón **"⟳ Revertir transición"** **NO aparece**.

**Verificar en pantalla**: La barra de opciones de la ficha no contiene el botón amarillo de reversión.

**Limpieza**:
```sql
UPDATE config_sistema SET valor='15000' WHERE clave='reversal_threshold';
```

---

**Sub-caso E — Verificar desglose cargos/recargos del cto 405 (Regla F05)**

**Qué valida**: Que el desglose de deuda del contrato 405 en Host C use el discriminador canónico `categoria IN (16,17)` para separar recargos moratorios de cargos base. Este fue el hallazgo clave de la sesión de estabilización: Host B reportaba $6,636 en cargos y $4,050 en recargos; Host C reporta correctamente $7,770 en cargos y $2,916 en recargos porque no confunde multas de asamblea (cat 6) con recargos moratorios.

**Datos**: Contrato `405` (dato real, sin QA).

**Verificar en BD**:
```sql
-- Deuda total pendiente (debe ser ~$10,686):
SELECT IFNULL(SUM(monto),0) AS deuda_total
FROM vw_ligacargos_pendientes WHERE numcontrato='405';

-- Desglose V2: cargos base vs recargos moratorios (Regla F05):
SELECT
  SUM(CASE WHEN categoria NOT IN (16,17) THEN monto ELSE 0 END) AS cargos_base,
  SUM(CASE WHEN categoria IN (16,17) THEN monto ELSE 0 END)     AS recargos_moratorios
FROM vw_ligacargos_pendientes
WHERE numcontrato='405';
-- Esperado Host C V2: cargos_base ~$7,770 | recargos_moratorios ~$2,916
-- (Host B legacy reporta $6,636/$4,050 por usar el campo recargo=1 como discriminador — incorrecto per Regla F05)

-- Confirmar que cat 6 (multas asamblea) NO está clasificada como recargo:
SELECT categoria, COUNT(*) AS n, SUM(monto) AS total
FROM vw_ligacargos_pendientes
WHERE numcontrato='405'
GROUP BY categoria ORDER BY categoria;
-- cat 6 debe aparecer en cargos_base, NO en recargos_moratorios
```

**Verificar en pantalla**: La tabla de adeudos de la ficha muestra los conceptos separados correctamente. Las filas cat 16/17 son recargos; las cat 6 son multas (no recargos).

**Limpieza**: Solo lectura — ninguna.

---

<a name="ui-6"></a>
### UI-6 · Creación de Nuevo Contrato — 6 sub-casos (A a F)

**Qué valida**: El formulario de Nuevo Contrato: creación exitosa, generación automática de cargos, tarifas correctas según tipo de toma, bloqueos de infraestructura y de límite de tomas.

> ⚠️ **Flujo del formulario**: Usuario → presionar **TAB** para activar búsqueda → seleccionar de la lista → clic en label **"Nueva dirección..."** → ingresar domicilio → configurar tomas → clic **"Guardar Contrato"** → **confirmar el popup de confirmación** (Aceptar/OK).

> ⚠️ Si no existen las anualidades 2026 en el catálogo, el contrato se crea pero sin cargos automáticos. Verificar antes:
> ```sql
> SELECT COUNT(*) FROM cargos WHERE nombre IN ('ANUALIDAD DEL AGUA 2026','ANUALIDAD DEL DRENAJE 2026') AND estado=1;
> -- Esperado: 2. Si retorna < 2, marcar IMPEDIDO.
> ```

**Usuario base para todos los sub-casos**: `1` (ABAD CRUZ BLANCO — verificado sin contratos activos).

---

**Sub-caso A — 1 Toma Normal: agua + drenaje (caso base)**

Verificar antes:
```sql
SELECT COUNT(*) FROM contrato WHERE numusuario=1;
-- Esperado: 0. Si retorna > 0, ejecutar la limpieza al final de este caso antes de empezar.
SELECT COUNT(*) FROM cargos WHERE nombre IN ('ANUALIDAD DEL AGUA 2026','ANUALIDAD DEL DRENAJE 2026') AND estado=1;
-- Esperado: 2. Si retorna < 2, marcar IMPEDIDO.
```

**Pasos**:
1. Menú **"Nuevo Contrato"**.
2. En el campo de usuario escribir `ABAD` (o `ABAD CRUZ BLANCO`) → presionar **TAB** → esperar que aparezca la lista de resultados → seleccionar el usuario **1 - ABAD CRUZ BLANCO** de la lista.
3. Clic en el label **"Nueva dirección..."** → en el campo de domicilio ingresar exactamente: `CALLE PRUEBA AUTO 6A`.
4. Tipo de contrato: **Normal**.
5. Toma 1: marcar **agua = Sí**, marcar **drenaje = Sí**.
6. Clic **"Guardar Contrato"** → en el popup de confirmación que aparece, clic **Aceptar / OK**.
7. Anotar el número del contrato creado.

**Verificar en pantalla**:
- Ficha del nuevo contrato se abre con estado **Activo**.
- Tabla de adeudos muestra **ANUALIDAD DEL AGUA 2026** y **ANUALIDAD DEL DRENAJE 2026** pendientes.

**Verificar en BD**:
```sql
-- Datos del contrato creado:
SELECT estado, agua, drenaje, tipo, exento_recargo_primer_anio
FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1;
-- Esperado: 1, 1, 1, 0, 1

-- Toma creada correctamente:
SELECT num_toma, tipo, tiene_agua, tiene_drenaje, estado_agua, estado_drenaje
FROM contrato_toma WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1);
-- Esperado: 1, 0, 1, 1, 1, 1

-- Cargos automáticos generados:
SELECT COUNT(*) FROM ligacargos
WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1)
AND categoria IN (2,3) AND estado=0;
-- Esperado: 2
```

**Limpieza**:
```sql
SET @nid=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6A' ORDER BY numcontrato DESC LIMIT 1);
DELETE FROM ligacargos WHERE numcontrato=@nid;
DELETE FROM contrato_toma WHERE numcontrato=@nid;
DELETE FROM contrato WHERE numcontrato=@nid;
```

---

**Sub-caso B — 1 Toma Normal: solo agua, sin drenaje**

Limpieza previa (borrar huérfano si sub-caso A quedó a medias):
```sql
SET @h=(SELECT numcontrato FROM contrato WHERE numusuario=1 AND domicilio='CALLE PRUEBA AUTO 6B' ORDER BY numcontrato DESC LIMIT 1);
DELETE FROM ligacargos WHERE numcontrato=@h;
DELETE FROM contrato_toma WHERE numcontrato=@h;
DELETE FROM contrato WHERE numcontrato=@h;
```

**Pasos**:
1. Menú **"Nuevo Contrato"**.
2. Campo de usuario: escribir `ABAD` (o `ABAD CRUZ BLANCO`) → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO** de la lista.
3. Clic en label **"Nueva dirección..."** → ingresar domicilio: `CALLE PRUEBA AUTO 6B`.
4. Tipo: **Normal**. Toma 1: ✅ agua, ❌ drenaje (desmarcar drenaje).
5. Clic **"Guardar Contrato"** → **Aceptar popup**.

**Verificar en pantalla**: Solo aparece **ANUALIDAD DEL AGUA 2026** en adeudos. Sin ANUALIDAD DRENAJE.

**Verificar en BD**:
```sql
SELECT agua, drenaje FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1;
-- Esperado: 1, 0

SELECT COUNT(*) FROM ligacargos
WHERE numcontrato=(SELECT MAX(numcontrato) FROM contrato WHERE numusuario=1)
AND categoria IN (2,3) AND estado=0;
-- Esperado: 1 (solo agua)
```

**Limpieza** (mismo patrón que A, domicilio `'CALLE PRUEBA AUTO 6B'`).

---

**Sub-caso C — 1 Toma Comercial: tarifa diferenciada**

Anotar la tarifa comercial antes de crear:
```sql
SELECT monto, monto_comercial FROM cargos WHERE nombre='ANUALIDAD DEL AGUA 2026' AND estado=1 LIMIT 1;
-- Anotar ambos valores para comparación posterior
```

Limpieza previa (huérfano de domicilio 6C si existe).

**Pasos**:
1. Menú **"Nuevo Contrato"**.
2. Campo de usuario: escribir `ABAD` → **TAB** → seleccionar **1 - ABAD CRUZ BLANCO**.
3. Clic en label **"Nueva dirección..."** → ingresar domicilio: `CALLE PRUEBA AUTO 6C`.
4. Toma 1: tipo **Comercial**, ✅ agua, ✅ drenaje.
5. Clic **"Guardar Contrato"** → **Aceptar popup**.

**Verificar en pantalla**: Ficha activa. La ANUALIDAD AGUA 2026 tiene un monto diferente al de tipo Normal.

**Verificar en BD**:
```sql
SELECT tipo FROM contrato WHERE numusuario=1 ORDER BY numcontrato DESC LIMIT 1;
-- Esperado: 1 (Comercial)
```

</details>

---

## Agent Response

### Thinking

**Understanding the Test Plans**

I've grasped the nuances of both testing documents. The 'Plan de Pruebas' is quite technical, with a focus on automation, leveraging [AUTO] blocks. Meanwhile, the 'Guia de Pruebas' offers a more accessible, human-oriented perspective on the same test cases.




### Actions

**Tool:** `view_file`
**File:** `analisis_paridad_3hosts.md`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.543761496s
- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
He profundizado en los scripts y en el Host B para ofrecerte la visión completa de los 3 niveles. Aquí está el análisis detallado de los saneamientos y la comparativa de paridad extendida.

---

### 📈 Certificación de Paridad Extendida (B → A → C) v1.0.0

El cotejo inicial reveló el impacto financiero real del saneamiento automatizado aplicado durante la primera transición.

| Métrica | Host B (Legado Raw) | Host A (Saneado V1+) | Host C (Target V2) | Estado / Impacto |
| :--- | :---: | :---: | :---: | :---: |
| **Contratos** | 1,406 | 1,406 | 1,406 | ✅ Match |
| **Cargos Totales** | 195,070 | 195,070 | 195,070 | ✅ Match |
| **Suma Pendiente** | **$3,254,369** | **$3,147,287** | **$3,147,287** | **-$107,082** (Depurado) |
| **Bitácora (Audit)** | 4,890 | 4,891 | 4,891 | +1 (Lote Maestro) |

> [!NOTE]
> **Análisis v1.0.0**: Los **$107,082.00** de diferencia entre el Host B y el Host A representan la "Deuda Fantasma" de contratos en Suspensión Definitiva (Estado 4) que fue depurada automáticamente para evitar saldos incobrables en el nuevo sistema.

---

### 📈 Certificación de Paridad Extendida (B → A → C) v1.0.1 (Post-Lógica Híbrida)

El recalculo actual demuestra el efecto continuo de la limpieza de datos, pruebas funcionales recientes y la aplicación rigurosa de la Lógica Híbrida en los tres entornos.

| Métrica | Host B (Legado Raw) | Host A (Saneado V1+) | Host C (Target V2) | Estado / Impacto |
| :--- | :---: | :---: | :---: | :---: |
| **Contratos** | 1,408 | 1,418 | 1,419 | Diferencia por pruebas |
| **Cargos Totales** | 198,047 | 198,059 | 197,974 | Depuración D4/D5 |
| **Suma Pendiente** | **$3,437,031** | **$3,331,900** | **$3,265,974** | **-$171,057** vs B |
| **Bitácora (Audit)** | 4,919 | 4,920 | 4,930 | Incremento Actividad |

> [!NOTE]
> **Análisis v1.0.1**: La mayor reducción de la deuda en Host C ($3.26M vs $3.43M) refleja la estabilización exitosa del Motor V2. La Lógica Híbrida ajustó las moras continuas, mientras que la estricta Regla C05 purga radicalmente cualquier deuda residual en suspensiones definitivas.

---

### 📈 Certificación de Paridad Final (Host C V2) v1.1.0 (Post-Saneamiento Estructural)

Esta tabla representa el **Estado Maestro** del sistema tras la consolidación de asambleas y depuración de catálogos.

| Métrica | Host B (Legado) | Host C (Saneado V2) | Estado / Impacto |
| :--- | :---: | :---: | :---: |
| **Contratos** | 1,408 | 1,408 | ✅ Sincronía Total |
| **Cargos Totales** | 198,047 | 198,033 | -14 (Limpieza Basura) |
| **Suma Pendiente** | **$3,437,031** | **$3,261,677** | **-$175,354** (Depurado) |
| **Bitácora (Audit)** | 4,919 | 4,930 | Log Maestro OK |
| **Asambleas** | 61 | 55 | -6 (Consolidadas) |
| **Usuarios** | 1,491 | 1,406 | -85 (Placeholder Purged) |

---

### 🛡️ Otros Saneamientos Realizados en los Scripts

Además de la depuración de contratos con Estado 4, los scripts ejecutan estas tareas críticas de integridad:

1.  **Amnistía de Bienvenida (D1)**: 
    -   Se detectan contratos creados en 2026 que el Host B no marcó correctamente. El script fuerza `exento_recargo_primer_anio = 1` para proteger a los nuevos usuarios de recargos punitivos inmediatos.
2.  **Ajuste de Tarifa Comercial (D2)**:
    -   Calcula automáticamente el `monto_comercial` (doble del doméstico) para cargos que en el Host B estaban planos, asegurando la equidad fiscal en tomas de negocios.
3.  **Saneamiento de Vinculación (`idpago_vinc`) (D3)**:
    -   Host B tiene inconsistencias (NULLs) en el campo que vincula las multas con sus pagos. El script de Host A lo unifica y el de Host C lo transforma a `int NULL` binario, evitando errores de coincidencia en consultas MariaDB.
4.  **Limpieza de Residuos de Desarrollo (D4/D5)**:
    -   Eliminación de cargos del año 2027 y registros con prefijos "test_" o "cbm_" que se usaron durante las pruebas de la migración y que no deben llegar al ambiente C.
5.  **Normalización de Infraestructura (Toms ON/OFF)**:
    -   Si el contrato es Estado 4, no solo se cancela su deuda; el script `04_recalc_contrato_toma.sql` fuerza a que todas sus tomas aparezcan en **OFF** (`estado_agua=0`). Esto previene que un usuario con contrato suspendido aparezca con servicios activos en la ficha técnica.
6.  **Unificación de Folios (D6)**:
    -   Corrige folios `NULL` convirtiéndolos en `0` para que el sistema de búsqueda sea consistente y no ignore registros históricos al emitir reportes de caja.

> [!TIP]
> **Nota de Arquitectura V2 (Lógica Híbrida)**: Para ver la documentación exhaustiva sobre la Barrera de No-Retroactividad, Motor de Mora Continuo, Neutralización de la Regla F05 y Amnistía C06, consulte el Ground Truth oficial: [transiciones_estado_contratos.md](transiciones_estado_contratos.md).

---

### 🏗️ Saneamiento Estructural y Blindaje Poka-Yoke (PMU 2026)

Este protocolo (Sección D en `03_sync_host_a.sql`) corrige inconsistencias estructurales de Host B antes de pasar a C para garantizar el cumplimiento de las nuevas restricciones de integridad.

#### 1. Consolidación de Asambleas (Limpieza de Fragmentación)
*   **Problema**: Múltiples registros de asamblea para la misma fecha (ej. 7 registros el 27/03/2011), fragmentando la asistencia.
*   **Saneamiento**: Se identifica la asamblea con más asistentes por fecha ("Ganadora"), se le reasignan todos los `asistentes` de las asambleas duplicadas y se eliminan las redundantes.
*   **Blindaje (Host C)**: Se implementó el TRIGGER `tr_asamblea_limit_3` que permite flexibilidad (hasta 3 sesiones/día) pero bloquea la fragmentación masiva accidental.

#### 2. Unicidad del Catálogo de Cargos
*   **Saneamiento**: Algoritmo de jerarquía (Activo > Automático > ID Menor) para eliminar duplicados de tarifas.
*   **Blindaje (Host C)**: Restricción `UNIQUE KEY uk_nombre_anio` en tabla `cargos`.

#### 3. Depuración del Padrón y Catálogos Core
*   **Usuarios**: Borrado de registros sin nombre que **no** poseen contratos vinculados.
*   **Blindaje de Catálogos (Host C)**: Se añadieron `UNIQUE KEY (nombre)` en las tablas `categorias`, `categorias_egresos` y `contrasenas` (por rol) para evitar que el catálogo se vuelva a ensuciar.

#### 4. Limpieza de Huérfanos
*   Eliminación de registros en `asistentes` que apunten a IDs de asamblea inexistentes, asegurando una integridad referencial 1:1 en el Host C.

```

</details>

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `transiciones_estado_contratos.md`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
# Matriz de Transiciones y Protocolos Financieros de Contratos (Agua V2)

Este documento define las reglas de operación para la gestión de estados y el comportamiento de la deuda ante cambios administrativos en el sistema Agua V2 (Estabilización 2026).

---

## 1. Estados del Contrato
El sistema reconoce **4 estados** fundamentales. El estado del contrato rige la facturación automática y los permisos de edición.

1.  **Activo (1)**: Estado operativo normal. Genera anualidades y recargos.
2.  **Suspensión Temporal (2)**: Suspensión a solicitud del usuario. Congela la facturación de nuevas anualidades.
3.  **Suspensión Administrativa (3)**: Suspensión por sanción o adeudo. Mantiene la deuda íntegra y permite el crecimiento de recargos.
4.  **Suspensión Definitiva (4)**: Baja total e irreversible. Inmoviliza el registro y depura deudas pendientes (Regla C05).

---

## 2. Matriz de Transiciones Permitidas

| Origen ↓ \ Destino → | 1 (Activo) | 2 (S. Temporal) | 3 (S. Administrativa) | 4 (S. Definitiva) |
| :--- | :---: | :---: | :---: | :---: |
| **1 (Activo)** | — | ✅ *Sí* | ✅ *Sí* | ✅ *Sí* |
| **2 (S. Temporal)** | ✅ *Reactivación* | — | ❌ *Bloqueado* | ✅ *Sí* |
| **3 (S. Administrativa)** | ✅ *Reactivación* | ❌ *Bloqueado* | — | ✅ *Sí* |
| **4 (S. Definitiva)** | ❌ *Bloqueado* | ❌ *Bloqueado* | ❌ *Bloqueado* | — |

> **Nota**: No se permite el salto directo entre suspensiones (2 ↔ 3). El contrato debe reactivarse (pasar a 1) para cambiar el tipo de suspensión.

---

## 3. Lógica Híbrida y Reglas de Retroactividad Financiera

La Estabilización 2026 introduce la **Lógica Híbrida**, un diseño que protege el costo original de las deudas del pasado, pero actualiza dinámicamente la mora generada. Esta lógica se divide en dos comportamientos clave:

### 3.1. Escenario Base: Regla de No Retroactividad (Protección del Pasado)
Las modificaciones en la naturaleza administrativa o infraestructura del contrato **solo afectan la deuda base del ejercicio actual y de los ejercicios futuros** (`anio_cargo >= anio_actual`). 
La deuda base del pasado (ej. `anio_cargo <= 2025`) queda "congelada" en su valor original.

**Cambios que obedecen la No Retroactividad:**
*   **Cambio de Tipo de Toma (Normal ↔ Comercial)**: Si un usuario cambia hoy su toma a comercial, el costo incrementado (ej. el doble) solo aplicará al año actual en adelante. Sus deudas de años pasados seguirán costando la tarifa "normal" que debían en su momento.
*   **Modificación de Metros Lineales**: Solo afecta la facturación futura.
*   **Aumento en Catálogo de Tarifas**: Las deudas de años anteriores no sufren aumentos ni reducciones por fluctuaciones en el catálogo vigente.

### 3.2. Escenario Dinámico: Regla Retroactiva (Recargos Multi-año)
A diferencia de la deuda base, los recargos moratorios (Categorías 16 y 17) **sí son retroactivos**. El motor V2 evalúa continuamente *toda* la deuda viva del usuario.
*   **Motor de Mora Continuo**: Se eliminó la limitante legacy que frenaba la mora al terminar el año calendario. Un adeudo de 2024 acumulará recargos continuos por todos los meses transcurridos a través del 2025 y 2026.
*   **Mantenimiento Financiero**: Al cambiar una tarifa base (presente) o al cambiar de estado, el sistema reevalúa ("llena los huecos") la mora de todos los años pendientes. La base de 2024 se mantiene original, pero sus recargos se mantienen al día (Lógica Híbrida).

### 3.3. Regla de Suma de Unidades (Multi-Toma)
El sistema reemplazó el modelo de "Tarifa Mayor" por **Suma de Unidades**. 
*   El costo de Agua y Drenaje resulta de sumar individualmente la tarifa (Normal o Comercial) de cada toma física conectada al contrato.

---

## 4. Configuración del Motor V2 (Catálogo de Cargos)

### 4.1. Activación de Flags Moratorios (2026 en adelante)
Para que las anualidades generen mora (recargos) a través del Motor V2, el catálogo de `cargos` utiliza la columna `recargo` como un *Flag de Elegibilidad*.
*   **Deudas Base Nuevas (>= 2026)**: Tienen explícitamente `recargo = 1` en el catálogo. Esto le indica al motor que esta anualidad es elegible para acumular mora mes a mes.
*   **Recargos Físicos (Categorías 16 y 17)**: Tienen explícitamente `recargo = 0` en el catálogo (Regla F05) para evitar la paradoja de "recargos sobre recargos".
*   Las referencias tarifarias de UI consultan exclusivamente cargos base obviando este flag (`estado=1 AND categoria IN (2,3)`), adaptándose así a la estructura V2.

---

## 5. Excepciones Administrativas y Purgas

### 5.1. Amnistía de Recargos (Regla C06)
Aplicada exclusivamente en la **Reactivación de Susp. Temporal (2 → 1)**. 
*   El sistema cancela de forma retroactiva todos los recargos acumulados (categorías 16 y 17) de años pasados para facilitar el retorno del usuario al estado Activo. 
*   Esta amnistía ocurre *después* de que la Paridad Financiera estabiliza la deuda base.
*   **Excepción**: La reactivación desde *Suspensión Administrativa (3 → 1)* NO goza de amnistía. El usuario debe pagar su mora completa.

### 5.2. Purga por Baja (Estado 4 - SDF)
Al pasar a **Suspensión Definitiva**, el sistema activa una purga radical:
*   Depura (cambia a `estado = -1`) absolutamente toda la deuda pendiente (`estado = 0`) de ese contrato, tanto en la tabla activa (`ligacargos`) como en la partición histórica (`ligacargos_historico`).
*   Desconecta físicamente las tomas de la UI y bloquea cualquier cambio de propietario, anotación u otro estado.

---

## Apéndice: Clasificación de Cargos por Categoría

| Categoría | Concepto | Comportamiento | Lógica PHP/BD |
| :--- | :--- | :--- | :--- |
| **2, 3** | Agua / Drenaje | **No Retroactivo** | Sincronización de base limitada a `anio >= actual`. Requieren flag `recargo=1` en V2. |
| **7** | Metros Lineales | **No Retroactivo** | Multiplicador ligado a la infraestructura actual. |
| **16, 17** | Recargos Mora | **Retroactivo** | Se recalculan dinámicamente para toda la deuda viva (Híbrido/Multi-año). Flag `recargo=0` (Regla F05). |
| **6** | Falta Asamblea | **Estático** | Tarifa fija por evento. No cambia tras la emisión. |
| **14, 15** | Conexiones | **Puntual** | Cargos únicos generados por eventos de alta/reactivación. |
| **19, 21** | Trámites | **Puntual** | Cargos únicos generados por solicitud. |

---

## Apéndice B: Retrospectiva Arquitectónica y Deuda Técnica (V2)

Este ejercicio documenta las decisiones y hallazgos clave durante la estabilización del Motor V2 (Lógica Híbrida) y su contraste con el sistema Legacy.

### 1. La Ilusión en el Host B (El "Ciego" y el "Sordo")
*   **Problema (Legacy):** En el Host B, la base de datos tenía un bug en el catálogo donde el flag `recargo` de las anualidades estaba en `0` (Ciego). Sin embargo, la operación continuaba porque el código PHP ignoraba la BD y aplicaba un 10% quemado en duro (Sordo).
*   **Solución (V2):** El código PHP ahora es estricto y lee el catálogo. Para que las anualidades de 2026 generen mora, se inyectó explícitamente `UPDATE cargos SET recargo = 1` en el catálogo de Host C (`08_saneamiento_catalogo.sql`), despertando así el flag de elegibilidad.

### 2. Estabilidad Histórica vs. Rigor Futuro
*   **Problema (Legacy):** Cualquier alteración a la tarifa o infraestructura modificaba arbitrariamente la deuda del pasado.
*   **Solución (V2 - Lógica Híbrida):** Se aplicó la condición matemática `if ($anio_cargo >= $anio_actual)`. El pasado se estabiliza (montos base congelados), pero el rigor futuro asegura que cualquier toma nueva o cambio (ej. a Comercial) facture correctamente del 2026 en adelante, sin detener el cálculo continuo de mora en ningún año.

### 3. Neutralización en lugar de Exterminio
*   **Problema (Legacy):** Los recargos físicos (cat 16/17) en `ligacargos` tenían valores físicos en su columna `recargo`, provocando el bug de "recargo sobre recargo".
*   **Solución (V2):** Regla F05. Se "neutralizó" la columna física (`UPDATE ligacargos SET recargo = 0.00 WHERE categoria IN (16,17)`). Esto corrigió el bug de lógica sin eliminar la columna del esquema, garantizando compatibilidad con el pipeline de sincronización B→A→C.

### 4. Persistencia Total del Concepto
*   **Problema (Legacy):** Ausencia de tipificación clara para los recargos (nombres genéricos, no persistidos claramente).
*   **Solución (V2):** Cada recargo es una fila física (`ligacargos` o `_historico`) ligada estricta y únicamente a las categorías 16 y 17, con fechas de emisión forenses. El alias virtual `es_recargo_moratorio` permite consultar su estado instantáneamente en vistas.

### 5. ¿Eliminar el campo neutralizado? (Limitantes)
*   No es posible eliminar la columna `recargo` por dos razones:
    1. **Sobrecarga (Overloading)**: En el catálogo (`cargos`), el campo sí es vital (actúa como Flag Maestro de elegibilidad).
    2. **Paridad Estructural**: Eliminarlo de `ligacargos` rompería instantáneamente la sincronización de datos con el esquema de Host A/B.
*   *Mejora Futura (V3)*: Renombrar `cargos.recargo` a `genera_mora` y deprecar `ligacargos.recargo`.

```

</details>

---

## Agent Response

### Thinking

**Reviewing Current Information**

I have absorbed all the data and the current task. I am focusing on the "Plan de Pruebas" document, specifically the backend metrics. I need to make updates in Section 3 and double-check rule alignment, including C01-C08 and F rules. I'm ensuring everything is in sync to proceed.




### Actions

**Tool:** `grep_search`
**Query:** `reversal_threshold`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.902997844s
- **Model:** Gemini 3 Flash
</details>

---

### Local File Search

**Status:** Completed
**Created:** 25 Apr 2026, 11:55 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `03_config_datos_catalogo.sql`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
-- =============================================================================
-- 03_config_datos_catalogo.sql — Datos de configuración y catálogos del sistema
-- Idempotente: usa INSERT ... ON DUPLICATE KEY UPDATE / INSERT IGNORE
-- Ejecutar: mysql -u root -p awa < 03_config_datos_catalogo.sql
-- =============================================================================

USE `awa`;

-- -----------------------------------------------------------------------------
-- config_sistema — Parámetros de negocio
-- -----------------------------------------------------------------------------
INSERT INTO `config_sistema` (clave, valor, descripcion) VALUES
  ('max_tomas_por_contrato',        '2',   'Maximo de tomas por contrato. BD soporta mas; UI restringe a este valor.'),
  ('recargo_mes_inicio',            '4',   'Mes (1-12) a partir del cual se generan recargos de mora. Actual: Abril.'),
  ('recargo_porcentaje',            '10',  'Porcentaje mensual de recargo sobre el saldo vencido.'),
  ('recargo_categoria_agua',        '16',  'ID de categoria en tabla categorias para recargos de AGUA.'),
  ('recargo_categoria_drenaje',     '17',  'ID de categoria en tabla categorias para recargos de DRENAJE.'),
  ('nuevo_contrato_exento_default', '1',   '1 = todo contrato nuevo se crea con exento_recargo_primer_anio=1.'),
  ('cancelacion_min_caracteres',    '20',  'Minimo de caracteres requeridos al justificar cancelacion o cambio de estado.'),
  ('susptemp_mes_permitido',        '12',  'Mes (1-12) en que se permite solicitar Suspension Temporal. Actual: Diciembre.'),
  ('estado_activo',                 '1',   'ID de estado Activo.'),
  ('estado_susp_temporal',          '2',   'ID de estado Suspension Temporal.'),
  ('estado_susp_administrativa',    '3',   'ID de estado Suspension Administrativa.'),
  ('estado_susp_definitiva',        '4',   'ID de estado Suspension Definitiva.'),
  ('reversal_threshold',            '15000', 'Umbral de deuda ($) a partir del cual se habilita el boton Revertir Transicion en la ficha de contrato.')
ON DUPLICATE KEY UPDATE valor = VALUES(valor);

-- Verificar
SELECT clave, valor FROM config_sistema ORDER BY clave;

```

</details>

---

## Agent Response

### Thinking

**Analyzing SQL Script & Tests**

I've verified the SQL script includes `reversal_threshold`, set to 15000 as a default. Currently I'm diving into the test cases for Contract #405, and I found some useful information. It seems that test case UI-9 utilizes contract 500. There are references to be found in both `Plan de Pruebas — Sprint Post-Correcciones.md` and `Guia de Pruebas — Tester Hum`.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 1.475246091s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 11:55 pm

---

## Agent Response

### Actions

**Tool:** `view_file`
**File:** `output.txt`

<details>
<summary>Metadata</summary>

- **Model:** Gemini 3 Flash
</details>

---

<details>
<summary>File: `Unknown file`</summary>

**Path:** `Unknown file`

```
[
  {
    "anio": 2026,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 04 ENE 2026",
    "monto": "150.00"
  },
  {
    "anio": 2026,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 29 MAR 2026",
    "monto": "150.00"
  },
  {
    "anio": 2024,
    "categoria": 6,
    "leyenda": "falta asamblea 11 feb 2024",
    "monto": "150.00"
  },
  {
    "anio": 2024,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 24 MAR 2024",
    "monto": "150.00"
  },
  {
    "anio": 2023,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 24 SEP 2023",
    "monto": "150.00"
  },
  {
    "anio": 2013,
    "categoria": 10,
    "leyenda": "COOP. PARA LA COMPRA DE UNA BOMBA NUEVA.",
    "monto": "300.00"
  },
  {
    "anio": 2012,
    "categoria": 10,
    "leyenda": "COOP. PARA  CONCESIÓN DE POZOS",
    "monto": "100.00"
  },
  {
    "anio": 2011,
    "categoria": 1,
    "leyenda": "COBRANZA-NOTIFICACIONES",
    "monto": "200.00"
  },
  {
    "anio": 2011,
    "categoria": 2,
    "leyenda": "AGUA POTABLE ANUALIDAD 2011",
    "monto": "360.00"
  },
  {
    "anio": 2011,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 26 JUN 2011",
    "monto": "150.00"
  },
  {
    "anio": 2011,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 27 MAR 2011",
    "monto": "150.00"
  },
  {
    "anio": 2011,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 27 NOV 2011",
    "monto": "150.00"
  },
  {
    "anio": 2011,
    "categoria": 13,
    "leyenda": "CANCELACION DE TOMA ",
    "monto": "600.00"
  },
  {
    "anio": 2011,
    "categoria": 16,
    "leyenda": "RECARGO AGUA 2011 (X MES) JUL",
    "monto": "36.00"
  },
  {
    "anio": 2011,
    "categoria": 16,
    "leyenda": "RECARGO AGUA 2011 (X MES) SEP",
    "monto": "36.00"
  },
  {
    "anio": 2011,
    "categoria": 16,
    "leyenda": "RECARGO AGUA 2011 (X MES) AGO",
    "monto": "36.00"
  },
  {
    "anio": 2011,
    "categoria": 16,
    "leyenda": "RECARGO AGUA 2011 (X MES) JUN",
    "monto": "36.00"
  },
  {
    "anio": 2011,
    "categoria": 16,
    "leyenda": "RECARGO AGUA 2011 (X MES) ENE",
    "monto": "36.00"
  },
  {
    "anio": 2011,
    "categoria": 16,
    "leyenda": "RECARGO AGUA 2011 (X MES) MAR",
    "monto": "36.00"
  },
  {
    "anio": 2011,
    "categoria": 16,
    "leyenda": "RECARGO AGUA 2011 (X MES) FEB",
    "monto": "36.00"
  },
  {
    "anio": 2011,
    "categoria": 16,
    "leyenda": "RECARGO AGUA 2011 (X MES) MAY",
    "monto": "36.00"
  },
  {
    "anio": 2011,
    "categoria": 16,
    "leyenda": "RECARGO AGUA 2011 (X MES) ABR",
    "monto": "36.00"
  },
  {
    "anio": 2010,
    "categoria": 2,
    "leyenda": "AGUA POTABLE ANUALIDAD 2010",
    "monto": "360.00"
  },
  {
    "anio": 2010,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 27 JUN 2010",
    "monto": "150.00"
  },
  {
    "anio": 2010,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 28 NOV 2010",
    "monto": "150.00"
  },
  {
    "anio": 2010,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 11 ABR 2010",
    "monto": "150.00"
  },
  {
    "anio": 2010,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEAS 23 MAY 2010",
    "monto": "150.00"
  },
  {
    "anio": 2010,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 26 SEP 2010",
    "monto": "150.00"
  },
  {
    "anio": 2010,
    "categoria": 10,
    "leyenda": "COOPERACION/COMPRA/TERRENO 300",
    "monto": "300.00"
  },
  {
    "anio": 2010,
    "categoria": 16,
    "leyenda": "RECARGO ANUAL AGUA 2010",
    "monto": "432.00"
  },
  {
    "anio": 2009,
    "categoria": 2,
    "leyenda": "AGUA POTABLE ANUALIDAD 2009 ",
    "monto": "360.00"
  },
  {
    "anio": 2009,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 29 MAR 2009",
    "monto": "150.00"
  },
  {
    "anio": 2009,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 29 NOV 2009",
    "monto": "150.00"
  },
  {
    "anio": 2009,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 27 SEP 2009",
    "monto": "150.00"
  },
  {
    "anio": 2009,
    "categoria": 16,
    "leyenda": "RECARGO ANUL AGUA 2009",
    "monto": "432.00"
  },
  {
    "anio": 2008,
    "categoria": 2,
    "leyenda": "AGUA POTABLE AÑO 2008",
    "monto": "360.00"
  },
  {
    "anio": 2008,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 7 DIC 2008",
    "monto": "150.00"
  },
  {
    "anio": 2008,
    "categoria": 10,
    "leyenda": "COOP. REPARACIÓN BOMBAS",
    "monto": "100.00"
  },
  {
    "anio": 2008,
    "categoria": 16,
    "leyenda": "RECARGO ANUAL DE AGUA 2008",
    "monto": "432.00"
  },
  {
    "anio": 2007,
    "categoria": 2,
    "leyenda": "AGUA POTABLE 2007",
    "monto": "360.00"
  },
  {
    "anio": 2007,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 1 JUL 2007",
    "monto": "150.00"
  },
  {
    "anio": 2007,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 25 DE MAR 2007",
    "monto": "150.00"
  },
  {
    "anio": 2007,
    "categoria": 10,
    "leyenda": "COOPERACIÓN POZO DE AGUA",
    "monto": "300.00"
  },
  {
    "anio": 2007,
    "categoria": 16,
    "leyenda": "RECARGO ANUAL DE AGUA 2007",
    "monto": "432.00"
  },
  {
    "anio": 2006,
    "categoria": 2,
    "leyenda": "AGUA POTABLE 2006",
    "monto": "360.00"
  },
  {
    "anio": 2006,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 24 SEPT 2006",
    "monto": "150.00"
  },
  {
    "anio": 2006,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 5 MAR 2006",
    "monto": "150.00"
  },
  {
    "anio": 2006,
    "categoria": 16,
    "leyenda": "RECARGO ANUAL DE AGUA 2006",
    "monto": "432.00"
  },
  {
    "anio": 2005,
    "categoria": 2,
    "leyenda": "AGUA POTABLE AÑO 2005",
    "monto": "360.00"
  },
  {
    "anio": 2005,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 25 SEP 2005",
    "monto": "50.00"
  },
  {
    "anio": 2005,
    "categoria": 6,
    "leyenda": "FALTA ASAMBLEA 27 NOV 2005",
    "monto": "150.00"
  },
  {
    "anio": 2005,
    "categoria": 16,
    "leyenda": "RECARGO ANUAL AGUA 2005",
    "monto": "432.00"
  }
]
```

</details>

---

## Agent Response

### Thinking

**Analyzing Contract Discrepancy**

I've confirmed that contract #405 is missing both "ANUALIDAD DEL AGUA 2026" and "ANUALIDAD DEL DRENAJE 2026" from its pending charges. There's a "FALTA ASAMBLEA 04 ENE 2026" and another charge dated "29 MAR 2026". My next step is to verify whether these missing annualities were actually paid.




### Actions

**Tool:** `mcp_bdawahost-c_query`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 0.607312672s
- **Model:** Gemini 3 Flash
</details>

---

### CORTEX_STEP_TYPE_MCP_TOOL

**Status:** Completed
**Created:** 25 Apr 2026, 11:55 pm

---

## Agent Response

### Thinking

**Analyzing UI-9 and UI-5R**

I'm focusing now on the user's request, specifically the test case for Cto 405, and I believe the user is referring to UI-5R (Re...). My initial assessment suggests there might be a misunderstanding with UI-9. I'm investigating discrepancies, and clarifying which UI version the user needs me to analyze further. My thoughts regarding contract `500` are still valid for UI-9, but there's a need to confirm the user's focus.




### Actions

**Tool:** `multi_replace_file_content`

<details>
<summary>Metadata</summary>

- **Thinking Duration:** 3.960778763s
- **Model:** Gemini 3 Flash
</details>

---

---

*Generated by Chatledger for Antigravity*