HA$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type shl_powerfilter from statichyperlink within w_main
end type
type cbx_pfsupport from checkbox within w_main
end type
type cb_test1 from commandbutton within w_main
end type
type cb_pal from commandbutton within w_main
end type
type cb_debug from commandbutton within w_main
end type
type dw_1 from datawindow within w_main
end type
end forward

global type w_main from window
integer x = 9
integer y = 12
integer width = 2789
integer height = 1800
boolean titlebar = true
string title = "Test DWDebugMachine"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "Report5!"
shl_powerfilter shl_powerfilter
cbx_pfsupport cbx_pfsupport
cb_test1 cb_test1
cb_pal cb_pal
cb_debug cb_debug
dw_1 dw_1
end type
global w_main w_main

type variables
private powerobject uo_powerfilter
end variables

on w_main.create
this.shl_powerfilter=create shl_powerfilter
this.cbx_pfsupport=create cbx_pfsupport
this.cb_test1=create cb_test1
this.cb_pal=create cb_pal
this.cb_debug=create cb_debug
this.dw_1=create dw_1
this.Control[]={this.shl_powerfilter,&
this.cbx_pfsupport,&
this.cb_test1,&
this.cb_pal,&
this.cb_debug,&
this.dw_1}
end on

on w_main.destroy
destroy(this.shl_powerfilter)
destroy(this.cbx_pfsupport)
destroy(this.cb_test1)
destroy(this.cb_pal)
destroy(this.cb_debug)
destroy(this.dw_1)
end on

event resize;cbx_pfsupport.y = newheight - cbx_pfsupport.height - 20
shl_powerfilter.y = cbx_pfsupport.y + 8
dw_1.height = newheight - dw_1.y - 20 - cbx_pfsupport.height - 20
dw_1.width = newwidth - dw_1.x *2
end event

event close;if isvalid( uo_powerfilter ) and not isnull( uo_powerfilter ) then
	cbx_pfsupport.checked = FALSE
	cbx_pfsupport.event clicked( )
end if
end event

type shl_powerfilter from statichyperlink within w_main
string tag = "BL;"
integer x = 224
integer y = 1576
integer width = 283
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
string pointer = "HyperLink!"
long textcolor = 134217856
long backcolor = 67108864
string text = "Powerfilter"
boolean focusrectangle = false
string url = "http://powertothebuilder.com/PowerFilter.aspx"
end type

type cbx_pfsupport from checkbox within w_main
string tag = "BL;"
integer x = 32
integer y = 1568
integer width = 1065
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
long textcolor = 16711680
long backcolor = 67108864
string text = "Add Powerfilter support (dynamically)"
end type

event clicked;if NOT checked then
	if isValid( uo_powerfilter ) and not isNull( uo_powerfilter ) then
		CWSetField(uo_powerfilter, "checked",  false )
		uo_powerfilter.TriggerEvent("ue_clicked")
		destroy uo_powerfilter
		setnull( uo_powerfilter )
	end if
	return
end if

typedefinition ltd_cls
ltd_cls = FindClassDefinition("n_cst_powerfilter")
if isvalid( ltd_cls ) and not isnull( ltd_cls ) then
	uo_powerfilter = create using "n_cst_powerfilter"
	if isValid( uo_powerfilter ) and not isNull( uo_powerfilter ) then
		uo_powerfilter.Dynamic of_setdw( dw_1 )
		CWSetField(uo_powerfilter, "checked",  true )
		uo_powerfilter.PostEvent("ue_clicked")
	end if
else
	Environment env
	GetEnvironment(env)
	Messagebox("No powerfilter ?", &
		"1) Follow the link : " + shl_powerfilter.url + "~r~n" + &
		"2) Download the version matching your powerbuilder installation (" +&
		string( env.pbmajorrevision ) + "." + string( env.pbminorrevision ) + "." + string( env.pbfixesrevision ) + "." + string( env.pbbuildnumber ) +").~r~n" +&
		"3) Extract the archive and copy the file powerfilter.pbd into the directory of this project.~r~n" +&
		"~r~nTry again..." &
		)
	checked = false
end if
end event

type cb_test1 from commandbutton within w_main
integer x = 2309
integer y = 36
integer width = 430
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Sample debug"
end type

event clicked;constant string CRLF = "~r~n"
Messagebox( this.Text, 'string ls_expressions[] = { &'+CRLF &
+'~t"datawindow.readonly=yes", &'+CRLF &
+'~t"datawindow.readonly=not sure", &'+CRLF &
+'~t"col_code.dddw.name-typo=dddw_test"}'+CRLF &
+'string ls_debug'+CRLF &
+'long i, c'+CRLF &
+'c= upperbound( ls_expressions[] )'+CRLF &
+'for i = 1 to c'+CRLF &
+'~tls_debug = dw_1.modify( ls_expressions[i] )'+CRLF &
+'~tif ls_debug <> "" then'+CRLF &
+'~t~tstring ls_old_tag'+CRLF &
+'	~t~tls_old_tag = dw_1.tag'+CRLF &
+'~t~tdw_1.tag = ls_expressions[i]~t~t// <-- replace the object tag with the expression to debug'+CRLF &
+'~t~tw_genidwdm_dwdebugger lw_modal'+CRLF &
+'~t~topenwithparm(lw_modal, dw_1 )'+CRLF &
+'~t~tdw_1.tag = ls_old_tag'+CRLF &
+'~tend if'+CRLF &
+'next' + CRLF &
+CRLF+'This code will display two times the debugmachine in order to let you see expression~'s mistakes'+CRLF &
+'This is helpfull in an ancestore object, evently whith some condition like handle(getapplication)=0')
	
string ls_expressions[] = { &
	"datawindow.readonly=yes", &
	"datawindow.readonly=not sure", &
	"col_code.dddw.name-typo=dddw_test"}
string ls_debug
long i, c
c= upperbound( ls_expressions[] )
for i = 1 to c
	ls_debug = dw_1.modify( ls_expressions[i] )
	if ls_debug <> "" then
		string ls_old_tag
		ls_old_tag = dw_1.tag
		dw_1.tag = ls_expressions[i]				// <-- replace the object tag with the expression to debug
		w_genidwdm_dwdebugger lw_modal
		openwithparm(lw_modal, dw_1 )
		dw_1.tag = ls_old_tag
	end if
next

//Another solution is to Instantiate the global w_genidwdm_dwdebugger in order to 
//directly call the "Class Method" 
//E.g.: in the Application open script: 
If IsNull(w_genidwdm_dwdebugger) Or Not Isvalid(w_genidwdm_dwdebugger) then
	w_genidwdm_dwdebugger = create w_genidwdm_dwdebugger
end if
//Then, here we could write :
w_genidwdm_dwdebugger.showdebugmsg( true )
//w_genidwdm_dwdebugger lw_tmp
//lw_tmp = create w_genidwdm_dwdebugger
//lw_tmp.showdebugmsg( true )
//destroy(lw_tmp)
end event

type cb_pal from commandbutton within w_main
integer x = 594
integer y = 24
integer width = 571
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string pointer = "HyperLink!"
string text = "Debug DW (palette)"
end type

event clicked;w_genidwdm_dwexpr_palette_dbg lw_pal
openwithparm( lw_pal, dw_1 )
end event

type cb_debug from commandbutton within w_main
integer x = 32
integer y = 24
integer width = 553
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string pointer = "HyperLink!"
string text = "Debug DW (modal)"
end type

event clicked;w_genidwdm_dwdebugger lw_modal

openwithparm(lw_modal, dw_1 )
end event

type dw_1 from datawindow within w_main
event ue_leftbutton_up pbm_dwnlbuttonup
integer x = 37
integer y = 164
integer width = 2688
integer height = 1384
integer taborder = 10
string title = "none"
string dataobject = "dw_template_1"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
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

event resize;if isvalid(uo_powerfilter) and not isnull( uo_powerfilter ) then
	uo_powerfilter.TriggerEvent("ue_positionbuttons")
end if
end event

