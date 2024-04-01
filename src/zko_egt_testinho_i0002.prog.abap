*&---------------------------------------------------------------------*
*& include          zko_egt_testinho_i0002
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
go_main->go_grid_cont->set_table_for_first_display(
EXPORTING
is_layout                     = gs_layout
CHANGING
it_fieldcatalog               = gt_fcat
it_outtab                     = gt_maran
).
ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
SET PF-STATUS 'GUI_STATUS' OF PROGRAM 'ZKO_EGT_MEDIUM_01_TOP'.

CASE sy-ucomm.
WHEN '&BACK'.
SET SCREEN 0.
ENDCASE.
ENDMODULE.
