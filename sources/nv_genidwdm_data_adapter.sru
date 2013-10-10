HA$PBExportHeader$nv_genidwdm_data_adapter.sru
forward
global type nv_genidwdm_data_adapter from nonvisualobject
end type
end forward

global type nv_genidwdm_data_adapter from nonvisualobject
end type
global nv_genidwdm_data_adapter nv_genidwdm_data_adapter

type variables
datawindow idw_obj
datastore ids_obj
datawindowchild idwc_obj
string is_datasource = "datawindow"

string tag, dataobject
end variables

forward prototypes
public subroutine of_initialize (datastore ads_obj)
public subroutine of_initialize (datawindow adw_obj)
public subroutine of_initialize (datawindowchild adwc_obj)
public function powerobject of_get ()
public function string modify (string as_expression)
public function string describe (string as_expression)
public subroutine of_initialize (datawindowchild adwc_obj, string as_tag, string as_dataobject)
public subroutine of_initialize (datastore ads_obj, string as_tag)
public function long rowcount ()
public function long filteredcount ()
public function long deletedcount ()
public function long sharedata (datawindow adw_trg)
public function long rowscopy (long al_startrow, long al_endrow, dwbuffer adwb_buffer, datawindow adw_buffer, long al_rowbefore, dwbuffer adwb_buffer_trg)
public function long setsort (string as_expression)
public function long sort ()
public function long filter ()
public function long setfilter (string as_expression)
public function long getchild (string as_column, ref datawindowchild adwc_child)
public function integer create (string as_syntax, ref string as_error)
public function integer getchanges (ref blob ab_changes)
public function integer setchanges (ref blob ab_changes)
public function integer setposition (string controlname, ref string band, boolean brinttotop)
public function integer importfile (string as_filename)
public function integer importfile (saveastype aenum_type, string as_filename)
public function integer getfullstate (ref blob ab_changes)
public function integer setfullstate (ref blob ab_changes)
end prototypes

public subroutine of_initialize (datastore ads_obj);of_initialize( ads_obj, "")
end subroutine

public subroutine of_initialize (datawindow adw_obj);//setnull( idwc_obj )
setnull( ids_obj )
idw_obj = adw_obj
is_datasource = "datawindow"
THIS.tag = idw_obj.tag
THIS.dataobject = idw_obj.dataobject
end subroutine

public subroutine of_initialize (datawindowchild adwc_obj);of_initialize( adwc_obj, "", "")
end subroutine

public function powerobject of_get ();choose case is_datasource
	case "datawindow"		;	return idw_obj
	case "datastore"			; 	return ids_obj
	case "datawindowchild"	;	return idwc_obj
end choose

return idw_obj
end function

public function string modify (string as_expression);choose case is_datasource
	case "datawindow"		;	return idw_obj.modify( as_expression )
	case "datastore"			; 	return ids_obj.modify( as_expression )
	case "datawindowchild"	;	return idwc_obj.modify( as_expression )
end choose

return ""
end function

public function string describe (string as_expression);choose case is_datasource
	case "datawindow"		;	return idw_obj.describe( as_expression )
	case "datastore"			; 	return ids_obj.describe( as_expression )
	case "datawindowchild"	;	return idwc_obj.describe( as_expression )
end choose

return ""
end function

public subroutine of_initialize (datawindowchild adwc_obj, string as_tag, string as_dataobject);setnull( idw_obj )
setnull( ids_obj )
idwc_obj = adwc_obj
is_datasource = "datawindowchild"
THIS.tag = as_tag			// datawindowchild doesn't have a ".tag" property
THIS.dataobject = as_dataobject	// datawindowchild doesn't have a ".dataobject" property
end subroutine

public subroutine of_initialize (datastore ads_obj, string as_tag);setnull( idw_obj )
//setnull( idwc_obj )
ids_obj = ads_obj
is_datasource = "datastore"
THIS.tag = as_tag	//Datastore doesn't have a ".tag" property
THIS.dataobject = ids_obj.dataobject
end subroutine

public function long rowcount ();choose case is_datasource
	case "datawindow"		;	return idw_obj.rowcount(  )
	case "datastore"			; 	return ids_obj.rowcount(  )
	case "datawindowchild"	;	return idwc_obj.rowcount(  )
end choose

return 0
end function

public function long filteredcount ();choose case is_datasource
	case "datawindow"		;	return idw_obj.filteredcount(  )
	case "datastore"			; 	return ids_obj.filteredcount(  )
	case "datawindowchild"	;	return idwc_obj.filteredcount(  )
end choose

return 0
end function

public function long deletedcount ();choose case is_datasource
	case "datawindow"		;	return idw_obj.deletedcount(  )
	case "datastore"			; 	return ids_obj.deletedcount(  )
	case "datawindowchild"	;	return idwc_obj.deletedcount(  )
end choose

return 0
end function

public function long sharedata (datawindow adw_trg);choose case is_datasource
	case "datawindow"		;	return idw_obj.sharedata( adw_trg  )
	case "datastore"			; 	return ids_obj.sharedata( adw_trg )
	case "datawindowchild"	;	return idwc_obj.sharedata( adw_trg )
end choose

return 0
end function

public function long rowscopy (long al_startrow, long al_endrow, dwbuffer adwb_buffer, datawindow adw_buffer, long al_rowbefore, dwbuffer adwb_buffer_trg);choose case is_datasource
	case "datawindow"		;	return idw_obj.RowsCopy ( al_startrow, al_endrow, adwb_buffer, adw_buffer, al_rowbefore, adwb_buffer_trg)
	case "datastore"			; 	return ids_obj.RowsCopy ( al_startrow, al_endrow, adwb_buffer, adw_buffer, al_rowbefore, adwb_buffer_trg)
	case "datawindowchild"	;	return idwc_obj.RowsCopy ( al_startrow, al_endrow, adwb_buffer, adw_buffer, al_rowbefore, adwb_buffer_trg)
end choose

return 0
end function

public function long setsort (string as_expression);choose case is_datasource
	case "datawindow"		;	return idw_obj.setsort( as_expression )
	case "datastore"			; 	return ids_obj.setsort( as_expression )
	case "datawindowchild"	;	return idwc_obj.setsort( as_expression )
end choose

return 0
end function

public function long sort ();choose case is_datasource
	case "datawindow"		;	return idw_obj.sort(  )
	case "datastore"			; 	return ids_obj.sort(  )
	case "datawindowchild"	;	return idwc_obj.sort(  )
end choose

return 0
end function

public function long filter ();choose case is_datasource
	case "datawindow"		;	return idw_obj.filter(  )
	case "datastore"			; 	return ids_obj.filter(  )
	case "datawindowchild"	;	return idwc_obj.filter(  )
end choose

return 0
end function

public function long setfilter (string as_expression);choose case is_datasource
	case "datawindow"		;	return idw_obj.setfilter( as_expression )
	case "datastore"			; 	return ids_obj.setfilter( as_expression )
	case "datawindowchild"	;	return idwc_obj.setfilter( as_expression )
end choose

return 0
end function

public function long getchild (string as_column, ref datawindowchild adwc_child);choose case is_datasource
	case "datawindow"		;	return idw_obj.getchild( as_column, adwc_child )
	case "datastore"			; 	return ids_obj.getchild( as_column, adwc_child )
	case "datawindowchild"	;	return idwc_obj.getchild( as_column, adwc_child )
end choose

return 0
end function

public function integer create (string as_syntax, ref string as_error);choose case is_datasource
	case "datawindow"		;	return idw_obj.create( as_syntax, as_error )
	case "datastore"			; 	return ids_obj.create( as_syntax, as_error )
	case "datawindowchild"	;	return -1	/* idwc_obj.describe( as_expression ) */
end choose

return -1
end function

public function integer getchanges (ref blob ab_changes);choose case is_datasource
	case "datawindow"		;	return idw_obj.getchanges( ab_changes )
	case "datastore"			; 	return ids_obj.getchanges( ab_changes )
	case "datawindowchild"	;	return idwc_obj.getchanges( ab_changes )
end choose

return -1
end function

public function integer setchanges (ref blob ab_changes);choose case is_datasource
	case "datawindow"		;	return idw_obj.setchanges( ab_changes )
	case "datastore"			; 	return ids_obj.setchanges( ab_changes )
	case "datawindowchild"	;	return idwc_obj.setchanges( ab_changes )
end choose

return -1
end function

public function integer setposition (string controlname, ref string band, boolean brinttotop);choose case is_datasource
	case "datawindow"		;	return idw_obj.setPosition( controlname, band, brinttotop)
	case "datastore"			; 	return ids_obj.setPosition( controlname, band, brinttotop)
	case "datawindowchild"	;	return idwc_obj.setPosition( controlname, band, brinttotop)
end choose

return -1
end function

public function integer importfile (string as_filename);choose case is_datasource
	case "datawindow"		;	return idw_obj.importfile( as_filename )
	case "datastore"			; 	return ids_obj.importfile( as_filename )
	case "datawindowchild"	;	return idwc_obj.importfile( as_filename )	//-1	/* idwc_obj.describe( as_expression ) */
end choose

return -1
end function

public function integer importfile (saveastype aenum_type, string as_filename);choose case is_datasource
	case "datawindow"		;	return idw_obj.importfile( aenum_type, as_filename )
	case "datastore"			; 	return ids_obj.importfile( aenum_type, as_filename )
	case "datawindowchild"	;	return idwc_obj.importfile( aenum_type, as_filename )	//-1	/* idwc_obj.describe( as_expression ) */
end choose

return -1
end function

public function integer getfullstate (ref blob ab_changes);choose case is_datasource
	case "datawindow"		;	return idw_obj.GetFullState( ab_changes )
	case "datastore"			; 	return ids_obj.GetFullState( ab_changes )
	case "datawindowchild"	;	//return idwc_obj.GetFullState( ab_changes )
		Messagebox("GetFullState", "Not implemented on 'datawindowchild' !")
		/*
		//	TODO: test something like that:
		datastore lds_tmp
		lds_tmp = create datastore
		lds_tmp.object.datawindow.syntax = idwc_obj.Describe("datawindow.syntax")
		lds_tmp.object.datawindow.syntax.data = idwc_obj.Describe("datawindow.syntax.data")
		int r
		r = lds_tmp.GetFullState( ab_changes )
		destroy lds_tmp
		return r
		*/
end choose

return -1
end function

public function integer setfullstate (ref blob ab_changes);choose case is_datasource
	case "datawindow"		;	return idw_obj.setFullState( ab_changes )
	case "datastore"			; 	return ids_obj.setFullState( ab_changes )
	case "datawindowchild"	;	//return idwc_obj.setFullState( ab_changes )
		Messagebox("setFullState", "Not implemented on 'datawindowchild'!")
		/*
		//	TODO: test something like that:
		int r
		datastore lds_tmp
		lds_tmp = create datastore
		r = lds_tmp.setFullState( ab_changes )
		idwc_obj.Modify("datawindow.syntax='" + fastreplaceall( lds_tmp.object.datawindow.syntax, "'", "~~'" ) + "'" )
		idwc_obj.Modify("datawindow.syntax.data='" + fastreplaceall( lds_tmp.object.datawindow.syntax.data, "'", "~~'" ) + "'" )
		destroy lds_tmp
		return r
		*/
end choose

return -1
end function

on nv_genidwdm_data_adapter.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nv_genidwdm_data_adapter.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

