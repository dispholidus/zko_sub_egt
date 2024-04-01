*&---------------------------------------------------------------------*
*& include          zko_egt_testinho_i0001
*&---------------------------------------------------------------------*

CLASS lcl_main DEFINITION.
PUBLIC SECTION.
METHODS:
run_top,
pbo_0100  IMPORTING iv_repid TYPE sy-repid,
pai_0100,
get_data   IMPORTING iv_matnr  TYPE mara-matnr,
get_column IMPORTING iv_index TYPE i,
set_title EXPORTING  es_title TYPE c LENGTH 20.
ENDCLASS.

CLASS lcl_main IMPLEMENTATION.
METHOD run_top.
SET PF-STATUS 'GUI_STATUS' OF PROGRAM 'ZKO_EGT_MEDIUM_01_TOP'.

pbo_0100( ).

go_main->get_data( iv_matnr = '00288993322' ).

ENDMETHOD.
METHOD pai_0100.
CASE sy-ucomm.
WHEN '&BACK'.
SET SCREEN 0.
ENDCASE.
ENDMETHOD.

METHOD get_column.
CASE iv_index.
WHEN 1.
WRITE : / gs_mara-matnr.
WHEN 2.
WRITE : / gs_mara-ernam.
WHEN 3.
WRITE : / gs_mara-matkl.
ENDCASE.
ENDMETHOD.

METHOD get_data.
SELECT * FROM mara INTO TABLE gt_maran WHERE matnr IN @iv_matnr.

IF sy-subrc EQ 0.
IF lines( gt_maran ) EQ 0.
MESSAGE i000 WITH 'Kayıt bulunamamıştır.'.
ENDIF.
ELSE.
MESSAGE i001.
ENDIF.
go_main->set_title( es_title = 'MALZEME' ).
CALL SCREEN 0100.
ENDIF.
METHOD set_title.
gs_status-left = 'KOD'.
gs_status-right = 'ADI'.
IF iv_repid CS 'TOP'.
CONCATENATE 'Top  ' es_title INTO gs_status-left.
ENDIF.
ENDMETHOD.
ENDCLASS.﻿
