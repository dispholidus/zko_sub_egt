*&---------------------------------------------------------------------*
*& Report ZKO_EGT_MEDIUM_001
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zko_egt_medium_001.

include zko_egt_testinho_i0003.
include zko_egt_testinho_i0001.
include zko_egt_testinho_i0002.

START-OF-SELECTION.
CREATE OBJECT go_main.
go_main->run_top( ).﻿
