HA$PBExportHeader$w_genidwdm_dwdebugger.srw
forward
global type w_genidwdm_dwdebugger from w_genidwdm_response_ancestor
end type
type st_2 from statictext within w_genidwdm_dwdebugger
end type
type st_vsplit from u_genidwdm_splitbar_vertical within w_genidwdm_dwdebugger
end type
type sle_quickfilter from singlelineedit within w_genidwdm_dwdebugger
end type
type tab_views from tab within w_genidwdm_dwdebugger
end type
type tabpage_console from userobject within tab_views
end type
type rb_perl from radiobutton within tabpage_console
end type
type rb_dw from radiobutton within tabpage_console
end type
type _cb_eval from commandbutton within tabpage_console
end type
type st_expression from statictext within tabpage_console
end type
type _cb_describe from commandbutton within tabpage_console
end type
type _cb_modify from commandbutton within tabpage_console
end type
type _uo_expression from u_genidwdm_dwescilexer within tabpage_console
end type
type _sle_eval_row from singlelineedit within tabpage_console
end type
type _cb_getback from commandbutton within tabpage_console
end type
type _st_hsplit1 from u_genidwdm_splitbar_horizontal within tabpage_console
end type
type cb_ddfunc from commandbutton within tabpage_console
end type
type st_1 from statictext within tabpage_console
end type
type _st_status from statictext within tabpage_console
end type
type tab_out from tab within tabpage_console
end type
type tabpage_output from userobject within tab_out
end type
type _uo_msg from u_genidwdm_dwescilexer within tabpage_output
end type
type tabpage_output from userobject within tab_out
_uo_msg _uo_msg
end type
type tabpage_history from userobject within tab_out
end type
type _dw_histo from datawindow within tabpage_history
end type
type tabpage_history from userobject within tab_out
_dw_histo _dw_histo
end type
type tab_out from tab within tabpage_console
tabpage_output tabpage_output
tabpage_history tabpage_history
end type
type _lb_functions from listbox within tabpage_console
end type
type tabpage_console from userobject within tab_views
rb_perl rb_perl
rb_dw rb_dw
_cb_eval _cb_eval
st_expression st_expression
_cb_describe _cb_describe
_cb_modify _cb_modify
_uo_expression _uo_expression
_sle_eval_row _sle_eval_row
_cb_getback _cb_getback
_st_hsplit1 _st_hsplit1
cb_ddfunc cb_ddfunc
st_1 st_1
_st_status _st_status
tab_out tab_out
_lb_functions _lb_functions
end type
type tabpage_data from userobject within tab_views
end type
type pb_autofilter from picturebutton within tabpage_data
end type
type pb_setfullstate from picturebutton within tabpage_data
end type
type pb_getfullstate from picturebutton within tabpage_data
end type
type _st_notice from statictext within tabpage_data
end type
type pb_saveas from picturebutton within tabpage_data
end type
type pb_showmodified from picturebutton within tabpage_data
end type
type pb_update from picturebutton within tabpage_data
end type
type pb_sortdata from picturebutton within tabpage_data
end type
type pb_deleterow from picturebutton within tabpage_data
end type
type pb_insertrow from picturebutton within tabpage_data
end type
type pb_addcompute from picturebutton within tabpage_data
end type
type _dw_buffer from datawindow within tabpage_data
end type
type tab_buffer from tab within tabpage_data
end type
type tabpage_shared from userobject within tab_buffer
end type
type tabpage_shared from userobject within tab_buffer
end type
type tabpage_primary from userobject within tab_buffer
end type
type tabpage_primary from userobject within tab_buffer
end type
type tabpage_filtered from userobject within tab_buffer
end type
type tabpage_filtered from userobject within tab_buffer
end type
type tabpage_deleted from userobject within tab_buffer
end type
type tabpage_deleted from userobject within tab_buffer
end type
type tab_buffer from tab within tabpage_data
tabpage_shared tabpage_shared
tabpage_primary tabpage_primary
tabpage_filtered tabpage_filtered
tabpage_deleted tabpage_deleted
end type
type ddlb_datasource from dropdownlistbox within tabpage_data
end type
type tabpage_data from userobject within tab_views
pb_autofilter pb_autofilter
pb_setfullstate pb_setfullstate
pb_getfullstate pb_getfullstate
_st_notice _st_notice
pb_saveas pb_saveas
pb_showmodified pb_showmodified
pb_update pb_update
pb_sortdata pb_sortdata
pb_deleterow pb_deleterow
pb_insertrow pb_insertrow
pb_addcompute pb_addcompute
_dw_buffer _dw_buffer
tab_buffer tab_buffer
ddlb_datasource ddlb_datasource
end type
type tabpage_syntax from userobject within tab_views
end type
type cbx_wrapmode from checkbox within tabpage_syntax
end type
type _st_status_syntax from statictext within tabpage_syntax
end type
type _uo_syntax from u_genidwdm_dwescilexer within tabpage_syntax
end type
type pb_sync from picturebutton within tabpage_syntax
end type
type tabpage_syntax from userobject within tab_views
cbx_wrapmode cbx_wrapmode
_st_status_syntax _st_status_syntax
_uo_syntax _uo_syntax
pb_sync pb_sync
end type
type tabpage_help from userobject within tab_views
end type
type rte_help from richtextedit within tabpage_help
end type
type tabpage_help from userobject within tab_views
rte_help rte_help
end type
type tab_views from tab within w_genidwdm_dwdebugger
tabpage_console tabpage_console
tabpage_data tabpage_data
tabpage_syntax tabpage_syntax
tabpage_help tabpage_help
end type
type cbx_showdef from checkbox within w_genidwdm_dwdebugger
end type
type st_dataobject from statictext within w_genidwdm_dwdebugger
end type
type pb_break from picturebutton within w_genidwdm_dwdebugger
end type
type pb_sort from picturebutton within w_genidwdm_dwdebugger
end type
type pb_filter from picturebutton within w_genidwdm_dwdebugger
end type
type pb_visible from picturebutton within w_genidwdm_dwdebugger
end type
type pb_compute from picturebutton within w_genidwdm_dwdebugger
end type
type pb_column from picturebutton within w_genidwdm_dwdebugger
end type
type tv_controls from treeview within w_genidwdm_dwdebugger
end type
type cb_close from commandbutton within w_genidwdm_dwdebugger
end type
type pb_text from picturebutton within w_genidwdm_dwdebugger
end type
end forward

shared variables
boolean sb_modify_debug_show_msg = true
end variables

global type w_genidwdm_dwdebugger from w_genidwdm_response_ancestor
boolean visible = false
integer width = 4521
integer height = 2608
string title = "DataWindow Expression Debug Machine"
boolean controlmenu = true
long backcolor = 67108864
string icon = "Debug5!"
boolean center = true
boolean ib_resizable = true
long il_minwidth = 500
long il_minheight = 500
boolean ib_resize_handler = true
event wm_command pbm_command
event wm_notify pbm_notify
st_2 st_2
st_vsplit st_vsplit
sle_quickfilter sle_quickfilter
tab_views tab_views
cbx_showdef cbx_showdef
st_dataobject st_dataobject
pb_break pb_break
pb_sort pb_sort
pb_filter pb_filter
pb_visible pb_visible
pb_compute pb_compute
pb_column pb_column
tv_controls tv_controls
cb_close cb_close
pb_text pb_text
end type
global w_genidwdm_dwdebugger w_genidwdm_dwdebugger

type variables
nv_genidwdm_data_adapter idw_obj
boolean ib_adapter_owner = true

long il_hproperties, il_hcontrols
boolean ib_opened = false //hack for popup mode (activate will close before open terminate)
boolean ib_closing = false  //hack for avoiding crash when closing (seen in pb 11.5)
string is_datetime_sqlformat = "yyyy-mm-dd hh:mm:ss"	//the datetime format or our database
string is_date_sqlformat = "yyyy-mm-dd"					//the date format of our database
boolean ib_dwsyntax = true		//dwsyntax or perl ?
constant string CRLF = "~r~n"

//Refactoring helpers - Lazy - mode 
datawindow dw_histo, dw_buffer
u_genidwdm_splitbar_horizontal st_hsplit1
commandbutton cb_getback, cb_eval, cb_modify, cb_describe
statictext st_status, st_status_syntax, st_notice
u_genidwdm_dwescilexer uo_expression, uo_msg, uo_syntax
singlelineedit sle_eval_row
listbox lb_functions
DWBuffer idwb_buffer = Primary!

//Dynamic discovered object
userobject uo_cst_band
/*n_cst_powerfilter / */ powerobject  uo_powerfilter
/*n_perl*/ powerobject in_perl
end variables

forward prototypes
public subroutine deletechildren (long handle)
public subroutine insert_cmd (string as_type, string as_cmd)
public subroutine of_evaluate (string as_text)
public subroutine of_modify (string as_text)
public subroutine of_describe (string as_text)
public function boolean showingdebugmsg ()
public subroutine showdebugmsg (boolean ab_continue)
public function string of_getmessage ()
public subroutine of_setmessage (readonly string as_message)
public subroutine of_addmessage (readonly string as_message)
public function string getfullqualifiedname (powerobject apow_obj)
public function boolean isheritedfrom (string as_class, powerobject apo_object)
public function string s (string as_src, string as_pattern, string as_replace, string as_modifiers)
public subroutine of_survey ()
public subroutine of_prepare_databuffer ()
public subroutine of_set_buffermode (string as_mode)
public subroutine of_show_modified_data ()
public function long of_get_treeitem (treeview atv_obj, long al_from, ref long al_handles[])
public subroutine of_quick_find ()
public subroutine show_error (u_genidwdm_scilexer ao_scilexer, string as_message)
public function string of_gettvitemtext (long handle)
public subroutine of_appendtext (string as_text)
public function boolean typeexists (string as_classname)
public subroutine of_refresh_databuffer ()
public subroutine of_setconsolesyntax ()
public subroutine of_evaluate_perl (string as_text)
public subroutine of_evaluate_dw (string as_text)
public subroutine of_init_n_perl ()
end prototypes

event wm_command;Constant UInt SCEN_CHANGE    = 768
Constant UInt SCEN_KILLFOCUS = 256
Constant UInt SCEN_SETFOCUS  = 512

u_genidwdm_dwescilexer lu_scilexer
choose case hwndchild
	case Handle(uo_expression)
		lu_scilexer = uo_expression
	case Handle(uo_syntax)
		lu_scilexer = uo_syntax
case else
	return
end choose
//lu_scilexer = uo_expression

choose case notificationcode
	case SCEN_CHANGE
		lu_scilexer.Event EditChanged()
	case SCEN_KILLFOCUS
		lu_scilexer.Event LoseFocus()
	case SCEN_SETFOCUS
		lu_scilexer.Event GetFocus()
end choose


end event

event wm_notify;graphicobject lgo_focus
choose case GetFocus()
	case uo_expression
		if isvalid(uo_expression) and not isnull(uo_expression) then
			uo_expression.event wm_notify( wparam, lparam )
		end if
	case uo_syntax
		if isvalid(uo_syntax) and not isnull(uo_syntax) then
			uo_syntax.event wm_notify( wparam, lparam )
		end if			
	case uo_msg
		if isvalid(uo_msg) and not isnull(uo_msg) then
			uo_msg.event wm_notify( wparam, lparam )
		end if					
end choose
end event

public subroutine deletechildren (long handle);//-------------------
//Delete all children of a given treeitem's handle
//-------------------
long ll_child

tv_controls.setredraw( false )
do
	ll_child = tv_controls.finditem( ChildTreeItem!, handle)
	if ll_child >= 0 then tv_controls.deleteitem( ll_child )
loop while ll_child>=0
tv_controls.setredraw( true )

treeviewitem tvitem
tv_controls.getitem( handle, tvitem )
tvitem.children = true
tvitem.expanded = false
tvitem.expandedonce = false
tv_controls.setitem( handle, tvitem )
tv_controls.expanditem( handle )
end subroutine

public subroutine insert_cmd (string as_type, string as_cmd);long row=0

if dw_histo.rowcount( )>0 then
	string ls_search_cmd
	ls_search_cmd = fastreplaceall(as_cmd,"'","~~'")	// dw_histo.enquote( as_cmd )	
	row = dw_histo.find("#1='"+as_type+"' and #2='"+ls_search_cmd+"'", 1, dw_histo.rowcount( ) )
end if

if row<1 then 
	row = dw_histo.insertrow(1)
	dw_histo.setitem(row,1,as_type)
	dw_histo.setitem(row,2,as_cmd)
end if

if row>0 then
	dw_histo.scrolltorow( row )
	dw_histo.setrow(row)
	dw_histo.selectrow( 0, false)
	dw_histo.selectrow( row, true)
end if
end subroutine

public subroutine of_evaluate (string as_text);if ib_dwsyntax then
	of_evaluate_dw( as_text )
else
	of_evaluate_perl( as_text )
end if
end subroutine

public subroutine of_modify (string as_text);insert_cmd("modify", as_text )

string ls_before
ls_before = idw_obj.describe( "datawindow.NoUserPrompt" )
idw_obj.modify("datawindow.NoUserPrompt='Yes'")

//if hasmethod( "modify_root", idw_obj ) then
//	of_setmessage( idw_obj.dynamic modify_root( as_text ) )
//else
	of_setmessage( idw_obj.modify( as_text ) )
//end if

idw_obj.modify("datawindow.NoUserPrompt='"+ls_before+"'")

show_error( uo_expression, of_getmessage() )
end subroutine

public subroutine of_describe (string as_text);insert_cmd("describe", as_text )

string ls_before
ls_before = idw_obj.describe( "datawindow.NoUserPrompt" )
idw_obj.modify("datawindow.NoUserPrompt='Yes'")

TRY
	//make it silently (no user prompt)
//	if hasmethod( "describe_root", idw_obj ) then
//		of_setmessage( idw_obj.dynamic describe_root( as_text ) )
//	else
		of_setmessage( idw_obj.describe( as_text ) )
//	end if	
	show_error( uo_expression, of_getmessage() )
CATCH( DWRuntimeError dwex )
	messagebox( "DESCRIBE DWRuntimeError", dwex.getmessage() )
CATCH( OLERuntimeError oleex )
	messagebox( "DESCRIBE OLERuntimeError", oleex.getmessage() )	
CATCH( runtimeerror ex )
	messagebox( "DESCRIBE RUNTIMEERROR", ex.getmessage() )
END TRY

idw_obj.modify("datawindow.NoUserPrompt='"+ls_before+"'")
end subroutine

public function boolean showingdebugmsg ();return sb_modify_debug_show_msg
end function

public subroutine showdebugmsg (boolean ab_continue);sb_modify_debug_show_msg = ab_continue
end subroutine

public function string of_getmessage ();return uo_msg.of_gettext( )
end function

public subroutine of_setmessage (readonly string as_message);uo_msg.of_settext( as_message )
//tab_views.tabpage_console.tab_out.selecttab( tab_views.tabpage_console.tab_out.tabpage_output )
end subroutine

public subroutine of_addmessage (readonly string as_message);uo_msg.of_appendtext( as_message )
//tab_views.tabpage_console.tab_out.selecttab( tab_views.tabpage_console.tab_out.tabpage_output )
end subroutine

public function string getfullqualifiedname (powerobject apow_obj);string ls_fullqualifiedname

ls_fullqualifiedname = apow_obj.classname()
powerobject apow_parent 
apow_parent = apow_obj.getparent()
do while isvalid( apow_parent ) and not isnull( apow_parent )
	ls_fullqualifiedname = apow_parent.classname() + "." + ls_fullqualifiedname
	apow_parent = apow_parent.getparent()
loop 

return ls_fullqualifiedname

end function

public function boolean isheritedfrom (string as_class, powerobject apo_object);/*
 * Look if a powerobject is herited from the as_class .
 *
 */ 
ClassDefinition lcd_child
string ls_classname

if isnull( apo_object ) or not isvalid( apo_object ) then return false
lcd_child = apo_object.classdefinition

do while true
	ls_classname = lcd_child.name
	if ls_classname = as_class then return true
	lcd_child = lcd_child.Ancestor
	if isnull( lcd_child ) then return false
loop

end function

public function string s (string as_src, string as_pattern, string as_replace, string as_modifiers);string ls_res
boolean lb_global = false, lb_caseinsensitive = false
uo_regex lrx_s
lrx_s = create uo_regex

if pos(as_modifiers, 'g') > 0 then lb_global = true
if pos(as_modifiers, 'i') > 0 then lb_caseinsensitive = true
lrx_s.initialize( as_pattern, lb_global, not lb_caseinsensitive)

if pos(as_modifiers, 'x') > 0 then lrx_s.setextendedsyntax(true)
if pos(as_modifiers, 'm') > 0 then lrx_s.setmultiline(true)
if pos(as_modifiers, 's') > 0 then lrx_s.setdotmatchnewline(true)

ls_res = lrx_s.replace( as_src, as_replace)
destroy lrx_s
return ls_res

end function

public subroutine of_survey ();uo_expression.of_init( idw_obj )
uo_expression.of_settext( idw_obj.tag )
st_dataobject.text += " " + idw_obj.dataobject
//this.Title += "(" + getfullqualifiedname( idw_obj ) + ")"
//uo_expression.of_setlanguage( "dwexpr" ) // <=== enlever ceci quand ce qui suit fonctionnera
//ICI, ajout de mot cl$$HEX2$$c300a900$$ENDHEX$$s reconnus...
//On pourra ajouter les Controls/Bands en tant que TABLES et les attributs en tant que COLUMNS
constant long SQL_KEYWORDS_LIST                 = 0
constant long SQL_DATATYPES_LIST                = 1
constant long SQL_TABLENAMES_LIST               = 4
constant long SQL_COLUMNNAMES_LIST              = 5
string ls_object_list, ls_dwattributes
ls_object_list = idw_obj.describe( "datawindow.objects" )
ls_object_list = fastreplaceall( ls_object_list, "~t", " ")
uo_expression.of_setkeywords(SQL_TABLENAMES_LIST, ls_object_list )
ls_dwattributes = idw_obj.describe( "datawindow.attributes" )
ls_dwattributes = fastreplaceall( ls_dwattributes, "~t", " ")
uo_expression.of_setkeywords(SQL_COLUMNNAMES_LIST, ls_dwattributes)

of_prepare_databuffer()
//of_set_buffermode( "shared" )
tab_views.tabpage_data.tab_buffer.selecttab( 1 )

treeviewitem tvitem
//TODO: delete all items
il_hproperties = tv_controls.insertitemlast( 0, "Properties", 6)
tv_controls.getitem( il_hproperties, tvitem)
tvitem.children = true
tv_controls.setitem( il_hproperties, tvitem)
il_hcontrols = tv_controls.insertitemlast( 0, "Controls", 6)
tv_controls.getitem( il_hcontrols, tvitem)
tvitem.children = true
tv_controls.setitem( il_hcontrols, tvitem)

/* Remplissage de la liste des fonctions dispo dans la datawindow expression */
string ls_functions[] = { &
	"abs( x )", &
	"acos( x )", &
	"asc( s )", &
	"ascA( s )", &
	"asin( s )", &
	"atan( s )", &
	"avg( #x for all )", &
	"bitmap ( s )", &
	"case( x when a then b when c then d... else e)", &
	"ceiling( x )", &
	"char( x )", &
	"charA( x )", &
	"cos( x )", &
	"count( #x for all )", &
	"crosstabavg( 1 )", &
	"crosstabavgdec( 1 )", &
	"crosstabcount( 1 )", &
	"crosstabmax( 1 )", &
	"crosstabmaxdec( 1 )", &
	"crosstabmin( 1 )", &
	"crosstabmindec( 1 )", &
	"crosstabsum( 1 )", &
	"crosstabsumdec( 1 )", &
	"cumulativePercent( #x for all )", &
	"cumulativeSum( #x for all )", &
	"currentRow()", &
	"date( s )", &
	"datetime( s )", &
	"day( d )", &
	"dayname( d )", &
	"daynumber( d )", &
	"daysafter( d, d )", &
	"dec( s )", &
	"describe( s )", &
	"exp( x )", &
	"fact( x )", &
	"fill( s, x )", &
	"fillA( s, x )", &
	"first( #x for all )", &
	"getrow()", &
	"gettext()", &
	"hour( t )", &
	"if( b, t, f )", &
	"int( x )", &
	"integer( s )", &
	"isDate( s )", &
	"isExpanded( n,n )", &
	"isNull( x )", &
	"isNumber( s )", &
	"isRowModified()", &
	"isRowNew()", &
	"isSelected()", &
	"isTime( s )", &
	"large( #x, #x, n for all )", &
	"last( #x for all )", &
	"lastpos( s, s, x )", &
	"left( s, n )", &
	"leftA( s, n )", &
	"leftTrim( s )", &
	"len( s )", &
	"lenA( s )", &
	"log( x )", &
	"logten( x )", &
	"long( s )", &
	"lookupdisplay( #x )", &
	"lower( s )", &
	"match( s, s )", &
	"max( #x for all )", &
	"median( #x for all )", &
	"mid( s, start, len )", &
	"midA( s, start, len )", &
	"min( #x for all )", &
	"minute( t )", &
	"mod( x, y )", &
	"mode( #x for all )", &
	"month( d )", &
	"now()", &
	"number( s )", &
	"page()", &
	"pageabs()", &
	"pageAcross()", &
	"pageCount()", &
	"pageCountAcross()", &
	"percent( #x for all)", &
	"pi( x )", &
	"pos( s, s, x )", &
	"posA( s, s, x )", &
	"profileint( s, s, s, x)", &
	"profilestring( s, s, s, s)", &
	"rand( x )", &
	"real( s )", &
	"relativedate( d, x )", &
	"relativetime( t, x )", &
	"replace( s, x, y, s )", &
	"replaceA( s, x, y, s )", &
	"rgb( r, g, b)", &
	"right( s, n )", &
	"rightA( s, n )", &
	"rightTrim( s )", &
	"round( x, x )", &
	"rowcount()", &
	"rowheight()", &
	"second( t )", &
	"secondsafter( t, t )", &
	"sign( x )", &
	"sin( x )", &
	"small( #x, #x, n for all )", &
	"space( x )", &
	"sqrt( x )", &
	"stdev( #x for all )", &
	"stdevp( #x for all )", &
	"string( x, s )", &
	"sum( #x for all )", &
	"tan( x )", &
	"time( s )", &
	"today()", &
	"trim( s )", &
	"truncate( x, y )", &
	"upper( s )", &
	"var( #x for all )", &
	"varp( #x for all )", &
	"wordcap( s )", &
	"year( d )" &
	}
long i, p
string ls_func_list
for i = 1 to upperbound( ls_functions[] )
	lb_functions.additem( ls_functions[i] )
	p = pos(ls_functions[i], '(')
	if p>0 then
		ls_func_list += left(ls_functions[i],p -1) + " "
	end if
next
ls_func_list = trim(ls_func_list)
uo_expression.of_setkeywords(SQL_KEYWORDS_LIST, ls_func_list)

uo_expression.setfocus( )

cbx_showdef.checked = idw_obj.describe( "datawindow.showdefinition" ) = 'yes'
end subroutine

public subroutine of_prepare_databuffer ();dw_buffer.sharedataoff( )
dw_buffer.reset()

//dw_histo.createfromsql( "select 'describe' as Command, cast('' as varchar(8192)) as Expression" )
long i, ll_cols, ll_colsize
long ll_h_x = 0, ll_h_y = 8, ll_x = 0, ll_y = 8, ll_width = 0, ll_h_height = 52, ll_height = 64
long ll_max_width = 500
string ls_cols_def, ls_cols_header, ls_cols_field
string ls_col_id, ls_col_name, ls_col_dbname, ls_col_type, ls_col_pk, ls_col_align, ls_tmp
ll_cols = long ( idw_obj.describe("datawindow.column.count") )

for i = 1 to ll_cols
	ls_col_id = "#"+string(i)
	ls_col_name = idw_obj.describe( ls_col_id+".name" )
	ls_col_dbname = idw_obj.describe( ls_col_id+".dbname" )
	ls_col_type = idw_obj.describe( ls_col_id+".coltype" )
	//'char(8)'
	if idw_obj.describe( ls_col_id+".key" ) = 'yes' then ls_col_pk = 'updatewhereclause=yes' else ls_col_pk = ''
		
	ls_cols_def+= 'column=(type='+ls_col_type+' '+ls_col_pk+' name='+ls_col_name+' dbname="'+ls_col_dbname+'"  )' + CRLF
	
	ll_x += ll_width	//add previous width
	ll_h_x = ll_x		//header X is equal to column field X
	choose case lower(left(ls_col_type,5))
		case 'char(', 'char'
			ls_tmp = fastreplaceall( fastreplaceall( ls_col_type, 'char(', ''), ')', '' )
			ll_colsize = long( ls_tmp )
			ls_col_align = '0'
		case 'numbe', 'int', 'long', 'real', 'ulong'
			ll_colsize = 10
			ls_col_align = '1'
		case 'decim'		// Decimal (n) - n is the number of decimal places
			ls_tmp = fastreplaceall( fastreplaceall( ls_col_type, 'decimal(', ''), ')', '' )
			ll_colsize = 10 + 1 + long( ls_tmp )
			ls_col_align = '1'
		case 'date'
			ll_colsize = 10
			ls_col_align = '2'
		case 'time'
			ll_colsize = 15
			ls_col_align = '2'
		case 'datetime', 'timestamp'
			ll_colsize = 10 + 1 + 15
			ls_col_align = '2'
		case else
			ll_colsize = 7
			ls_col_align = '0'
	end choose
	ll_width = 32 * ll_colsize
	if ll_width > ll_max_width then ll_width = ll_max_width
	//TODO: reflect original [ edit.style = DDDW, MASK, DDLB ; FORMAT etc... ] in a future version
	ls_cols_header	+= 'text(name='+ls_col_name+'_t band=header font.charset="0" font.face="Tahoma" font.family="2" font.height="-8" font.italic="0" font.pitch="2" font.strikethrough="0" ' &
						+ 'font.weight="400" font.underline="0"  background.mode="2" background.color="67108864" color="33554432" alignment="2" border="6" ' &
						+ 'x="'+string(ll_h_x)+'" y="'+string(ll_h_y)+'" height="'+string(ll_h_height)+'" width="'+string(ll_width)+'" text="'+WordCap(ls_col_name)+'" ) ' + CRLF
	ls_cols_field+= 'column(name='+ls_col_name+' band=detail id='+string(i)+' x="'+string(ll_x)+'" y="'+string(ll_y)+'" height="'+string(ll_height)+'" width="'+string(ll_width)+'" ' &
				+ 'color="33554432" border="5" alignment="'+ls_col_align+'" format="[general]" edit.focusrectangle=no edit.autohscroll=yes edit.autoselect=yes edit.autovscroll=no edit.case=any '&
				+ 'edit.codetable=no edit.displayonly=no edit.hscrollbar=no edit.imemode=0 edit.limit=0 edit.password=no edit.vscrollbar=no edit.validatecode=no edit.nilisnull=no '&
				+ 'edit.required=no criteria.required=no criteria.override_edit=no crosstab.repeat=no background.mode="1" background.color="536870912" font.charset="0" '&
				+ 'font.face="Tahoma" font.family="2" font.height="-8" font.italic="0" font.pitch="2" font.strikethrough="0" font.weight="400" font.underline="0" '&
				+ 'tabsequence='+string( i * 10 )+' ) ' + CRLF
next

if tab_views.tabpage_data.pb_addcompute.flatstyle then
	//look for every compute (even invisible) and add them to the definition, before "create" (?)
	//foreach object where OBJNAME.type = 'compute', add them
	string ls_object, ls_object_list, ls_expression
	ls_object_list = idw_obj.Describe("datawindow.objects")
	uo_regex lrx_objects
	lrx_objects = create uo_regex
	lrx_objects.initialize( "([^\s]+)", true, false)
	ll_cols = lrx_objects.search( ls_object_list )

	ls_col_align = '2'
	for i = 1 to ll_cols
		ls_object = lrx_objects.Match( i )
		ll_x += ll_width	//add previous width
		ll_h_x = ll_x		//header X is equal to column field X		
		ll_width = 32 * len( ls_object )	//on utilise le nom de l'objet pour determiner la dimension de la colonne; not too nice, but it is the begining :-)
		if ll_width > ll_max_width then ll_width = ll_max_width		
		if idw_obj.describe( ls_object+".type" ) = 'compute' then
			ls_expression = idw_obj.describe( ls_object+'.expression' )
			ls_expression = fastreplaceall( ls_expression, '"', '~~"' )		// <-- Not sure about that...
			ls_cols_header += 'text(band=header alignment="'+ls_col_align+'" text="'+ls_object+'" border="6" color="33554432" ' &
								+'x="'+string(ll_h_x)+'" y="'+string(ll_h_y)+'" height="'+string(ll_h_height)+'" width="'+string(ll_width)+'" ' &
								+' name='+ls_object+'_t visible="1"  font.face="Tahoma" font.height="-8" font.weight="400" '&
								+' font.family="2" font.pitch="2" font.charset="0" background.mode="2" background.color="67108864" )'
			ls_cols_field += 'compute(band=detail alignment="'+ls_col_align+'" expression="'+ls_expression+'" border="2" color="33554432" '&
							+'x="'+string(ll_x)+'" y="'+string(ll_y)+'" height="'+string(ll_height)+'" width="'+string(ll_width)+'" ' &
							+'format="[GENERAL]" name='+ls_object+' visible="1"  font.face="Tahoma" font.height="-8" '&
							+'font.weight="400"  font.family="2" font.pitch="2" font.charset="0" background.mode="2" background.color="1073741824" )'
		end if
	next
	destroy lrx_objects
end if

dw_buffer.create('release 9; '+CRLF+&
'datawindow ( units=0 timer_interval=0 processing=1 color=1073741824 ) '+&
'header(height=68 color="536870912" ) '+CRLF+&
'summary(height=0 ) '+CRLF+&
'footer(height=0 ) '+CRLF+&
'detail(height=80  color="536870912" ) '+CRLF+&
'table( '+ls_cols_def+' ) '+CRLF+&
ls_cols_header +CRLF+&
ls_cols_field +CRLF)
//Messagebox("",'//dw_histo.createfromsql( "select describe as Command, cast( as varchar(8192)) as Expression" )')
//dw_histo.modify('Datawindow.Detail.Color="0~tif(getrow()=currentrow(),rgb(255,255,0),1087434968)"')
//dw_buffer.modify("datawindow.selected.mouse='no'")
dw_buffer.setrowfocusindicator( /*Hand!*/ FocusRect! )

end subroutine

public subroutine of_set_buffermode (string as_mode);dw_buffer.sharedataoff( )		//in case of a previously shared data
dw_buffer.reset()					//remove all data in case of a previously NOT shared data
DWBuffer ldwb_buffer
long ll_startrow = 1, ll_endrow
st_notice.hide()
choose case lower(as_mode)
	case 'shared'
		idw_obj.sharedata( dw_buffer)
		setnull( ldwb_buffer )
	case 'primary'
		ldwb_buffer = Primary!
		ll_endrow = idw_obj.rowcount()
	case 'filtered'
		ldwb_buffer = Filter!
		ll_endrow = idw_obj.filteredcount( )
	case 'deleted'
		ldwb_buffer = Delete!
		ll_endrow = idw_obj.deletedcount( )
		if ll_endrow = 0 then
			st_notice.show()
		end if
end choose

boolean lb_shared
lb_shared = isNull( ldwb_buffer )
if Not lb_shared then
//	dw_buffer.modify('datawindow.readonly=yes')
	idw_obj.RowsCopy ( ll_startrow, ll_endrow, ldwb_buffer, dw_buffer, 1, Primary!)
	idwb_buffer = ldwb_buffer
else
//	dw_buffer.modify('datawindow.readonly=no')	
	idwb_buffer = Primary!
end if

tab_views.tabpage_data.	pb_insertrow.visible = lb_shared
tab_views.tabpage_data.	pb_deleterow.visible = lb_shared
tab_views.tabpage_data.	pb_sortdata.visible = lb_shared
tab_views.tabpage_data.	pb_showmodified.visible = lb_shared
end subroutine

public subroutine of_show_modified_data ();//may have sens only on shared data
long i, ll_cols, row, rows
string ls_column, ls_modified_list
ll_cols = long( dw_buffer.describe("datawindow.column.count") )
rows = dw_buffer.rowcount()

for i = 1 to ll_cols
	ls_column = dw_buffer.describe( "#"+string(i)+".name" )
	//prepare list of modified cells in this columns
	ls_modified_list = "0"
	for row = 1 to rows
		choose case dw_buffer.getItemStatus( row, i, idwb_buffer )
			case DataModified!, New!, NewModified!
				ls_modified_list += ','+string(row)
			case NotModified!
		end choose
	next
	string ls_debug, ls_expr
	ls_expr = ls_column+'.background.color="0~tif(getrow() in ('+ls_modified_list+'), '+string(rgb(255,192,192))+', 536870912)"' + CRLF
	ls_expr += ls_column+'.background.mode="1~tif(getrow() in ('+ls_modified_list+'), 0, 1)"'
	ls_debug = dw_buffer.modify( ls_expr )
	if ls_debug <> "" then
		messagebox( "ls_debug=", ls_debug )
	end if
next

end subroutine

public function long of_get_treeitem (treeview atv_obj, long al_from, ref long al_handles[]);boolean lb_first
lb_first = ( upperbound(al_handles[]) < 1 )
al_handles[ upperbound(al_handles[]) +1] = al_from

long ll_handle
//look for each child item
ll_handle = atv_obj.finditem( ChildTreeItem!, al_from )
if ll_handle > 0 then
	do
		of_get_treeitem( atv_obj, ll_handle, al_handles[])
		ll_handle = atv_obj.finditem( NextTreeItem!, ll_handle)
	loop while ll_handle> 0
end if

if lb_first then
	//then, look for all next sibling items
	do
		ll_handle = al_from
		do
			ll_handle = atv_obj.finditem( NextTreeItem!, ll_handle)
			if ll_handle > 0 then
				of_get_treeitem( atv_obj, ll_handle, al_handles[])
			end if
		loop while ll_handle> 0
	
		//then look for PARENT's NEXT SIBLING (if has any parent)
		ll_handle = atv_obj.finditem( ParentTreeItem!, al_from)
		al_from = ll_handle
		if ll_handle > 0 then
			do
				ll_handle = atv_obj.finditem( NextTreeItem!, ll_handle)
				if ll_handle > 0 then
					of_get_treeitem( atv_obj, ll_handle, al_handles[])
				end if
			loop while ll_handle> 0	
		end if
	loop while al_from > 0
end if

return upperbound( al_handles[] )
end function

public subroutine of_quick_find ();//recherche dans le TreeView selon le contenu de THIS.TEXT et selection le prochain item qui match
long ll_handle = 0
boolean lb_redo = true
treeviewitem ltvi_item
tv_controls.SetRedraw( false )
treenavigation ltvn_nav = NextTreeItem!
ll_handle = tv_controls.finditem( CurrentTreeItem!, 0 )
if ll_handle < 1 then
label_redo_from_root:	
	ll_handle = tv_controls.finditem( RootTreeItem!, 0 )
end if

if ll_handle > 0 then
	long ll_handles[], ll_items, i
	ll_items = of_get_treeitem( tv_controls, ll_handle, ref ll_handles[])
	

////debugview's output
//	outputdebugstring( "*** ---------------------------> " )
//	for i = 1 /*Ignore current item*/ to ll_items
//		tv_controls.getitem( ll_handles[i], ltvi_item )
//		outputdebugstring( "*** " + ltvi_item.label + " ("+string( ll_handles[i] ) + ")" )
//	next
//	outputdebugstring( "*** <--------------------------- " )
	

	for i = 2 /*Ignore current item*/ to ll_items
		ll_handle = ll_handles[i]
		tv_controls.getitem( ll_handle, ltvi_item )
		if match( ltvi_item.label, sle_quickfilter.text ) /*> 0*/ then
			tv_controls.setfocus()
			tv_controls.setfirstvisible( ll_handle )
			tv_controls.selectitem( ll_handle )
//			tv_controls.setdrophighlight( ll_handle )
			sle_quickfilter.SetFocus()
			tv_controls.SetRedraw( true )			
			return
		end if
	next
end if

if lb_redo then
	lb_redo = false
	long ll_empty[]	
	ll_handles[] = ll_empty[]	
	goto label_redo_from_root
end if

tv_controls.SetRedraw( true )
end subroutine

public subroutine show_error (u_genidwdm_scilexer ao_scilexer, string as_message);uo_regex lnv_regex
lnv_regex = create uo_regex
string ls_text
long ll_ori_offset 
ll_ori_offset  = ao_scilexer.of_getcurrentpos( ) - ao_scilexer.of_getselectedlength( )
ls_text = ao_scilexer.of_getselectedtext( )	//of_gettext()
lnv_regex.initialize( "^Line\s+(\d+)\s+Column\s+(\d+).*$", true, true)
if lnv_regex.search( as_message )>0 then
	long ll_line, ll_column, ll_offset
	ll_line = long( lnv_regex.group( 1, 1) )
	ll_column = long( lnv_regex.group( 1, 2) )
/*	ll_offset = 0
	do while ll_line > 0
		ll_offset = pos(ls_text, "~r~n", ll_offset+1)
		ll_line --
	loop
	ao_scilexer.of_selecttext( 0, ll_ori_offset + ll_offset + ll_column -1)	//ll_column = mle_expr.selecttext( 1, ll_offset + ll_column)
	*/
	ao_scilexer.of_gotoline( ll_line )
	ll_offset = ao_scilexer.of_getcurrentpos() - ao_scilexer.of_getcurrentcolumn() + ll_column + 1
	ao_scilexer.of_gotopos( ll_offset )
	ao_scilexer.of_selecttext( 0, ll_offset)
	
//	debug_message( classname(), string( ll_column ) + " char selected")
end if
destroy lnv_regex



end subroutine

public function string of_gettvitemtext (long handle);string ls_text = ""
treeviewitem tvitem
tv_controls.getitem( handle, tvitem)
if tvitem.level > 1 then
// !!! Si on est en level 3 alors le parent sera en level 2 et pas en level 1 !!!
	if tv_controls.finditem( ParentTreeItem!, handle) = il_hproperties then
		ls_text = "datawindow." + tvitem.label
	else
		//CONTROLS
		if tvitem.level > 2 then
			treeviewitem tvitemparent
			long ll_hcontol
			ll_hcontol = tv_controls.finditem( ParentTreeItem!, handle)
			tv_controls.getitem( ll_hcontol , tvitemparent)
			ls_text = tvitemparent.label+"."+tvitem.label
		else
			if keydown( KeyShift! ) then
				ls_text = "evaluate('"+tvitem.label+"',1)"
			else
				ls_text = tvitem.label
			end if
		end if		
	end if
	ls_text = s(ls_text, "\s*\(\s*[#]\d+\s*\)", "", "")
elseif tvitem.level = 1 then
	if tvitem.label <> "" then
		return "$" + tvitem.label
	end if
end if
return ls_text
end function

public subroutine of_appendtext (string as_text);string ls_buffer
ls_buffer = ::ClipBoard( as_text )
uo_expression.of_paste( )
::ClipBoard( ls_buffer )
cb_describe.event clicked( )
uo_expression.of_selecttext(  uo_expression.of_getcurrentpos( ) - len(as_text ), len(as_text ) )
uo_expression.setfocus( )
end subroutine

public function boolean typeexists (string as_classname);//return wather the given classname exists or not
typedefinition ltd_class
ltd_class = FindTypeDefinition( as_classname )
return IsValid( ltd_class ) And NOT IsNull( ltd_class )
end function

public subroutine of_refresh_databuffer ();tab_views.tabpage_data.tab_buffer.event selectionchanged( 0, 0)	//refresh datawindow
end subroutine

public subroutine of_setconsolesyntax ();//of_setconsolesyntax()
if ib_dwsyntax <> tab_views.tabpage_console.rb_dw.checked then
	ib_dwsyntax = tab_views.tabpage_console.rb_dw.checked
	cb_modify.enabled = ib_dwsyntax
	cb_describe.enabled = ib_dwsyntax
	sle_eval_row.enabled = ib_dwsyntax
	if ib_dwsyntax then		
		uo_expression.of_set_dwexpr( )
		uo_expression.of_settext("")
	else
		if isNull(in_perl) or not isvalid( in_perl) then
			of_init_n_perl( )
		end if
		uo_expression.of_set_perl( )
		uo_expression.of_settext( "#welcome to intergrated Perl console~r~n&
BEGIN{ push @INC, 'c:/embeddingperl/perl/site/lib', 'c:/embeddingperl/perl/lib' } use Carp::Always;~r~n&
$row = $dw->Insertrow(0);~r~n&
$dw->SetItem($row, 'col_id', $row );~r~n&
$dw->SetItem($row, 'col_label', 'from perl' );~r~n&
$dw->SetItem($row, 'col_dec', 42/12.5 );~r~n&
$dw->SetItem($row, 'col_date', Today() );~r~n&
$dwc = Powerbuilder::Object->new('datawindowchild');~r~n&
if($dw->GetChild( 'col_code', $dwc) == 1){~r~n&
	$dw->SetItem($row, 'col_code', $dwc->GetItemString( 1, 1 ) );~r~n&
}~r~n&
else{~r~n&
    Messagebox('test',  'Could not get dwc !\n' . $dw->DUMP(qr/datawindowchild/));~r~n&
}" )
	end if
end if
end subroutine

public subroutine of_evaluate_perl (string as_text);if isnull(in_perl) OR NOT isvalid(in_perl) then
	return
end if

string ls_res
ls_res = string( in_perl.DYNAMIC eval( as_text ), "[general]" )
if in_perl.DYNAMIC getLastevalerror( ) <> "" then
	of_setmessage( ls_res +"~r~nPerl eval error: " + string(in_perl.DYNAMIC getLastevalerror( )) )
else
	of_setmessage( ls_res )
end if
end subroutine

public subroutine of_evaluate_dw (string as_text);string ls_text_ori,ls_text, ls_row
ls_text_ori = as_text
insert_cmd("evaluate", ls_text_ori )

string ls_before
ls_before = idw_obj.describe( "datawindow.NoUserPrompt" )
idw_obj.modify("datawindow.NoUserPrompt='Yes'")

//Look for a range of evaluation (eg: 0,1..3, 5-8, * )
long i, row, rows[], rowcount
long ll_row_start, ll_row_end
boolean lb_multi = false
ls_row = sle_eval_row.text
of_setmessage( "/* Evaluate( ..., "+ls_row+") */~r~n")
ls_row = fastreplaceall( ls_row, "-", "..")	//ne traite qu'un seul cas (enfin, tous mais de la meme facon)
i = pos(ls_row,"..")
if i>0 then
	ll_row_start = long( left( ls_row, i -1) )
	ll_row_end = long( mid( ls_row, i +2) )
	for i = ll_row_start to ll_row_end
		rows[upperbound(rows[])+1] = i
	next
end if
if ls_row = "*" then
	for i = 0 to idw_obj.rowcount( )
		rows[upperbound(rows[])+1] = i
	next
end if
if upperbound(rows[]) < 1 then rows[1] = long( ls_row )
rowcount = upperbound(rows[])
lb_multi = rowcount > 1
for i = 1 to rowcount
	row = rows[i]
	TRY
		ls_text = fastreplaceall( ls_text_ori, "~~", "~~~~" )
		ls_text = fastreplaceall( ls_text, "'", "~~'" )
		ls_text = fastreplaceall( ls_text, '"', '~~"' )
		if lb_multi then of_addmessage( "/* row = "+string(row) +" */~t" )
//		if hasmethod( "describe_root", idw_obj ) then
//			of_addmessage( idw_obj.dynamic describe_root( "evaluate('"+ls_text+"',"+string(row)+")" ) + "~r~n" )
//		else
			of_addmessage( idw_obj.describe( "evaluate('"+ls_text+"',"+string(row)+")" ) + "~r~n" )
//		end if		
		show_error( uo_expression, of_getmessage() )
	CATCH( runtimeerror ex )
		messagebox( "DESCRIBE RUNTIMEERROR", ex.getmessage() )
	END TRY
next
idw_obj.modify("datawindow.NoUserPrompt='"+ls_before+"'")
end subroutine

public subroutine of_init_n_perl ();setPointer( HourGlass!)
//long ll_hfile
//constant string C_KEY_FILENAME = "embeddingperl.key"
////read registration key from a the file embeddingperl.key
//if FileExists(C_KEY_FILENAME) then
//	long ll_tabidx
//	string ls_key
//	ll_hfile = FileOpen(C_KEY_FILENAME, LineMode!, Read!)
//	if ll_hfile > 0 then
//		if FileRead( ll_hfile, ls_key) > 0 then
//			ll_tabidx = pos( ls_key, "~t")
//			if ll_tabidx > 0 then
//				register_embeddingperl(left(ls_key, ll_tabidx -1), mid(ls_key, ll_tabidx+1) )
//			end if
//		end if
//		FileClose( ll_hfile )
//	end if
//end if
in_perl = create using "n_perl"
in_perl.DYNAMIC open( { "dwdebugmachine", "-e", "0" })
in_perl.DYNAMIC use( "Powerbuilder", "qw(:all)" )
in_perl.DYNAMIC eval("Powerbuilder::ResumeCppException(1)")

//let's declare to perl some variable so we can manipulate them
in_perl.DYNAMIC define_variable( "this", this)
in_perl.DYNAMIC define_variable( "idw_obj", idw_obj)
in_perl.DYNAMIC define_variable( "dw", idw_obj.of_get( ) )
	
setPointer(Arrow!)
end subroutine

on w_genidwdm_dwdebugger.create
int iCurrent
call super::create
this.st_2=create st_2
this.st_vsplit=create st_vsplit
this.sle_quickfilter=create sle_quickfilter
this.tab_views=create tab_views
this.cbx_showdef=create cbx_showdef
this.st_dataobject=create st_dataobject
this.pb_break=create pb_break
this.pb_sort=create pb_sort
this.pb_filter=create pb_filter
this.pb_visible=create pb_visible
this.pb_compute=create pb_compute
this.pb_column=create pb_column
this.tv_controls=create tv_controls
this.cb_close=create cb_close
this.pb_text=create pb_text
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_2
this.Control[iCurrent+2]=this.st_vsplit
this.Control[iCurrent+3]=this.sle_quickfilter
this.Control[iCurrent+4]=this.tab_views
this.Control[iCurrent+5]=this.cbx_showdef
this.Control[iCurrent+6]=this.st_dataobject
this.Control[iCurrent+7]=this.pb_break
this.Control[iCurrent+8]=this.pb_sort
this.Control[iCurrent+9]=this.pb_filter
this.Control[iCurrent+10]=this.pb_visible
this.Control[iCurrent+11]=this.pb_compute
this.Control[iCurrent+12]=this.pb_column
this.Control[iCurrent+13]=this.tv_controls
this.Control[iCurrent+14]=this.cb_close
this.Control[iCurrent+15]=this.pb_text
end on

on w_genidwdm_dwdebugger.destroy
call super::destroy
destroy(this.st_2)
destroy(this.st_vsplit)
destroy(this.sle_quickfilter)
destroy(this.tab_views)
destroy(this.cbx_showdef)
destroy(this.st_dataobject)
destroy(this.pb_break)
destroy(this.pb_sort)
destroy(this.pb_filter)
destroy(this.pb_visible)
destroy(this.pb_compute)
destroy(this.pb_column)
destroy(this.tv_controls)
destroy(this.cb_close)
destroy(this.pb_text)
end on

event open;//NOTE: override ancestor script
powerobject powerobjectparm
powerobjectparm = message.powerobjectparm

if windowtype = Popup! then
	if NOT showingdebugmsg( ) then
		Showdebugmsg( true )
	end if
end if

if TypeExists("u_genidwdm_cst_band") then
	uo_cst_band = create using "u_genidwdm_cst_band"
	openuserobject( uo_cst_band, 837, 2252 )
end if

tab_views.tabpage_data.pb_autofilter.visible = TypeExists("n_cst_powerfilter")
tab_views.tabpage_console.rb_perl.enabled = NOT IsNull(FindClassDefinition("register_embeddingperl"))
/***
 * TODO :
 *		- historiser les logs sur la machine (./dwdebugmachine_histo.xml par exemple )
 *		- modifier le LEXER pour la syntaxe des STRING avec le char d'echappement ~ entre les ' ou les "
 *		- permettre via un raccourics ( F2 ) de passer au parametre suivant ev: LeftA( /* s */, /* n */ )
 */
if NOT sb_modify_debug_show_msg then
	close( this )
	return
end if

super::event open()
//Generate Code for resizer.
if ib_resize_handler then inv_resizer.of_generate_code( "", this )

//LazyRefactoring
dw_buffer = tab_views.tabpage_data._dw_buffer
dw_histo = tab_views.tabpage_console.tab_out.tabpage_history._dw_histo
uo_msg = tab_views.tabpage_console.tab_out.tabpage_output._uo_msg
st_hsplit1 = tab_views.tabpage_console._st_hsplit1
cb_getback = tab_views.tabpage_console._cb_getback
cb_eval = tab_views.tabpage_console._cb_eval
cb_modify = tab_views.tabpage_console._cb_modify
cb_describe = tab_views.tabpage_console._cb_describe
st_status = tab_views.tabpage_console._st_status
st_status_syntax = tab_views.tabpage_syntax._st_status_syntax
uo_expression = tab_views.tabpage_console._uo_expression
uo_syntax = tab_views.tabpage_syntax._uo_syntax
sle_eval_row = tab_views.tabpage_console._sle_eval_row
lb_functions = tab_views.tabpage_console._lb_functions
st_notice = tab_views.tabpage_data._st_notice

if isheritedfrom( "nv_genidwdm_data_adapter", powerobjectparm) then
	idw_obj = powerobjectparm
	ib_adapter_owner = true	//false	: now, we will destroy every time, 
									//the caller is responsible to create a new instance
else
	ib_adapter_owner = true
	idw_obj = create nv_genidwdm_data_adapter
	if isheritedfrom( "datastore", powerobjectparm) then
		datastore lds_tmp
		lds_tmp = powerobjectparm
		idw_obj.of_initialize( lds_tmp )
	elseif isheritedfrom( "datawindowchild", powerobjectparm) then
		datawindowchild ldwc_tmp
		ldwc_tmp = powerobjectparm
		idw_obj.of_initialize( ldwc_tmp )
	else
		datawindow ldw_tmp
		ldw_tmp = powerobjectparm
		idw_obj.of_initialize( ldw_tmp )
	end if
end if
this.Title += "(" + getfullqualifiedname( idw_obj.of_get() ) + ")"

//dw_histo.createfromsql( "select 'describe' as Command, cast('' as varchar(8192)) as Expression" )
dw_histo.create('release 9; '+CRLF+&
'datawindow ( units=0 timer_interval=0 processing=1 color=1073741824 ) '+&
'header(height=68 color="536870912") '+CRLF+&
'summary(height=0 ) '+CRLF+&
'footer(height=0 ) '+CRLF+&
'detail(height=80 ) '+CRLF+&
'table(column=(type=char(8) updatewhereclause=yes name=command dbname="command"  ) '+CRLF+&
'column=(type=char(8192) updatewhereclause=yes name=expression dbname="expression"  ) '+CRLF+&
' retrieve="select ~'describe~' as Command, cast(~'~' as varchar(8192)) as Expression" '+CRLF+&
' ) '+CRLF+&
'text(name=command_t band=header font.charset="0" font.face="Tahoma" font.family="2" font.height="-8" font.italic="0" font.pitch="2" font.strikethrough="0" font.weight="400" font.underline="0"  background.mode="2" background.color="67108864" color="0" alignment="2" border="6" x="9" y="8" height="52" width="215" text="Command" ) '+CRLF+&
'text(name=expression_t band=header font.charset="0" font.face="Tahoma" font.family="2" font.height="-8" font.italic="0" font.pitch="2" font.strikethrough="0" font.weight="400" font.underline="0" background.mode="2" background.color="67108864" color="0" alignment="2" border="6" x="233" y="8" height="52" width="4389" text="Expression" ) '+CRLF+&
'column(name=command band=detail id=1 x="9" y="8" height="64" width="215" color="0" border="0" alignment="0" format="[general]" edit.focusrectangle=no edit.autohscroll=yes edit.autoselect=yes edit.autovscroll=no edit.case=any edit.codetable=no edit.displayonly=no edit.hscrollbar=no edit.imemode=0 edit.limit=8 edit.password=no edit.vscrollbar=no edit.validatecode=no edit.nilisnull=no edit.required=no criteria.required=no criteria.override_edit=no crosstab.repeat=no background.mode="1" background.color="536870912" font.charset="0" font.face="Tahoma" font.family="2" font.height="-8" font.italic="0" font.pitch="2" font.strikethrough="0" font.weight="400" font.underline="0" tabsequence=0 ) '+CRLF+&
'column(name=expression band=detail id=2 x="233" y="8" height="64" width="4388" color="0" border="0" alignment="0" format="[general]" edit.focusrectangle=no edit.autohscroll=yes edit.autoselect=yes edit.autovscroll=no edit.case=any edit.codetable=no edit.displayonly=no edit.hscrollbar=no edit.imemode=0 edit.limit=8192 edit.password=no edit.vscrollbar=no edit.validatecode=no edit.nilisnull=no edit.required=no criteria.required=no criteria.override_edit=no crosstab.repeat=no background.mode="1" background.color="536870912" font.charset="0" font.face="Tahoma" font.family="2" font.height="-8" font.italic="0" font.pitch="2" font.strikethrough="0" font.weight="400" font.underline="0" tabsequence=0 ) ' &
)
//Messagebox("",'//dw_histo.createfromsql( "select describe as Command, cast( as varchar(8192)) as Expression" )')
//dw_histo.modify('Datawindow.Detail.Color="0~tif(getrow()=currentrow(),rgb(255,255,0),1087434968)"')
dw_histo.modify("datawindow.selected.mouse='no'")
dw_histo.setrowfocusindicator( /*Hand!*/ FocusRect! )


//st_vsplit.of_set_location( )
st_vsplit.of_set_leftobject( tv_controls )	
st_vsplit.of_set_leftobject( sle_quickfilter )
st_vsplit.of_set_rightobject( tab_views )

st_vsplit.of_set_livesizing( true )
st_vsplit.of_set_minsize( 600, 600)
st_vsplit.post of_arrange_objects( )

//st_hsplit1.of_set_location( )
st_hsplit1.of_set_bottomobject( tab_views.tabpage_console.tab_out )
st_hsplit1.of_set_bottomobject( cb_getback, true )
st_hsplit1.of_set_bottomobject( cb_eval, true )
st_hsplit1.of_set_bottomobject( sle_eval_row, true )
st_hsplit1.of_set_bottomobject( cb_modify, true )
st_hsplit1.of_set_bottomobject( cb_describe, true )
st_hsplit1.of_set_bottomobject( st_status, true )

st_hsplit1.of_set_topobject( uo_expression )
st_hsplit1.of_set_livesizing( true )
st_hsplit1.of_set_minsize( 300, 500)
st_hsplit1.post of_arrange_objects( )

if handle( getapplication() ) = 0 then pb_break.visible = true

of_survey( )

show()

if windowtype = Popup! then
	if NOT showingdebugmsg( ) then
		Showdebugmsg( false )
	end if
	if isvalid(this) and not isnull( this ) then
		alwaysontop( false )
	end if
end if
uo_expression.POST setFocus( )

ib_opened = true
end event

event resize;call super::resize;if lb_functions.visible then
//	lb_functions.bringtotop = true
	lb_functions.visible = false
end if

if ib_resize_handler then return
/* Auto generated code from nv_genidwdm_auto_resizer */
/* - does NOT handle dynamic created object */
/* - does NOT handle H/V splitters */
this.setredraw( false )
//inv_resizer.event resize( sizetype, width, height )
if newwidth = 0 and newheight = 0 then return 0
long /*ll_x, ll_y,*/ ll_width, ll_height
long ll_parent_x, ll_parent_y, ll_parent_width, ll_parent_height
newwidth = this.width
newheight = this.height
/*ll_x = this.st_vsplit.x*/
/*ll_y = this.st_vsplit.y*/
/*ll_width = this.st_vsplit.width*/
/*ll_height = this.st_vsplit.height*/
this.st_vsplit.height = newheight - 4 - 200
newwidth = this.width
newheight = this.height
/*ll_x = this.sle_quickfilter.x*/
/*ll_y = this.sle_quickfilter.y*/
/*ll_width = this.sle_quickfilter.width*/
/*ll_height = this.sle_quickfilter.height*/
newwidth = this.width
newheight = this.height
/*ll_x = this.tab_views.x*/
/*ll_y = this.tab_views.y*/
/*ll_width = this.tab_views.width*/
/*ll_height = this.tab_views.height*/
this.tab_views.width = newwidth - 0 - 1239
this.tab_views.height = newheight - 8 - 212
newwidth = this.tab_views.width
newheight = this.tab_views.height
/*ll_x = this.tab_views.tabpage_console.x*/
/*ll_y = this.tab_views.tabpage_console.y*/
/*ll_width = this.tab_views.tabpage_console.width*/
/*ll_height = this.tab_views.tabpage_console.height*/
this.tab_views.tabpage_console.width = newwidth - 18 - 18
this.tab_views.tabpage_console.height = newheight - 112 - 16
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console._cb_eval.x*/
/*ll_y = this.tab_views.tabpage_console._cb_eval.y*/
/*ll_width = this.tab_views.tabpage_console._cb_eval.width*/
/*ll_height = this.tab_views.tabpage_console._cb_eval.height*/
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console._cb_describe.x*/
/*ll_y = this.tab_views.tabpage_console._cb_describe.y*/
ll_width = this.tab_views.tabpage_console._cb_describe.width
/*ll_height = this.tab_views.tabpage_console._cb_describe.height*/
this.tab_views.tabpage_console._cb_describe.x= newwidth - 10 - ll_width
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console._cb_modify.x*/
/*ll_y = this.tab_views.tabpage_console._cb_modify.y*/
ll_width = this.tab_views.tabpage_console._cb_modify.width
/*ll_height = this.tab_views.tabpage_console._cb_modify.height*/
this.tab_views.tabpage_console._cb_modify.x= newwidth - 421 - ll_width
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console._uo_expression.x*/
/*ll_y = this.tab_views.tabpage_console._uo_expression.y*/
/*ll_width = this.tab_views.tabpage_console._uo_expression.width*/
/*ll_height = this.tab_views.tabpage_console._uo_expression.height*/
this.tab_views.tabpage_console._uo_expression.width = newwidth - 14 - 0
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console._sle_eval_row.x*/
/*ll_y = this.tab_views.tabpage_console._sle_eval_row.y*/
/*ll_width = this.tab_views.tabpage_console._sle_eval_row.width*/
/*ll_height = this.tab_views.tabpage_console._sle_eval_row.height*/
this.tab_views.tabpage_console._sle_eval_row.width = newwidth - 842 - 2171
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console._cb_getback.x*/
/*ll_y = this.tab_views.tabpage_console._cb_getback.y*/
/*ll_width = this.tab_views.tabpage_console._cb_getback.width*/
/*ll_height = this.tab_views.tabpage_console._cb_getback.height*/
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console._st_hsplit1.x*/
/*ll_y = this.tab_views.tabpage_console._st_hsplit1.y*/
/*ll_width = this.tab_views.tabpage_console._st_hsplit1.width*/
/*ll_height = this.tab_views.tabpage_console._st_hsplit1.height*/
this.tab_views.tabpage_console._st_hsplit1.width = newwidth - 14 - 0
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console.cb_ddfunc.x*/
/*ll_y = this.tab_views.tabpage_console.cb_ddfunc.y*/
ll_width = this.tab_views.tabpage_console.cb_ddfunc.width
/*ll_height = this.tab_views.tabpage_console.cb_ddfunc.height*/
this.tab_views.tabpage_console.cb_ddfunc.x= newwidth - 5 - ll_width
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console.st_1.x*/
/*ll_y = this.tab_views.tabpage_console.st_1.y*/
ll_width = this.tab_views.tabpage_console.st_1.width
/*ll_height = this.tab_views.tabpage_console.st_1.height*/
this.tab_views.tabpage_console.st_1.x= newwidth - 119 - ll_width
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console._st_status.x*/
/*ll_y = this.tab_views.tabpage_console._st_status.y*/
/*ll_width = this.tab_views.tabpage_console._st_status.width*/
/*ll_height = this.tab_views.tabpage_console._st_status.height*/
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console.tab_out.x*/
/*ll_y = this.tab_views.tabpage_console.tab_out.y*/
/*ll_width = this.tab_views.tabpage_console.tab_out.width*/
/*ll_height = this.tab_views.tabpage_console.tab_out.height*/
this.tab_views.tabpage_console.tab_out.width = newwidth - 9 - 0
this.tab_views.tabpage_console.tab_out.height = newheight - 1464 - 12
newwidth = this.tab_views.tabpage_console.tab_out.width
newheight = this.tab_views.tabpage_console.tab_out.height
/*ll_x = this.tab_views.tabpage_console.tab_out.tabpage_output.x*/
/*ll_y = this.tab_views.tabpage_console.tab_out.tabpage_output.y*/
/*ll_width = this.tab_views.tabpage_console.tab_out.tabpage_output.width*/
/*ll_height = this.tab_views.tabpage_console.tab_out.tabpage_output.height*/
this.tab_views.tabpage_console.tab_out.tabpage_output.width = newwidth - 19 - 18
this.tab_views.tabpage_console.tab_out.tabpage_output.height = newheight - 16 - 112
newwidth = this.tab_views.tabpage_console.tab_out.tabpage_output.width
newheight = this.tab_views.tabpage_console.tab_out.tabpage_output.height
/*ll_x = this.tab_views.tabpage_console.tab_out.tabpage_output._uo_msg.x*/
/*ll_y = this.tab_views.tabpage_console.tab_out.tabpage_output._uo_msg.y*/
/*ll_width = this.tab_views.tabpage_console.tab_out.tabpage_output._uo_msg.width*/
/*ll_height = this.tab_views.tabpage_console.tab_out.tabpage_output._uo_msg.height*/
this.tab_views.tabpage_console.tab_out.tabpage_output._uo_msg.width = newwidth - 0 - 0
this.tab_views.tabpage_console.tab_out.tabpage_output._uo_msg.height = newheight - 0 - 0
newwidth = this.tab_views.tabpage_console.tab_out.width
newheight = this.tab_views.tabpage_console.tab_out.height
/*ll_x = this.tab_views.tabpage_console.tab_out.tabpage_history.x*/
/*ll_y = this.tab_views.tabpage_console.tab_out.tabpage_history.y*/
/*ll_width = this.tab_views.tabpage_console.tab_out.tabpage_history.width*/
/*ll_height = this.tab_views.tabpage_console.tab_out.tabpage_history.height*/
this.tab_views.tabpage_console.tab_out.tabpage_history.width = newwidth - 19 - 18
this.tab_views.tabpage_console.tab_out.tabpage_history.height = newheight - 16 - 112
newwidth = this.tab_views.tabpage_console.tab_out.tabpage_history.width
newheight = this.tab_views.tabpage_console.tab_out.tabpage_history.height
/*ll_x = this.tab_views.tabpage_console.tab_out.tabpage_history._dw_histo.x*/
/*ll_y = this.tab_views.tabpage_console.tab_out.tabpage_history._dw_histo.y*/
/*ll_width = this.tab_views.tabpage_console.tab_out.tabpage_history._dw_histo.width*/
/*ll_height = this.tab_views.tabpage_console.tab_out.tabpage_history._dw_histo.height*/
this.tab_views.tabpage_console.tab_out.tabpage_history._dw_histo.width = newwidth - 4 - 0
this.tab_views.tabpage_console.tab_out.tabpage_history._dw_histo.height = newheight - 0 - 4
newwidth = this.tab_views.tabpage_console.width
newheight = this.tab_views.tabpage_console.height
/*ll_x = this.tab_views.tabpage_console._lb_functions.x*/
/*ll_y = this.tab_views.tabpage_console._lb_functions.y*/
ll_width = this.tab_views.tabpage_console._lb_functions.width
/*ll_height = this.tab_views.tabpage_console._lb_functions.height*/
this.tab_views.tabpage_console._lb_functions.x= newwidth - 10 - ll_width
newwidth = this.tab_views.width
newheight = this.tab_views.height
/*ll_x = this.tab_views.tabpage_data.x*/
/*ll_y = this.tab_views.tabpage_data.y*/
/*ll_width = this.tab_views.tabpage_data.width*/
/*ll_height = this.tab_views.tabpage_data.height*/
this.tab_views.tabpage_data.width = newwidth - 18 - 18
this.tab_views.tabpage_data.height = newheight - 112 - 16
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.pb_autofilter.x*/
/*ll_y = this.tab_views.tabpage_data.pb_autofilter.y*/
ll_width = this.tab_views.tabpage_data.pb_autofilter.width
/*ll_height = this.tab_views.tabpage_data.pb_autofilter.height*/
this.tab_views.tabpage_data.pb_autofilter.x= newwidth - 932 - ll_width
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.pb_setfullstate.x*/
/*ll_y = this.tab_views.tabpage_data.pb_setfullstate.y*/
ll_width = this.tab_views.tabpage_data.pb_setfullstate.width
/*ll_height = this.tab_views.tabpage_data.pb_setfullstate.height*/
this.tab_views.tabpage_data.pb_setfullstate.x= newwidth - 731 - ll_width
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.pb_getfullstate.x*/
/*ll_y = this.tab_views.tabpage_data.pb_getfullstate.y*/
ll_width = this.tab_views.tabpage_data.pb_getfullstate.width
/*ll_height = this.tab_views.tabpage_data.pb_getfullstate.height*/
this.tab_views.tabpage_data.pb_getfullstate.x= newwidth - 836 - ll_width
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data._st_notice.x*/
/*ll_y = this.tab_views.tabpage_data._st_notice.y*/
/*ll_width = this.tab_views.tabpage_data._st_notice.width*/
/*ll_height = this.tab_views.tabpage_data._st_notice.height*/
this.tab_views.tabpage_data._st_notice.width = newwidth - 5 - 9
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.pb_saveas.x*/
/*ll_y = this.tab_views.tabpage_data.pb_saveas.y*/
ll_width = this.tab_views.tabpage_data.pb_saveas.width
/*ll_height = this.tab_views.tabpage_data.pb_saveas.height*/
this.tab_views.tabpage_data.pb_saveas.x= newwidth - 626 - ll_width
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.pb_showmodified.x*/
/*ll_y = this.tab_views.tabpage_data.pb_showmodified.y*/
ll_width = this.tab_views.tabpage_data.pb_showmodified.width
/*ll_height = this.tab_views.tabpage_data.pb_showmodified.height*/
this.tab_views.tabpage_data.pb_showmodified.x= newwidth - 114 - ll_width
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.pb_update.x*/
/*ll_y = this.tab_views.tabpage_data.pb_update.y*/
ll_width = this.tab_views.tabpage_data.pb_update.width
/*ll_height = this.tab_views.tabpage_data.pb_update.height*/
this.tab_views.tabpage_data.pb_update.x= newwidth - 521 - ll_width
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.pb_sortdata.x*/
/*ll_y = this.tab_views.tabpage_data.pb_sortdata.y*/
ll_width = this.tab_views.tabpage_data.pb_sortdata.width
/*ll_height = this.tab_views.tabpage_data.pb_sortdata.height*/
this.tab_views.tabpage_data.pb_sortdata.x= newwidth - 206 - ll_width
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.pb_deleterow.x*/
/*ll_y = this.tab_views.tabpage_data.pb_deleterow.y*/
ll_width = this.tab_views.tabpage_data.pb_deleterow.width
/*ll_height = this.tab_views.tabpage_data.pb_deleterow.height*/
this.tab_views.tabpage_data.pb_deleterow.x= newwidth - 306 - ll_width
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.pb_insertrow.x*/
/*ll_y = this.tab_views.tabpage_data.pb_insertrow.y*/
ll_width = this.tab_views.tabpage_data.pb_insertrow.width
/*ll_height = this.tab_views.tabpage_data.pb_insertrow.height*/
this.tab_views.tabpage_data.pb_insertrow.x= newwidth - 407 - ll_width
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.pb_addcompute.x*/
/*ll_y = this.tab_views.tabpage_data.pb_addcompute.y*/
ll_width = this.tab_views.tabpage_data.pb_addcompute.width
/*ll_height = this.tab_views.tabpage_data.pb_addcompute.height*/
this.tab_views.tabpage_data.pb_addcompute.x= newwidth - 0 - ll_width
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data._dw_buffer.x*/
/*ll_y = this.tab_views.tabpage_data._dw_buffer.y*/
/*ll_width = this.tab_views.tabpage_data._dw_buffer.width*/
/*ll_height = this.tab_views.tabpage_data._dw_buffer.height*/
this.tab_views.tabpage_data._dw_buffer.width = newwidth - 4 - 5
this.tab_views.tabpage_data._dw_buffer.height = newheight - 112 - 4
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.tab_buffer.x*/
/*ll_y = this.tab_views.tabpage_data.tab_buffer.y*/
/*ll_width = this.tab_views.tabpage_data.tab_buffer.width*/
/*ll_height = this.tab_views.tabpage_data.tab_buffer.height*/
this.tab_views.tabpage_data.tab_buffer.width = newwidth - 0 - 0
newwidth = this.tab_views.tabpage_data.tab_buffer.width
newheight = this.tab_views.tabpage_data.tab_buffer.height
newwidth = this.tab_views.tabpage_data.tab_buffer.width
newheight = this.tab_views.tabpage_data.tab_buffer.height
newwidth = this.tab_views.tabpage_data.tab_buffer.width
newheight = this.tab_views.tabpage_data.tab_buffer.height
newwidth = this.tab_views.tabpage_data.tab_buffer.width
newheight = this.tab_views.tabpage_data.tab_buffer.height
newwidth = this.tab_views.tabpage_data.width
newheight = this.tab_views.tabpage_data.height
/*ll_x = this.tab_views.tabpage_data.ddlb_datasource.x*/
/*ll_y = this.tab_views.tabpage_data.ddlb_datasource.y*/
ll_width = this.tab_views.tabpage_data.ddlb_datasource.width
/*ll_height = this.tab_views.tabpage_data.ddlb_datasource.height*/
this.tab_views.tabpage_data.ddlb_datasource.x= newwidth - 1102 - ll_width
newwidth = this.tab_views.width
newheight = this.tab_views.height
/*ll_x = this.tab_views.tabpage_syntax.x*/
/*ll_y = this.tab_views.tabpage_syntax.y*/
/*ll_width = this.tab_views.tabpage_syntax.width*/
/*ll_height = this.tab_views.tabpage_syntax.height*/
this.tab_views.tabpage_syntax.width = newwidth - 18 - 18
this.tab_views.tabpage_syntax.height = newheight - 112 - 16
newwidth = this.tab_views.tabpage_syntax.width
newheight = this.tab_views.tabpage_syntax.height
/*ll_x = this.tab_views.tabpage_syntax.cbx_wrapmode.x*/
/*ll_y = this.tab_views.tabpage_syntax.cbx_wrapmode.y*/
ll_width = this.tab_views.tabpage_syntax.cbx_wrapmode.width
ll_height = this.tab_views.tabpage_syntax.cbx_wrapmode.height
this.tab_views.tabpage_syntax.cbx_wrapmode.y=newheight - 12 - ll_height
this.tab_views.tabpage_syntax.cbx_wrapmode.x= newwidth - -91 - ll_width
newwidth = this.tab_views.tabpage_syntax.width
newheight = this.tab_views.tabpage_syntax.height
/*ll_x = this.tab_views.tabpage_syntax._st_status_syntax.x*/
/*ll_y = this.tab_views.tabpage_syntax._st_status_syntax.y*/
/*ll_width = this.tab_views.tabpage_syntax._st_status_syntax.width*/
ll_height = this.tab_views.tabpage_syntax._st_status_syntax.height
this.tab_views.tabpage_syntax._st_status_syntax.y=newheight - 0 - ll_height
this.tab_views.tabpage_syntax._st_status_syntax.width = newwidth - 252 - 105
newwidth = this.tab_views.tabpage_syntax.width
newheight = this.tab_views.tabpage_syntax.height
/*ll_x = this.tab_views.tabpage_syntax._uo_syntax.x*/
/*ll_y = this.tab_views.tabpage_syntax._uo_syntax.y*/
/*ll_width = this.tab_views.tabpage_syntax._uo_syntax.width*/
/*ll_height = this.tab_views.tabpage_syntax._uo_syntax.height*/
this.tab_views.tabpage_syntax._uo_syntax.width = newwidth - 0 - 0
this.tab_views.tabpage_syntax._uo_syntax.height = newheight - 0 - 92
newwidth = this.tab_views.tabpage_syntax.width
newheight = this.tab_views.tabpage_syntax.height
/*ll_x = this.tab_views.tabpage_syntax.pb_sync.x*/
/*ll_y = this.tab_views.tabpage_syntax.pb_sync.y*/
/*ll_width = this.tab_views.tabpage_syntax.pb_sync.width*/
ll_height = this.tab_views.tabpage_syntax.pb_sync.height
this.tab_views.tabpage_syntax.pb_sync.y=newheight - -8 - ll_height
newwidth = this.tab_views.width
newheight = this.tab_views.height
/*ll_x = this.tab_views.tabpage_help.x*/
/*ll_y = this.tab_views.tabpage_help.y*/
/*ll_width = this.tab_views.tabpage_help.width*/
/*ll_height = this.tab_views.tabpage_help.height*/
this.tab_views.tabpage_help.width = newwidth - 18 - 18
this.tab_views.tabpage_help.height = newheight - 112 - 16
newwidth = this.tab_views.tabpage_help.width
newheight = this.tab_views.tabpage_help.height
/*ll_x = this.tab_views.tabpage_help.rte_help.x*/
/*ll_y = this.tab_views.tabpage_help.rte_help.y*/
/*ll_width = this.tab_views.tabpage_help.rte_help.width*/
/*ll_height = this.tab_views.tabpage_help.rte_help.height*/
this.tab_views.tabpage_help.rte_help.width = newwidth - 5 - 0
this.tab_views.tabpage_help.rte_help.height = newheight - 0 - 0
newwidth = this.width
newheight = this.height
/*ll_x = this.cbx_showdef.x*/
/*ll_y = this.cbx_showdef.y*/
/*ll_width = this.cbx_showdef.width*/
ll_height = this.cbx_showdef.height
this.cbx_showdef.y=newheight - 116 - ll_height
newwidth = this.width
newheight = this.height
/*ll_x = this.st_dataobject.x*/
/*ll_y = this.st_dataobject.y*/
/*ll_width = this.st_dataobject.width*/
ll_height = this.st_dataobject.height
this.st_dataobject.y=newheight - 16 - ll_height
this.st_dataobject.width = newwidth - 4 - 5
newwidth = this.width
newheight = this.height
/*ll_x = this.pb_break.x*/
/*ll_y = this.pb_break.y*/
/*ll_width = this.pb_break.width*/
ll_height = this.pb_break.height
this.pb_break.y=newheight - 100 - ll_height
newwidth = this.width
newheight = this.height
/*ll_x = this.pb_sort.x*/
/*ll_y = this.pb_sort.y*/
/*ll_width = this.pb_sort.width*/
ll_height = this.pb_sort.height
this.pb_sort.y=newheight - 100 - ll_height
newwidth = this.width
newheight = this.height
/*ll_x = this.pb_filter.x*/
/*ll_y = this.pb_filter.y*/
/*ll_width = this.pb_filter.width*/
ll_height = this.pb_filter.height
this.pb_filter.y=newheight - 100 - ll_height
newwidth = this.width
newheight = this.height
/*ll_x = this.pb_visible.x*/
/*ll_y = this.pb_visible.y*/
/*ll_width = this.pb_visible.width*/
/*ll_height = this.pb_visible.height*/
newwidth = this.width
newheight = this.height
/*ll_x = this.pb_compute.x*/
/*ll_y = this.pb_compute.y*/
/*ll_width = this.pb_compute.width*/
/*ll_height = this.pb_compute.height*/
newwidth = this.width
newheight = this.height
/*ll_x = this.pb_column.x*/
/*ll_y = this.pb_column.y*/
/*ll_width = this.pb_column.width*/
/*ll_height = this.pb_column.height*/
newwidth = this.width
newheight = this.height
/*ll_x = this.tv_controls.x*/
/*ll_y = this.tv_controls.y*/
/*ll_width = this.tv_controls.width*/
/*ll_height = this.tv_controls.height*/
this.tv_controls.height = newheight - 164 - 208
newwidth = this.width
newheight = this.height
/*ll_x = this.cb_close.x*/
/*ll_y = this.cb_close.y*/
ll_width = this.cb_close.width
ll_height = this.cb_close.height
this.cb_close.y=newheight - 116 - ll_height
this.cb_close.x= newwidth - 5 - ll_width
newwidth = this.width
newheight = this.height
/*ll_x = this.pb_text.x*/
/*ll_y = this.pb_text.y*/
/*ll_width = this.pb_text.width*/
/*ll_height = this.pb_text.height*/
newwidth = this.width
newheight = this.height
/*ll_x = u_genidwdm_cst_band.x*/
/*ll_y = u_genidwdm_cst_band.y*/
/*ll_width = u_genidwdm_cst_band.width*/
/*ll_height = u_genidwdm_cst_band.height
u_genidwdm_cst_band.y=newheight - 96 - ll_height
u_genidwdm_cst_band.width = newwidth - 411 - 837
newwidth = u_genidwdm_cst_band.width
newheight = u_genidwdm_cst_band.height
newwidth = u_genidwdm_cst_band.width
newheight = u_genidwdm_cst_band.height*/
this.setredraw( true )
end event

event key;call super::key;if keyDown(KeyA!) and Keydown(KeyControl!) then
	if getfocus() = uo_expression then
		uo_expression.of_selectall( )
	elseif getfocus() = uo_msg then
		uo_msg.of_selectall()
	end if
end if

if keyDown(KeyL!) and Keydown(KeyControl!) then
	uo_expression.of_clear( )
end if

if keyDown(KeyHome!) and Keydown(KeyControl!) and KeyDown(KeyAlt!) then
	cb_getback.event clicked( )
end if

if keyDown(KeyPageDown!) and Keydown(KeyControl!) and KeyDown(KeyAlt!) then
	if dw_histo.getrow( ) < dw_histo.rowcount( ) then
		dw_histo.setRow( dw_histo.GetRow() +1 )
		uo_expression.of_settext( dw_histo.getitemstring(dw_histo.getrow(),2) )
	end if
end if

if keyDown(KeyPageUp!) and Keydown(KeyControl!) and KeyDown(KeyAlt!) then
	if dw_histo.GetRow() > 1 then
		dw_histo.setRow( dw_histo.GetRow() -1 )
		uo_expression.of_settext( dw_histo.getitemstring(dw_histo.getrow(),2) )
	end if
end if


if KeyDown(KeyF1!) then
	tab_views.selecttab( tab_views.tabpage_help ) 
end if

if keydown( KeyF2! ) then	//Evaluate Selection
	tab_views.selecttab( tab_views.tabpage_console )
	if KeyDown(KeyShift!) then
		of_evaluate( uo_expression.of_getselectedtext( ) )
	else
		of_evaluate( uo_expression.of_gettext( ) )
	end if
end if

if keydown( KeyF3! ) then	//Modify Selection
	if KeyDown(KeyShift!) then
		of_modify( uo_expression.of_getselectedtext( ) )
	else
		of_modify( uo_expression.of_gettext( ) )
	end if	
end if

if keydown( KeyF4! ) then	//Describe Selection
	if KeyDown(KeyShift!) then
		of_describe( uo_expression.of_getselectedtext( ) )
	else
		of_describe( uo_expression.of_gettext( ) )
	end if	
end if



end event

event close;call super::close;ib_closing = true
if isValid(uo_cst_band) And Not IsNull( uo_cst_band ) then
	CloseUserObject( uo_cst_band )
	Destroy uo_cst_band
end if

if IsValid( uo_powerfilter ) And Not IsNull( uo_powerfilter ) then
	destroy uo_powerfilter
end if

if isvalid( in_perl ) and not isnull( in_perl ) then
	destroy in_perl
end if

if isvalid(dw_buffer) and not isnull(dw_buffer) then
	dw_buffer.sharedataoff( )
end if

if ib_adapter_owner then
	//close temporary datawindow
	if isvalid(idw_obj) and not isnull(idw_obj) then
		destroy idw_obj
	end if
end if
end event

event activate;call super::activate;if windowtype = Popup! and ib_opened then
	boolean lb_cleanup = false
	if isnull( idw_obj ) or not isvalid( idw_obj ) then
		lb_cleanup = true
	elseif isnull( idw_obj.of_get() ) or not isvalid( idw_obj.of_get() ) then
		lb_cleanup = true
	end if
	if lb_cleanup then
		setnull( idw_obj )
		close( this )
	end if
end if
end event

type st_2 from statictext within w_genidwdm_dwdebugger
integer x = 27
integer width = 466
integer height = 52
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
long textcolor = 33554432
long backcolor = 67108864
string text = "Properties explorer"
boolean focusrectangle = false
end type

type st_vsplit from u_genidwdm_splitbar_vertical within w_genidwdm_dwdebugger
string tag = "TB;"
integer x = 1216
integer y = 4
integer height = 2244
end type

event mouseup;call super::mouseup;Thiswindow( ).event Resize( 0, Thiswindow( ).Width, Thiswindow( ).Height )
end event

type sle_quickfilter from singlelineedit within w_genidwdm_dwdebugger
event oneditchanged pbm_enchange
event onkeydown pbm_keydown
string tag = "TL;"
integer x = 489
integer y = 64
integer width = 722
integer height = 92
integer taborder = 60
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
textcase textcase = lower!
borderstyle borderstyle = stylelowered!
end type

event oneditchanged;of_quick_find( )
end event

event onkeydown;if keydown(KeyEnter!) then
	of_quick_find( )
end if
end event

type tab_views from tab within w_genidwdm_dwdebugger
string tag = "TBRL;"
integer x = 1239
integer y = 8
integer width = 3259
integer height = 2228
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 67108864
boolean raggedright = true
boolean focusonbuttondown = true
boolean powertips = true
integer selectedtab = 1
tabpage_console tabpage_console
tabpage_data tabpage_data
tabpage_syntax tabpage_syntax
tabpage_help tabpage_help
end type

on tab_views.create
this.tabpage_console=create tabpage_console
this.tabpage_data=create tabpage_data
this.tabpage_syntax=create tabpage_syntax
this.tabpage_help=create tabpage_help
this.Control[]={this.tabpage_console,&
this.tabpage_data,&
this.tabpage_syntax,&
this.tabpage_help}
end on

on tab_views.destroy
destroy(this.tabpage_console)
destroy(this.tabpage_data)
destroy(this.tabpage_syntax)
destroy(this.tabpage_help)
end on

event selectionchanged;if newindex<>0 then
	if tabpage_syntax = tab_views.control[ newindex ]  then
		uo_syntax.SetFocus()
		string ls_syntax
		ls_syntax = idw_obj.describe( "datawindow.syntax" )
		ls_syntax += "~r~n"
		ls_syntax += idw_obj.describe( "datawindow.syntax.data" )
		uo_syntax.of_settext( ls_syntax )
	end if
end if
end event

type tabpage_console from userobject within tab_views
event create ( )
event destroy ( )
string tag = "TBLR;"
integer x = 18
integer y = 112
integer width = 3223
integer height = 2100
long backcolor = 67108864
string text = "Console"
long tabtextcolor = 33554432
string picturename = "Environment!"
long picturemaskcolor = 12632256
rb_perl rb_perl
rb_dw rb_dw
_cb_eval _cb_eval
st_expression st_expression
_cb_describe _cb_describe
_cb_modify _cb_modify
_uo_expression _uo_expression
_sle_eval_row _sle_eval_row
_cb_getback _cb_getback
_st_hsplit1 _st_hsplit1
cb_ddfunc cb_ddfunc
st_1 st_1
_st_status _st_status
tab_out tab_out
_lb_functions _lb_functions
end type

on tabpage_console.create
this.rb_perl=create rb_perl
this.rb_dw=create rb_dw
this._cb_eval=create _cb_eval
this.st_expression=create st_expression
this._cb_describe=create _cb_describe
this._cb_modify=create _cb_modify
this._uo_expression=create _uo_expression
this._sle_eval_row=create _sle_eval_row
this._cb_getback=create _cb_getback
this._st_hsplit1=create _st_hsplit1
this.cb_ddfunc=create cb_ddfunc
this.st_1=create st_1
this._st_status=create _st_status
this.tab_out=create tab_out
this._lb_functions=create _lb_functions
this.Control[]={this.rb_perl,&
this.rb_dw,&
this._cb_eval,&
this.st_expression,&
this._cb_describe,&
this._cb_modify,&
this._uo_expression,&
this._sle_eval_row,&
this._cb_getback,&
this._st_hsplit1,&
this.cb_ddfunc,&
this.st_1,&
this._st_status,&
this.tab_out,&
this._lb_functions}
end on

on tabpage_console.destroy
destroy(this.rb_perl)
destroy(this.rb_dw)
destroy(this._cb_eval)
destroy(this.st_expression)
destroy(this._cb_describe)
destroy(this._cb_modify)
destroy(this._uo_expression)
destroy(this._sle_eval_row)
destroy(this._cb_getback)
destroy(this._st_hsplit1)
destroy(this.cb_ddfunc)
destroy(this.st_1)
destroy(this._st_status)
destroy(this.tab_out)
destroy(this._lb_functions)
end on

type rb_perl from radiobutton within tabpage_console
integer x = 603
integer width = 343
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "Perl"
end type

event clicked;of_setconsolesyntax( )
end event

type rb_dw from radiobutton within tabpage_console
integer x = 283
integer width = 343
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "dwsyntax"
boolean checked = true
end type

event clicked;of_setconsolesyntax( )
end event

type _cb_eval from commandbutton within tabpage_console
string tag = "L;"
integer x = 1760
integer y = 1384
integer width = 402
integer height = 72
integer taborder = 100
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "(F2) Evaluate:"
end type

event clicked;of_evaluate( uo_expression.of_gettext() )

end event

type st_expression from statictext within tabpage_console
integer width = 402
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Expression :"
boolean focusrectangle = false
end type

type _cb_describe from commandbutton within tabpage_console
string tag = "R;"
integer x = 2811
integer y = 1384
integer width = 402
integer height = 72
integer taborder = 110
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "(F4) Describe"
end type

event clicked;of_describe( uo_expression.of_gettext() )

end event

type _cb_modify from commandbutton within tabpage_console
string tag = "R;"
integer x = 2400
integer y = 1384
integer width = 402
integer height = 72
integer taborder = 100
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "(F3) Modify"
end type

event clicked;of_modify( uo_expression.of_gettext() )

end event

type _uo_expression from u_genidwdm_dwescilexer within tabpage_console
string tag = "LRT;"
integer y = 64
integer width = 3209
integer height = 1280
integer taborder = 50
string text = "<Enter expression here>"
boolean ib_highlight_matching_braces = true
end type

event scn_updateui;call super::scn_updateui;st_status.text =	"Line: " + string( this.of_getCurrentline( ) ) + &
				" Column: " + string( this.of_getcurrentcolumn( ) )
				
if this.of_getselectedlength( ) > 0 then
	st_status.text =	st_status.text + " - Selection length: " + string( this.of_getselectedlength( ) )
end if

end event

type _sle_eval_row from singlelineedit within tabpage_console
string tag = "LR;"
integer x = 2171
integer y = 1384
integer width = 210
integer height = 72
integer taborder = 90
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Courier New"
long textcolor = 33554432
string text = "1"
borderstyle borderstyle = stylelowered!
end type

event modified;if keydown(keyenter!) then
	of_evaluate( uo_expression.of_gettext( )  )
end if
end event

type _cb_getback from commandbutton within tabpage_console
string tag = "L;"
integer x = 1614
integer y = 1384
integer width = 142
integer height = 72
integer taborder = 80
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = symbol!
fontpitch fontpitch = variable!
string facename = "Marlett"
string text = "t"
end type

event clicked;string ls_text
ls_text = of_getmessage( )
if left( ls_text, 1 ) = '"' then
	//is could be an expression...
	long i
	i = pos( ls_text, "~t" )
	if i>0 then
		ls_text = mid( ls_text, i+1)
		ls_text = mid( ls_text, 1, len(ls_text) - 1 )	//remove the last "
	end if
end if
if KeyDown(KeyShift!) then
	uo_expression.of_inserttext( ls_text )
else
	uo_expression.of_settext( ls_text )
end if

end event

type _st_hsplit1 from u_genidwdm_splitbar_horizontal within tabpage_console
string tag = "LR;"
integer y = 1352
integer width = 3209
boolean ib_keep_offsets = true
end type

event clicked;call super::clicked;Thiswindow( ).event Resize( 0, Thiswindow( ).Width, Thiswindow( ).Height )
end event

type cb_ddfunc from commandbutton within tabpage_console
string tag = "TR;"
integer x = 3113
integer width = 105
integer height = 60
integer taborder = 40
integer textsize = -8
integer weight = 400
fontcharset fontcharset = symbol!
fontpitch fontpitch = variable!
string facename = "Marlett"
string text = "6"
end type

event clicked;if lb_functions.visible then
	lb_functions.visible = false
else
	lb_functions.visible = true
	lb_functions.setfocus()
end if
end event

type st_1 from statictext within tabpage_console
string tag = "TR;"
integer x = 2857
integer width = 247
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Functions"
alignment alignment = right!
boolean focusrectangle = false
end type

type _st_status from statictext within tabpage_console
string tag = "TL;"
integer y = 1380
integer width = 1605
integer height = 76
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Line ? column ?"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type tab_out from tab within tabpage_console
event create ( )
event destroy ( )
string tag = "TBLR;"
integer y = 1464
integer width = 3214
integer height = 624
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 67108864
boolean raggedright = true
boolean focusonbuttondown = true
tabposition tabposition = tabsonbottom!
integer selectedtab = 1
tabpage_output tabpage_output
tabpage_history tabpage_history
end type

on tab_out.create
this.tabpage_output=create tabpage_output
this.tabpage_history=create tabpage_history
this.Control[]={this.tabpage_output,&
this.tabpage_history}
end on

on tab_out.destroy
destroy(this.tabpage_output)
destroy(this.tabpage_history)
end on

type tabpage_output from userobject within tab_out
event create ( )
event destroy ( )
string tag = "TBLR;"
integer x = 18
integer y = 16
integer width = 3177
integer height = 496
long backcolor = 67108864
string text = "Output"
long tabtextcolor = 33554432
string picturename = "Output!"
long picturemaskcolor = 12632256
_uo_msg _uo_msg
end type

on tabpage_output.create
this._uo_msg=create _uo_msg
this.Control[]={this._uo_msg}
end on

on tabpage_output.destroy
destroy(this._uo_msg)
end on

type _uo_msg from u_genidwdm_dwescilexer within tabpage_output
string tag = "TBLR;"
integer width = 3177
integer height = 496
integer taborder = 80
string text = "<Return message>"
boolean ib_highlight_matching_braces = true
end type

event scn_updateui;call super::scn_updateui;st_status.text =	"Line: " + string( this.of_getCurrentline( ) ) + &
				" Column: " + string( this.of_getcurrentcolumn( ) )
				
if this.of_getselectedlength( ) > 0 then
	st_status.text =	st_status.text + " - Selection length: " + string( this.of_getselectedlength( ) )
end if

end event

type tabpage_history from userobject within tab_out
event create ( )
event destroy ( )
string tag = "TBLR;"
integer x = 18
integer y = 16
integer width = 3177
integer height = 496
long backcolor = 67108864
string text = "History"
long tabtextcolor = 33554432
string picturename = "RunToCursor!"
long picturemaskcolor = 12632256
_dw_histo _dw_histo
end type

on tabpage_history.create
this._dw_histo=create _dw_histo
this.Control[]={this._dw_histo}
end on

on tabpage_history.destroy
destroy(this._dw_histo)
end on

type _dw_histo from datawindow within tabpage_history
string tag = "TBLR;"
integer width = 3173
integer height = 492
integer taborder = 70
boolean hscrollbar = true
boolean vscrollbar = true
boolean border = false
boolean livescroll = true
end type

event doubleclicked;call super::doubleclicked;if row<1 then return
uo_expression.of_settext( dw_histo.getitemstring(row,2) )
choose case dw_histo.getitemstring(row,1)
	case "modify";	cb_modify.event clicked( )
	case "describe";	cb_describe.event clicked( )
	case "evaluate";	cb_eval.event clicked( )
end choose
//event oe_dwnkey;call super::oe_dwnkey;if KeyDown( KeyDelete! ) and getrow()>0 then
//	deleterow( getrow() )
//end if
//end event
end event

type _lb_functions from listbox within tabpage_console
string tag = "TR;"
boolean visible = false
integer x = 2066
integer y = 60
integer width = 1147
integer height = 1376
integer taborder = 50
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

event losefocus;this.visible = false
end event

event selectionchanged;string ls_buffer, ls_text
long ll_start, ll_length, j, k
ll_start = uo_expression.of_getcurrentpos( ) - uo_expression.of_getselectedlength( )
ls_text = this.text( index )
ls_buffer = ::ClipBoard( ls_text )
uo_expression.of_paste( )
::ClipBoard( ls_buffer )

j = pos( ls_text, "(" )
if j>0 then
	ll_start += j + 1
	k = pos( ls_text, ")" )
	ll_length = k - j - 1
else
	ll_start = uo_expression.of_getcurrentpos( ) + 1
	ll_length = 0	//len( ls_text ) | 0 ???
end if
//rest to select the part between braces...
uo_expression.setfocus( )
uo_expression.of_selecttext( ll_start - 1, ll_length )
this.visible = false
end event

type tabpage_data from userobject within tab_views
string tag = "TBLR;"
integer x = 18
integer y = 112
integer width = 3223
integer height = 2100
long backcolor = 67108864
string text = "Data"
long tabtextcolor = 33554432
string picturename = "DataWindow5!"
long picturemaskcolor = 12632256
pb_autofilter pb_autofilter
pb_setfullstate pb_setfullstate
pb_getfullstate pb_getfullstate
_st_notice _st_notice
pb_saveas pb_saveas
pb_showmodified pb_showmodified
pb_update pb_update
pb_sortdata pb_sortdata
pb_deleterow pb_deleterow
pb_insertrow pb_insertrow
pb_addcompute pb_addcompute
_dw_buffer _dw_buffer
tab_buffer tab_buffer
ddlb_datasource ddlb_datasource
end type

on tabpage_data.create
this.pb_autofilter=create pb_autofilter
this.pb_setfullstate=create pb_setfullstate
this.pb_getfullstate=create pb_getfullstate
this._st_notice=create _st_notice
this.pb_saveas=create pb_saveas
this.pb_showmodified=create pb_showmodified
this.pb_update=create pb_update
this.pb_sortdata=create pb_sortdata
this.pb_deleterow=create pb_deleterow
this.pb_insertrow=create pb_insertrow
this.pb_addcompute=create pb_addcompute
this._dw_buffer=create _dw_buffer
this.tab_buffer=create tab_buffer
this.ddlb_datasource=create ddlb_datasource
this.Control[]={this.pb_autofilter,&
this.pb_setfullstate,&
this.pb_getfullstate,&
this._st_notice,&
this.pb_saveas,&
this.pb_showmodified,&
this.pb_update,&
this.pb_sortdata,&
this.pb_deleterow,&
this.pb_insertrow,&
this.pb_addcompute,&
this._dw_buffer,&
this.tab_buffer,&
this.ddlb_datasource}
end on

on tabpage_data.destroy
destroy(this.pb_autofilter)
destroy(this.pb_setfullstate)
destroy(this.pb_getfullstate)
destroy(this._st_notice)
destroy(this.pb_saveas)
destroy(this.pb_showmodified)
destroy(this.pb_update)
destroy(this.pb_sortdata)
destroy(this.pb_deleterow)
destroy(this.pb_insertrow)
destroy(this.pb_addcompute)
destroy(this._dw_buffer)
destroy(this.tab_buffer)
destroy(this.ddlb_datasource)
end on

type pb_autofilter from picturebutton within tabpage_data
string tag = "TR;"
integer x = 2190
integer y = 4
integer width = 101
integer height = 88
integer taborder = 120
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "find!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Activate Powerfilter"
end type

event clicked;setPointer(HourGlass!)
uo_powerfilter = create using "n_cst_powerfilter"
uo_powerfilter.Dynamic of_setdw( dw_buffer )
CWSetField(uo_powerfilter, "checked",  true )
uo_powerfilter.TriggerEvent("ue_clicked")
this.Hide()
setPointer(Arrow!)
end event

type pb_setfullstate from picturebutton within tabpage_data
string tag = "TR;"
integer x = 2391
integer y = 4
integer width = 101
integer height = 88
integer taborder = 120
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "CheckOut5!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "SetFullState(mask+data+status) from clipboard"
end type

event clicked;blob bl
uint lui_dwfmt
if OpenClipboard( handle( thiswindow( ) ) ) then
	lui_dwfmt = Registerclipboardformat( "Datawindow full state" )
	if lui_dwfmt <> 0 then
		ulong lul_mem
		lul_mem = GetClipboarddata( lui_dwfmt )
		if lul_mem<>0 then
			ulong lul_length
			lul_length = GlobalSize( lul_mem )
			bl = blob( FillA(' ', lul_length), encodingAnsi! )
			ulong lul_buffer
			lul_buffer = GlobalLock( lul_mem )
			CopymemoryIntoBlob( bl, lul_buffer, lul_length)
			GlobalUnlock( lul_mem )
		end if
	end if
	int r
	r = idw_obj.SetFullstate( bl ) 
	CloseClipboard( )
	if r <> -1 then
		of_refresh_databuffer()
		Messagebox("SetFullstate ("+string(r)+")", string( len(bl) ) +" bytes of data was copied from clipboard succesfully!")
	end if
end if
end event

type pb_getfullstate from picturebutton within tabpage_data
string tag = "TR;"
integer x = 2286
integer y = 4
integer width = 101
integer height = 88
integer taborder = 110
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "CheckIn5!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "GetFullState(mask+data+status) to clipboard"
end type

event clicked;blob bl
if idw_obj.getFullstate( bl ) <> -1 then
	uint lui_dwfmt
	if OpenClipboard( handle( thiswindow( ) ) ) then
		lui_dwfmt = Registerclipboardformat( "Datawindow full state" )
		if lui_dwfmt <> 0 then
			Emptyclipboard( )
			ulong lul_hmem_clipboard
			lul_hmem_clipboard = GlobalAlloc( 2 + 64/*GMEM_MOVEABLE + GMEM_ZEROINIT*/, Len( bl ) + 1 )
			if lul_hmem_clipboard <> 0 then
				ulong lul_buffer
				lul_buffer = GlobalLock( lul_hmem_clipboard )
				CopyMemoryFromBlob( lul_buffer, bl, len( bl ) )
				GlobalUnlock( lul_hmem_clipboard )
				if SetClipboarddata( lui_dwfmt, lul_hmem_clipboard) <> 0 then
					Messagebox("GetFullstate", string( len(bl) ) +" bytes of data was copied into clipboard succesfully!")
				else
					GlobalFree( lul_hmem_clipboard )
				end if
			end if
		end if
		CloseClipboard( )
	end if
end if
end event

type _st_notice from statictext within tabpage_data
string tag = "TLR;"
boolean visible = false
integer x = 9
integer y = 116
integer width = 3209
integer height = 176
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 65535
long backcolor = 16711680
string text = "Notice that datawindow based on an external datasource does not support DeleteBuffer!"
alignment alignment = center!
boolean focusrectangle = false
end type

type pb_saveas from picturebutton within tabpage_data
string tag = "TR;"
integer x = 2496
integer y = 4
integer width = 101
integer height = 88
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "SaveAs!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Save as..."
end type

event clicked;dw_buffer.saveas( )
end event

type pb_showmodified from picturebutton within tabpage_data
string tag = "TR;"
integer x = 3008
integer y = 4
integer width = 101
integer height = 88
integer taborder = 20
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "ShowWatch5!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Show modified data"
end type

event clicked;of_show_modified_data( )
end event

type pb_update from picturebutton within tabpage_data
string tag = "TR;"
integer x = 2601
integer y = 4
integer width = 101
integer height = 88
integer taborder = 90
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Update5!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Update"
end type

type pb_sortdata from picturebutton within tabpage_data
string tag = "TR;"
integer x = 2907
integer y = 4
integer width = 110
integer height = 96
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean originalsize = true
string picturename = "Sort!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Sort"
end type

event clicked;string ls_null
setnull( ls_null )
dw_buffer.setsort( ls_null )
dw_buffer.sort()
end event

type pb_deleterow from picturebutton within tabpage_data
string tag = "TR;"
integer x = 2807
integer y = 4
integer width = 110
integer height = 96
integer taborder = 90
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean originalsize = true
string picturename = "deleterow!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Delete current row"
end type

event clicked;long row
row = dw_buffer.getrow()
if row > 0 then
	dw_buffer.deleterow( row )
end if
end event

type pb_insertrow from picturebutton within tabpage_data
string tag = "TR;"
integer x = 2706
integer y = 4
integer width = 110
integer height = 96
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean originalsize = true
string picturename = "insert5!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Insert row"
end type

event clicked;dw_buffer.insertrow( dw_buffer.getrow() )
end event

type pb_addcompute from picturebutton within tabpage_data
string tag = "TR;"
integer x = 3122
integer y = 4
integer width = 101
integer height = 88
integer taborder = 30
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Courier New"
string picturename = "Compute5!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Show/Hide computes"
end type

event clicked;flatstyle = not flatstyle
of_prepare_databuffer( )
tab_views.tabpage_data.tab_buffer.triggerevent("selectionchanged")
end event

type _dw_buffer from datawindow within tabpage_data
event ue_leftbutton_up pbm_dwnlbuttonup
string tag = "TBLR;"
integer x = 5
integer y = 112
integer width = 3214
integer height = 1984
integer taborder = 70
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean border = false
boolean livescroll = true
end type

event ue_leftbutton_up;if isValid( uo_powerfilter ) and not isnull( uo_powerfilter ) then
	string ls_name, ls_type
	ls_name = string( dwo.name )
	ls_type = string( dwo.type )
	//I do not look for the Old syntax <<  event ue_buttonclicked( DWO ) >>
	//It is possible to do that dynamically, but you can just update your powerfilter version :-p
	uo_powerfilter.Post Dynamic event ue_buttonclicked(ls_type, ls_name)
end if
end event

event resize;if isValid( uo_powerfilter ) and not isnull( uo_powerfilter ) then
	uo_powerfilter.TriggerEvent("ue_positionbuttons")
end if
end event

event itemerror;return 2
end event

type tab_buffer from tab within tabpage_data
string tag = "TLR;"
integer width = 3223
integer height = 112
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 67108864
boolean raggedright = true
boolean focusonbuttondown = true
boolean powertips = true
integer selectedtab = 1
tabpage_shared tabpage_shared
tabpage_primary tabpage_primary
tabpage_filtered tabpage_filtered
tabpage_deleted tabpage_deleted
end type

on tab_buffer.create
this.tabpage_shared=create tabpage_shared
this.tabpage_primary=create tabpage_primary
this.tabpage_filtered=create tabpage_filtered
this.tabpage_deleted=create tabpage_deleted
this.Control[]={this.tabpage_shared,&
this.tabpage_primary,&
this.tabpage_filtered,&
this.tabpage_deleted}
end on

on tab_buffer.destroy
destroy(this.tabpage_shared)
destroy(this.tabpage_primary)
destroy(this.tabpage_filtered)
destroy(this.tabpage_deleted)
end on

event selectionchanged;of_set_buffermode( this.Control[ this.selectedtab ].text )
end event

type tabpage_shared from userobject within tab_buffer
integer x = 18
integer y = 112
integer width = 3186
integer height = -16
long backcolor = 67108864
string text = "Shared"
long tabtextcolor = 33554432
string picturename = "SizeHorizontal!"
long picturemaskcolor = 12632256
end type

type tabpage_primary from userobject within tab_buffer
integer x = 18
integer y = 112
integer width = 3186
integer height = -16
long backcolor = 67108864
string text = "Primary"
long tabtextcolor = 33554432
string picturename = "cursor!"
long picturemaskcolor = 12632256
end type

type tabpage_filtered from userobject within tab_buffer
integer x = 18
integer y = 112
integer width = 3186
integer height = -16
long backcolor = 67108864
string text = "Filtered"
long tabtextcolor = 33554432
string picturename = "Custom090!"
long picturemaskcolor = 12632256
end type

type tabpage_deleted from userobject within tab_buffer
integer x = 18
integer y = 112
integer width = 3186
integer height = -16
long backcolor = 67108864
string text = "Deleted"
long tabtextcolor = 33554432
string picturename = "DeleteWatch5!"
long picturemaskcolor = 12632256
string powertiptext = "(deleted row in a non updatable datasource could not be relfected)"
end type

type ddlb_datasource from dropdownlistbox within tabpage_data
string tag = "TR;"
boolean visible = false
integer x = 1362
integer width = 759
integer height = 468
integer taborder = 80
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string item[] = {"Selected","Original","Current"}
borderstyle borderstyle = stylelowered!
end type

type tabpage_syntax from userobject within tab_views
string tag = "TBLR;"
integer x = 18
integer y = 112
integer width = 3223
integer height = 2100
long backcolor = 67108864
string text = "Syntax"
long tabtextcolor = 33554432
string picturename = "Properties!"
long picturemaskcolor = 12632256
string powertiptext = "Syntax manipulation"
cbx_wrapmode cbx_wrapmode
_st_status_syntax _st_status_syntax
_uo_syntax _uo_syntax
pb_sync pb_sync
end type

on tabpage_syntax.create
this.cbx_wrapmode=create cbx_wrapmode
this._st_status_syntax=create _st_status_syntax
this._uo_syntax=create _uo_syntax
this.pb_sync=create pb_sync
this.Control[]={this.cbx_wrapmode,&
this._st_status_syntax,&
this._uo_syntax,&
this.pb_sync}
end on

on tabpage_syntax.destroy
destroy(this.cbx_wrapmode)
destroy(this._st_status_syntax)
destroy(this._uo_syntax)
destroy(this.pb_sync)
end on

type cbx_wrapmode from checkbox within tabpage_syntax
string tag = "BR;"
integer x = 2971
integer y = 2024
integer width = 343
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "wrap"
boolean checked = true
boolean threestate = true
end type

event clicked;if checked then
	if thirdstate then
		uo_syntax.of_setwrapmode( uo_syntax.sc_wrap_char )
	else
		uo_syntax.of_setwrapmode( uo_syntax.sc_wrap_word )
	end if
else
	uo_syntax.of_setwrapmode( uo_syntax.sc_wrap_none  )
end if
end event

type _st_status_syntax from statictext within tabpage_syntax
string tag = "BLR;"
integer x = 105
integer y = 2012
integer width = 2866
integer height = 88
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Line ? column ?"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type _uo_syntax from u_genidwdm_dwescilexer within tabpage_syntax
string tag = "TBLR;"
integer width = 3223
integer height = 2008
integer taborder = 60
string text = "<Enter expression here>"
boolean ib_highlight_matching_braces = true
end type

event scn_updateui;call super::scn_updateui;st_status_syntax.text =	"Line: " + string( this.of_getCurrentline( ) ) + &
				" Column: " + string( this.of_getcurrentcolumn( ) )
				
if this.of_getselectedlength( ) > 0 then
	st_status.text =	st_status.text + " - Selection length: " + string( this.of_getselectedlength( ) )
end if

end event

type pb_sync from picturebutton within tabpage_syntax
string tag = "BL;"
integer y = 2012
integer width = 110
integer height = 96
integer taborder = 80
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean originalsize = true
string picturename = "Synchronizer!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Syncrhonize syntaxe"
end type

event clicked;string ls_error = ""
/*
	TODO: il faudrait m$$HEX1$$e900$$ENDHEX$$moriser les lignes et leurs $$HEX1$$e900$$ENDHEX$$tats pour tout les buffers !
	=> maintenant, cela n'est possible que si la definition des colonnes n'a pas chang$$HEX2$$e9002000$$ENDHEX$$(nombre, ordre et datatype)
*/
idw_obj.Create( uo_syntax.of_GetText(), ls_error )
if ls_error <> "" then
	show_error( uo_syntax, ls_error )
	MessageBox( "Syntax error:", ls_error )
else
	of_refresh_databuffer()
end if

end event

type tabpage_help from userobject within tab_views
event create ( )
event destroy ( )
string tag = "TBLR;"
integer x = 18
integer y = 112
integer width = 3223
integer height = 2100
long backcolor = 67108864
string text = "Help"
long tabtextcolor = 33554432
string picturename = "Help!"
long picturemaskcolor = 12632256
rte_help rte_help
end type

on tabpage_help.create
this.rte_help=create rte_help
this.Control[]={this.rte_help}
end on

on tabpage_help.destroy
destroy(this.rte_help)
end on

type rte_help from richtextedit within tabpage_help
string tag = "TBLR;"
integer width = 3218
integer height = 2100
integer taborder = 60
boolean init_hscrollbar = true
boolean init_vscrollbar = true
string init_documentname = "Help"
boolean init_displayonly = true
borderstyle borderstyle = stylelowered!
end type

event constructor;string ls_help = &
"{\rtf1\ansi\ansicpg1252\deff0\deflang1036{\fonttbl{\f0\fswiss\fcharset0 Arial;}}"+CRLF+&
"{\*\generator Msftedit 5.41.15.1515;}\viewkind4\uc1\pard\qc\ul\b\f0\fs48 Integrated help\ulnone\b0\fs20\par"+CRLF+&
"\pard\par"+CRLF+&
"F2\tab\tab\tab Evaluate the selection     \par"+CRLF+&
"\par"+CRLF+&
"F3\tab\tab\tab Modify the selection     \par"+CRLF+&
"\par"+CRLF+&
"F4\tab\tab\tab Describe the selection     \par"+CRLF+&
"\par"+CRLF+&
"Ctrl+SPACE\tab\tab Try to complete expression     \par"+CRLF+&
"\par"+CRLF+&
"Ctrl+A\tab\tab\tab Select all text in editor     \par"+CRLF+&
"\par"+CRLF+&
"Ctrl+L\tab\tab\tab Clear text in editor     \tab\par"+CRLF+&
"\par"+CRLF+&
"Ctrl+Alt+Home\tab\tab move result in text in editor\par"+CRLF+&
"\par"+CRLF+&
"Ctrl+Alt+PageDown\tab\tab show previous command text in editor\par"+CRLF+&
"\par"+CRLF+&
"Ctrl+Alt+PageUp\tab\tab show next command in text in editor\par"+CRLF+&
"\par"+CRLF+&
"Ctrl+Right click on a column containing a datawindowchild will open a new debugger to spy it's children\par"+CRLF+&
"}"
THIS.Pastertf( ls_help )
end event

type cbx_showdef from checkbox within w_genidwdm_dwdebugger
string tag = "BL;"
integer x = 366
integer y = 2252
integer width = 448
integer height = 80
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Show definition"
end type

event clicked;
if this.checked then
	idw_obj.modify("DataWindow.ShowDefinition='yes'")
else
	idw_obj.modify("DataWindow.ShowDefinition='no'")
end if

end event

type st_dataobject from statictext within w_genidwdm_dwdebugger
string tag = "BLR;"
integer x = 5
integer y = 2352
integer width = 4489
integer height = 80
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "dataobject:"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type pb_break from picturebutton within w_genidwdm_dwdebugger
string tag = "BL;"
boolean visible = false
integer x = 242
integer y = 2252
integer width = 110
integer height = 96
integer taborder = 70
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Courier New"
boolean originalsize = true
string picturename = "Custom037!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Break into code (Just In Time Debugging)"
end type

event clicked;
DebugBreak()

end event

type pb_sort from picturebutton within w_genidwdm_dwdebugger
string tag = "BL;"
integer x = 123
integer y = 2252
integer width = 110
integer height = 96
integer taborder = 70
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Courier New"
boolean originalsize = true
string picturename = "Sort!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Sort datawindow"
end type

event clicked;string newsort
setnull(newsort)
idw_obj.SetSort(newsort)
SetPointer(HourGlass!)
idw_obj.Sort()
SetPointer(Arrow!)
end event

type pb_filter from picturebutton within w_genidwdm_dwdebugger
string tag = "BL;"
integer x = 5
integer y = 2252
integer width = 110
integer height = 96
integer taborder = 70
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Courier New"
boolean originalsize = true
string picturename = "Search!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Filter datawindow"
end type

event clicked;string newfilter
setnull(newfilter)
idw_obj.setfilter(newfilter)
SetPointer(HourGlass!)
idw_obj.filter()
SetPointer(Arrow!)
end event

type pb_visible from picturebutton within w_genidwdm_dwdebugger
string tag = "TL;"
integer x = 379
integer y = 64
integer width = 101
integer height = 88
integer taborder = 50
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Courier New"
string picturename = "AddWatch5!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Show visibles only"
end type

event clicked;
flatstyle = not flatstyle
deletechildren( il_hcontrols )
end event

type pb_compute from picturebutton within w_genidwdm_dwdebugger
string tag = "TL;"
integer x = 261
integer y = 64
integer width = 101
integer height = 88
integer taborder = 40
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Courier New"
boolean flatstyle = true
string picturename = "Compute5!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Show computes"
end type

event clicked;flatstyle = not flatstyle
deletechildren( il_hcontrols )
end event

type pb_column from picturebutton within w_genidwdm_dwdebugger
string tag = "TL;"
integer x = 142
integer y = 64
integer width = 101
integer height = 88
integer taborder = 30
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Courier New"
boolean flatstyle = true
string picturename = "PlaceColumn5!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Show columns"
end type

event clicked;flatstyle = not flatstyle
deletechildren( il_hcontrols )
end event

type tv_controls from treeview within w_genidwdm_dwdebugger
string tag = "TBL;"
integer x = 14
integer y = 164
integer width = 1198
integer height = 2076
integer taborder = 50
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Courier New"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
integer indent = 5
boolean linesatroot = true
boolean hideselection = false
boolean fullrowselect = true
boolean singleexpand = true
grsorttype sorttype = ascending!
string picturename[] = {"Properties!","Compute5!","PlaceColumn5!","StaticText!","Open!","Custom039!","hasdwchild.ico"}
long picturemaskcolor = 12632256
string statepicturename[] = {""}
integer statepicturewidth = 16
integer statepictureheight = 16
long statepicturemaskcolor = 12632256
end type

event doubleclicked;string ls_text, ls_buffer
ls_text = of_gettvitemtext( handle )

if ls_text <> "" and left(ls_text,1)<>'$' then
	of_appendtext( ls_text )
end if
end event

event itemexpanding;if ib_closing or NOT (isvalid( thiswindow()) AND isValid( idw_obj ) ) then
	//when closing
	return 0
end if
//----------------------------------------
//Can expand an item...
//----------------------------------------
string ls_lists, ls_objname, ls_itemname
long i, j, ll_hcurrent, p, ll_childitem
boolean lb_visible = false, lb_childdw = false
treeviewitem tvitem
uo_regex lnv_regex, lnv_regex2
lnv_regex = create uo_regex
lnv_regex2 = create uo_regex
lnv_regex.initialize( "([^\s]+)", true, false)
lnv_regex2.initialize( "([^\s]+)", true, false)


tv_controls.setredraw( false )
tv_controls.sorttype = unsorted!
tv_controls.getitem( handle, tvitem)

if handle = il_hproperties and not tvitem.expandedonce then
	ls_lists = idw_obj.describe("datawindow.attributes")
	if lnv_regex.search( ls_lists )>0 then
		for i = 1 to lnv_regex.matchcount( )
			tv_controls.insertitemlast( il_hproperties, lnv_regex.group( i, 1) , 1)
		next
	end if
end if

//idem for controls...
if handle = il_hcontrols and not tvitem.expandedonce then
	ls_lists = idw_obj.describe("datawindow.objects")	//.objects or .visualobjects
	if lnv_regex.search( ls_lists )>0 then
		for i = 1 to lnv_regex.matchcount( )
			ls_objname = lnv_regex.group( i, 1)
			ls_itemname = ls_objname
			lb_childdw = false
			choose case idw_obj.describe( ls_objname + ".type")
				case "text"
					p = 4
					if not pb_text.flatstyle then continue	//Skip all statictext
				case "compute"
					p = 2
					if not pb_compute.flatstyle then continue	//Skip all compute					
				case "column"
					p = 3
					ls_itemname += " (#"+ idw_obj.describe( ls_objname + ".id")+")"
					if not pb_column.flatstyle then continue	//Skip all column
					lb_childdw = ( len(idw_obj.describe( ls_objname + ".dddw.name")) > 1 )
				case else
					p = 1
			end choose
			lb_visible =  mid(idw_obj.describe( ls_objname + ".visible"),1,1)="1" or mid(idw_obj.describe( ls_objname + ".visible"),2,1)="1"
			if pb_visible.flatstyle and not lb_visible then continue
			ll_hcurrent = tv_controls.insertitemlast( il_hcontrols , ls_itemname , p)
			treeviewitem tvchilditem
			tv_controls.getitem( ll_hcurrent, tvchilditem )
			tvchilditem.Bold = lb_visible
			if lb_childdw then
				//tvchilditem.statepictureindex = 1	//displayed on the right
				tvchilditem.overlaypictureindex = 1	//top layered
			end if
//			debug_message( classname() + ":" + ls_objname + ".visible", idw_obj.describe( ls_objname + ".visible") )
			tv_controls.setitem( ll_hcurrent, tvchilditem )			
			//tout les attributs du control
			ls_lists = idw_obj.describe( ls_objname + ".attributes" )
			if lnv_regex2.search( ls_lists )>0 then
				for j = 1 to lnv_regex2.matchcount( )
					ll_childitem = tv_controls.insertitemlast( ll_hcurrent, lnv_regex2.group( j, 1) , 1)
				next
			end if
		next
	end if
end if

tv_controls.sorttype = ascending!
tv_controls.setredraw( true )

destroy lnv_regex2
destroy lnv_regex
end event

event rightclicked;//	event doubleclicked( handle )	//this could help on node level...
m_genidwdm_contextmenu lm_ctxmenu
lm_ctxmenu = create m_genidwdm_contextmenu

string ls_control, ls_band
ls_control = of_gettvitemtext( handle )
if ls_control = "" then return
if left(ls_control,1)='$' then
//	//propose to refresh tree
	return
end if
if pos(ls_control,'.')>0 then
	of_appendtext( ls_control )
	return
end if
ls_band = idw_obj.describe( ls_control + ".band" )
if ls_band<>'!' and ls_band<>'?' then
	//preparing menu : adding bands
	string ls_bands, ls_curr_band
	uo_regex lrx_bands
	long i, count
	boolean lb_background, lb_foreground
	ls_bands = idw_obj.Describe("datawindow.bands")
	lrx_bands = create uo_regex
	lrx_bands.initialize( "\w+", true, false)
	count = lrx_bands.search( ls_bands )
	for i = 1 to count
		ls_curr_band = lrx_bands.match( i )
		lb_background = lb_background OR ( ls_curr_band = 'background' )
		lb_foreground = lb_foreground OR ( ls_curr_band = 'foreground' )
		lm_ctxmenu.addMenuItem( lm_ctxmenu.m_changeband, &
										ls_curr_band, &
										"band", &
										true, &
										(ls_curr_band = ls_band ) )
	next
	destroy lrx_bands
	if lb_background = FALSE then
		lm_ctxmenu.addMenuItem( lm_ctxmenu.m_changeband, &
											"background", &
											"band", &
											true, &
											("background" = ls_band ) )
	end if
	if lb_foreground = FALSE then
		lm_ctxmenu.addMenuItem( lm_ctxmenu.m_changeband, &
											"foreground", &
											"band", &
											true, &
											("foreground" = ls_band ) )
	end if	
	lm_ctxmenu.m_changeband.enable( )
else
	lm_ctxmenu.m_changeband.disable( )
end if
lm_ctxmenu.PopMenu( X + PointerX(), Y + PointerY() )
menu lm_clicked
lm_clicked = lm_ctxmenu.getClickeditem( )
if isvalid(lm_clicked) and not isnull(lm_clicked) then
	choose case lm_clicked.tag
		case "band"
			int li_ret
			li_ret = idw_obj.setPosition( ls_control, lm_clicked.text, true )
			if li_ret <> 1 then
				Messagebox( "Failed", "setPosition( "+ls_control+&
					", "+lm_clicked.text+ ", true ) return " + string(li_ret))
			end if
		case "inspect"
			datawindowchild ldw_child
			if idw_obj.getchild(ls_control, ldw_child) = 1 then
				nv_genidwdm_data_adapter lda_adpter
				lda_adpter = create nv_genidwdm_data_adapter
				string ls_dataobject
				ls_dataobject = idw_obj.describe( ls_control + ".dddw.name" )
				if ls_dataobject='!' or ls_dataobject='?' then 
					//TODO: may be a nested report...
					ls_dataobject = "" //this is an information only and does not impact fonctionnality
				end if
				lda_adpter.of_initialize( ldw_child, "", ls_dataobject)
				if windowtype = Popup! then
					w_genidwdm_dwexpr_palette_dbg lw_pal_dbg
					openwithparm(	lw_pal_dbg, lda_adpter )
				else
					w_genidwdm_dwdebugger lw_resp_dbg
					openwithparm(	lw_resp_dbg, lda_adpter )			
				end if
			end if
		case "add"
			of_appendtext( ls_control )
		case "destroy"
			uo_expression.of_settext( "destroy " + ls_control )
			of_modify( uo_expression.of_gettext( ) )
		case "refresh"
			deletechildren( il_hcontrols )
			deletechildren( il_hproperties )
		case "create"
			uo_regex lrx_createsyntax
			lrx_createsyntax = create uo_regex
			string ls_type, ls_pattern
			ls_type = idw_obj.describe( ls_control+'.type' )
			ls_pattern = "^\s*"+ls_type+"\([^\n]*name="+ls_control+".*?\)\s*$"
			lrx_createsyntax.setdotmatchnewline( true )
			lrx_createsyntax.setmultiline( true )
			lrx_createsyntax.initialize( ls_pattern, true, false)
			if lrx_createsyntax.search( idw_obj.Describe("datawindow.syntax") ) > 0 then
				uo_expression.of_settext( "create " + lrx_createsyntax.match(1) )
			end if
			destroy lrx_createsyntax
	end choose
end if
lm_ctxmenu.cleanup()
destroy lm_ctxmenu
end event

event constructor;setoverlaypicture( 1, 7)	//add 1 overlay image
end event

type cb_close from commandbutton within w_genidwdm_dwdebugger
string tag = "RB;"
integer x = 4091
integer y = 2256
integer width = 402
integer height = 76
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
boolean cancel = true
end type

event clicked;if windowtype = Popup! then
	close( thiswindow() )
	return
end if

//Response mode can return a value.
// "2" if user want to stop to display that debugger...
string ls_retval = "1"
if sb_modify_debug_show_msg = FALSE then 
	ls_retval = "2"
end if
closewithreturn( thiswindow( ), ls_retval )
end event

type pb_text from picturebutton within w_genidwdm_dwdebugger
string tag = "TL;"
integer x = 23
integer y = 64
integer width = 101
integer height = 88
integer taborder = 20
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "Courier New"
boolean flatstyle = true
string picturename = "StaticText!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Show statictexts"
end type

event clicked;flatstyle = not flatstyle
deletechildren( il_hcontrols )
end event

