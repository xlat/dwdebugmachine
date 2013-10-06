$PBExportHeader$w_genidwdm_response_ancestor.srw
$PBExportComments$Response ancestor (author=MK)(state=GAMMA)
forward
global type w_genidwdm_response_ancestor from window
end type
type st_point from structure within w_genidwdm_response_ancestor
end type
type st_minmaxinfo from structure within w_genidwdm_response_ancestor
end type
type st_rect from structure within w_genidwdm_response_ancestor
end type
end forward

type st_point from structure
long lx
long ly
end type

type st_minmaxinfo from structure
st_point ptreserverd
st_point ptmaxsize
st_point ptmaxposition
st_point ptmintracksize
st_point ptmaxtracksize
end type

type st_rect from structure
	long		bottom
	long		left
	long		right
	long		top
end type

global type w_genidwdm_response_ancestor from window
integer x = 832
integer y = 360
integer width = 2194
integer height = 1540
boolean titlebar = true
string title = "None"
windowtype windowtype = response!
long backcolor = 79741120
boolean toolbarvisible = false
event ue_getminmaxinfo pbm_getminmaxinfo
end type
global w_genidwdm_response_ancestor w_genidwdm_response_ancestor

type prototypes
FUNCTION long GetWindowLong(long hwnd,long nIndex) LIBRARY "user32.dll" ALIAS FOR "GetWindowLongW"
FUNCTION long SetWindowLong(long hwnd,long nIndex,long dwNewLong) LIBRARY "user32.dll" ALIAS FOR "SetWindowLongW"
FUNCTION ulong GetSystemMenu(ulong hWnd, BOOLEAN bRevert)  Library "USER32"
FUNCTION boolean DeleteMenu( ulong hMenu, uint uPosition, uint uFlags ) LIBRARY "user32.dll"
FUNCTION boolean DrawMenuBar( ulong hWnd ) LIBRARY "user32.dll"
subroutine GetMinMaxInfo ( ref st_minmaxinfo d, long s, long l ) library 'kernel32.dll' alias for RtlMoveMemory 
subroutine SetMinMaxInfo ( long d, st_minmaxinfo s, long l ) library 'kernel32.dll' alias for RtlMoveMemory 
FUNCTION boolean SetWindowPos(long hwnd, ulong insertafterhwnd,long ax, long ay, long cx, long cy, ulong uflags) LIBRARY "user32.dll"
function long GetSystemMetrics (long nIndex) library "user32.dll"
function boolean GetClientRect(ulong hwnd,ref st_rect lpRect) library "user32.dll"
function boolean GetWindowRect(ulong hwnd,ref st_rect lpRect) library "user32.dll"
subroutine outputdebugstring(string al_data) library "kernel32.dll" alias for "OutputDebugStringW;Unicode"
//clipboard related functions
function boolean OpenClipboard( ulong hWndNewOwner) library "user32.dll"
function boolean CloseClipboard( ) library "user32.dll"
function ulong GetClipboardData(UINT uFormat ) library "user32.dll"
function ulong SetClipboardData(UINT uFormat, ulong hMem ) library "user32.dll"
function UINT RegisterClipboardFormat(string lpszFormat ) library "user32.dll" alias for "RegisterClipboardFormatW;Unicode"
function blob GetClipboardDataBlob(UINT uFormat ) library "user32.dll"
function ulong SetClipboardDataBlob(UINT uFormat, ref blob hMem ) library "user32.dll"
function boolean EmptyClipboard() library "user32.dll"
//memory related functions
function ulong GlobalAlloc(UINT uFlags,ulong dwBytes) library "kernel32.dll"
function ulong GlobalLock(ulong hMem) library "kernel32.dll"
function boolean GlobalUnlock(ulong hMem) library "kernel32.dll"
function ulong GlobalFree(ulong hMem) library "kernel32.dll"
function ulong GlobalSize(ulong hMem ) library "kernel32.dll"
subroutine CopyMemory(ulong Destination,ulong Source,ulong Length ) library "kernel32.dll" alias for "RtlMoveMemory"
subroutine CopyMemoryFromBlob(ulong Destination,ref blob Source,ulong Length ) library "kernel32.dll" alias for "RtlMoveMemory"
subroutine CopyMemoryIntoBlob(ref blob Destination,ulong Source,ulong Length ) library "kernel32.dll" alias for "RtlMoveMemory"
end prototypes

type variables
protected:
boolean ib_resizable = false
long il_minwidth
long il_minheight
long il_maxwidth
long il_maxheight
boolean ib_resize_handler = false
boolean ib_resizable_auto_min = false
boolean ib_always_on_top = false
nv_genidwdm_auto_resizer inv_resizer

constant ulong WS_EX_TOPMOST = 8	//0x00000008L
constant ulong HWND_BOTTOM = 1
constant ulong HWND_TOP = 0
constant ulong HWND_TOPMOST = -1
constant ulong HWND_NOTOPMOST = 4294967294 //-2
constant long SWP_NOMOVE = 2
constant long SWP_NOACTIVATE = 16
constant long SWP_NOSIZE = 1
constant long GWL_EXSTYLE = -20	//
end variables

forward prototypes
public subroutine of_makeresizable ()
public subroutine alwaysontop (boolean ab_topmost)
public function window thiswindow ()
public function integer resize (integer w, integer h)
public function long getwindowrectheight (powerobject apo_obj)
public function long getwindowrectwidth (powerobject apo_obj)
end prototypes

event ue_getminmaxinfo;st_minmaxinfo lstr_minmaxinfo
Environment le_env

if ib_resizable then
	GetEnvironment(le_env)
	
	// copy the data to local structure
	GetMinMaxInfo(lstr_minmaxinfo, minmaxinfo, 40)
	
	// set the minimum size for our window
	lstr_minmaxinfo.ptMinTrackSize.lx = il_minwidth
	lstr_minmaxinfo.ptMinTrackSize.ly = il_minheight
	
	// set the maximum size for our window
	if il_maxwidth > 0 then
		lstr_minmaxinfo.ptMaxTrackSize.lx = il_maxwidth
	else
		lstr_minmaxinfo.ptMaxTrackSize.lx = le_env.ScreenWidth
	end if
	if il_maxheight > 0 then
		lstr_minmaxinfo.ptMaxTrackSize.ly = il_maxheight
	else
		lstr_minmaxinfo.ptMaxTrackSize.ly = le_env.ScreenHeight
	end if
	
	// copy the structure back into memory
	SetMinMaxInfo(minmaxinfo, lstr_minmaxinfo, 40)
end if

// important: must return 0
Return 0

end event

public subroutine of_makeresizable ();
//resizable response window; picked from Kodigo

ulong lul_style, lul_hMenu, lul_hWnd
CONSTANT long GWL_STYLE           = (-16)
CONSTANT unsignedlong WS_THICKFRAME       = 262144 //00040000L
CONSTANT unsignedlong WS_SYSMENU          = 524288 //00080000L
CONSTANT uint SC_MINIMIZE     = 61472
CONSTANT uint SC_MAXIMIZE     = 61488
CONSTANT uint SC_CLOSE        = 61536
CONSTANT uint SC_RESTORE      = 61728
CONSTANT uint MF_BYCOMMAND = 0

//this.controlmenu = false

lul_hwnd = handle(this)
lul_style = getwindowlong(lul_hwnd, GWL_STYLE)

if lul_style <> 0 then
	if setwindowlong(lul_hwnd, GWL_STYLE, lul_style + WS_THICKFRAME + WS_SYSMENU) <> 0 then
		lul_hMenu = getsystemmenu(lul_hwnd, false)
		if lul_hmenu > 0 then
			// removing the  menu items from the system menu
			DeleteMenu( lul_hMenu, SC_MINIMIZE , MF_BYCOMMAND)
			DeleteMenu( lul_hMenu, SC_MAXIMIZE , MF_BYCOMMAND)
			DeleteMenu( lul_hMenu, SC_RESTORE  , MF_BYCOMMAND)
			// Force immediate menu update
			DrawMenuBar( lul_hWnd )				 
		end if
	end if 
end if

end subroutine

public subroutine alwaysontop (boolean ab_topmost);if ab_topmost then
	setwindowpos( Handle(this), HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE)	
else
	setwindowpos( Handle(this), HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE)
end if
end subroutine

public function window thiswindow ();return this
end function

public function integer resize (integer w, integer h);if ib_resizable_auto_min then
	int mw, mh
	mw = PixelsToUnits(il_minwidth, XPixelsToUnits!)
	mh = PixelsToUnits(il_minheight , YPixelsToUnits!)	
	if w < mw then w = mw
	if h < mh then h = mh
end if

return super::resize( w, h )
end function

public function long getwindowrectheight (powerobject apo_obj);// returns the window bounding rect width (in PB units)

long ll_pbunits
st_rect rect

getwindowrect( handle(apo_obj), rect)
ll_pbunits = PixelsToUnits(rect.right - rect.left , XPixelsToUnits!)

return ll_pbunits
end function

public function long getwindowrectwidth (powerobject apo_obj);// returns the window bounding rect width (in PB units)

long ll_pbunits
st_rect rect

getwindowrect( handle(apo_obj), rect)
ll_pbunits = PixelsToUnits(rect.right - rect.left , XPixelsToUnits!)

return ll_pbunits

end function

on w_genidwdm_response_ancestor.create
end on

on w_genidwdm_response_ancestor.destroy
end on

event open;//sizing handler
if ib_resize_handler then
	inv_resizer = create nv_genidwdm_auto_resizer
	inv_resizer.initialize( this, this )
end if
	
if ib_resizable then
	this.controlmenu = false
	if ib_resizable_auto_min then
		il_minwidth = unitstopixels(getwindowrectwidth(this), xunitstopixels!)
		il_minheight = unitstopixels(getwindowrectheight(this), yunitstopixels!)
	end if	
	this.post of_makeresizable()
end if

if ib_always_on_top then
	alwaysontop( true )
end if
//hack ? la fenetre ne se dessine pas correctement sans ça...
setredraw( false )
setredraw( true )

end event

event resize;
if ib_resize_handler then
	if isvalid( inv_resizer ) and not isnull( inv_resizer ) then
		this.setredraw( false )
		inv_resizer.event resize( sizetype, width, height )
		this.setredraw( true )
	end if
end if

end event

event close;
if ib_resize_handler then
	if isvalid( inv_resizer ) then destroy inv_resizer
end if

end event

