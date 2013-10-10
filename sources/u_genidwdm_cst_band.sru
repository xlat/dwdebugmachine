HA$PBExportHeader$u_genidwdm_cst_band.sru
forward
global type u_genidwdm_cst_band from userobject
end type
type pb_import from picturebutton within u_genidwdm_cst_band
end type
type cbx_stopdebug from checkbox within u_genidwdm_cst_band
end type
end forward

global type u_genidwdm_cst_band from userobject
string tag = "BLR;"
integer width = 3250
integer height = 100
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
pb_import pb_import
cbx_stopdebug cbx_stopdebug
end type
global u_genidwdm_cst_band u_genidwdm_cst_band

type variables
w_genidwdm_dwdebugger iw_parent
end variables

forward prototypes
public subroutine of_initialize_parent ()
end prototypes

public subroutine of_initialize_parent ();iw_parent = getParent()
if isvalid(iw_parent) and not isnull(iw_parent) then
	cbx_stopdebug.checked = NOT iw_parent.showingdebugmsg( )
end if

end subroutine

event constructor;this.Move( 837, 2252 )

post of_initialize_parent()
end event

on u_genidwdm_cst_band.create
this.pb_import=create pb_import
this.cbx_stopdebug=create cbx_stopdebug
this.Control[]={this.pb_import,&
this.cbx_stopdebug}
end on

on u_genidwdm_cst_band.destroy
destroy(this.pb_import)
destroy(this.cbx_stopdebug)
end on

type pb_import from picturebutton within u_genidwdm_cst_band
integer x = 475
integer width = 101
integer height = 88
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean originalsize = true
string picturename = "Import5!"
alignment htextalign = left!
boolean map3dcolors = true
string powertiptext = "Import data"
end type

event clicked;string ls_filename, ls_dir, ls_path
ls_dir = GetCurrentDirectory()
ls_path = ls_dir
if GetFileOpenName( "Select a file to import", ls_path, ls_filename) = 1 then 
	iw_parent = getParent()
	if IsValid(iw_parent) And Not IsNull( iw_parent ) then
		saveastype filetype = Text!
		//Text!	CSV!	XML!	DBase2!	DBase3!
		if match( ls_filename, ".[xX][mM][lL]$" ) then
			filetype = XML!
		elseif match( ls_filename, ".[cC][sS][vV]$" ) then
			filetype = CSV!
		end if
		int res
		//I suspect the w_command event in w_genidwdm_dwdebugger to trap some event avoiding to
		//let import process continue...
		string ls_before		
		ls_before = iw_parent.idw_obj.describe("datawindow.NoUserPrompt")
		iw_parent.idw_obj.modify("datawindow.NoUserPrompt='No'")
		res = iw_parent.idw_obj.ImportFile( filetype, ls_path )
		iw_parent.idw_obj.modify("datawindow.NoUserPrompt='"+ls_before+"'")
		if isNull( res ) or res < 0 then
			Messagebox( "ImportFile", "Return code " + string( res, "[general]" ) + " for " + ls_path, Exclamation! )
		else
			Messagebox( "ImportFile", string( res ) + " row(s) imported from " + ls_path, Information! )
		end if
	end if
end if

ChangeDirectory( ls_dir )
end event

type cbx_stopdebug from checkbox within u_genidwdm_cst_band
integer width = 453
integer height = 80
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Stop debugging"
end type

event clicked;if isvalid(iw_parent) and not isnull(iw_parent) then
	iw_parent.showdebugmsg( NOT this.checked )
end if
end event

