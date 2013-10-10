HA$PBExportHeader$w_genidwdm_dwexpr_palette_dbg.srw
forward
global type w_genidwdm_dwexpr_palette_dbg from w_genidwdm_dwdebugger
end type
end forward

global type w_genidwdm_dwexpr_palette_dbg from w_genidwdm_dwdebugger
integer width = 4536
integer height = 2540
boolean minbox = true
boolean resizable = true
windowtype windowtype = popup!
boolean palettewindow = true
boolean ib_resizable = false
end type
global w_genidwdm_dwexpr_palette_dbg w_genidwdm_dwexpr_palette_dbg

on w_genidwdm_dwexpr_palette_dbg.create
call super::create
end on

on w_genidwdm_dwexpr_palette_dbg.destroy
call super::destroy
end on

type st_2 from w_genidwdm_dwdebugger`st_2 within w_genidwdm_dwexpr_palette_dbg
end type

type st_vsplit from w_genidwdm_dwdebugger`st_vsplit within w_genidwdm_dwexpr_palette_dbg
end type

type sle_quickfilter from w_genidwdm_dwdebugger`sle_quickfilter within w_genidwdm_dwexpr_palette_dbg
end type

type tab_views from w_genidwdm_dwdebugger`tab_views within w_genidwdm_dwexpr_palette_dbg
end type

type tabpage_console from w_genidwdm_dwdebugger`tabpage_console within tab_views
end type

type _cb_eval from w_genidwdm_dwdebugger`_cb_eval within tabpage_console
end type

type st_expression from w_genidwdm_dwdebugger`st_expression within tabpage_console
end type

type _cb_describe from w_genidwdm_dwdebugger`_cb_describe within tabpage_console
end type

type _cb_modify from w_genidwdm_dwdebugger`_cb_modify within tabpage_console
end type

type _uo_expression from w_genidwdm_dwdebugger`_uo_expression within tabpage_console
end type

type _sle_eval_row from w_genidwdm_dwdebugger`_sle_eval_row within tabpage_console
end type

type _cb_getback from w_genidwdm_dwdebugger`_cb_getback within tabpage_console
end type

type _st_hsplit1 from w_genidwdm_dwdebugger`_st_hsplit1 within tabpage_console
end type

type cb_ddfunc from w_genidwdm_dwdebugger`cb_ddfunc within tabpage_console
end type

type st_1 from w_genidwdm_dwdebugger`st_1 within tabpage_console
end type

type _st_status from w_genidwdm_dwdebugger`_st_status within tabpage_console
end type

type tab_out from w_genidwdm_dwdebugger`tab_out within tabpage_console
end type

type tabpage_output from w_genidwdm_dwdebugger`tabpage_output within tab_out
end type

type _uo_msg from w_genidwdm_dwdebugger`_uo_msg within tabpage_output
end type

type tabpage_history from w_genidwdm_dwdebugger`tabpage_history within tab_out
end type

type _dw_histo from w_genidwdm_dwdebugger`_dw_histo within tabpage_history
end type

type _lb_functions from w_genidwdm_dwdebugger`_lb_functions within tabpage_console
end type

type tabpage_data from w_genidwdm_dwdebugger`tabpage_data within tab_views
end type

type pb_showmodified from w_genidwdm_dwdebugger`pb_showmodified within tabpage_data
end type

type pb_sortdata from w_genidwdm_dwdebugger`pb_sortdata within tabpage_data
end type

type pb_deleterow from w_genidwdm_dwdebugger`pb_deleterow within tabpage_data
end type

type pb_insertrow from w_genidwdm_dwdebugger`pb_insertrow within tabpage_data
end type

type pb_addcompute from w_genidwdm_dwdebugger`pb_addcompute within tabpage_data
end type

type _dw_buffer from w_genidwdm_dwdebugger`_dw_buffer within tabpage_data
end type

type tab_buffer from w_genidwdm_dwdebugger`tab_buffer within tabpage_data
end type

type tabpage_shared from w_genidwdm_dwdebugger`tabpage_shared within tab_buffer
end type

type tabpage_primary from w_genidwdm_dwdebugger`tabpage_primary within tab_buffer
end type

type tabpage_filtered from w_genidwdm_dwdebugger`tabpage_filtered within tab_buffer
end type

type tabpage_deleted from w_genidwdm_dwdebugger`tabpage_deleted within tab_buffer
end type

type ddlb_datasource from w_genidwdm_dwdebugger`ddlb_datasource within tabpage_data
end type

type tabpage_help from w_genidwdm_dwdebugger`tabpage_help within tab_views
end type

type rte_help from w_genidwdm_dwdebugger`rte_help within tabpage_help
end type

type cbx_showdef from w_genidwdm_dwdebugger`cbx_showdef within w_genidwdm_dwexpr_palette_dbg
end type

type st_dataobject from w_genidwdm_dwdebugger`st_dataobject within w_genidwdm_dwexpr_palette_dbg
end type

type pb_break from w_genidwdm_dwdebugger`pb_break within w_genidwdm_dwexpr_palette_dbg
end type

type pb_sort from w_genidwdm_dwdebugger`pb_sort within w_genidwdm_dwexpr_palette_dbg
end type

type pb_filter from w_genidwdm_dwdebugger`pb_filter within w_genidwdm_dwexpr_palette_dbg
end type

type pb_visible from w_genidwdm_dwdebugger`pb_visible within w_genidwdm_dwexpr_palette_dbg
end type

type pb_compute from w_genidwdm_dwdebugger`pb_compute within w_genidwdm_dwexpr_palette_dbg
end type

type pb_column from w_genidwdm_dwdebugger`pb_column within w_genidwdm_dwexpr_palette_dbg
end type

type tv_controls from w_genidwdm_dwdebugger`tv_controls within w_genidwdm_dwexpr_palette_dbg
end type

type cb_close from w_genidwdm_dwdebugger`cb_close within w_genidwdm_dwexpr_palette_dbg
end type

type pb_text from w_genidwdm_dwdebugger`pb_text within w_genidwdm_dwexpr_palette_dbg
end type

