*&---------------------------------------------------------------------*
*& include          zko_egt_testinho_i0003
*&---------------------------------------------------------------------*

CLASS lcl_main DEFINITION DEFERRED.
DATA:
go_main      TYPE REF TO lcl_main,
gs_status    TYPE dfies_status,
gt_maran      TYPE TABLE OF mara,
gs_mara       TYPE mara,
go_grid_cont TYPE REF TO cl_gui_alv_grid,
go_container TYPE REF TO cl_gui_custom_container.
SELECT-OPTIONS: s_matnr FOR mara-matnr.
