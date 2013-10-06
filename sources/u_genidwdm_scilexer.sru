$PBExportHeader$u_genidwdm_scilexer.sru
$PBExportComments$Wrapper for the Scintilla editor component
forward
global type u_genidwdm_scilexer from userobject
end type
type scnotification from structure within u_genidwdm_scilexer
end type
end forward

type scnotification from structure
	long		hwndfrom
	long		idfrom
	long		code
	long		position
	long		ch
	long		modifiers
	long		modificationtype 
	long		text
	long		length
	long		linesadded
	long		message
	long		wparam
	long		lparam
	long		line
	long		foldlevelnow
	long		foldlevelprev
	long		margin
	long		listtype
	long		x
	long		y
end type

global type u_genidwdm_scilexer from userobject
integer width = 1335
integer height = 920
boolean border = true
userobjects objecttype = externalvisual!
long backcolor = 67108864
string classname = "Scintilla"
string libraryname = "SciLexer.dll"
borderstyle borderstyle = stylelowered!
event resize pbm_size
event losefocus pbm_enkillfocus
event getfocus pbm_ensetfocus
event scn_marginclick ( long modifiers,  long position,  long margin )
event scn_updateui ( )
event editchanged pbm_enchange
event scn_savepoint ( boolean reached )
event wm_notify pbm_notify
event wm_char pbm_char
event scn_userlistselection ( unsignedlong listtype,  string selectedtext )
event scn_autocselection ( long startposition,  string selectedtext )
event scn_autoccancelled ( )
event scn_dwellstart ( long position,  long xpos,  long ypos )
event scn_dwellend ( long position,  long xpos,  long ypos )
event scn_modifyattemptro ( )
event scn_zoom ( )
event scn_doubleclick ( long position,  long line )
event scn_macrorecord ( long msg,  unsignedlong wparam,  long lparam )
event scn_calltipclick ( long position )
event scn_hotspotclick ( long position,  long modifiers )
event scn_hotspotdoubleclick ( long position,  long modifiers )
event scn_indicatorclick ( long position,  long modifiers )
event scn_indicatorrelease ( long position,  long modifiers )
end type
global u_genidwdm_scilexer u_genidwdm_scilexer

type prototypes
Function ulong GetSysColor ( &
	integer nIndex &
	) Library "user32.dll"

Function long SendString ( &
	long hWnd, &
	uint Msg, &
	long wParam, &
	Ref string lParam &
	) Library "user32.dll" Alias For "SendMessageA;Ansi"

Function long SendString ( &
	long hWnd, &
	uint Msg, &
	string wParam, &
	Ref string lParam &
	) Library "user32.dll" Alias For "SendMessageA;Ansi"

Function long SendBlob ( &
	long hWnd, &
	uint Msg, &
	long wParam, &
	Ref blob lParam &
	) Library "user32.dll" Alias For "SendMessageA;Ansi"

Function long SendBlob ( &
	long hWnd, &
	uint Msg, &
	blob wParam, &
	Ref blob lParam &
	) Library "user32.dll" Alias For "SendMessageA;Ansi"

Subroutine CopyNotification ( &
	Ref scNotification Destination, &
	ulong Source, &
	long Length &
	) Library  "kernel32.dll" Alias For "RtlMoveMemory"

Function boolean OpenClipboard ( &
	ulong hWndNewOwner &
	) Library "user32.dll"

Function boolean EmptyClipboard ( &
	) Library "user32.dll"

Function boolean CloseClipboard ( &
	) Library "user32.dll"

Subroutine CopyMemory ( &
	Ref blob Destination, &
	long Source, &
	long Length &
	) Library "kernel32.dll" Alias For "RtlMoveMemory"

Subroutine OutputDebugString (String lpszOutputString)  LIBRARY "kernel32.dll" ALIAS FOR "OutputDebugStringA;ansi";

end prototypes

type variables
Encoding iEncoding
Long il_margincolor = RGB(185,210,248)
Long il_selectcolor = RGB(216,228,248)
Long il_foldforecolor = -1
Long il_foldbackcolor = 0
Long il_foldlinecolor = 0
Long il_hWindow
Boolean ib_shownumbers
Boolean ib_indentguides
Boolean ib_readonly = false
String is_commentchar = "//"
String is_FaceName
Integer iTextSize
integer ii_tab_width = 4
Boolean iBold
Boolean iItalic
Boolean ib_usepopup = True
Boolean ib_highlight_matching_braces = false
boolean ib_verbose_debug = false

Constant Long MARKER_NUM  = 1
Constant Long MARKER_MASK = 2
Constant Long WM_KEYDOWN = 256

constant int EDGE_NONE = 0
constant int EDGE_LINE = 1
constant int EDGE_BACKGROUND = 2
constant int SC_MARGIN_NUMBER = 1

// Scintilla Editor Constants
Constant Long SCI_START								= 2000
Constant Long SCI_ADDTEXT							= 2001
Constant Long SCI_ADDSTYLEDTEXT					= 2002
Constant Long SCI_INSERTTEXT						= 2003
Constant Long SCI_CLEARALL							= 2004
Constant Long SCI_CLEARDOCUMENTSTYLE			= 2005
Constant Long SCI_GETLENGTH						= 2006
Constant Long SCI_GETCHARAT						= 2007
Constant Long SCI_GETCURRENTPOS					= 2008
Constant Long SCI_GETANCHOR						= 2009
Constant Long SCI_GETSTYLEAT						= 2010
Constant Long SCI_REDO								= 2011
Constant Long SCI_SETUNDOCOLLECTION				= 2012
Constant Long SCI_SELECTALL						= 2013
Constant Long SCI_SETSAVEPOINT					= 2014
Constant Long SCI_GETSTYLEDTEXT					= 2015
Constant Long SCI_CANREDO							= 2016
Constant Long SCI_MARKERLINEFROMHANDLE			= 2017
Constant Long SCI_MARKERDELETEHANDLE			= 2018
Constant Long SCI_GETUNDOCOLLECTION				= 2019
Constant Long SCI_GETVIEWWS						= 2020
Constant Long SCI_SETVIEWWS						= 2021
Constant Long SCI_POSITIONFROMPOINT				= 2022
Constant Long SCI_POSITIONFROMPOINTCLOSE		= 2023
Constant Long SCI_GOTOLINE							= 2024
Constant Long SCI_GOTOPOS							= 2025
Constant Long SCI_SETANCHOR						= 2026
Constant Long SCI_GETCURLINE						= 2027
Constant Long SCI_GETENDSTYLED					= 2028
Constant Long SCI_CONVERTEOLS						= 2029
Constant Long SCI_GETEOLMODE						= 2030
Constant Long SCI_SETEOLMODE						= 2031
Constant Long SCI_STARTSTYLING					= 2032
Constant Long SCI_SETSTYLING						= 2033
Constant Long SCI_GETBUFFEREDDRAW				= 2034
Constant Long SCI_SETBUFFEREDDRAW				= 2035
Constant Long SCI_SETTABWIDTH						= 2036
Constant Long SCI_SETCODEPAGE						= 2037
Constant Long SCI_SETUSEPALETTE					= 2039
Constant Long SCI_MARKERDEFINE					= 2040
Constant Long SCI_MARKERSETFORE					= 2041
Constant Long SCI_MARKERSETBACK					= 2042
Constant Long SCI_MARKERADD						= 2043
Constant Long SCI_MARKERDELETE					= 2044
Constant Long SCI_MARKERDELETEALL				= 2045
Constant Long SCI_MARKERGET						= 2046
Constant Long SCI_MARKERNEXT						= 2047
Constant Long SCI_MARKERPREVIOUS					= 2048
Constant Long SCI_MARKERDEFINEPIXMAP			= 2049
Constant Long SCI_STYLECLEARALL					= 2050
Constant Long SCI_STYLESETFORE					= 2051
Constant Long SCI_STYLESETBACK					= 2052
Constant Long SCI_STYLESETBOLD					= 2053
Constant Long SCI_STYLESETITALIC					= 2054
Constant Long SCI_STYLESETSIZE					= 2055
Constant Long SCI_STYLESETFONT					= 2056
Constant Long SCI_STYLESETEOLFILLED				= 2057
Constant Long SCI_STYLERESETDEFAULT				= 2058
Constant Long SCI_STYLESETUNDERLINE				= 2059
Constant Long SCI_STYLESETCASE					= 2060
Constant Long SCI_STYLESETCHARACTERSET			= 2066
Constant Long SCI_SETSELFORE						= 2067
Constant Long SCI_SETSELBACK						= 2068
Constant Long SCI_SETCARETFORE					= 2069
Constant Long SCI_ASSIGNCMDKEY					= 2070
Constant Long SCI_CLEARCMDKEY						= 2071
Constant Long SCI_CLEARALLCMDKEYS				= 2072
Constant Long SCI_SETSTYLINGEX					= 2073
Constant Long SCI_STYLESETVISIBLE				= 2074
Constant Long SCI_GETCARETPERIOD					= 2075
Constant Long SCI_SETCARETPERIOD					= 2076
Constant Long SCI_SETWORDCHARS					= 2077
Constant Long SCI_BEGINUNDOACTION				= 2078
Constant Long SCI_ENDUNDOACTION					= 2079
Constant Long SCI_INDICSETSTYLE					= 2080
Constant Long SCI_INDICGETSTYLE					= 2081
Constant Long SCI_INDICSETFORE					= 2082
Constant Long SCI_INDICGETFORE					= 2083
Constant Long SCI_SETWHITESPACEFORE				= 2084
Constant Long SCI_SETWHITESPACEBACK				= 2085
Constant Long SCI_SETSTYLEBITS					= 2090
Constant Long SCI_GETSTYLEBITS					= 2091
Constant Long SCI_SETLINESTATE					= 2092
Constant Long SCI_GETLINESTATE					= 2093
Constant Long SCI_GETMAXLINESTATE				= 2094
Constant Long SCI_GETCARETLINEVISIBLE			= 2095
Constant Long SCI_SETCARETLINEVISIBLE			= 2096
Constant Long SCI_GETCARETLINEBACK				= 2097
Constant Long SCI_SETCARETLINEBACK				= 2098
Constant Long SCI_STYLESETCHANGEABLE			= 2099
Constant Long SCI_AUTOCSHOW						= 2100
Constant Long SCI_AUTOCCANCEL						= 2101
Constant Long SCI_AUTOCACTIVE						= 2102
Constant Long SCI_AUTOCPOSSTART					= 2103
Constant Long SCI_AUTOCCOMPLETE					= 2104
Constant Long SCI_AUTOCSTOPS						= 2105
Constant Long SCI_AUTOCSETSEPARATOR				= 2106
Constant Long SCI_AUTOCGETSEPARATOR				= 2107
Constant Long SCI_AUTOCSELECT						= 2108
Constant Long SCI_AUTOCSETCANCELATSTART		= 2110
Constant Long SCI_AUTOCGETCANCELATSTART		= 2111
Constant Long SCI_AUTOCSETFILLUPS				= 2112
Constant Long SCI_AUTOCSETCHOOSESINGLE			= 2113
Constant Long SCI_AUTOCGETCHOOSESINGLE			= 2114
Constant Long SCI_AUTOCSETIGNORECASE			= 2115
Constant Long SCI_AUTOCGETIGNORECASE			= 2116
Constant Long SCI_USERLISTSHOW					= 2117
Constant Long SCI_AUTOCSETAUTOHIDE				= 2118
Constant Long SCI_AUTOCGETAUTOHIDE				= 2119
Constant Long SCI_GETTABWIDTH						= 2121
Constant Long SCI_SETINDENT						= 2122
Constant Long SCI_GETINDENT						= 2123
Constant Long SCI_SETUSETABS						= 2124
Constant Long SCI_GETUSETABS						= 2125
Constant Long SCI_SETLINEINDENTATION			= 2126
Constant Long SCI_GETLINEINDENTATION			= 2127
Constant Long SCI_GETLINEINDENTPOSITION		= 2128
Constant Long SCI_GETCOLUMN						= 2129
Constant Long SCI_SETHSCROLLBAR					= 2130
Constant Long SCI_GETHSCROLLBAR					= 2131
Constant Long SCI_SETINDENTATIONGUIDES			= 2132
Constant Long SCI_GETINDENTATIONGUIDES			= 2133
Constant Long SCI_SETHIGHLIGHTGUIDE				= 2134
Constant Long SCI_GETHIGHLIGHTGUIDE				= 2135
Constant Long SCI_GETLINEENDPOSITION			= 2136
Constant Long SCI_GETCODEPAGE						= 2137
Constant Long SCI_GETCARETFORE					= 2138
Constant Long SCI_GETUSEPALETTE					= 2139
Constant Long SCI_GETREADONLY						= 2140
Constant Long SCI_SETCURRENTPOS					= 2141
Constant Long SCI_SETSELECTIONSTART				= 2142
Constant Long SCI_GETSELECTIONSTART				= 2143
Constant Long SCI_SETSELECTIONEND				= 2144
Constant Long SCI_GETSELECTIONEND				= 2145
Constant Long SCI_SETPRINTMAGNIFICATION		= 2146
Constant Long SCI_GETPRINTMAGNIFICATION		= 2147
Constant Long SCI_SETPRINTCOLOURMODE			= 2148
Constant Long SCI_GETPRINTCOLOURMODE			= 2149
Constant Long SCI_FINDTEXT							= 2150
Constant Long SCI_FORMATRANGE						= 2151
Constant Long SCI_GETFIRSTVISIBLELINE			= 2152
Constant Long SCI_GETLINE							= 2153
Constant Long SCI_GETLINECOUNT					= 2154
Constant Long SCI_SETMARGINLEFT					= 2155
Constant Long SCI_GETMARGINLEFT					= 2156
Constant Long SCI_SETMARGINRIGHT					= 2157
Constant Long SCI_GETMARGINRIGHT					= 2158
Constant Long SCI_GETMODIFY						= 2159
Constant Long SCI_SETSEL							= 2160
Constant Long SCI_GETSELTEXT						= 2161
Constant Long SCI_GETTEXTRANGE					= 2162
Constant Long SCI_HIDESELECTION					= 2163
Constant Long SCI_POINTXFROMPOSITION			= 2164
Constant Long SCI_POINTYFROMPOSITION			= 2165
Constant Long SCI_LINEFROMPOSITION				= 2166
Constant Long SCI_POSITIONFROMLINE				= 2167
Constant Long SCI_LINESCROLL						= 2168
Constant Long SCI_SCROLLCARET						= 2169
Constant Long SCI_REPLACESEL						= 2170
Constant Long SCI_SETREADONLY						= 2171
Constant Long SCI_NULL								= 2172
Constant Long SCI_CANPASTE							= 2173
Constant Long SCI_CANUNDO							= 2174
Constant Long SCI_EMPTYUNDOBUFFER				= 2175
Constant Long SCI_UNDO								= 2176
Constant Long SCI_CUT								= 2177
Constant Long SCI_COPY								= 2178
Constant Long SCI_PASTE								= 2179
Constant Long SCI_CLEAR								= 2180
Constant Long SCI_SETTEXT							= 2181
Constant Long SCI_GETTEXT							= 2182
Constant Long SCI_GETTEXTLENGTH					= 2183
Constant Long SCI_GETDIRECTFUNCTION				= 2184
Constant Long SCI_GETDIRECTPOINTER				= 2185
Constant Long SCI_SETOVERTYPE						= 2186
Constant Long SCI_GETOVERTYPE						= 2187
Constant Long SCI_SETCARETWIDTH					= 2188
Constant Long SCI_GETCARETWIDTH					= 2189
Constant Long SCI_SETTARGETSTART					= 2190
Constant Long SCI_GETTARGETSTART					= 2191
Constant Long SCI_SETTARGETEND					= 2192
Constant Long SCI_GETTARGETEND					= 2193
Constant Long SCI_REPLACETARGET					= 2194
Constant Long SCI_REPLACETARGETRE				= 2195
Constant Long SCI_SEARCHINTARGET					= 2197
Constant Long SCI_SETSEARCHFLAGS					= 2198
Constant Long SCI_GETSEARCHFLAGS					= 2199
Constant Long SCI_CALLTIPSHOW						= 2200
Constant Long SCI_CALLTIPCANCEL					= 2201
Constant Long SCI_CALLTIPACTIVE					= 2202
Constant Long SCI_CALLTIPPOSSTART				= 2203
Constant Long SCI_CALLTIPSETHLT					= 2204
Constant Long SCI_CALLTIPSETBACK					= 2205
Constant Long SCI_CALLTIPSETFORE					= 2206
Constant Long SCI_CALLTIPSETFOREHLT				= 2207
Constant Long SCI_AUTOCSETMAXWIDTH				= 2208
Constant Long SCI_AUTOCGETMAXWIDTH				= 2209
Constant Long SCI_AUTOCSETMAXHEIGHT				= 2210
Constant Long SCI_AUTOCGETMAXHEIGHT				= 2211
Constant Long SCI_CALLTIPUSESTYLE				= 2212
Constant Long SCI_GETFOLDLEVEL					= 2223
Constant Long SCI_SETFOLDEXPANDED				= 2229
Constant Long SCI_GETFOLDEXPANDED				= 2230
Constant Long SCI_TOGGLEFOLD						= 2231
Constant Long SCI_ENSUREVISIBLE					= 2232
Constant Long SCI_SETFOLDFLAGS					= 2233
Constant Long SCI_ENSUREVISIBLEENFORCEPOLICY = 2234
Constant Long SCI_SETMARGINTYPEN					= 2240
Constant Long SCI_SETMARGINWIDTHN				= 2242
Constant Long SCI_SETMARGINMASKN					= 2244
Constant Long SCI_SETMARGINSENSITIVEN			= 2246
Constant Long SCI_SETTABINDENTS					= 2260
Constant Long SCI_GETTABINDENTS					= 2261
Constant Long SCI_SETBACKSPACEUNINDENTS		= 2262
Constant Long SCI_GETBACKSPACEUNINDENTS		= 2263
Constant Long SCI_SETMOUSEDWELLTIME				= 2264
Constant Long SCI_GETMOUSEDWELLTIME				= 2265
Constant Long SCI_WORDSTARTPOSITION				= 2266
Constant Long SCI_WORDENDPOSITION				= 2267
Constant Long SCI_SETWRAPMODE						= 2268
Constant Long SCI_GETWRAPMODE						= 2269
Constant Long SCI_SETLAYOUTCACHE					= 2272
Constant Long SCI_GETLAYOUTCACHE					= 2273
Constant Long SCI_SETSCROLLWIDTH					= 2274
Constant Long SCI_GETSCROLLWIDTH					= 2275
Constant Long SCI_TEXTWIDTH						= 2276
Constant Long SCI_SETENDATLASTLINE				= 2277
Constant Long SCI_GETENDATLASTLINE				= 2278
Constant Long SCI_TEXTHEIGHT						= 2279
Constant Long SCI_SETVSCROLLBAR					= 2280
Constant Long SCI_GETVSCROLLBAR					= 2281
Constant Long SCI_APPENDTEXT						= 2282
Constant Long SCI_GETTWOPHASEDRAW				= 2283
Constant Long SCI_SETTWOPHASEDRAW				= 2284
Constant Long SCI_TARGETFROMSELECTION			= 2287
Constant Long SCI_LINESJOIN						= 2288
Constant Long SCI_LINESSPLIT						= 2289
Constant Long SCI_SETFOLDMARGINCOLOUR			= 2290
Constant Long SCI_SETFOLDMARGINHICOLOUR		= 2291
Constant Long SCI_WORDLEFT							= 2308
Constant Long SCI_ZOOMIN							= 2333
Constant Long SCI_ZOOMOUT							= 2334
Constant Long SCI_LINELENGTH						= 2350
CONSTANT Long SCI_BRACEHIGHLIGHT 				= 2351
CONSTANT Long SCI_BRACEBADLIGHT 					= 2352
CONSTANT Long SCI_BRACEMATCH 						= 2353
Constant Long SCI_SETVIEWEOL						= 2356
Constant Long SCI_USEPOPUP							= 2371
Constant Long SCI_SETZOOM							= 2373
Constant Long SCI_GETZOOM							= 2374
Constant Long SCI_SETFOCUS							= 2380
Constant Long SCI_GETFOCUS							= 2381
Constant Long SCI_FINDCOLUMN						= 2456
CONSTANT Long SCI_SETWRAPVISUALFLAGS 			= 2460
CONSTANT Long SCI_GETWRAPVISUALFLAGS 			= 2461
CONSTANT Long SCI_SETWRAPVISUALFLAGSLOCATION = 2462
CONSTANT Long SCI_GETWRAPVISUALFLAGSLOCATION = 2463
CONSTANT Long SCI_SETWRAPSTARTINDENT 			= 2464
CONSTANT Long SCI_GETWRAPSTARTINDENT 			= 2465
CONSTANT Long SCI_STYLEGETBOLD 					= 2483

Constant Long SCI_STARTRECORD						= 3001
Constant Long SCI_STOPRECORD						= 3002

CONSTANT Long SCI_SETLEXER							= 4001
CONSTANT Long SCI_GETLEXER 						= 4002
Constant Long SCI_SETPROPERTY						= 4004
Constant Long SCI_SETKEYWORDS						= 4005
Constant Long SCI_SETLEXERLANGUAGE				= 4006
constant long SCI_LOADLEXERLIBRARY 				= 4007
CONSTANT Long SCI_GETSTYLEBITSNEEDED 			= 4011

Constant Long INVALID_POSITION 							= -1
Constant Long STYLE_DEFAULT 								= 32
Constant Long STYLE_LINENUMBER 							= 33
Constant Long STYLE_BRACELIGHT 							= 34
Constant Long STYLE_BRACEBAD 								= 35
Constant Long MARGIN_SCRIPT_FOLD_INDEX 				= 2
Constant Long SC_MARGIN_SYMBOL 							= 0
Constant ULong SC_MASK_FOLDERS 							= 4261412864
Constant Long SC_MARK_CHARACTER 							= 10000 
Constant Long SC_FOLDLEVELHEADERFLAG					= 8192
CONSTANT Long SC_WRAP_NONE 								= 0
CONSTANT Long SC_WRAP_WORD 								= 1
CONSTANT Long SC_WRAP_CHAR 								= 2
CONSTANT Long SC_WRAPVISUALFLAG_NONE 					= 0
CONSTANT Long SC_WRAPVISUALFLAG_END 					= 1
CONSTANT Long SC_WRAPVISUALFLAG_START 					= 2
CONSTANT Long SC_WRAPVISUALFLAGLOC_DEFAULT 			= 0
CONSTANT Long SC_WRAPVISUALFLAGLOC_END_BY_TEXT 		= 1
CONSTANT Long SC_WRAPVISUALFLAGLOC_START_BY_TEXT	= 2
CONSTANT Long SCWS_INVISIBLE								= 0
CONSTANT Long SCWS_VISIBLEALWAYS							= 1
CONSTANT Long SCWS_VISIBLEAFTERINDENT					= 2


Constant Long SC_MARK_CIRCLE						= 0
Constant Long SC_MARK_ROUNDRECT					= 1
Constant Long SC_MARK_ARROW						= 2
Constant Long SC_MARK_SMALLRECT					= 3
Constant Long SC_MARK_SHORTARROW					= 4
Constant Long SC_MARK_EMPTY						= 5
Constant Long SC_MARK_ARROWDOWN					= 6
Constant Long SC_MARK_MINUS						= 7
Constant Long SC_MARK_PLUS							= 8
Constant Long SC_MARK_VLINE						= 9
Constant Long SC_MARK_LCORNER						= 10
Constant Long SC_MARK_TCORNER						= 11
Constant Long SC_MARK_BOXPLUS						= 12
Constant Long SC_MARK_BOXPLUSCONNECTED			= 13
Constant Long SC_MARK_BOXMINUS					= 14
Constant Long SC_MARK_BOXMINUSCONNECTED		= 15
Constant Long SC_MARK_LCORNERCURVE				= 16
Constant Long SC_MARK_TCORNERCURVE				= 17
Constant Long SC_MARK_CIRCLEPLUS					= 18
Constant Long SC_MARK_CIRCLEPLUSCONNECTED		= 19
Constant Long SC_MARK_CIRCLEMINUS				= 20
Constant Long SC_MARK_CIRCLEMINUSCONNECTED	= 21
Constant Long SC_MARK_BACKGROUND					= 22
Constant Long SC_MARK_DOTDOTDOT					= 23
Constant Long SC_MARK_ARROWS						= 24
Constant Long SC_MARK_PIXMAP						= 25
Constant Long SC_MARK_FULLRECT					= 26

Constant Long SC_MARKNUM_FOLDEREND			= 25
Constant Long SC_MARKNUM_FOLDEROPENMID		= 26
Constant Long SC_MARKNUM_FOLDERMIDTAIL		= 27
Constant Long SC_MARKNUM_FOLDERTAIL			= 28
Constant Long SC_MARKNUM_FOLDERSUB			= 29
Constant Long SC_MARKNUM_FOLDER				= 30
Constant Long SC_MARKNUM_FOLDEROPEN			= 31

Constant Long SCN_STYLENEEDED				= 2000
Constant Long SCN_CHARADDED				= 2001
Constant Long SCN_SAVEPOINTREACHED		= 2002
Constant Long SCN_SAVEPOINTLEFT			= 2003
Constant Long SCN_MODIFYATTEMPTRO		= 2004
Constant Long SCN_KEY						= 2005
Constant Long SCN_DOUBLECLICK				= 2006
Constant Long SCN_UPDATEUI					= 2007
Constant Long SCN_MODIFIED					= 2008
Constant Long SCN_MACRORECORD				= 2009
Constant Long SCN_MARGINCLICK				= 2010
Constant Long SCN_NEEDSHOWN				= 2011
Constant Long SCN_PAINTED					= 2013
Constant Long SCN_USERLISTSELECTION		= 2014
Constant Long SCN_URIDROPPED				= 2015
Constant Long SCN_DWELLSTART				= 2016
Constant Long SCN_DWELLEND					= 2017
Constant Long SCN_ZOOM						= 2018
Constant Long SCN_HOTSPOTCLICK			= 2019
Constant Long SCN_HOTSPOTDOUBLECLICK	= 2020
Constant Long SCN_CALLTIPCLICK			= 2021
Constant Long SCN_AUTOCSELECTION			= 2022
Constant Long SCN_INDICATORCLICK			= 2023
Constant Long SCN_INDICATORRELEASE		= 2024
Constant Long SCN_AUTOCCANCELLED			= 2025

Constant Long SCK_DOWN		= 300
Constant Long SCK_UP			= 301
Constant Long SCK_LEFT		= 302
Constant Long SCK_RIGHT		= 303
Constant Long SCK_HOME		= 304
Constant Long SCK_END		= 305
Constant Long SCK_PRIOR		= 306
Constant Long SCK_NEXT		= 307
Constant Long SCK_DELETE	= 308
Constant Long SCK_INSERT	= 309
Constant Long SCK_ESCAPE	= 7
Constant Long SCK_BACK		= 8
Constant Long SCK_TAB		= 9
Constant Long SCK_RETURN	= 13
Constant Long SCK_ADD		= 310
Constant Long SCK_SUBTRACT	= 311
Constant Long SCK_DIVIDE	= 312
Constant Long SCK_WIN		= 313
Constant Long SCK_RWIN		= 314
Constant Long SCK_MENU		= 315
Constant Long SCMOD_NORM	= 0
Constant Long SCMOD_SHIFT	= 1
Constant Long SCMOD_CTRL	= 2
Constant Long SCMOD_ALT		= 4

//#define ([^\s]+)\s+(-?\d+)
constant integer SCLEX_CONTAINER = 0
constant integer SCLEX_NULL = 1
constant integer SCLEX_PYTHON = 2
constant integer SCLEX_CPP = 3
constant integer SCLEX_HTML = 4
constant integer SCLEX_XML = 5
constant integer SCLEX_PERL = 6
constant integer SCLEX_SQL = 7
constant integer SCLEX_VB = 8
constant integer SCLEX_PROPERTIES = 9
constant integer SCLEX_ERRORLIST = 10
constant integer SCLEX_MAKEFILE = 11
constant integer SCLEX_BATCH = 12
constant integer SCLEX_XCODE = 13
constant integer SCLEX_LATEX = 14
constant integer SCLEX_LUA = 15
constant integer SCLEX_DIFF = 16
constant integer SCLEX_CONF = 17
constant integer SCLEX_PASCAL = 18
constant integer SCLEX_AVE = 19
constant integer SCLEX_ADA = 20
constant integer SCLEX_LISP = 21
constant integer SCLEX_RUBY = 22
constant integer SCLEX_EIFFEL = 23
constant integer SCLEX_EIFFELKW = 24
constant integer SCLEX_TCL = 25
constant integer SCLEX_NNCRONTAB = 26
constant integer SCLEX_BULLANT = 27
constant integer SCLEX_VBSCRIPT = 28
constant integer SCLEX_BAAN = 31
constant integer SCLEX_MATLAB = 32
constant integer SCLEX_SCRIPTOL = 33
constant integer SCLEX_ASM = 34
constant integer SCLEX_CPPNOCASE = 35
constant integer SCLEX_FORTRAN = 36
constant integer SCLEX_F77 = 37
constant integer SCLEX_CSS = 38
constant integer SCLEX_POV = 39
constant integer SCLEX_LOUT = 40
constant integer SCLEX_ESCRIPT = 41
constant integer SCLEX_PS = 42
constant integer SCLEX_NSIS = 43
constant integer SCLEX_MMIXAL = 44
constant integer SCLEX_CLW = 45
constant integer SCLEX_CLWNOCASE = 46
constant integer SCLEX_LOT = 47
constant integer SCLEX_YAML = 48
constant integer SCLEX_TEX = 49
constant integer SCLEX_METAPOST = 50
constant integer SCLEX_POWERBASIC = 51
constant integer SCLEX_FORTH = 52
constant integer SCLEX_ERLANG = 53
constant integer SCLEX_OCTAVE = 54
constant integer SCLEX_MSSQL = 55
constant integer SCLEX_VERILOG = 56
constant integer SCLEX_KIX = 57
constant integer SCLEX_GUI4CLI = 58
constant integer SCLEX_SPECMAN = 59
constant integer SCLEX_AU3 = 60
constant integer SCLEX_APDL = 61
constant integer SCLEX_BASH = 62
constant integer SCLEX_ASN1 = 63
constant integer SCLEX_VHDL = 64
constant integer SCLEX_CAML = 65
constant integer SCLEX_BLITZBASIC = 66
constant integer SCLEX_PUREBASIC = 67
constant integer SCLEX_HASKELL = 68
constant integer SCLEX_PHPSCRIPT = 69
constant integer SCLEX_TADS3 = 70
constant integer SCLEX_REBOL = 71
constant integer SCLEX_SMALLTALK = 72
constant integer SCLEX_FLAGSHIP = 73
constant integer SCLEX_CSOUND = 74
constant integer SCLEX_FREEBASIC = 75
constant integer SCLEX_INNOSETUP = 76
constant integer SCLEX_OPAL = 77
constant integer SCLEX_SPICE = 78
constant integer SCLEX_D = 79
constant integer SCLEX_CMAKE = 80
constant integer SCLEX_GAP = 81
constant integer SCLEX_PLM = 82
constant integer SCLEX_PROGRESS = 83
constant integer SCLEX_ABAQUS = 84
constant integer SCLEX_ASYMPTOTE = 85
constant integer SCLEX_R = 86
constant integer SCLEX_MAGIK = 87
constant integer SCLEX_POWERSHELL = 88
constant integer SCLEX_MYSQL = 89
constant integer SCLEX_PO = 90
constant integer SCLEX_TAL = 91
constant integer SCLEX_COBOL = 92
constant integer SCLEX_TACL = 93
constant integer SCLEX_SORCUS = 94
constant integer SCLEX_POWERPRO = 95
constant integer SCLEX_NIMROD = 96
constant integer SCLEX_SML = 97
constant integer SCLEX_AUTOMATIC = 1000
constant integer SCE_P_DEFAULT = 0
constant integer SCE_P_COMMENTLINE = 1
constant integer SCE_P_NUMBER = 2
constant integer SCE_P_STRING = 3
constant integer SCE_P_CHARACTER = 4
constant integer SCE_P_WORD = 5
constant integer SCE_P_TRIPLE = 6
constant integer SCE_P_TRIPLEDOUBLE = 7
constant integer SCE_P_CLASSNAME = 8
constant integer SCE_P_DEFNAME = 9
constant integer SCE_P_OPERATOR = 10
constant integer SCE_P_IDENTIFIER = 11
constant integer SCE_P_COMMENTBLOCK = 12
constant integer SCE_P_STRINGEOL = 13
constant integer SCE_P_WORD2 = 14
constant integer SCE_P_DECORATOR = 15
constant integer SCE_C_DEFAULT = 0
constant integer SCE_C_COMMENT = 1
constant integer SCE_C_COMMENTLINE = 2
constant integer SCE_C_COMMENTDOC = 3
constant integer SCE_C_NUMBER = 4
constant integer SCE_C_WORD = 5
constant integer SCE_C_STRING = 6
constant integer SCE_C_CHARACTER = 7
constant integer SCE_C_UUID = 8
constant integer SCE_C_PREPROCESSOR = 9
constant integer SCE_C_OPERATOR = 10
constant integer SCE_C_IDENTIFIER = 11
constant integer SCE_C_STRINGEOL = 12
constant integer SCE_C_VERBATIM = 13
constant integer SCE_C_REGEX = 14
constant integer SCE_C_COMMENTLINEDOC = 15
constant integer SCE_C_WORD2 = 16
constant integer SCE_C_COMMENTDOCKEYWORD = 17
constant integer SCE_C_COMMENTDOCKEYWORDERROR = 18
constant integer SCE_C_GLOBALCLASS = 19
constant integer SCE_D_DEFAULT = 0
constant integer SCE_D_COMMENT = 1
constant integer SCE_D_COMMENTLINE = 2
constant integer SCE_D_COMMENTDOC = 3
constant integer SCE_D_COMMENTNESTED = 4
constant integer SCE_D_NUMBER = 5
constant integer SCE_D_WORD = 6
constant integer SCE_D_WORD2 = 7
constant integer SCE_D_WORD3 = 8
constant integer SCE_D_TYPEDEF = 9
constant integer SCE_D_STRING = 10
constant integer SCE_D_STRINGEOL = 11
constant integer SCE_D_CHARACTER = 12
constant integer SCE_D_OPERATOR = 13
constant integer SCE_D_IDENTIFIER = 14
constant integer SCE_D_COMMENTLINEDOC = 15
constant integer SCE_D_COMMENTDOCKEYWORD = 16
constant integer SCE_D_COMMENTDOCKEYWORDERROR = 17
constant integer SCE_D_STRINGB = 18
constant integer SCE_D_STRINGR = 19
constant integer SCE_D_WORD5 = 20
constant integer SCE_D_WORD6 = 21
constant integer SCE_D_WORD7 = 22
constant integer SCE_TCL_DEFAULT = 0
constant integer SCE_TCL_COMMENT = 1
constant integer SCE_TCL_COMMENTLINE = 2
constant integer SCE_TCL_NUMBER = 3
constant integer SCE_TCL_WORD_IN_QUOTE = 4
constant integer SCE_TCL_IN_QUOTE = 5
constant integer SCE_TCL_OPERATOR = 6
constant integer SCE_TCL_IDENTIFIER = 7
constant integer SCE_TCL_SUBSTITUTION = 8
constant integer SCE_TCL_SUB_BRACE = 9
constant integer SCE_TCL_MODIFIER = 10
constant integer SCE_TCL_EXPAND = 11
constant integer SCE_TCL_WORD = 12
constant integer SCE_TCL_WORD2 = 13
constant integer SCE_TCL_WORD3 = 14
constant integer SCE_TCL_WORD4 = 15
constant integer SCE_TCL_WORD5 = 16
constant integer SCE_TCL_WORD6 = 17
constant integer SCE_TCL_WORD7 = 18
constant integer SCE_TCL_WORD8 = 19
constant integer SCE_TCL_COMMENT_BOX = 20
constant integer SCE_TCL_BLOCK_COMMENT = 21
constant integer SCE_H_DEFAULT = 0
constant integer SCE_H_TAG = 1
constant integer SCE_H_TAGUNKNOWN = 2
constant integer SCE_H_ATTRIBUTE = 3
constant integer SCE_H_ATTRIBUTEUNKNOWN = 4
constant integer SCE_H_NUMBER = 5
constant integer SCE_H_DOUBLESTRING = 6
constant integer SCE_H_SINGLESTRING = 7
constant integer SCE_H_OTHER = 8
constant integer SCE_H_COMMENT = 9
constant integer SCE_H_ENTITY = 10
constant integer SCE_H_TAGEND = 11
constant integer SCE_H_XMLSTART = 12
constant integer SCE_H_XMLEND = 13
constant integer SCE_H_SCRIPT = 14
constant integer SCE_H_ASP = 15
constant integer SCE_H_ASPAT = 16
constant integer SCE_H_CDATA = 17
constant integer SCE_H_QUESTION = 18
constant integer SCE_H_VALUE = 19
constant integer SCE_H_XCCOMMENT = 20
constant integer SCE_H_SGML_DEFAULT = 21
constant integer SCE_H_SGML_COMMAND = 22
constant integer SCE_H_SGML_1ST_PARAM = 23
constant integer SCE_H_SGML_DOUBLESTRING = 24
constant integer SCE_H_SGML_SIMPLESTRING = 25
constant integer SCE_H_SGML_ERROR = 26
constant integer SCE_H_SGML_SPECIAL = 27
constant integer SCE_H_SGML_ENTITY = 28
constant integer SCE_H_SGML_COMMENT = 29
constant integer SCE_H_SGML_1ST_PARAM_COMMENT = 30
constant integer SCE_H_SGML_BLOCK_DEFAULT = 31
constant integer SCE_HJ_START = 40
constant integer SCE_HJ_DEFAULT = 41
constant integer SCE_HJ_COMMENT = 42
constant integer SCE_HJ_COMMENTLINE = 43
constant integer SCE_HJ_COMMENTDOC = 44
constant integer SCE_HJ_NUMBER = 45
constant integer SCE_HJ_WORD = 46
constant integer SCE_HJ_KEYWORD = 47
constant integer SCE_HJ_DOUBLESTRING = 48
constant integer SCE_HJ_SINGLESTRING = 49
constant integer SCE_HJ_SYMBOLS = 50
constant integer SCE_HJ_STRINGEOL = 51
constant integer SCE_HJ_REGEX = 52
constant integer SCE_HJA_START = 55
constant integer SCE_HJA_DEFAULT = 56
constant integer SCE_HJA_COMMENT = 57
constant integer SCE_HJA_COMMENTLINE = 58
constant integer SCE_HJA_COMMENTDOC = 59
constant integer SCE_HJA_NUMBER = 60
constant integer SCE_HJA_WORD = 61
constant integer SCE_HJA_KEYWORD = 62
constant integer SCE_HJA_DOUBLESTRING = 63
constant integer SCE_HJA_SINGLESTRING = 64
constant integer SCE_HJA_SYMBOLS = 65
constant integer SCE_HJA_STRINGEOL = 66
constant integer SCE_HJA_REGEX = 67
constant integer SCE_HB_START = 70
constant integer SCE_HB_DEFAULT = 71
constant integer SCE_HB_COMMENTLINE = 72
constant integer SCE_HB_NUMBER = 73
constant integer SCE_HB_WORD = 74
constant integer SCE_HB_STRING = 75
constant integer SCE_HB_IDENTIFIER = 76
constant integer SCE_HB_STRINGEOL = 77
constant integer SCE_HBA_START = 80
constant integer SCE_HBA_DEFAULT = 81
constant integer SCE_HBA_COMMENTLINE = 82
constant integer SCE_HBA_NUMBER = 83
constant integer SCE_HBA_WORD = 84
constant integer SCE_HBA_STRING = 85
constant integer SCE_HBA_IDENTIFIER = 86
constant integer SCE_HBA_STRINGEOL = 87
constant integer SCE_HP_START = 90
constant integer SCE_HP_DEFAULT = 91
constant integer SCE_HP_COMMENTLINE = 92
constant integer SCE_HP_NUMBER = 93
constant integer SCE_HP_STRING = 94
constant integer SCE_HP_CHARACTER = 95
constant integer SCE_HP_WORD = 96
constant integer SCE_HP_TRIPLE = 97
constant integer SCE_HP_TRIPLEDOUBLE = 98
constant integer SCE_HP_CLASSNAME = 99
constant integer SCE_HP_DEFNAME = 100
constant integer SCE_HP_OPERATOR = 101
constant integer SCE_HP_IDENTIFIER = 102
constant integer SCE_HPHP_COMPLEX_VARIABLE = 104
constant integer SCE_HPA_START = 105
constant integer SCE_HPA_DEFAULT = 106
constant integer SCE_HPA_COMMENTLINE = 107
constant integer SCE_HPA_NUMBER = 108
constant integer SCE_HPA_STRING = 109
constant integer SCE_HPA_CHARACTER = 110
constant integer SCE_HPA_WORD = 111
constant integer SCE_HPA_TRIPLE = 112
constant integer SCE_HPA_TRIPLEDOUBLE = 113
constant integer SCE_HPA_CLASSNAME = 114
constant integer SCE_HPA_DEFNAME = 115
constant integer SCE_HPA_OPERATOR = 116
constant integer SCE_HPA_IDENTIFIER = 117
constant integer SCE_HPHP_DEFAULT = 118
constant integer SCE_HPHP_HSTRING = 119
constant integer SCE_HPHP_SIMPLESTRING = 120
constant integer SCE_HPHP_WORD = 121
constant integer SCE_HPHP_NUMBER = 122
constant integer SCE_HPHP_VARIABLE = 123
constant integer SCE_HPHP_COMMENT = 124
constant integer SCE_HPHP_COMMENTLINE = 125
constant integer SCE_HPHP_HSTRING_VARIABLE = 126
constant integer SCE_HPHP_OPERATOR = 127
constant integer SCE_PL_DEFAULT = 0
constant integer SCE_PL_ERROR = 1
constant integer SCE_PL_COMMENTLINE = 2
constant integer SCE_PL_POD = 3
constant integer SCE_PL_NUMBER = 4
constant integer SCE_PL_WORD = 5
constant integer SCE_PL_STRING = 6
constant integer SCE_PL_CHARACTER = 7
constant integer SCE_PL_PUNCTUATION = 8
constant integer SCE_PL_PREPROCESSOR = 9
constant integer SCE_PL_OPERATOR = 10
constant integer SCE_PL_IDENTIFIER = 11
constant integer SCE_PL_SCALAR = 12
constant integer SCE_PL_ARRAY = 13
constant integer SCE_PL_HASH = 14
constant integer SCE_PL_SYMBOLTABLE = 15
constant integer SCE_PL_VARIABLE_INDEXER = 16
constant integer SCE_PL_REGEX = 17
constant integer SCE_PL_REGSUBST = 18
constant integer SCE_PL_LONGQUOTE = 19
constant integer SCE_PL_BACKTICKS = 20
constant integer SCE_PL_DATASECTION = 21
constant integer SCE_PL_HERE_DELIM = 22
constant integer SCE_PL_HERE_Q = 23
constant integer SCE_PL_HERE_QQ = 24
constant integer SCE_PL_HERE_QX = 25
constant integer SCE_PL_STRING_Q = 26
constant integer SCE_PL_STRING_QQ = 27
constant integer SCE_PL_STRING_QX = 28
constant integer SCE_PL_STRING_QR = 29
constant integer SCE_PL_STRING_QW = 30
constant integer SCE_PL_POD_VERB = 31
constant integer SCE_PL_SUB_PROTOTYPE = 40
constant integer SCE_PL_FORMAT_IDENT = 41
constant integer SCE_PL_FORMAT = 42
constant integer SCE_RB_DEFAULT = 0
constant integer SCE_RB_ERROR = 1
constant integer SCE_RB_COMMENTLINE = 2
constant integer SCE_RB_POD = 3
constant integer SCE_RB_NUMBER = 4
constant integer SCE_RB_WORD = 5
constant integer SCE_RB_STRING = 6
constant integer SCE_RB_CHARACTER = 7
constant integer SCE_RB_CLASSNAME = 8
constant integer SCE_RB_DEFNAME = 9
constant integer SCE_RB_OPERATOR = 10
constant integer SCE_RB_IDENTIFIER = 11
constant integer SCE_RB_REGEX = 12
constant integer SCE_RB_GLOBAL = 13
constant integer SCE_RB_SYMBOL = 14
constant integer SCE_RB_MODULE_NAME = 15
constant integer SCE_RB_INSTANCE_VAR = 16
constant integer SCE_RB_CLASS_VAR = 17
constant integer SCE_RB_BACKTICKS = 18
constant integer SCE_RB_DATASECTION = 19
constant integer SCE_RB_HERE_DELIM = 20
constant integer SCE_RB_HERE_Q = 21
constant integer SCE_RB_HERE_QQ = 22
constant integer SCE_RB_HERE_QX = 23
constant integer SCE_RB_STRING_Q = 24
constant integer SCE_RB_STRING_QQ = 25
constant integer SCE_RB_STRING_QX = 26
constant integer SCE_RB_STRING_QR = 27
constant integer SCE_RB_STRING_QW = 28
constant integer SCE_RB_WORD_DEMOTED = 29
constant integer SCE_RB_STDIN = 30
constant integer SCE_RB_STDOUT = 31
constant integer SCE_RB_STDERR = 40
constant integer SCE_RB_UPPER_BOUND = 41
constant integer SCE_B_DEFAULT = 0
constant integer SCE_B_COMMENT = 1
constant integer SCE_B_NUMBER = 2
constant integer SCE_B_KEYWORD = 3
constant integer SCE_B_STRING = 4
constant integer SCE_B_PREPROCESSOR = 5
constant integer SCE_B_OPERATOR = 6
constant integer SCE_B_IDENTIFIER = 7
constant integer SCE_B_DATE = 8
constant integer SCE_B_STRINGEOL = 9
constant integer SCE_B_KEYWORD2 = 10
constant integer SCE_B_KEYWORD3 = 11
constant integer SCE_B_KEYWORD4 = 12
constant integer SCE_B_CONSTANT = 13
constant integer SCE_B_ASM = 14
constant integer SCE_B_LABEL = 15
constant integer SCE_B_ERROR = 16
constant integer SCE_B_HEXNUMBER = 17
constant integer SCE_B_BINNUMBER = 18
constant integer SCE_PROPS_DEFAULT = 0
constant integer SCE_PROPS_COMMENT = 1
constant integer SCE_PROPS_SECTION = 2
constant integer SCE_PROPS_ASSIGNMENT = 3
constant integer SCE_PROPS_DEFVAL = 4
constant integer SCE_PROPS_KEY = 5
constant integer SCE_L_DEFAULT = 0
constant integer SCE_L_COMMAND = 1
constant integer SCE_L_TAG = 2
constant integer SCE_L_MATH = 3
constant integer SCE_L_COMMENT = 4
constant integer SCE_LUA_DEFAULT = 0
constant integer SCE_LUA_COMMENT = 1
constant integer SCE_LUA_COMMENTLINE = 2
constant integer SCE_LUA_COMMENTDOC = 3
constant integer SCE_LUA_NUMBER = 4
constant integer SCE_LUA_WORD = 5
constant integer SCE_LUA_STRING = 6
constant integer SCE_LUA_CHARACTER = 7
constant integer SCE_LUA_LITERALSTRING = 8
constant integer SCE_LUA_PREPROCESSOR = 9
constant integer SCE_LUA_OPERATOR = 10
constant integer SCE_LUA_IDENTIFIER = 11
constant integer SCE_LUA_STRINGEOL = 12
constant integer SCE_LUA_WORD2 = 13
constant integer SCE_LUA_WORD3 = 14
constant integer SCE_LUA_WORD4 = 15
constant integer SCE_LUA_WORD5 = 16
constant integer SCE_LUA_WORD6 = 17
constant integer SCE_LUA_WORD7 = 18
constant integer SCE_LUA_WORD8 = 19
constant integer SCE_ERR_DEFAULT = 0
constant integer SCE_ERR_PYTHON = 1
constant integer SCE_ERR_GCC = 2
constant integer SCE_ERR_MS = 3
constant integer SCE_ERR_CMD = 4
constant integer SCE_ERR_BORLAND = 5
constant integer SCE_ERR_PERL = 6
constant integer SCE_ERR_NET = 7
constant integer SCE_ERR_LUA = 8
constant integer SCE_ERR_CTAG = 9
constant integer SCE_ERR_DIFF_CHANGED = 10
constant integer SCE_ERR_DIFF_ADDITION = 11
constant integer SCE_ERR_DIFF_DELETION = 12
constant integer SCE_ERR_DIFF_MESSAGE = 13
constant integer SCE_ERR_PHP = 14
constant integer SCE_ERR_ELF = 15
constant integer SCE_ERR_IFC = 16
constant integer SCE_ERR_IFORT = 17
constant integer SCE_ERR_ABSF = 18
constant integer SCE_ERR_TIDY = 19
constant integer SCE_ERR_JAVA_STACK = 20
constant integer SCE_ERR_VALUE = 21
constant integer SCE_BAT_DEFAULT = 0
constant integer SCE_BAT_COMMENT = 1
constant integer SCE_BAT_WORD = 2
constant integer SCE_BAT_LABEL = 3
constant integer SCE_BAT_HIDE = 4
constant integer SCE_BAT_COMMAND = 5
constant integer SCE_BAT_IDENTIFIER = 6
constant integer SCE_BAT_OPERATOR = 7
constant integer SCE_MAKE_DEFAULT = 0
constant integer SCE_MAKE_COMMENT = 1
constant integer SCE_MAKE_PREPROCESSOR = 2
constant integer SCE_MAKE_IDENTIFIER = 3
constant integer SCE_MAKE_OPERATOR = 4
constant integer SCE_MAKE_TARGET = 5
constant integer SCE_MAKE_IDEOL = 9
constant integer SCE_DIFF_DEFAULT = 0
constant integer SCE_DIFF_COMMENT = 1
constant integer SCE_DIFF_COMMAND = 2
constant integer SCE_DIFF_HEADER = 3
constant integer SCE_DIFF_POSITION = 4
constant integer SCE_DIFF_DELETED = 5
constant integer SCE_DIFF_ADDED = 6
constant integer SCE_DIFF_CHANGED = 7
constant integer SCE_CONF_DEFAULT = 0
constant integer SCE_CONF_COMMENT = 1
constant integer SCE_CONF_NUMBER = 2
constant integer SCE_CONF_IDENTIFIER = 3
constant integer SCE_CONF_EXTENSION = 4
constant integer SCE_CONF_PARAMETER = 5
constant integer SCE_CONF_STRING = 6
constant integer SCE_CONF_OPERATOR = 7
constant integer SCE_CONF_IP = 8
constant integer SCE_CONF_DIRECTIVE = 9
constant integer SCE_AVE_DEFAULT = 0
constant integer SCE_AVE_COMMENT = 1
constant integer SCE_AVE_NUMBER = 2
constant integer SCE_AVE_WORD = 3
constant integer SCE_AVE_STRING = 6
constant integer SCE_AVE_ENUM = 7
constant integer SCE_AVE_STRINGEOL = 8
constant integer SCE_AVE_IDENTIFIER = 9
constant integer SCE_AVE_OPERATOR = 10
constant integer SCE_AVE_WORD1 = 11
constant integer SCE_AVE_WORD2 = 12
constant integer SCE_AVE_WORD3 = 13
constant integer SCE_AVE_WORD4 = 14
constant integer SCE_AVE_WORD5 = 15
constant integer SCE_AVE_WORD6 = 16
constant integer SCE_ADA_DEFAULT = 0
constant integer SCE_ADA_WORD = 1
constant integer SCE_ADA_IDENTIFIER = 2
constant integer SCE_ADA_NUMBER = 3
constant integer SCE_ADA_DELIMITER = 4
constant integer SCE_ADA_CHARACTER = 5
constant integer SCE_ADA_CHARACTEREOL = 6
constant integer SCE_ADA_STRING = 7
constant integer SCE_ADA_STRINGEOL = 8
constant integer SCE_ADA_LABEL = 9
constant integer SCE_ADA_COMMENTLINE = 10
constant integer SCE_ADA_ILLEGAL = 11
constant integer SCE_BAAN_DEFAULT = 0
constant integer SCE_BAAN_COMMENT = 1
constant integer SCE_BAAN_COMMENTDOC = 2
constant integer SCE_BAAN_NUMBER = 3
constant integer SCE_BAAN_WORD = 4
constant integer SCE_BAAN_STRING = 5
constant integer SCE_BAAN_PREPROCESSOR = 6
constant integer SCE_BAAN_OPERATOR = 7
constant integer SCE_BAAN_IDENTIFIER = 8
constant integer SCE_BAAN_STRINGEOL = 9
constant integer SCE_BAAN_WORD2 = 10
constant integer SCE_LISP_DEFAULT = 0
constant integer SCE_LISP_COMMENT = 1
constant integer SCE_LISP_NUMBER = 2
constant integer SCE_LISP_KEYWORD = 3
constant integer SCE_LISP_KEYWORD_KW = 4
constant integer SCE_LISP_SYMBOL = 5
constant integer SCE_LISP_STRING = 6
constant integer SCE_LISP_STRINGEOL = 8
constant integer SCE_LISP_IDENTIFIER = 9
constant integer SCE_LISP_OPERATOR = 10
constant integer SCE_LISP_SPECIAL = 11
constant integer SCE_LISP_MULTI_COMMENT = 12
constant integer SCE_EIFFEL_DEFAULT = 0
constant integer SCE_EIFFEL_COMMENTLINE = 1
constant integer SCE_EIFFEL_NUMBER = 2
constant integer SCE_EIFFEL_WORD = 3
constant integer SCE_EIFFEL_STRING = 4
constant integer SCE_EIFFEL_CHARACTER = 5
constant integer SCE_EIFFEL_OPERATOR = 6
constant integer SCE_EIFFEL_IDENTIFIER = 7
constant integer SCE_EIFFEL_STRINGEOL = 8
constant integer SCE_NNCRONTAB_DEFAULT = 0
constant integer SCE_NNCRONTAB_COMMENT = 1
constant integer SCE_NNCRONTAB_TASK = 2
constant integer SCE_NNCRONTAB_SECTION = 3
constant integer SCE_NNCRONTAB_KEYWORD = 4
constant integer SCE_NNCRONTAB_MODIFIER = 5
constant integer SCE_NNCRONTAB_ASTERISK = 6
constant integer SCE_NNCRONTAB_NUMBER = 7
constant integer SCE_NNCRONTAB_STRING = 8
constant integer SCE_NNCRONTAB_ENVIRONMENT = 9
constant integer SCE_NNCRONTAB_IDENTIFIER = 10
constant integer SCE_FORTH_DEFAULT = 0
constant integer SCE_FORTH_COMMENT = 1
constant integer SCE_FORTH_COMMENT_ML = 2
constant integer SCE_FORTH_IDENTIFIER = 3
constant integer SCE_FORTH_CONTROL = 4
constant integer SCE_FORTH_KEYWORD = 5
constant integer SCE_FORTH_DEFWORD = 6
constant integer SCE_FORTH_PREWORD1 = 7
constant integer SCE_FORTH_PREWORD2 = 8
constant integer SCE_FORTH_NUMBER = 9
constant integer SCE_FORTH_STRING = 10
constant integer SCE_FORTH_LOCALE = 11
constant integer SCE_MATLAB_DEFAULT = 0
constant integer SCE_MATLAB_COMMENT = 1
constant integer SCE_MATLAB_COMMAND = 2
constant integer SCE_MATLAB_NUMBER = 3
constant integer SCE_MATLAB_KEYWORD = 4
constant integer SCE_MATLAB_STRING = 5
constant integer SCE_MATLAB_OPERATOR = 6
constant integer SCE_MATLAB_IDENTIFIER = 7
constant integer SCE_MATLAB_DOUBLEQUOTESTRING = 8
constant integer SCE_SCRIPTOL_DEFAULT = 0
constant integer SCE_SCRIPTOL_WHITE = 1
constant integer SCE_SCRIPTOL_COMMENTLINE = 2
constant integer SCE_SCRIPTOL_PERSISTENT = 3
constant integer SCE_SCRIPTOL_CSTYLE = 4
constant integer SCE_SCRIPTOL_COMMENTBLOCK = 5
constant integer SCE_SCRIPTOL_NUMBER = 6
constant integer SCE_SCRIPTOL_STRING = 7
constant integer SCE_SCRIPTOL_CHARACTER = 8
constant integer SCE_SCRIPTOL_STRINGEOL = 9
constant integer SCE_SCRIPTOL_KEYWORD = 10
constant integer SCE_SCRIPTOL_OPERATOR = 11
constant integer SCE_SCRIPTOL_IDENTIFIER = 12
constant integer SCE_SCRIPTOL_TRIPLE = 13
constant integer SCE_SCRIPTOL_CLASSNAME = 14
constant integer SCE_SCRIPTOL_PREPROCESSOR = 15
constant integer SCE_ASM_DEFAULT = 0
constant integer SCE_ASM_COMMENT = 1
constant integer SCE_ASM_NUMBER = 2
constant integer SCE_ASM_STRING = 3
constant integer SCE_ASM_OPERATOR = 4
constant integer SCE_ASM_IDENTIFIER = 5
constant integer SCE_ASM_CPUINSTRUCTION = 6
constant integer SCE_ASM_MATHINSTRUCTION = 7
constant integer SCE_ASM_REGISTER = 8
constant integer SCE_ASM_DIRECTIVE = 9
constant integer SCE_ASM_DIRECTIVEOPERAND = 10
constant integer SCE_ASM_COMMENTBLOCK = 11
constant integer SCE_ASM_CHARACTER = 12
constant integer SCE_ASM_STRINGEOL = 13
constant integer SCE_ASM_EXTINSTRUCTION = 14
constant integer SCE_F_DEFAULT = 0
constant integer SCE_F_COMMENT = 1
constant integer SCE_F_NUMBER = 2
constant integer SCE_F_STRING1 = 3
constant integer SCE_F_STRING2 = 4
constant integer SCE_F_STRINGEOL = 5
constant integer SCE_F_OPERATOR = 6
constant integer SCE_F_IDENTIFIER = 7
constant integer SCE_F_WORD = 8
constant integer SCE_F_WORD2 = 9
constant integer SCE_F_WORD3 = 10
constant integer SCE_F_PREPROCESSOR = 11
constant integer SCE_F_OPERATOR2 = 12
constant integer SCE_F_LABEL = 13
constant integer SCE_F_CONTINUATION = 14
constant integer SCE_CSS_DEFAULT = 0
constant integer SCE_CSS_TAG = 1
constant integer SCE_CSS_CLASS = 2
constant integer SCE_CSS_PSEUDOCLASS = 3
constant integer SCE_CSS_UNKNOWN_PSEUDOCLASS = 4
constant integer SCE_CSS_OPERATOR = 5
constant integer SCE_CSS_IDENTIFIER = 6
constant integer SCE_CSS_UNKNOWN_IDENTIFIER = 7
constant integer SCE_CSS_VALUE = 8
constant integer SCE_CSS_COMMENT = 9
constant integer SCE_CSS_ID = 10
constant integer SCE_CSS_IMPORTANT = 11
constant integer SCE_CSS_DIRECTIVE = 12
constant integer SCE_CSS_DOUBLESTRING = 13
constant integer SCE_CSS_SINGLESTRING = 14
constant integer SCE_CSS_IDENTIFIER2 = 15
constant integer SCE_CSS_ATTRIBUTE = 16
constant integer SCE_CSS_IDENTIFIER3 = 17
constant integer SCE_CSS_PSEUDOELEMENT = 18
constant integer SCE_CSS_EXTENDED_IDENTIFIER = 19
constant integer SCE_CSS_EXTENDED_PSEUDOCLASS = 20
constant integer SCE_CSS_EXTENDED_PSEUDOELEMENT = 21
constant integer SCE_POV_DEFAULT = 0
constant integer SCE_POV_COMMENT = 1
constant integer SCE_POV_COMMENTLINE = 2
constant integer SCE_POV_NUMBER = 3
constant integer SCE_POV_OPERATOR = 4
constant integer SCE_POV_IDENTIFIER = 5
constant integer SCE_POV_STRING = 6
constant integer SCE_POV_STRINGEOL = 7
constant integer SCE_POV_DIRECTIVE = 8
constant integer SCE_POV_BADDIRECTIVE = 9
constant integer SCE_POV_WORD2 = 10
constant integer SCE_POV_WORD3 = 11
constant integer SCE_POV_WORD4 = 12
constant integer SCE_POV_WORD5 = 13
constant integer SCE_POV_WORD6 = 14
constant integer SCE_POV_WORD7 = 15
constant integer SCE_POV_WORD8 = 16
constant integer SCE_LOUT_DEFAULT = 0
constant integer SCE_LOUT_COMMENT = 1
constant integer SCE_LOUT_NUMBER = 2
constant integer SCE_LOUT_WORD = 3
constant integer SCE_LOUT_WORD2 = 4
constant integer SCE_LOUT_WORD3 = 5
constant integer SCE_LOUT_WORD4 = 6
constant integer SCE_LOUT_STRING = 7
constant integer SCE_LOUT_OPERATOR = 8
constant integer SCE_LOUT_IDENTIFIER = 9
constant integer SCE_LOUT_STRINGEOL = 10
constant integer SCE_ESCRIPT_DEFAULT = 0
constant integer SCE_ESCRIPT_COMMENT = 1
constant integer SCE_ESCRIPT_COMMENTLINE = 2
constant integer SCE_ESCRIPT_COMMENTDOC = 3
constant integer SCE_ESCRIPT_NUMBER = 4
constant integer SCE_ESCRIPT_WORD = 5
constant integer SCE_ESCRIPT_STRING = 6
constant integer SCE_ESCRIPT_OPERATOR = 7
constant integer SCE_ESCRIPT_IDENTIFIER = 8
constant integer SCE_ESCRIPT_BRACE = 9
constant integer SCE_ESCRIPT_WORD2 = 10
constant integer SCE_ESCRIPT_WORD3 = 11
constant integer SCE_PS_DEFAULT = 0
constant integer SCE_PS_COMMENT = 1
constant integer SCE_PS_DSC_COMMENT = 2
constant integer SCE_PS_DSC_VALUE = 3
constant integer SCE_PS_NUMBER = 4
constant integer SCE_PS_NAME = 5
constant integer SCE_PS_KEYWORD = 6
constant integer SCE_PS_LITERAL = 7
constant integer SCE_PS_IMMEVAL = 8
constant integer SCE_PS_PAREN_ARRAY = 9
constant integer SCE_PS_PAREN_DICT = 10
constant integer SCE_PS_PAREN_PROC = 11
constant integer SCE_PS_TEXT = 12
constant integer SCE_PS_HEXSTRING = 13
constant integer SCE_PS_BASE85STRING = 14
constant integer SCE_PS_BADSTRINGCHAR = 15
constant integer SCE_NSIS_DEFAULT = 0
constant integer SCE_NSIS_COMMENT = 1
constant integer SCE_NSIS_STRINGDQ = 2
constant integer SCE_NSIS_STRINGLQ = 3
constant integer SCE_NSIS_STRINGRQ = 4
constant integer SCE_NSIS_FUNCTION = 5
constant integer SCE_NSIS_VARIABLE = 6
constant integer SCE_NSIS_LABEL = 7
constant integer SCE_NSIS_USERDEFINED = 8
constant integer SCE_NSIS_SECTIONDEF = 9
constant integer SCE_NSIS_SUBSECTIONDEF = 10
constant integer SCE_NSIS_IFDEFINEDEF = 11
constant integer SCE_NSIS_MACRODEF = 12
constant integer SCE_NSIS_STRINGVAR = 13
constant integer SCE_NSIS_NUMBER = 14
constant integer SCE_NSIS_SECTIONGROUP = 15
constant integer SCE_NSIS_PAGEEX = 16
constant integer SCE_NSIS_FUNCTIONDEF = 17
constant integer SCE_NSIS_COMMENTBOX = 18
constant integer SCE_MMIXAL_LEADWS = 0
constant integer SCE_MMIXAL_COMMENT = 1
constant integer SCE_MMIXAL_LABEL = 2
constant integer SCE_MMIXAL_OPCODE = 3
constant integer SCE_MMIXAL_OPCODE_PRE = 4
constant integer SCE_MMIXAL_OPCODE_VALID = 5
constant integer SCE_MMIXAL_OPCODE_UNKNOWN = 6
constant integer SCE_MMIXAL_OPCODE_POST = 7
constant integer SCE_MMIXAL_OPERANDS = 8
constant integer SCE_MMIXAL_NUMBER = 9
constant integer SCE_MMIXAL_REF = 10
constant integer SCE_MMIXAL_CHAR = 11
constant integer SCE_MMIXAL_STRING = 12
constant integer SCE_MMIXAL_REGISTER = 13
constant integer SCE_MMIXAL_HEX = 14
constant integer SCE_MMIXAL_OPERATOR = 15
constant integer SCE_MMIXAL_SYMBOL = 16
constant integer SCE_MMIXAL_INCLUDE = 17
constant integer SCE_CLW_DEFAULT = 0
constant integer SCE_CLW_LABEL = 1
constant integer SCE_CLW_COMMENT = 2
constant integer SCE_CLW_STRING = 3
constant integer SCE_CLW_USER_IDENTIFIER = 4
constant integer SCE_CLW_INTEGER_CONSTANT = 5
constant integer SCE_CLW_REAL_CONSTANT = 6
constant integer SCE_CLW_PICTURE_STRING = 7
constant integer SCE_CLW_KEYWORD = 8
constant integer SCE_CLW_COMPILER_DIRECTIVE = 9
constant integer SCE_CLW_RUNTIME_EXPRESSIONS = 10
constant integer SCE_CLW_BUILTIN_PROCEDURES_FUNCTION = 11
constant integer SCE_CLW_STRUCTURE_DATA_TYPE = 12
constant integer SCE_CLW_ATTRIBUTE = 13
constant integer SCE_CLW_STANDARD_EQUATE = 14
constant integer SCE_CLW_ERROR = 15
constant integer SCE_CLW_DEPRECATED = 16
constant integer SCE_LOT_DEFAULT = 0
constant integer SCE_LOT_HEADER = 1
constant integer SCE_LOT_BREAK = 2
constant integer SCE_LOT_SET = 3
constant integer SCE_LOT_PASS = 4
constant integer SCE_LOT_FAIL = 5
constant integer SCE_LOT_ABORT = 6
constant integer SCE_YAML_DEFAULT = 0
constant integer SCE_YAML_COMMENT = 1
constant integer SCE_YAML_IDENTIFIER = 2
constant integer SCE_YAML_KEYWORD = 3
constant integer SCE_YAML_NUMBER = 4
constant integer SCE_YAML_REFERENCE = 5
constant integer SCE_YAML_DOCUMENT = 6
constant integer SCE_YAML_TEXT = 7
constant integer SCE_YAML_ERROR = 8
constant integer SCE_YAML_OPERATOR = 9
constant integer SCE_TEX_DEFAULT = 0
constant integer SCE_TEX_SPECIAL = 1
constant integer SCE_TEX_GROUP = 2
constant integer SCE_TEX_SYMBOL = 3
constant integer SCE_TEX_COMMAND = 4
constant integer SCE_TEX_TEXT = 5
constant integer SCE_METAPOST_DEFAULT = 0
constant integer SCE_METAPOST_SPECIAL = 1
constant integer SCE_METAPOST_GROUP = 2
constant integer SCE_METAPOST_SYMBOL = 3
constant integer SCE_METAPOST_COMMAND = 4
constant integer SCE_METAPOST_TEXT = 5
constant integer SCE_METAPOST_EXTRA = 6
constant integer SCE_ERLANG_DEFAULT = 0
constant integer SCE_ERLANG_COMMENT = 1
constant integer SCE_ERLANG_VARIABLE = 2
constant integer SCE_ERLANG_NUMBER = 3
constant integer SCE_ERLANG_KEYWORD = 4
constant integer SCE_ERLANG_STRING = 5
constant integer SCE_ERLANG_OPERATOR = 6
constant integer SCE_ERLANG_ATOM = 7
constant integer SCE_ERLANG_FUNCTION_NAME = 8
constant integer SCE_ERLANG_CHARACTER = 9
constant integer SCE_ERLANG_MACRO = 10
constant integer SCE_ERLANG_RECORD = 11
constant integer SCE_ERLANG_SEPARATOR = 12
constant integer SCE_ERLANG_NODE_NAME = 13
constant integer SCE_ERLANG_UNKNOWN = 31
constant integer SCE_MSSQL_DEFAULT = 0
constant integer SCE_MSSQL_COMMENT = 1
constant integer SCE_MSSQL_LINE_COMMENT = 2
constant integer SCE_MSSQL_NUMBER = 3
constant integer SCE_MSSQL_STRING = 4
constant integer SCE_MSSQL_OPERATOR = 5
constant integer SCE_MSSQL_IDENTIFIER = 6
constant integer SCE_MSSQL_VARIABLE = 7
constant integer SCE_MSSQL_COLUMN_NAME = 8
constant integer SCE_MSSQL_STATEMENT = 9
constant integer SCE_MSSQL_DATATYPE = 10
constant integer SCE_MSSQL_SYSTABLE = 11
constant integer SCE_MSSQL_GLOBAL_VARIABLE = 12
constant integer SCE_MSSQL_FUNCTION = 13
constant integer SCE_MSSQL_STORED_PROCEDURE = 14
constant integer SCE_MSSQL_DEFAULT_PREF_DATATYPE = 15
constant integer SCE_MSSQL_COLUMN_NAME_2 = 16
constant integer SCE_V_DEFAULT = 0
constant integer SCE_V_COMMENT = 1
constant integer SCE_V_COMMENTLINE = 2
constant integer SCE_V_COMMENTLINEBANG = 3
constant integer SCE_V_NUMBER = 4
constant integer SCE_V_WORD = 5
constant integer SCE_V_STRING = 6
constant integer SCE_V_WORD2 = 7
constant integer SCE_V_WORD3 = 8
constant integer SCE_V_PREPROCESSOR = 9
constant integer SCE_V_OPERATOR = 10
constant integer SCE_V_IDENTIFIER = 11
constant integer SCE_V_STRINGEOL = 12
constant integer SCE_V_USER = 19
constant integer SCE_KIX_DEFAULT = 0
constant integer SCE_KIX_COMMENT = 1
constant integer SCE_KIX_STRING1 = 2
constant integer SCE_KIX_STRING2 = 3
constant integer SCE_KIX_NUMBER = 4
constant integer SCE_KIX_VAR = 5
constant integer SCE_KIX_MACRO = 6
constant integer SCE_KIX_KEYWORD = 7
constant integer SCE_KIX_FUNCTIONS = 8
constant integer SCE_KIX_OPERATOR = 9
constant integer SCE_KIX_IDENTIFIER = 31
constant integer SCE_GC_DEFAULT = 0
constant integer SCE_GC_COMMENTLINE = 1
constant integer SCE_GC_COMMENTBLOCK = 2
constant integer SCE_GC_GLOBAL = 3
constant integer SCE_GC_EVENT = 4
constant integer SCE_GC_ATTRIBUTE = 5
constant integer SCE_GC_CONTROL = 6
constant integer SCE_GC_COMMAND = 7
constant integer SCE_GC_STRING = 8
constant integer SCE_GC_OPERATOR = 9
constant integer SCE_SN_DEFAULT = 0
constant integer SCE_SN_CODE = 1
constant integer SCE_SN_COMMENTLINE = 2
constant integer SCE_SN_COMMENTLINEBANG = 3
constant integer SCE_SN_NUMBER = 4
constant integer SCE_SN_WORD = 5
constant integer SCE_SN_STRING = 6
constant integer SCE_SN_WORD2 = 7
constant integer SCE_SN_WORD3 = 8
constant integer SCE_SN_PREPROCESSOR = 9
constant integer SCE_SN_OPERATOR = 10
constant integer SCE_SN_IDENTIFIER = 11
constant integer SCE_SN_STRINGEOL = 12
constant integer SCE_SN_REGEXTAG = 13
constant integer SCE_SN_SIGNAL = 14
constant integer SCE_SN_USER = 19
constant integer SCE_AU3_DEFAULT = 0
constant integer SCE_AU3_COMMENT = 1
constant integer SCE_AU3_COMMENTBLOCK = 2
constant integer SCE_AU3_NUMBER = 3
constant integer SCE_AU3_FUNCTION = 4
constant integer SCE_AU3_KEYWORD = 5
constant integer SCE_AU3_MACRO = 6
constant integer SCE_AU3_STRING = 7
constant integer SCE_AU3_OPERATOR = 8
constant integer SCE_AU3_VARIABLE = 9
constant integer SCE_AU3_SENT = 10
constant integer SCE_AU3_PREPROCESSOR = 11
constant integer SCE_AU3_SPECIAL = 12
constant integer SCE_AU3_EXPAND = 13
constant integer SCE_AU3_COMOBJ = 14
constant integer SCE_AU3_UDF = 15
constant integer SCE_APDL_DEFAULT = 0
constant integer SCE_APDL_COMMENT = 1
constant integer SCE_APDL_COMMENTBLOCK = 2
constant integer SCE_APDL_NUMBER = 3
constant integer SCE_APDL_STRING = 4
constant integer SCE_APDL_OPERATOR = 5
constant integer SCE_APDL_WORD = 6
constant integer SCE_APDL_PROCESSOR = 7
constant integer SCE_APDL_COMMAND = 8
constant integer SCE_APDL_SLASHCOMMAND = 9
constant integer SCE_APDL_STARCOMMAND = 10
constant integer SCE_APDL_ARGUMENT = 11
constant integer SCE_APDL_FUNCTION = 12
constant integer SCE_SH_DEFAULT = 0
constant integer SCE_SH_ERROR = 1
constant integer SCE_SH_COMMENTLINE = 2
constant integer SCE_SH_NUMBER = 3
constant integer SCE_SH_WORD = 4
constant integer SCE_SH_STRING = 5
constant integer SCE_SH_CHARACTER = 6
constant integer SCE_SH_OPERATOR = 7
constant integer SCE_SH_IDENTIFIER = 8
constant integer SCE_SH_SCALAR = 9
constant integer SCE_SH_PARAM = 10
constant integer SCE_SH_BACKTICKS = 11
constant integer SCE_SH_HERE_DELIM = 12
constant integer SCE_SH_HERE_Q = 13
constant integer SCE_ASN1_DEFAULT = 0
constant integer SCE_ASN1_COMMENT = 1
constant integer SCE_ASN1_IDENTIFIER = 2
constant integer SCE_ASN1_STRING = 3
constant integer SCE_ASN1_OID = 4
constant integer SCE_ASN1_SCALAR = 5
constant integer SCE_ASN1_KEYWORD = 6
constant integer SCE_ASN1_ATTRIBUTE = 7
constant integer SCE_ASN1_DESCRIPTOR = 8
constant integer SCE_ASN1_TYPE = 9
constant integer SCE_ASN1_OPERATOR = 10
constant integer SCE_VHDL_DEFAULT = 0
constant integer SCE_VHDL_COMMENT = 1
constant integer SCE_VHDL_COMMENTLINEBANG = 2
constant integer SCE_VHDL_NUMBER = 3
constant integer SCE_VHDL_STRING = 4
constant integer SCE_VHDL_OPERATOR = 5
constant integer SCE_VHDL_IDENTIFIER = 6
constant integer SCE_VHDL_STRINGEOL = 7
constant integer SCE_VHDL_KEYWORD = 8
constant integer SCE_VHDL_STDOPERATOR = 9
constant integer SCE_VHDL_ATTRIBUTE = 10
constant integer SCE_VHDL_STDFUNCTION = 11
constant integer SCE_VHDL_STDPACKAGE = 12
constant integer SCE_VHDL_STDTYPE = 13
constant integer SCE_VHDL_USERWORD = 14
constant integer SCE_CAML_DEFAULT = 0
constant integer SCE_CAML_IDENTIFIER = 1
constant integer SCE_CAML_TAGNAME = 2
constant integer SCE_CAML_KEYWORD = 3
constant integer SCE_CAML_KEYWORD2 = 4
constant integer SCE_CAML_KEYWORD3 = 5
constant integer SCE_CAML_LINENUM = 6
constant integer SCE_CAML_OPERATOR = 7
constant integer SCE_CAML_NUMBER = 8
constant integer SCE_CAML_CHAR = 9
constant integer SCE_CAML_WHITE = 10
constant integer SCE_CAML_STRING = 11
constant integer SCE_CAML_COMMENT = 12
constant integer SCE_CAML_COMMENT1 = 13
constant integer SCE_CAML_COMMENT2 = 14
constant integer SCE_CAML_COMMENT3 = 15
constant integer SCE_HA_DEFAULT = 0
constant integer SCE_HA_IDENTIFIER = 1
constant integer SCE_HA_KEYWORD = 2
constant integer SCE_HA_NUMBER = 3
constant integer SCE_HA_STRING = 4
constant integer SCE_HA_CHARACTER = 5
constant integer SCE_HA_CLASS = 6
constant integer SCE_HA_MODULE = 7
constant integer SCE_HA_CAPITAL = 8
constant integer SCE_HA_DATA = 9
constant integer SCE_HA_IMPORT = 10
constant integer SCE_HA_OPERATOR = 11
constant integer SCE_HA_INSTANCE = 12
constant integer SCE_HA_COMMENTLINE = 13
constant integer SCE_HA_COMMENTBLOCK = 14
constant integer SCE_HA_COMMENTBLOCK2 = 15
constant integer SCE_HA_COMMENTBLOCK3 = 16
constant integer SCE_T3_DEFAULT = 0
constant integer SCE_T3_X_DEFAULT = 1
constant integer SCE_T3_PREPROCESSOR = 2
constant integer SCE_T3_BLOCK_COMMENT = 3
constant integer SCE_T3_LINE_COMMENT = 4
constant integer SCE_T3_OPERATOR = 5
constant integer SCE_T3_KEYWORD = 6
constant integer SCE_T3_NUMBER = 7
constant integer SCE_T3_IDENTIFIER = 8
constant integer SCE_T3_S_STRING = 9
constant integer SCE_T3_D_STRING = 10
constant integer SCE_T3_X_STRING = 11
constant integer SCE_T3_LIB_DIRECTIVE = 12
constant integer SCE_T3_MSG_PARAM = 13
constant integer SCE_T3_HTML_TAG = 14
constant integer SCE_T3_HTML_DEFAULT = 15
constant integer SCE_T3_HTML_STRING = 16
constant integer SCE_T3_USER1 = 17
constant integer SCE_T3_USER2 = 18
constant integer SCE_T3_USER3 = 19
constant integer SCE_T3_BRACE = 20
constant integer SCE_REBOL_DEFAULT = 0
constant integer SCE_REBOL_COMMENTLINE = 1
constant integer SCE_REBOL_COMMENTBLOCK = 2
constant integer SCE_REBOL_PREFACE = 3
constant integer SCE_REBOL_OPERATOR = 4
constant integer SCE_REBOL_CHARACTER = 5
constant integer SCE_REBOL_QUOTEDSTRING = 6
constant integer SCE_REBOL_BRACEDSTRING = 7
constant integer SCE_REBOL_NUMBER = 8
constant integer SCE_REBOL_PAIR = 9
constant integer SCE_REBOL_TUPLE = 10
constant integer SCE_REBOL_BINARY = 11
constant integer SCE_REBOL_MONEY = 12
constant integer SCE_REBOL_ISSUE = 13
constant integer SCE_REBOL_TAG = 14
constant integer SCE_REBOL_FILE = 15
constant integer SCE_REBOL_EMAIL = 16
constant integer SCE_REBOL_URL = 17
constant integer SCE_REBOL_DATE = 18
constant integer SCE_REBOL_TIME = 19
constant integer SCE_REBOL_IDENTIFIER = 20
constant integer SCE_REBOL_WORD = 21
constant integer SCE_REBOL_WORD2 = 22
constant integer SCE_REBOL_WORD3 = 23
constant integer SCE_REBOL_WORD4 = 24
constant integer SCE_REBOL_WORD5 = 25
constant integer SCE_REBOL_WORD6 = 26
constant integer SCE_REBOL_WORD7 = 27
constant integer SCE_REBOL_WORD8 = 28
constant integer SCE_SQL_SQLPLUS = 8
constant integer SCE_SQL_SQLPLUS_PROMPT = 9
constant integer SCE_SQL_OPERATOR = 10
constant integer SCE_SQL_IDENTIFIER = 11
constant integer SCE_SQL_SQLPLUS_COMMENT = 13
constant integer SCE_SQL_COMMENTLINEDOC = 15
constant integer SCE_SQL_COMMENTDOCKEYWORD = 17
constant integer SCE_SQL_COMMENTDOCKEYWORDERROR = 18
constant integer SCE_SQL_USER1 = 19
constant integer SCE_SQL_USER2 = 20
constant integer SCE_SQL_USER3 = 21
constant integer SCE_SQL_USER4 = 22
constant integer SCE_SQL_QUOTEDIDENTIFIER = 23
constant integer SCE_ST_DEFAULT = 0
constant integer SCE_ST_STRING = 1
constant integer SCE_ST_NUMBER = 2
constant integer SCE_ST_COMMENT = 3
constant integer SCE_ST_SYMBOL = 4
constant integer SCE_ST_BINARY = 5
constant integer SCE_ST_BOOL = 6
constant integer SCE_ST_SELF = 7
constant integer SCE_ST_SUPER = 8
constant integer SCE_ST_NIL = 9
constant integer SCE_ST_GLOBAL = 10
constant integer SCE_ST_RETURN = 11
constant integer SCE_ST_SPECIAL = 12
constant integer SCE_ST_KWSEND = 13
constant integer SCE_ST_ASSIGN = 14
constant integer SCE_ST_CHARACTER = 15
constant integer SCE_ST_SPEC_SEL = 16
constant integer SCE_FS_DEFAULT = 0
constant integer SCE_FS_COMMENT = 1
constant integer SCE_FS_COMMENTLINE = 2
constant integer SCE_FS_COMMENTDOC = 3
constant integer SCE_FS_COMMENTLINEDOC = 4
constant integer SCE_FS_COMMENTDOCKEYWORD = 5
constant integer SCE_FS_COMMENTDOCKEYWORDERROR = 6
constant integer SCE_FS_KEYWORD = 7
constant integer SCE_FS_KEYWORD2 = 8
constant integer SCE_FS_KEYWORD3 = 9
constant integer SCE_FS_KEYWORD4 = 10
constant integer SCE_FS_NUMBER = 11
constant integer SCE_FS_STRING = 12
constant integer SCE_FS_PREPROCESSOR = 13
constant integer SCE_FS_OPERATOR = 14
constant integer SCE_FS_IDENTIFIER = 15
constant integer SCE_FS_DATE = 16
constant integer SCE_FS_STRINGEOL = 17
constant integer SCE_FS_CONSTANT = 18
constant integer SCE_FS_ASM = 19
constant integer SCE_FS_LABEL = 20
constant integer SCE_FS_ERROR = 21
constant integer SCE_FS_HEXNUMBER = 22
constant integer SCE_FS_BINNUMBER = 23
constant integer SCE_CSOUND_DEFAULT = 0
constant integer SCE_CSOUND_COMMENT = 1
constant integer SCE_CSOUND_NUMBER = 2
constant integer SCE_CSOUND_OPERATOR = 3
constant integer SCE_CSOUND_INSTR = 4
constant integer SCE_CSOUND_IDENTIFIER = 5
constant integer SCE_CSOUND_OPCODE = 6
constant integer SCE_CSOUND_HEADERSTMT = 7
constant integer SCE_CSOUND_USERKEYWORD = 8
constant integer SCE_CSOUND_COMMENTBLOCK = 9
constant integer SCE_CSOUND_PARAM = 10
constant integer SCE_CSOUND_ARATE_VAR = 11
constant integer SCE_CSOUND_KRATE_VAR = 12
constant integer SCE_CSOUND_IRATE_VAR = 13
constant integer SCE_CSOUND_GLOBAL_VAR = 14
constant integer SCE_CSOUND_STRINGEOL = 15
constant integer SCE_INNO_DEFAULT = 0
constant integer SCE_INNO_COMMENT = 1
constant integer SCE_INNO_KEYWORD = 2
constant integer SCE_INNO_PARAMETER = 3
constant integer SCE_INNO_SECTION = 4
constant integer SCE_INNO_PREPROC = 5
constant integer SCE_INNO_PREPROC_INLINE = 6
constant integer SCE_INNO_INLINE_EXPANSION = 6
constant integer SCE_INNO_COMMENT_PASCAL = 7
constant integer SCE_INNO_KEYWORD_PASCAL = 8
constant integer SCE_INNO_KEYWORD_USER = 9
constant integer SCE_INNO_STRING_DOUBLE = 10
constant integer SCE_INNO_STRING_SINGLE = 11
constant integer SCE_INNO_IDENTIFIER = 12
constant integer SCE_OPAL_SPACE = 0
constant integer SCE_OPAL_COMMENT_BLOCK = 1
constant integer SCE_OPAL_COMMENT_LINE = 2
constant integer SCE_OPAL_INTEGER = 3
constant integer SCE_OPAL_KEYWORD = 4
constant integer SCE_OPAL_SORT = 5
constant integer SCE_OPAL_STRING = 6
constant integer SCE_OPAL_PAR = 7
constant integer SCE_OPAL_BOOL_CONST = 8
constant integer SCE_OPAL_DEFAULT = 32
constant integer SCE_SPICE_DEFAULT = 0
constant integer SCE_SPICE_IDENTIFIER = 1
constant integer SCE_SPICE_KEYWORD = 2
constant integer SCE_SPICE_KEYWORD2 = 3
constant integer SCE_SPICE_KEYWORD3 = 4
constant integer SCE_SPICE_NUMBER = 5
constant integer SCE_SPICE_DELIMITER = 6
constant integer SCE_SPICE_VALUE = 7
constant integer SCE_SPICE_COMMENTLINE = 8
constant integer SCE_CMAKE_DEFAULT = 0
constant integer SCE_CMAKE_COMMENT = 1
constant integer SCE_CMAKE_STRINGDQ = 2
constant integer SCE_CMAKE_STRINGLQ = 3
constant integer SCE_CMAKE_STRINGRQ = 4
constant integer SCE_CMAKE_COMMANDS = 5
constant integer SCE_CMAKE_PARAMETERS = 6
constant integer SCE_CMAKE_VARIABLE = 7
constant integer SCE_CMAKE_USERDEFINED = 8
constant integer SCE_CMAKE_WHILEDEF = 9
constant integer SCE_CMAKE_FOREACHDEF = 10
constant integer SCE_CMAKE_IFDEFINEDEF = 11
constant integer SCE_CMAKE_MACRODEF = 12
constant integer SCE_CMAKE_STRINGVAR = 13
constant integer SCE_CMAKE_NUMBER = 14
constant integer SCE_GAP_DEFAULT = 0
constant integer SCE_GAP_IDENTIFIER = 1
constant integer SCE_GAP_KEYWORD = 2
constant integer SCE_GAP_KEYWORD2 = 3
constant integer SCE_GAP_KEYWORD3 = 4
constant integer SCE_GAP_KEYWORD4 = 5
constant integer SCE_GAP_STRING = 6
constant integer SCE_GAP_CHAR = 7
constant integer SCE_GAP_OPERATOR = 8
constant integer SCE_GAP_COMMENT = 9
constant integer SCE_GAP_NUMBER = 10
constant integer SCE_GAP_STRINGEOL = 11
constant integer SCE_PLM_DEFAULT = 0
constant integer SCE_PLM_COMMENT = 1
constant integer SCE_PLM_STRING = 2
constant integer SCE_PLM_NUMBER = 3
constant integer SCE_PLM_IDENTIFIER = 4
constant integer SCE_PLM_OPERATOR = 5
constant integer SCE_PLM_CONTROL = 6
constant integer SCE_PLM_KEYWORD = 7
constant integer SCE_4GL_DEFAULT = 0
constant integer SCE_4GL_NUMBER = 1
constant integer SCE_4GL_WORD = 2
constant integer SCE_4GL_STRING = 3
constant integer SCE_4GL_CHARACTER = 4
constant integer SCE_4GL_PREPROCESSOR = 5
constant integer SCE_4GL_OPERATOR = 6
constant integer SCE_4GL_IDENTIFIER = 7
constant integer SCE_4GL_BLOCK = 8
constant integer SCE_4GL_END = 9
constant integer SCE_4GL_COMMENT1 = 10
constant integer SCE_4GL_COMMENT2 = 11
constant integer SCE_4GL_COMMENT3 = 12
constant integer SCE_4GL_COMMENT4 = 13
constant integer SCE_4GL_COMMENT5 = 14
constant integer SCE_4GL_COMMENT6 = 15
constant integer SCE_4GL_DEFAULT_ = 16
constant integer SCE_4GL_NUMBER_ = 17
constant integer SCE_4GL_WORD_ = 18
constant integer SCE_4GL_STRING_ = 19
constant integer SCE_4GL_CHARACTER_ = 20
constant integer SCE_4GL_PREPROCESSOR_ = 21
constant integer SCE_4GL_OPERATOR_ = 22
constant integer SCE_4GL_IDENTIFIER_ = 23
constant integer SCE_4GL_BLOCK_ = 24
constant integer SCE_4GL_END_ = 25
constant integer SCE_4GL_COMMENT1_ = 26
constant integer SCE_4GL_COMMENT2_ = 27
constant integer SCE_4GL_COMMENT3_ = 28
constant integer SCE_4GL_COMMENT4_ = 29
constant integer SCE_4GL_COMMENT5_ = 30
constant integer SCE_4GL_COMMENT6_ = 31
constant integer SCE_ABAQUS_DEFAULT = 0
constant integer SCE_ABAQUS_COMMENT = 1
constant integer SCE_ABAQUS_COMMENTBLOCK = 2
constant integer SCE_ABAQUS_NUMBER = 3
constant integer SCE_ABAQUS_STRING = 4
constant integer SCE_ABAQUS_OPERATOR = 5
constant integer SCE_ABAQUS_WORD = 6
constant integer SCE_ABAQUS_PROCESSOR = 7
constant integer SCE_ABAQUS_COMMAND = 8
constant integer SCE_ABAQUS_SLASHCOMMAND = 9
constant integer SCE_ABAQUS_STARCOMMAND = 10
constant integer SCE_ABAQUS_ARGUMENT = 11
constant integer SCE_ABAQUS_FUNCTION = 12
constant integer SCE_ASY_DEFAULT = 0
constant integer SCE_ASY_COMMENT = 1
constant integer SCE_ASY_COMMENTLINE = 2
constant integer SCE_ASY_NUMBER = 3
constant integer SCE_ASY_WORD = 4
constant integer SCE_ASY_STRING = 5
constant integer SCE_ASY_CHARACTER = 6
constant integer SCE_ASY_OPERATOR = 7
constant integer SCE_ASY_IDENTIFIER = 8
constant integer SCE_ASY_STRINGEOL = 9
constant integer SCE_ASY_COMMENTLINEDOC = 10
constant integer SCE_ASY_WORD2 = 11
constant integer SCE_R_DEFAULT = 0
constant integer SCE_R_COMMENT = 1
constant integer SCE_R_KWORD = 2
constant integer SCE_R_BASEKWORD = 3
constant integer SCE_R_OTHERKWORD = 4
constant integer SCE_R_NUMBER = 5
constant integer SCE_R_STRING = 6
constant integer SCE_R_STRING2 = 7
constant integer SCE_R_OPERATOR = 8
constant integer SCE_R_IDENTIFIER = 9
constant integer SCE_R_INFIX = 10
constant integer SCE_R_INFIXEOL = 11
constant integer SCE_MAGIK_DEFAULT = 0
constant integer SCE_MAGIK_COMMENT = 1
constant integer SCE_MAGIK_HYPER_COMMENT = 16
constant integer SCE_MAGIK_STRING = 2
constant integer SCE_MAGIK_CHARACTER = 3
constant integer SCE_MAGIK_NUMBER = 4
constant integer SCE_MAGIK_IDENTIFIER = 5
constant integer SCE_MAGIK_OPERATOR = 6
constant integer SCE_MAGIK_FLOW = 7
constant integer SCE_MAGIK_CONTAINER = 8
constant integer SCE_MAGIK_BRACKET_BLOCK = 9
constant integer SCE_MAGIK_BRACE_BLOCK = 10
constant integer SCE_MAGIK_SQBRACKET_BLOCK = 11
constant integer SCE_MAGIK_UNKNOWN_KEYWORD = 12
constant integer SCE_MAGIK_KEYWORD = 13
constant integer SCE_MAGIK_PRAGMA = 14
constant integer SCE_MAGIK_SYMBOL = 15
constant integer SCE_POWERSHELL_DEFAULT = 0
constant integer SCE_POWERSHELL_COMMENT = 1
constant integer SCE_POWERSHELL_STRING = 2
constant integer SCE_POWERSHELL_CHARACTER = 3
constant integer SCE_POWERSHELL_NUMBER = 4
constant integer SCE_POWERSHELL_VARIABLE = 5
constant integer SCE_POWERSHELL_OPERATOR = 6
constant integer SCE_POWERSHELL_IDENTIFIER = 7
constant integer SCE_POWERSHELL_KEYWORD = 8
constant integer SCE_POWERSHELL_CMDLET = 9
constant integer SCE_POWERSHELL_ALIAS = 10
constant integer SCE_MYSQL_DEFAULT = 0
constant integer SCE_MYSQL_COMMENT = 1
constant integer SCE_MYSQL_COMMENTLINE = 2
constant integer SCE_MYSQL_VARIABLE = 3
constant integer SCE_MYSQL_SYSTEMVARIABLE = 4
constant integer SCE_MYSQL_KNOWNSYSTEMVARIABLE = 5
constant integer SCE_MYSQL_NUMBER = 6
constant integer SCE_MYSQL_MAJORKEYWORD = 7
constant integer SCE_MYSQL_KEYWORD = 8
constant integer SCE_MYSQL_DATABASEOBJECT = 9
constant integer SCE_MYSQL_PROCEDUREKEYWORD = 10
constant integer SCE_MYSQL_STRING = 11
constant integer SCE_MYSQL_SQSTRING = 12
constant integer SCE_MYSQL_DQSTRING = 13
constant integer SCE_MYSQL_OPERATOR = 14
constant integer SCE_MYSQL_FUNCTION = 15
constant integer SCE_MYSQL_IDENTIFIER = 16
constant integer SCE_MYSQL_QUOTEDIDENTIFIER = 17
constant integer SCE_MYSQL_USER1 = 18
constant integer SCE_MYSQL_USER2 = 19
constant integer SCE_MYSQL_USER3 = 20
constant integer SCE_MYSQL_HIDDENCOMMAND = 21
constant integer SCE_PO_DEFAULT = 0
constant integer SCE_PO_COMMENT = 1
constant integer SCE_PO_MSGID = 2
constant integer SCE_PO_MSGID_TEXT = 3
constant integer SCE_PO_MSGSTR = 4
constant integer SCE_PO_MSGSTR_TEXT = 5
constant integer SCE_PO_MSGCTXT = 6
constant integer SCE_PO_MSGCTXT_TEXT = 7
constant integer SCE_PO_FUZZY = 8
constant integer SCE_PAS_DEFAULT = 0
constant integer SCE_PAS_IDENTIFIER = 1
constant integer SCE_PAS_COMMENT = 2
constant integer SCE_PAS_COMMENT2 = 3
constant integer SCE_PAS_COMMENTLINE = 4
constant integer SCE_PAS_PREPROCESSOR = 5
constant integer SCE_PAS_PREPROCESSOR2 = 6
constant integer SCE_PAS_NUMBER = 7
constant integer SCE_PAS_HEXNUMBER = 8
constant integer SCE_PAS_WORD = 9
constant integer SCE_PAS_STRING = 10
constant integer SCE_PAS_STRINGEOL = 11
constant integer SCE_PAS_CHARACTER = 12
constant integer SCE_PAS_OPERATOR = 13
constant integer SCE_PAS_ASM = 14
constant integer SCE_SORCUS_DEFAULT = 0
constant integer SCE_SORCUS_COMMAND = 1
constant integer SCE_SORCUS_PARAMETER = 2
constant integer SCE_SORCUS_COMMENTLINE = 3
constant integer SCE_SORCUS_STRING = 4
constant integer SCE_SORCUS_STRINGEOL = 5
constant integer SCE_SORCUS_IDENTIFIER = 6
constant integer SCE_SORCUS_OPERATOR = 7
constant integer SCE_SORCUS_NUMBER = 8
constant integer SCE_SORCUS_CONSTANT = 9
constant integer SCE_POWERPRO_DEFAULT = 0
constant integer SCE_POWERPRO_COMMENTBLOCK = 1
constant integer SCE_POWERPRO_COMMENTLINE = 2
constant integer SCE_POWERPRO_NUMBER = 3
constant integer SCE_POWERPRO_WORD = 4
constant integer SCE_POWERPRO_WORD2 = 5
constant integer SCE_POWERPRO_WORD3 = 6
constant integer SCE_POWERPRO_WORD4 = 7
constant integer SCE_POWERPRO_DOUBLEQUOTEDSTRING = 8
constant integer SCE_POWERPRO_SINGLEQUOTEDSTRING = 9
constant integer SCE_POWERPRO_LINECONTINUE = 10
constant integer SCE_POWERPRO_OPERATOR = 11
constant integer SCE_POWERPRO_IDENTIFIER = 12
constant integer SCE_POWERPRO_STRINGEOL = 13
constant integer SCE_POWERPRO_VERBATIM = 14
constant integer SCE_POWERPRO_ALTQUOTE = 15
constant integer SCE_POWERPRO_FUNCTION = 16
constant integer SCE_SML_DEFAULT = 0
constant integer SCE_SML_IDENTIFIER = 1
constant integer SCE_SML_TAGNAME = 2
constant integer SCE_SML_KEYWORD = 3
constant integer SCE_SML_KEYWORD2 = 4
constant integer SCE_SML_KEYWORD3 = 5
constant integer SCE_SML_LINENUM = 6
constant integer SCE_SML_OPERATOR = 7
constant integer SCE_SML_NUMBER = 8
constant integer SCE_SML_CHAR = 9
constant integer SCE_SML_STRING = 11
constant integer SCE_SML_COMMENT = 12
constant integer SCE_SML_COMMENT1 = 13
constant integer SCE_SML_COMMENT2 = 14
constant integer SCE_SML_COMMENT3 = 15

end variables

forward prototypes
public function long of_setlanguage (string as_language)
public subroutine of_showlinenumbers (boolean ab_show)
public function long of_gotoline (long al_line)
public function boolean of_ismodified ()
public function long of_setnotmodified ()
public function string of_gettext ()
public function long of_getcurrentcolumn ()
public function long of_getcurrentline ()
public function string of_getselectedtext ()
public function long of_inserttext (string as_text)
public function long of_replaceselectedtext (string as_text)
public function long of_setfont (string as_font)
public function long of_setfontbold (boolean ab_bold)
public function long of_setfontitalic (boolean ab_italic)
public function long of_setfontsize (integer ai_size)
public function long of_settabwidth (integer ai_width)
public function long of_copy ()
public function long of_cut ()
public function long of_undo ()
public function long of_paste ()
public function long of_selectall ()
public function long of_clear ()
public function boolean of_canundo ()
public function boolean of_canpaste ()
public function boolean of_cancopy ()
public function long of_gettabwidth ()
public function long of_showindentguides (boolean ab_show)
public function long of_setmargintextcolor (long al_textcolor)
public function long of_setmarginbackcolor (long al_backcolor)
public function unsignedlong of_getsyscolor (integer ai_index)
public function long of_setselectcolor (long al_backcolor)
public function long of_color (string as_colorname)
public function long of_sendeditor (long al_msg, long al_parm1, long al_parm2)
public function long of_sendeditor (long al_msg, long al_parm1)
public subroutine of_enablefolding ()
public function long of_delete ()
public function long of_sendeditor (long al_msg)
public function long of_selecttext (long al_start, long al_length)
public function long of_sendeditor (long al_msg, long al_parm1, ref string as_parm2)
public function long of_sendeditor (long al_msg, string as_parm1, ref string as_parm2)
public subroutine of_setfoldlinecolor (long al_color)
public subroutine of_setfoldmarkercolor (long al_color)
public subroutine of_setfoldboxcolor (long al_color)
public subroutine of_set_sql ()
public subroutine of_set_powerbuilder ()
public function string of_getkeywords (integer ai_keyset, string as_language)
public function long of_gotopos (long al_pos)
public function long of_setusepopup (boolean ab_usepopup)
public function long of_setovertype (boolean ab_overtype)
public function boolean of_isovertype ()
public function boolean of_canredo ()
public function long of_redo ()
public function long of_changecase (textcase a_case)
public function long of_wordcap ()
public function boolean of_find (string as_findstring, boolean ab_matchcase, boolean ab_wholeword, boolean ab_wordstart, boolean ab_backwards)
public function integer of_replaceall (string as_findstring, string as_replacestring, boolean ab_matchcase, boolean ab_wholeword, boolean ab_wordstart)
public function boolean of_markeractive (long al_linenumber)
public function long of_markerdelete (long al_linenumber)
public function long of_markerdeleteall ()
public function long of_markernext (long al_linenumber)
public function long of_markerprev (long al_linenumber)
public function long of_markeradd (long al_type, long al_line, long al_color)
public subroutine of_commentselected ()
public subroutine of_uncommentselected ()
public function long of_gettextlength ()
public function integer of_findall (string as_findstring, boolean ab_matchcase, boolean ab_wholeword, boolean ab_wordstart)
public subroutine of_showwhitespace (boolean ab_show)
public subroutine of_showeol (boolean ab_show)
public subroutine of_emptyclipboard ()
public function long of_getselectedlength ()
public subroutine of_indentselected ()
public subroutine of_unindentselected ()
public function integer of_gotoprevtab ()
public function long of_stylegetbold (long al_style)
public function long of_stylesetfore (long al_style, long al_color)
public function long of_stylesetbold (long al_style, boolean ab_bold)
public function long of_getlexer ()
public function integer of_setkeywords (long al_wordset, string as_keywords)
public function long of_getstylebitsneeded ()
public function long of_getstylebits ()
public function long of_setstylebits (long al_bits)
public function long of_getstyleat (long al_pos)
public function long of_getcurrentpos ()
public function integer of_cleardocumentstyle ()
public function integer of_stylesetfont (long al_style, string as_font)
public function integer of_stylesetsize (long al_style, integer ai_size)
public function long of_stylesetback (long al_style, long al_color)
public function long of_getwrapmode ()
public function long of_setwrapmode (long al_wrapmode)
public function long of_getwrapvisualflags ()
public function long of_setwrapvisualflags (long al_wrapvisuflags)
public function long of_setviewws (long al_wsmode)
public function integer of_setwhitespaceback (long al_use, long al_backcolor)
public function integer of_setwhitespacefore (long al_use, long al_forecolor)
public function long of_getviewws ()
public function long of_setproperty (string as_keyword, string as_value)
public function long of_markeradd (long al_marker_idx, long al_line)
public function long of_markerdelete (long al_marker_idx, long al_linenumber)
public subroutine of_markerdefine (long al_marker_idx, long al_type, long al_color)
public function string of_stringptr (long textptr, charset textcharset)
public function long of_setencoding (encoding aencoding)
public function long of_setseparator (character ac_separator)
public function long of_zoomin ()
public function long of_zoomout ()
public function long of_zoomlevel (integer ai_level)
public function long of_getzoomlevel ()
public function long of_setreadonly (boolean ab_readonly)
public function long of_macrorecording (boolean ab_record)
public function long of_setdwelltime (long al_dwelldelay)
public function long of_getreadonly ()
public function long of_setlexer (long al_lexer)
public function long of_loadlexerlibrary (string as_library)
public function long of_gettextheight (long al_line)
public function long of_gettextwidth (long al_stylenumber, string as_text)
public function long of_setmarginwidthn (integer ai_margin, integer ai_width)
public function long of_settext (string as_text)
public function long of_appendtext (string as_text)
public function long of_getlinecount ()
public subroutine stylesetspec (integer styleindex, string stylespecs)
public function long to_long (string as_value)
public function long of_setstyleitalic (long al_style, boolean ab_bold)
public function long of_setstyleunderline (long al_style, boolean ab_bold)
public function long of_setstyleeolfilled (long al_style, boolean ab_bold)
public subroutine setmargintypen (integer arg_1, integer arg_2)
public subroutine setmarginwidthn (integer arg_1, integer arg_2)
public subroutine setmarginsensitiven (integer arg_1, integer arg_2)
public subroutine markerdefine (integer arg_1, integer arg_2)
public subroutine markersetfore (integer arg_1, string arg_2)
public subroutine markersetback (integer arg_1, string arg_2)
public subroutine styleclearall ()
public subroutine setedgecolumn (integer arg_1)
public subroutine setedgemode (integer arg_1)
public subroutine setindent (integer arg_1)
public subroutine setusetabs (integer arg_1)
public subroutine setindentationguides (integer arg_1)
public subroutine setmarginmaskn (integer arg_1, unsignedlong arg_2)
public function string pop_str (ref string as_str, string as_lookup)
public function boolean split_to_array (string as_string, string as_separator, ref string as_array[])
end prototypes

event losefocus;// losefocus

Long caretPos
String ls_tab = "~t"

If KeyDown(KeyTab!) Then
	If of_GetSelectedLength() > 0 Then
		If KeyDown(KeyShift!) Then
			// unindent selected lines
			of_UnindentSelected()
		Else
			// indent selected lines
			of_IndentSelected()
		End If
	Else
		If KeyDown(KeyShift!) Then
			// move caret back by tab width
			of_GotoPrevTab()
		Else
			// insert a tab and move caret ahead one
			caretPos = of_SendEditor(SCI_GETCURRENTPOS)
			of_SendEditor(SCI_INSERTTEXT, caretPos, ls_tab)
			of_SendEditor(SCI_GOTOPOS, caretPos + 1)
		End If
	End If
	this.SetFocus()
End If

end event

event getfocus;// getfocus

end event

event scn_marginclick(long modifiers, long position, long margin);// margin clicked
Long ll_line

if ib_verbose_debug then outputdebugstring("scn_marginclick")

ll_line = of_SendEditor(SCI_LINEFROMPOSITION, position, 0)

choose case margin
	case MARGIN_SCRIPT_FOLD_INDEX
		// toggle folding on the line
		of_SendEditor(SCI_TOGGLEFOLD, ll_line, 0)
end choose

end event

event scn_updateui();// update user interface
long lStart, lEnd
string cur = ' '

//if desired, we try to highlight a brace, curly brace, square brace or angle brace
//corresponding to the character preceding the caret position.
if ib_highlight_matching_braces = true then
	lStart = of_SendEditor(SCI_GETCURRENTPOS, 0, 0)
	if lStart > 0 then
		of_SendEditor(SCI_BRACEBADLIGHT, INVALID_POSITION, INVALID_POSITION)
		cur = char(of_SendEditor(SCI_GETCHARAT, lStart - 1))
		if Pos('()[]{}<>', cur) > 0 then
			lEnd = of_SendEditor(SCI_BRACEMATCH, lStart - 1, 0)
			if lEnd = INVALID_POSITION then
			// if there is NO matching brace highlight with bad brace style
				of_SendEditor(SCI_BRACEBADLIGHT, lStart - 1, 0)
			else
			// if there is a matching brace highlight it
				of_SendEditor(SCI_BRACEHIGHLIGHT, lStart - 1, lEnd)
			end if
		end if
	end if
end if

end event

event editchanged;// editchanged

end event

event scn_savepoint(boolean reached);// savepoint reached or left

end event

event wm_notify;scNotification scn
String ls_text

// copy structure to local
CopyNotification(scn, lparam, 80)

// process notification messages
Choose Case scn.code
	Case SCN_AUTOCCANCELLED
		this.Event scn_autoccancelled()
	Case SCN_AUTOCSELECTION
		ls_text = of_StringPtr(scn.text, CharsetAnsi!)
		this.Event scn_autocselection(scn.lParam, ls_text)
	Case SCN_CALLTIPCLICK
		this.Event scn_calltipclick(scn.position)
	Case SCN_DOUBLECLICK
		this.Event scn_doubleclick(scn.position, scn.line)
	Case SCN_DWELLSTART
		this.Event scn_dwellstart(scn.position, scn.x, scn.y)
	Case SCN_DWELLEND
		this.Event scn_dwellend(scn.position, scn.x, scn.y)
	Case SCN_HOTSPOTCLICK
		this.Event scn_hotspotclick(scn.position, scn.modifiers)
	Case SCN_HOTSPOTDOUBLECLICK
		this.Event scn_hotspotdoubleclick(scn.position, scn.modifiers)
	Case SCN_INDICATORCLICK
		this.Event scn_indicatorclick(scn.position, scn.modifiers)
	Case SCN_INDICATORRELEASE
		this.Event scn_indicatorrelease(scn.position, scn.modifiers)
	Case SCN_MACRORECORD
		this.Event scn_macrorecord(scn.message, scn.wparam, scn.lparam)
	Case SCN_MARGINCLICK
		this.Event scn_marginclick(scn.modifiers, scn.position, scn.margin)
	Case SCN_MODIFYATTEMPTRO
		this.Event scn_modifyattemptro()
	Case SCN_SAVEPOINTREACHED
		this.Event scn_savepoint(True)
	Case SCN_SAVEPOINTLEFT
		this.Event scn_savepoint(False)
	Case SCN_UPDATEUI
		this.Event scn_updateui()
	Case SCN_USERLISTSELECTION
		ls_text = of_StringPtr(scn.text, CharsetAnsi!)
		this.Event scn_userlistselection(scn.listType, ls_text)
	Case SCN_ZOOM
		this.Event scn_zoom()
End Choose

Return 0

end event

event wm_char;Character TAB = "~t"

// discard extra TAB characters
If key = TAB Then
	Return 1
End If

Return 0

end event

event scn_userlistselection(unsignedlong listtype, string selectedtext);// user list selection

end event

event scn_autocselection(long startposition, string selectedtext);// auto-complete selection

end event

event scn_autoccancelled;// auto-complete cancelled

end event

event scn_dwellstart(long position, long xpos, long ypos);// mouse dwell start

end event

event scn_dwellend(long position, long xpos, long ypos);// mouse dwell end

end event

event scn_modifyattemptro();// user attempted to change text while in readonly mode

end event

event scn_zoom();// the zoom level changed

end event

event scn_doubleclick(long position, long line);// user double clicked

end event

event scn_macrorecord(long msg, unsignedlong wparam, long lparam);// macro recordable event occurred

end event

event scn_calltipclick(long position);// call tip clicked on

end event

event scn_hotspotclick(long position, long modifiers);// hot spot clicked

end event

event scn_hotspotdoubleclick(long position, long modifiers);// hot spot double clicked

end event

event scn_indicatorclick(long position, long modifiers);// indicator clicked

end event

event scn_indicatorrelease(long position, long modifiers);// indicator released

end event

public function long of_setlanguage (string as_language);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetLanguage
//
// PURPOSE:    This function will set the text language
//
// ARGUMENTS:  as_language	- The language code
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
long l_ret

l_ret = of_SendEditor(SCI_SETLEXERLANGUAGE, 0, as_language)

// refer to the "Text retrieval and modification" section of the scintilla documentation
// for info about the styles bits
of_setstylebits(of_getstylebitsneeded())

Return l_ret

end function

public subroutine of_showlinenumbers (boolean ab_show);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ShowLineNumbers
//
// PURPOSE:    This function will toggle line numbers on/off
//
// ARGUMENTS:  ab_show	- True=Show line numbers, False=Do not show them
//
// RETURN:		None
// -----------------------------------------------------------------------------

ib_shownumbers = ab_show

If ib_shownumbers Then
	of_SendEditor(SCI_SETMARGINWIDTHN, 0, 45)
Else
	of_SendEditor(SCI_SETMARGINWIDTHN, 0, 0)
End If

end subroutine

public function long of_gotoline (long al_line);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GotoLine
//
// PURPOSE:    This function will move the cursor to a specified line
//
// ARGUMENTS:  al_line	- The line to goto in the text
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

// unfold if the line is hidden
of_SendEditor(SCI_ENSUREVISIBLEENFORCEPOLICY, al_line - 1)

// move the cursor to the specific line number
Return of_SendEditor(SCI_GOTOLINE, al_line - 1)

end function

public function boolean of_ismodified ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_IsModified
//
// PURPOSE:    This function returns whether text has been modified
//
// RETURN:		True=Text modified, False=Text not modified
// -----------------------------------------------------------------------------

If of_SendEditor(SCI_GETMODIFY) <= 0 Then
	Return False
Else
	Return True
End If

end function

public function long of_setnotmodified ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetNotModified
//
// PURPOSE:    This function will mark the document as unchanged.
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

of_SendEditor(SCI_EMPTYUNDOBUFFER)

Return of_SendEditor(SCI_SETSAVEPOINT)

end function

public function string of_gettext ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetText
//
// PURPOSE:    This function returns the text in the control
//
// RETURN:		The text contained in the control
// -----------------------------------------------------------------------------

String ls_text
Long ll_length

// get the length of the text
ll_length = of_SendEditor(SCI_GETTEXTLENGTH) + 1

// allocated a buffer to recieve it
ls_text = Space(ll_length)

// get the text from the control
of_SendEditor(SCI_GETTEXT, ll_length, ls_text)

Return ls_text

end function

public function long of_getcurrentcolumn ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetCurrentColumn
//
// PURPOSE:    This function returns the column that the caret is on
//
// RETURN:		The column number
// -----------------------------------------------------------------------------

Long caretPos

caretPos = of_SendEditor(SCI_GETCURRENTPOS)

Return of_SendEditor(SCI_GETCOLUMN, caretPos) + 1

end function

public function long of_getcurrentline ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetCurrentLine
//
// PURPOSE:    This function returns the line that the caret is on
//
// RETURN:		The line number
// -----------------------------------------------------------------------------

Long caretPos

caretPos = of_SendEditor(SCI_GETCURRENTPOS)

Return of_SendEditor(SCI_LINEFROMPOSITION, caretPos) + 1

end function

public function string of_getselectedtext ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetSelectedText
//
// PURPOSE:    This function returns the selected text in the control
//
// RETURN:		The selected text
// -----------------------------------------------------------------------------

String ls_text
Long ll_length

// get the length of the selected text
ll_length = of_SendEditor(SCI_GETSELECTIONEND) - of_SendEditor(SCI_GETSELECTIONSTART)

// allocated a buffer to recieve it
ls_text = Space(ll_length)

// get the text from the control
of_SendEditor(SCI_GETSELTEXT, ll_length, ls_text)

Return ls_text

end function

public function long of_inserttext (string as_text);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_InsertText
//
// PURPOSE:    This function will insert text into the document
//
// ARGUMENTS:  as_text	- The text to be inserted
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_INSERTTEXT, -1, as_text)

end function

public function long of_replaceselectedtext (string as_text);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ReplaceSelectedText
//
// PURPOSE:    This function will replace the selected text
//
// ARGUMENTS:  as_text	- The new text that replaces the selected text
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_REPLACESEL, 0, as_text)

end function

public function long of_setfont (string as_font);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetFont
//
// PURPOSE:    This function will change the text font
//
// ARGUMENTS:  as_font	- The name of the font
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

is_FaceName = as_font

Return of_SendEditor(SCI_STYLESETFONT, STYLE_DEFAULT, as_font)

end function

public function long of_setfontbold (boolean ab_bold);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetFontBold
//
// PURPOSE:    This function will toggle font bold on/off
//
// ARGUMENTS:  ab_bold	- True=Bold, False=Not bold
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

ibold = ab_bold

If ab_bold Then
	Return of_SendEditor(SCI_STYLESETBOLD, STYLE_DEFAULT, 1)
Else
	Return of_SendEditor(SCI_STYLESETBOLD, STYLE_DEFAULT, 0)
End If

end function

public function long of_setfontitalic (boolean ab_italic);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetFontItalic
//
// PURPOSE:    This function will toggle font italic on/off
//
// ARGUMENTS:  ab_italic	- True=Italic, False=Not Italic
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

iItalic = ab_italic

If ab_italic Then
	Return of_SendEditor(SCI_STYLESETITALIC, STYLE_DEFAULT, 1)
Else
	Return of_SendEditor(SCI_STYLESETITALIC, STYLE_DEFAULT, 0)
End If

end function

public function long of_setfontsize (integer ai_size);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetFontSize
//
// PURPOSE:    This function will change the font size
//
// ARGUMENTS:  ai_size	- The font size
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

iTextSize = ai_size

Return of_SendEditor(SCI_STYLESETSIZE, STYLE_DEFAULT, ai_size)

end function

public function long of_settabwidth (integer ai_width);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetTabWidth
//
// PURPOSE:    This function will change the tab spacing
//
// ARGUMENTS:  ai_width	- The number of characters the tab represents
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_SETTABWIDTH, ai_width)

end function

public function long of_copy ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Copy
//
// PURPOSE:    This function copies selected text putting it in clipboard
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_COPY)

end function

public function long of_cut ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Cut
//
// PURPOSE:    This function deletes selected text putting it in clipboard
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_CUT)

end function

public function long of_undo ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Undo
//
// PURPOSE:    This function will undo the previous change
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_UNDO)

end function

public function long of_paste ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Paste
//
// PURPOSE:    This function will paste text from the clipboard
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_PASTE)

end function

public function long of_selectall ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SelectAll
//
// PURPOSE:    This function will select all text in the document
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_SELECTALL)

end function

public function long of_clear ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Clear
//
// PURPOSE:    This function deletes all text from the document
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_CLEARALL)

end function

public function boolean of_canundo ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_CanUndo
//
// PURPOSE:    This function determines if anything to undo
//
// RETURN:		True=Changes to undo, False=No changes to undo
// -----------------------------------------------------------------------------

If of_SendEditor(SCI_CANUNDO) = 0 Then
	Return False
Else
	Return True
End If

end function

public function boolean of_canpaste ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_CanPaste
//
// PURPOSE:    This function determines if anything to paste
//
// RETURN:		True=Text to paste, False=No text to paste
// -----------------------------------------------------------------------------

If of_SendEditor(SCI_CANPASTE) = 0 Then
	Return False
Else
	Return True
End If

end function

public function boolean of_cancopy ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_CanCopy
//
// PURPOSE:    This function determines if anything to copy
//
// RETURN:		True=Text to copy, False=No text to copy
// -----------------------------------------------------------------------------

Long ll_length

ll_length = of_SendEditor(SCI_GETSELECTIONEND) - of_SendEditor(SCI_GETSELECTIONSTART)

If ll_length > 0 Then
	Return True
Else
	Return False
End If

end function

public function long of_gettabwidth ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetTabWidth
//
// PURPOSE:    This function will return the the current tab spacing
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_GETTABWIDTH)

end function

public function long of_showindentguides (boolean ab_show);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ShowIndentGuides
//
// PURPOSE:    This function will toggle indent guides on/off
//
// ARGUMENTS:  ab_show	- True=Show guides, False=Do not show them
//
// RETURN:		None
// -----------------------------------------------------------------------------

ib_indentguides = ab_show

If ab_show Then
	Return of_SendEditor(SCI_SETINDENTATIONGUIDES, 1)
Else
	Return of_SendEditor(SCI_SETINDENTATIONGUIDES, 0)
End If

end function

public function long of_setmargintextcolor (long al_textcolor);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetMarginTextColor
//
// PURPOSE:    This function will change the margin text color
//
// ARGUMENTS:  al_textcolor	- The color code
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_STYLESETFORE, STYLE_LINENUMBER, al_textcolor)

end function

public function long of_setmarginbackcolor (long al_backcolor);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetMarginBackColor
//
// PURPOSE:    This function will change the margin background color
//
// ARGUMENTS:  al_textcolor	- The color code
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

il_margincolor = al_backcolor

Return of_SendEditor(SCI_STYLESETBACK, STYLE_LINENUMBER, il_margincolor)

end function

public function unsignedlong of_getsyscolor (integer ai_index);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SysColor
//
// PURPOSE:    This function returns the color number for a system color.
//
// ARGUMENTS:	ai_index - The the color index.
//
// These are the argument values:
//
// Object                     Value Object                     Value
// -------------------------- ----- -------------------------- -----
// Scroll Bar                   0   Button Face                 15
// Desktop                      1   Button Shadow               16
// Active Title Bar             2   Disabled Text               17
// Inactive Title Bar           3   Button Text                 18
// Menu Bar                     4   Inactive Title Bar Text     19
// Window Background            5   Button Highlight            20
// Window Frame                 6   Button Dark Shadow          21
// Menu Text                    7   Button Light Shadow         22
// Window Text                  8   Tooltip Text                23
// Active Title Bar Text        9   Tooltip Background          24
// Active Border               10   Hyperlink                   26
// Inactive Border             11   Active Title Bar Gradient   27
// Application Workspace       12   Inactive Title Bar Gradient 28
// Highlight                   13   Flat Menu Highlight         29
// Highlight Text              14   Flat Menu Background        30
//
// RETURN:		Color number.
// -----------------------------------------------------------------------------

Return GetSysColor(ai_index)

end function

public function long of_setselectcolor (long al_backcolor);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetSelectColor
//
// PURPOSE:    This function will change the back color of selected text
//
// ARGUMENTS:  al_backcolor	- The color code
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

il_selectcolor = al_backcolor

Return of_SendEditor(SCI_SETSELBACK, 1, il_selectcolor)

end function

public function long of_color (string as_colorname);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Color
//
// PURPOSE:    This function returns a color code for a named color. It includes
//					all the colors in the PowerBuilder color dropdowns plus:
//						Brown, Orange, Pink
//
// ARGUMENTS:  as_colorname	- Name of the color
//
// RETURN:		Color code
// -----------------------------------------------------------------------------

Long ll_color

choose case WordCap(as_colorname)
	case "Aqua"
		ll_color = RGB(000, 255, 255)
	case "Black"
		ll_color = RGB(000, 000, 000)
	case "Blue"
		ll_color = RGB(000, 000, 255)
	case "Brown"
		ll_color = RGB(150, 075, 000)
	case "Cream"
		ll_color = 15793151
	case "Fuchsia"
		ll_color = RGB(255, 000, 255)
	case "Gray"
		ll_color = RGB(128, 128, 128)
	case "Green"
		ll_color = RGB(000, 128, 000)
	case "Lime"
		ll_color = RGB(000, 255, 000)
	case "Maroon"
		ll_color = RGB(128, 000, 000)
	case "Medium Gray"
		ll_color = 10789024
	case "Mint"
		ll_color = 12639424
	case "Navy"
		ll_color = RGB(000, 000, 128)
	case "Olive"
		ll_color = RGB(128, 128, 000)
	case "Orange"
		ll_color = RGB(255, 128, 000)
	case "Pink"
		ll_color = RGB(255, 000, 128)
	case "Purple"
		ll_color = RGB(128, 000, 128)
	case "Red"
		ll_color = RGB(255, 000, 000)
	case "Silver"
		ll_color = RGB(192, 192, 192)
	case "Sky"
		ll_color = 15780518
	case "Teal"
		ll_color = RGB(000, 128, 128)
	case "White"
		ll_color = RGB(255, 255, 255)
	case "Yellow"
		ll_color = RGB(255, 255, 000)
	case else
		ll_color = RGB(255, 255, 255)		// Default to white
end choose

Return ll_color

end function

public function long of_sendeditor (long al_msg, long al_parm1, long al_parm2);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SendEditor
//
// PURPOSE:    This function sends a message to the control
//
// ARGUMENTS:  al_msg	- Message number
//					al_parm1	- Message argument #1
//					al_parm2	- Message argument #2
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return Send(il_hWindow, al_msg, al_parm1, al_parm2)

end function

public function long of_sendeditor (long al_msg, long al_parm1);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SendEditor
//
// PURPOSE:    This function sends a message to the control
//
// ARGUMENTS:  al_msg	- Message number
//					al_parm1	- Message argument #1
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return Send(il_hWindow, al_msg, al_parm1, 0)

end function

public subroutine of_enablefolding ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_EnableFolding
//
// PURPOSE:    This function turns on folding and sets various options for
//					how it works and looks.
//
// RETURN:		None
// -----------------------------------------------------------------------------

String ls_option

of_SendEditor(SCI_SETMARGINWIDTHN, MARGIN_SCRIPT_FOLD_INDEX, 20)
of_SendEditor(SCI_SETMARGINTYPEN, MARGIN_SCRIPT_FOLD_INDEX, SC_MARGIN_SYMBOL)
of_SendEditor(SCI_SETMARGINMASKN, MARGIN_SCRIPT_FOLD_INDEX, SC_MASK_FOLDERS)
of_SendEditor(SCI_SETFOLDFLAGS, 16)		// 16 - Draw line below if not expanded

ls_option = '1'
of_SendEditor(SCI_SETPROPERTY, "fold", ls_option)
of_SendEditor(SCI_SETPROPERTY, "fold.comment", ls_option)
of_SendEditor(SCI_SETPROPERTY, "fold.preprocessor", ls_option)

ls_option = '0'
of_SendEditor(SCI_SETPROPERTY, "fold.compact", ls_option)

// set marker shapes
of_SendEditor(SCI_MARKERDEFINE, SC_MARKNUM_FOLDER,        SC_MARK_BOXPLUS)
of_SendEditor(SCI_MARKERDEFINE, SC_MARKNUM_FOLDEROPEN,    SC_MARK_BOXMINUS)
of_SendEditor(SCI_MARKERDEFINE, SC_MARKNUM_FOLDEREND,     SC_MARK_BOXPLUSCONNECTED)
of_SendEditor(SCI_MARKERDEFINE, SC_MARKNUM_FOLDEROPENMID, SC_MARK_BOXMINUSCONNECTED)
of_SendEditor(SCI_MARKERDEFINE, SC_MARKNUM_FOLDERMIDTAIL, SC_MARK_TCORNER)
of_SendEditor(SCI_MARKERDEFINE, SC_MARKNUM_FOLDERSUB,     SC_MARK_VLINE)
of_SendEditor(SCI_MARKERDEFINE, SC_MARKNUM_FOLDERTAIL,    SC_MARK_LCORNER)

// set marker colors
If il_foldforecolor = -1 Then
	il_foldforecolor = il_margincolor
End If
of_SendEditor(SCI_MARKERSETFORE, SC_MARKNUM_FOLDER,        il_foldforecolor)
of_SendEditor(SCI_MARKERSETFORE, SC_MARKNUM_FOLDEROPEN,    il_foldforecolor)
of_SendEditor(SCI_MARKERSETFORE, SC_MARKNUM_FOLDEREND,     il_foldforecolor)
of_SendEditor(SCI_MARKERSETFORE, SC_MARKNUM_FOLDEROPENMID, il_foldforecolor)

of_SendEditor(SCI_MARKERSETBACK, SC_MARKNUM_FOLDER,        il_foldbackcolor)
of_SendEditor(SCI_MARKERSETBACK, SC_MARKNUM_FOLDEROPEN,    il_foldbackcolor)
of_SendEditor(SCI_MARKERSETBACK, SC_MARKNUM_FOLDEREND,     il_foldbackcolor)
of_SendEditor(SCI_MARKERSETBACK, SC_MARKNUM_FOLDEROPENMID, il_foldbackcolor)
of_SendEditor(SCI_MARKERSETBACK, SC_MARKNUM_FOLDERMIDTAIL, il_foldbackcolor)
of_SendEditor(SCI_MARKERSETBACK, SC_MARKNUM_FOLDERSUB,     il_foldbackcolor)
of_SendEditor(SCI_MARKERSETBACK, SC_MARKNUM_FOLDERTAIL,    il_foldbackcolor)

of_SendEditor(SCI_SETMARGINSENSITIVEN, MARGIN_SCRIPT_FOLD_INDEX, 1)

// set default color - used for the line
of_SendEditor(SCI_STYLESETFORE, STYLE_DEFAULT, il_foldlinecolor)

// set marker margin color to match main margin
of_SendEditor(SCI_SETFOLDMARGINCOLOUR,   1, il_margincolor)
of_SendEditor(SCI_SETFOLDMARGINHICOLOUR, 1, il_margincolor)

end subroutine

public function long of_delete ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Delete
//
// PURPOSE:    This function deletes selected text without putting in clipboard
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_ReplaceSelectedText("")

end function

public function long of_sendeditor (long al_msg);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SendEditor
//
// PURPOSE:    This function sends a message to the control
//
// ARGUMENTS:  al_msg	- Message number
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return Send(il_hWindow, al_msg, 0, 0)

end function

public function long of_selecttext (long al_start, long al_length);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SelectText
//
// PURPOSE:    This function will select text within a range
//
// ARGUMENTS:  al_start		- The starting position
//					al_length	- The length of the selected text
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

of_SendEditor(SCI_SETSELECTIONSTART, al_start)

Return of_SendEditor(SCI_SETSELECTIONEND, al_start + al_length)

end function

public function long of_sendeditor (long al_msg, long al_parm1, ref string as_parm2);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SendEditor
//
// PURPOSE:    This function sends a message to the control
//
// ARGUMENTS:  al_msg	- Message number
//					al_parm1	- Message argument #1
//					as_parm2	- Message argument #2
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return SendString(il_hWindow, al_msg, al_parm1, as_parm2)

end function

public function long of_sendeditor (long al_msg, string as_parm1, ref string as_parm2);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SendEditor
//
// PURPOSE:    This function sends a message to the control
//
// ARGUMENTS:  al_msg	- Message number
//					as_parm1	- Message argument #1
//					as_parm2	- Message argument #2
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return SendString(il_hWindow, al_msg, as_parm1, as_parm2)

end function

public subroutine of_setfoldlinecolor (long al_color);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetFoldLineColor
//
// PURPOSE:    This function will set the fold line color variable. The
//					color is actually applied in the of_enablefolding function.
//
// ARGUMENTS:  al_color	- The color code
//
// RETURN:		None
// -----------------------------------------------------------------------------

il_foldlinecolor = al_color

end subroutine

public subroutine of_setfoldmarkercolor (long al_color);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetFoldMarkerColor
//
// PURPOSE:    This function will set the fold marker color variable. The
//					color is actually applied in the of_enablefolding function.
//
// ARGUMENTS:  al_color	- The color code
//
// RETURN:		None
// -----------------------------------------------------------------------------

il_foldbackcolor = al_color

end subroutine

public subroutine of_setfoldboxcolor (long al_color);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetFoldBoxColor
//
// PURPOSE:    This function will set the fold box background color variable.
//					The color is actually applied in the of_enablefolding function.
//
// ARGUMENTS:  al_color	- The color code
//
// RETURN:		None
// -----------------------------------------------------------------------------

il_foldforecolor = al_color

end subroutine

public subroutine of_set_sql ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Set_SQL
//
// PURPOSE:    This function will set the language, keywords and colors
//					for SQL files.
//
// RETURN:		None
// -----------------------------------------------------------------------------

Constant Long SCE_SQL_DEFAULT					= 0
Constant Long SCE_SQL_COMMENT					= 1
Constant Long SCE_SQL_COMMENTLINE			= 2
Constant Long SCE_SQL_COMMENTDOC				= 3
Constant Long SCE_SQL_NUMBER					= 4
Constant Long SCE_SQL_WORD						= 5
Constant Long SCE_SQL_STRING					= 6
Constant Long SCE_SQL_CHARACTER				= 7
Constant Long SCE_SQL_WORD2					= 16

String ls_keywords, ls_datatypes

// set the language
of_SetLanguage("sql")

// set the keywords
ls_keywords  = of_GetKeywords(0, "sql")
of_SendEditor(SCI_SETKEYWORDS, 0, ls_keywords)
ls_datatypes = of_GetKeywords(1, "sql")
of_SendEditor(SCI_SETKEYWORDS, 1, ls_datatypes)

// set colors
of_SendEditor(SCI_STYLESETFORE, SCE_SQL_DEFAULT,		of_color("Black"))
of_SendEditor(SCI_STYLESETFORE, SCE_SQL_COMMENT,		of_color("Green"))
of_SendEditor(SCI_STYLESETFORE, SCE_SQL_COMMENTLINE,	of_color("Green"))
of_SendEditor(SCI_STYLESETFORE, SCE_SQL_COMMENTDOC,	of_color("Green"))
of_SendEditor(SCI_STYLESETFORE, SCE_SQL_NUMBER,			of_color("Navy"))
of_SendEditor(SCI_STYLESETFORE, SCE_SQL_WORD,			of_color("Blue"))
of_SendEditor(SCI_STYLESETFORE, SCE_SQL_STRING,			of_color("Maroon"))
of_SendEditor(SCI_STYLESETFORE, SCE_SQL_CHARACTER,		of_color("Maroon"))
of_SendEditor(SCI_STYLESETFORE, SCE_SQL_WORD2,			of_color("Purple"))

// set the comment characters
is_commentchar = "--"

end subroutine

public subroutine of_set_powerbuilder ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Set_PowerBuilder
//
// PURPOSE:    This function will set the language, keywords and colors
//					for PowerBuilder files.
//
// RETURN:		None
// -----------------------------------------------------------------------------
String ls_keywords, ls_datatypes

// set the language
of_SetLanguage("cppnocase")

// set the keywords
ls_keywords  = of_GetKeywords(0, "pb")
of_SendEditor(SCI_SETKEYWORDS, 0, ls_keywords)
ls_datatypes = of_GetKeywords(1, "pb")
of_SendEditor(SCI_SETKEYWORDS, 1, ls_datatypes)

// set colors
of_SendEditor(SCI_STYLESETFORE, SCE_C_DEFAULT,		of_color("Black"))
of_SendEditor(SCI_STYLESETFORE, SCE_C_COMMENT,		of_color("Blue"))
of_SendEditor(SCI_STYLESETFORE, SCE_C_COMMENTLINE,	of_color("Blue"))
of_SendEditor(SCI_STYLESETFORE, SCE_C_COMMENTDOC,	of_color("Blue"))
of_SendEditor(SCI_STYLESETFORE, SCE_C_NUMBER,		of_color("Navy"))
of_SendEditor(SCI_STYLESETFORE, SCE_C_WORD,			of_color("Green"))
of_SendEditor(SCI_STYLESETFORE, SCE_C_STRING,		of_color("Maroon"))
of_SendEditor(SCI_STYLESETFORE, SCE_C_CHARACTER,	of_color("Maroon"))
of_SendEditor(SCI_STYLESETFORE, SCE_C_WORD2,			of_color("Purple"))

// set the comment characters
is_commentchar = "//"

end subroutine

public function string of_getkeywords (integer ai_keyset, string as_language);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetKeywords
//
// PURPOSE:    This function will return a list of language keywords
//
// ARGUMENTS:  ai_keyset	- The keyword set number
//					as_language	- The name of the langauge
//
// RETURN:		Keyword list
// -----------------------------------------------------------------------------

String ls_keywords

choose case Lower(as_language)
	case "sql"
		choose case ai_keyset
			case 0	// reserved words
				ls_keywords  = "add all alter and any as asc begin between break "
				ls_keywords += "by call cascade case cast check checkpoint close "
				ls_keywords += "comment commit connect constraint continue "
				ls_keywords += "convert create cross current cursor dbspace "
				ls_keywords += "declare default delete desc distinct do drop "
				ls_keywords += "dynamic else elseif encrypted end endif escape "
				ls_keywords += "exception exec execute exists fetch first for "
				ls_keywords += "foreign from full grant group having holdlock "
				ls_keywords += "identified if in index inner inout insensitive "
				ls_keywords += "insert instead into is isolation join key left "
				ls_keywords += "like lock match membership message mode modify "
				ls_keywords += "natural new no noholdlock not null of off on "
				ls_keywords += "open option or order others out outer "
				ls_keywords += "passthrough precision prepare primary print "
				ls_keywords += "privileges procedure publication raiserror "
				ls_keywords += "readtext references release remote rename "
				ls_keywords += "resource restrict return revoke right rollback "
				ls_keywords += "save savepoint scroll select set share some "
				ls_keywords += "sqlcode sqlstate start stop subtransaction "
				ls_keywords += "synchronize syntax_error table temporary then "
				ls_keywords += "to top trigger truncate tsequal union "
				ls_keywords += "unique unknown update user using validate "
				ls_keywords += "values variable varying view when "
				ls_keywords += "where while with work writetext "
			case 1	// datatypes
				ls_keywords  = "binary bit char date datetime decimal double float integer "
				ls_keywords += "int money long numeric real smalldatetime smallint "
				ls_keywords += "smallmoney text time timestamp tinyint varbinary varchar "
		end choose
	case "pb"
		choose case ai_keyset
			case 0	// reserved words
				ls_keywords  = "alias and autoinstantiate call case catch choose "
				ls_keywords += "close commit connect constant continue create cursor "
				ls_keywords += "declare delete describe descriptor destroy disconnect "
				ls_keywords += "do dynamic else elseif end enumerated event execute "
				ls_keywords += "exit external false fetch finally first for forward "
				ls_keywords += "from function global goto halt if immediate indirect "
				ls_keywords += "insert into intrinsic is last library loop native "
				ls_keywords += "next not of on open or parent post prepare prior "
				ls_keywords += "private privateread privatewrite procedure protected "
				ls_keywords += "protectedread protectedwrite prototypes public "
				ls_keywords += "readonly ref return rollback rpcfunc select "
				ls_keywords += "selectblob shared static step subroutine super system "
				ls_keywords += "systemread systemwrite then this throw throws to "
				ls_keywords += "trigger true try type until update updateblob using "
				ls_keywords += "variables while with within "
			case 1	// datatypes
				ls_keywords  = "blob boolean byte char character date datetime decimal "
				ls_keywords += "dec double integer int longlong long real string time "
				ls_keywords += "unsignedinteger unsignedint uint unsignedlong ulong "
		end choose
	case "dwexpression"
		choose case ai_keyset
			case 0	// reserved words
				ls_keywords  = "not and or like in between for all group page crosstab object graph distinct "	//OPERATOR	+ - * / ^ = > < <> >= <= ( )
				ls_keywords += "abs acos asc asca asin atan avg bitmap case ceiling char chara cos count "
				ls_keywords += "crosstabavg crosstabavgdec crosstabcount crosstabmax crosstabmaxdec "
				ls_keywords += "crosstabmin crosstabmindec crosstabsum crosstabsumdec cumulativepercent "
				ls_keywords += "cumulativesum currentrow date datetime day dayname daynumber daysafter "
				ls_keywords += "dec describe exp fact fill filla first getrow gettext hour if int integer isdate isexpanded "
				ls_keywords += "isnull isnumber isrowmodified isrownew isselected istime large last lastpos left lefta "
				ls_keywords += "lefttrim len lena log logten long lookupdisplay lower match max median mid mida "
				ls_keywords += "min minute mod mode month now number page pageabs pageacross pagecount "
				ls_keywords += "pagecountacross percent pi pos posa profileint profilestring rand real relativedate "
				ls_keywords += "relativetime replace replacea rgb right righta righttrim round rowcount rowheight "
				ls_keywords += "second secondsafter sign sin small space sqrt stdev stdevp string sum tan time "
				ls_keywords += "today trim truncate upper var varp wordcap year"
			case 1	// datatypes
				ls_keywords  = ""	//there is no datatype to declare ...
//				ls_keywords += ""
		end choose
	case "perl"
		choose case ai_keyset
			case 0	//all
				ls_keywords =	"NULL __FILE__ __LINE__ __PACKAGE__ __DATA__ __END__ AUTOLOAD " + &
										"BEGIN CORE DESTROY END EQ GE GT INIT LE LT NE CHECK abs accept " + &
										"alarm and atan2 bind binmode bless caller chdir chmod chomp chop " + &
										"chown chr chroot close closedir cmp connect continue cos crypt " + &
										"dbmclose dbmopen defined delete die do dump each else elsif endgrent " + &
										"endhostent endnetent endprotoent endpwent endservent eof eq eval " + &
										"exec exists exit exp fcntl fileno flock for foreach fork format " + &
										"formline ge getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname " + &
										"gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername " + &
										"getpgrp getppid getpriority getprotobyname getprotobynumber getprotoent " + &
										"getpwent getpwnam getpwuid getservbyname getservbyport getservent " + &
										"getsockname getsockopt glob gmtime goto grep gt hex if index " + &
										"int ioctl join keys kill last lc lcfirst le length link listen " + &
										"local localtime lock log lstat lt map mkdir msgctl msgget msgrcv " + &
										"msgsnd my ne next no not oct open opendir or ord our pack package " + &
										"pipe pop pos print printf prototype push quotemeta qu " + &
										"rand read readdir readline readlink readpipe recv redo " + &
										"ref rename require reset return reverse rewinddir rindex rmdir " + &
										"scalar seek seekdir select semctl semget semop send setgrent " + &
										"sethostent setnetent setpgrp setpriority setprotoent setpwent " + &
										"setservent setsockopt shift shmctl shmget shmread shmwrite shutdown " + &
										"sin sleep socket socketpair sort splice split sprintf sqrt srand " + &
										"stat study sub substr symlink syscall sysopen sysread sysseek " + &
										"system syswrite tell telldir tie tied time times truncate " + &
										"uc ucfirst umask undef unless unlink unpack unshift untie until " + &
										"use utime values vec wait waitpid wantarray warn while write " + &
										"xor " + &
										"given when default say state UNITCHECK"
		end choose
end choose

Return ls_keywords

end function

public function long of_gotopos (long al_pos);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GotoPos
//
// PURPOSE:    This function will move the cursor to a specified position
//
// ARGUMENTS:  al_pos	- The position to goto in the text
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

// move the cursor to the specific position
Return of_SendEditor(SCI_GOTOPOS, al_pos - 1)

end function

public function long of_setusepopup (boolean ab_usepopup);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetUsePopup
//
// PURPOSE:    This function will toggle standard Popup menu on/off
//
// ARGUMENTS:  ab_usepopup	- True=On, False=Off
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

ib_usepopup = ab_usepopup

If ab_usepopup Then
	Return of_SendEditor(SCI_USEPOPUP, 1)
Else
	Return of_SendEditor(SCI_USEPOPUP, 0)
End If

end function

public function long of_setovertype (boolean ab_overtype);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetOvertype
//
// PURPOSE:    This function will toggle overtype on/off
//
// ARGUMENTS:  ab_overtype	- True=On, False=Off
//
// RETURN:		None
// -----------------------------------------------------------------------------

If ab_overtype Then
	Return of_SendEditor(SCI_SETOVERTYPE, 1)
Else
	Return of_SendEditor(SCI_SETOVERTYPE, 0)
End If

end function

public function boolean of_isovertype ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_IsOverType
//
// PURPOSE:    This function returns whether overtype is active
//
// RETURN:		True=On, False=Off
// -----------------------------------------------------------------------------

If of_SendEditor(SCI_GETOVERTYPE) = 1 Then
	Return True
Else
	Return False
End If

end function

public function boolean of_canredo ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_CanRedo
//
// PURPOSE:    This function determines if anything to redo
//
// RETURN:		True=Changes to redo, False=No changes to redo
// -----------------------------------------------------------------------------

If of_SendEditor(SCI_CANREDO) = 0 Then
	Return False
Else
	Return True
End If

end function

public function long of_redo ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Redo
//
// PURPOSE:    This function will redo the previous change
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_REDO)

end function

public function long of_changecase (textcase a_case);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ChangeCase
//
// PURPOSE:    This function will change the case of the selected text
//
// ARGUMENTS:  a_case	- Indicates Upper or Lower case
//
// RETURN:		Value returned from of_ReplaceSelectedText
// -----------------------------------------------------------------------------

String ls_value
Long ll_result

ls_value = this.of_GetSelectedText()

choose case a_case
	case Lower!
		ll_result = this.of_ReplaceSelectedText(Lower(ls_value))
	case Upper!
		ll_result = this.of_ReplaceSelectedText(Upper(ls_value))
end choose

Return ll_result

end function

public function long of_wordcap ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Wordcap
//
// PURPOSE:    This function will wordcap the selected text
//
// RETURN:		Value returned from of_ReplaceSelectedText
// -----------------------------------------------------------------------------

String ls_value

ls_value = this.of_GetSelectedText()

Return this.of_ReplaceSelectedText(Wordcap(ls_value))

end function

public function boolean of_find (string as_findstring, boolean ab_matchcase, boolean ab_wholeword, boolean ab_wordstart, boolean ab_backwards);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_Find
//
// PURPOSE:    This function finds a string within the text
//
// ARGUMENTS:  as_findstring	- The string to look for
//					ab_matchcase	- A match only occurs with text that matches the
//										  case of the search string.
//					ab_wholeword	- A match only occurs if the characters before
//										  and after are not word characters.
//					ab_wordstart	- A match only occurs if the character before is
//										  not a word character.
//					ab_backwards	- Search from the back of the file to the top.
//
// RETURN:		True=String found, False=String not found
// -----------------------------------------------------------------------------

Constant Long SCFIND_WHOLEWORD = 2
Constant Long SCFIND_MATCHCASE = 4
Constant Long SCFIND_WORDSTART = 1048576
Boolean lb_found
Long ll_findlen, ll_flags, ll_selected
Long ll_pos1, ll_pos2, ll_found, ll_line

// get search string length
ll_findlen = Len(as_findstring)
If ll_findlen = 0 Then Return False

// set search flags
ll_flags = 0
If ab_wholeword Then
	ll_flags += SCFIND_WHOLEWORD
End If
If ab_matchcase Then
	ll_flags += SCFIND_MATCHCASE
End If
If ab_wordstart Then
	ll_flags += SCFIND_WORDSTART
End If
of_SendEditor(SCI_SETSEARCHFLAGS, ll_flags)

// set the search position
If ab_backwards Then
	ll_selected = of_SendEditor(SCI_GETSELECTIONEND) - of_SendEditor(SCI_GETSELECTIONSTART)
	ll_pos1 = of_SendEditor(SCI_GETCURRENTPOS) - ll_selected
	ll_pos2 = 0
Else
	ll_pos1 = of_SendEditor(SCI_GETCURRENTPOS)
	ll_pos2 = of_SendEditor(SCI_GETLENGTH)
End If
of_SendEditor(SCI_SETTARGETSTART, ll_pos1)
of_SendEditor(SCI_SETTARGETEND,   ll_pos2)

// search for the string
ll_found = of_SendEditor(SCI_SEARCHINTARGET, ll_findlen, as_findstring)
If ll_found = -1 Then
	lb_found = False
Else
	ll_line = of_SendEditor(SCI_LINEFROMPOSITION, ll_found)
	of_SendEditor(SCI_ENSUREVISIBLE, ll_line)
	of_SendEditor(SCI_SETSEL, ll_found, ll_found + ll_findlen)
	lb_found = True
End If

Return lb_found

end function

public function integer of_replaceall (string as_findstring, string as_replacestring, boolean ab_matchcase, boolean ab_wholeword, boolean ab_wordstart);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ReplaceAll
//
// PURPOSE:    This function replaces all occurrences of a string in the text
//
// ARGUMENTS:  as_findstring		- The string to look for
//					as_replacestring	- The string to replace the find string
//					ab_matchcase		- A match only occurs with text that matches
//											  the case of the search string.
//					ab_wholeword		- A match only occurs if the characters before
//											  and after are not word characters.
//					ab_wordstart		- A match only occurs if the character before
//											  is not a word character.
//
// RETURN:		The number of occurrences replaced
// -----------------------------------------------------------------------------

Constant Long SCFIND_WHOLEWORD = 2
Constant Long SCFIND_MATCHCASE = 4
Constant Long SCFIND_WORDSTART = 1048576
Long ll_flags, ll_pos1, ll_pos2, ll_found, ll_hits

// get search string length
If Len(as_findstring) = 0 Then Return 0

// set search flags
ll_flags = 0
If ab_wholeword Then
	ll_flags += SCFIND_WHOLEWORD
End If
If ab_matchcase Then
	ll_flags += SCFIND_MATCHCASE
End If
If ab_wordstart Then
	ll_flags += SCFIND_WORDSTART
End If
of_SendEditor(SCI_SETSEARCHFLAGS, ll_flags)

// set the search range
ll_pos1 = 0
ll_pos2 = of_SendEditor(SCI_GETLENGTH)
of_SendEditor(SCI_SETTARGETSTART, ll_pos1)
of_SendEditor(SCI_SETTARGETEND,   ll_pos2)

// search for the string
ll_found = of_SendEditor(SCI_SEARCHINTARGET, Len(as_findstring), as_findstring)
do while ll_found > -1
	// replace the occurrence
	of_SendEditor(SCI_REPLACETARGET, Len(as_replacestring), as_replacestring)
	ll_hits++
	// move start of search range
	ll_pos1 = ll_found + Len(as_replacestring)
	ll_pos2 = of_SendEditor(SCI_GETLENGTH)
	of_SendEditor(SCI_SETTARGETSTART, ll_pos1)
	of_SendEditor(SCI_SETTARGETEND,   ll_pos2)
	// search for the string again
	ll_found = of_SendEditor(SCI_SEARCHINTARGET, Len(as_findstring), as_findstring)
loop

Return ll_hits

end function

public function boolean of_markeractive (long al_linenumber);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_MarkerActive
//
// PURPOSE:    This function determines a marker is active on the line
//
// ARGUMENTS:  al_linenumber	- The line number to be checked
//
// RETURN:		True=Text to paste, False=No text to paste
// -----------------------------------------------------------------------------

If of_SendEditor(SCI_MARKERGET, al_linenumber - 1, MARKER_NUM) = 0 Then
	Return False
Else
	Return True
End If

end function

public function long of_markerdelete (long al_linenumber);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_MarkerDelete
//
// PURPOSE:    This function will delete a marker from the current line
//
// ARGUMENTS:  al_linenumber	- The line number to delete the marker from
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_MARKERDELETE, al_linenumber - 1, MARKER_NUM)

end function

public function long of_markerdeleteall ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_MarkerDeleteAll
//
// PURPOSE:    This function will delete a marker from all lines.
//					If al_marker = -1 Then all marker numbers are deleted.
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_MARKERDELETEALL, MARKER_NUM)

end function

public function long of_markernext (long al_linenumber);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_MarkerNext
//
// PURPOSE:    This function will find the next marker
//
// ARGUMENTS:  al_linenumber	- The line number to start searching from
//
// RETURN:		The line number
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_MARKERNEXT, al_linenumber, MARKER_MASK) + 1

end function

public function long of_markerprev (long al_linenumber);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_MarkerPrev
//
// PURPOSE:    This function will find the previous marker
//
// ARGUMENTS:  al_linenumber	- The line number to start searching from
//
// RETURN:		The line number
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_MARKERPREVIOUS, al_linenumber - 2, MARKER_MASK) + 1

end function

public function long of_markeradd (long al_type, long al_line, long al_color);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_MarkerAdd
//
// PURPOSE:    This function will add a marker to the current line
//
// ARGUMENTS:  al_type	- The marker type ( SC_MARK_* )
//					al_line	- The line number to be marked
//					al_color	- The background color
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

of_SendEditor(SCI_MARKERDEFINE,  MARKER_NUM, al_type)
of_SendEditor(SCI_MARKERSETBACK, MARKER_NUM, al_color)

Return of_SendEditor(SCI_MARKERADD, al_line - 1, MARKER_NUM)

end function

public subroutine of_commentselected ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_CommentSelected
//
// PURPOSE:    This function adds comment characters to selected lines.
//
// RETURN:		None
// -----------------------------------------------------------------------------

Long caretPos, ll_start, ll_end, ll_line

// get first selected line
caretPos = of_SendEditor(SCI_GETSELECTIONSTART)
ll_start = of_SendEditor(SCI_LINEFROMPOSITION, caretPos)

// get last selected line
caretPos = of_SendEditor(SCI_GETSELECTIONEND)
ll_end   = of_SendEditor(SCI_LINEFROMPOSITION, caretPos)

// if end of selection is start of the line, end on prior line
If caretPos = of_SendEditor(SCI_POSITIONFROMLINE, ll_end) Then
	ll_end = ll_end - 1
End If

of_SendEditor(SCI_BEGINUNDOACTION)

// insert comment characters
For ll_line = ll_start To ll_end
	caretPos = of_SendEditor(SCI_POSITIONFROMLINE, ll_line)
	of_SendEditor(SCI_INSERTTEXT, caretPos, is_commentchar)
Next

of_SendEditor(SCI_ENDUNDOACTION)

// position at begining of last line
of_SendEditor(SCI_SETSEL, -1, of_SendEditor(SCI_POSITIONFROMLINE, ll_end))

end subroutine

public subroutine of_uncommentselected ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_UnCommentSelected
//
// PURPOSE:    This function removes comment characters from selected lines.
//
// RETURN:		None
// -----------------------------------------------------------------------------

Long caretPos, ll_start, ll_end, ll_line, ll_len
String ls_text, ls_replace

// get first selected line
caretPos = of_SendEditor(SCI_GETSELECTIONSTART)
ll_start = of_SendEditor(SCI_LINEFROMPOSITION, caretPos)

// get last selected line
caretPos = of_SendEditor(SCI_GETSELECTIONEND)
ll_end   = of_SendEditor(SCI_LINEFROMPOSITION, caretPos)

// if end of selection is start of the line, end on prior line
If caretPos = of_SendEditor(SCI_POSITIONFROMLINE, ll_end) Then
	ll_end = ll_end - 1
End If

of_SendEditor(SCI_BEGINUNDOACTION)

// remove comment characters
For ll_line = ll_start To ll_end
	ll_len = of_SendEditor(SCI_LINELENGTH, ll_line)
	ls_text = Space(ll_len)
	of_SendEditor(SCI_GETLINE, ll_line, ls_text)
	If Left(ls_text, Len(is_commentchar)) = is_commentchar Then
		caretPos = of_SendEditor(SCI_POSITIONFROMLINE, ll_line)
		of_SendEditor(SCI_SETTARGETSTART, caretPos)
		of_SendEditor(SCI_SETTARGETEND,   caretPos + Len(is_commentchar))
		of_SendEditor(SCI_REPLACETARGET, 0, ls_replace)
	End If
Next

of_SendEditor(SCI_ENDUNDOACTION)

// position at begining of last line
of_SendEditor(SCI_SETSEL, -1, of_SendEditor(SCI_POSITIONFROMLINE, ll_end))

end subroutine

public function long of_gettextlength ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetTextLength
//
// PURPOSE:    This function returns the text length
//
// RETURN:		The length of the text contained in the control
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_GETTEXTLENGTH)

end function

public function integer of_findall (string as_findstring, boolean ab_matchcase, boolean ab_wholeword, boolean ab_wordstart);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_FindAll
//
// PURPOSE:    This function finds all occurrences of a string in the text
//
// ARGUMENTS:  as_findstring		- The string to look for
//					ab_matchcase		- A match only occurs with text that matches
//											  the case of the search string.
//					ab_wholeword		- A match only occurs if the characters before
//											  and after are not word characters.
//					ab_wordstart		- A match only occurs if the character before
//											  is not a word character.
//
// RETURN:		The number of occurrences found
// -----------------------------------------------------------------------------

Constant Long SCFIND_WHOLEWORD = 2
Constant Long SCFIND_MATCHCASE = 4
Constant Long SCFIND_WORDSTART = 1048576
Long ll_flags, ll_pos1, ll_pos2, ll_found, ll_hits, ll_line

// get search string length
If Len(as_findstring) = 0 Then Return 0

// set search flags
ll_flags = 0
If ab_wholeword Then
	ll_flags += SCFIND_WHOLEWORD
End If
If ab_matchcase Then
	ll_flags += SCFIND_MATCHCASE
End If
If ab_wordstart Then
	ll_flags += SCFIND_WORDSTART
End If
of_SendEditor(SCI_SETSEARCHFLAGS, ll_flags)

// set the search range
ll_pos1 = 0
ll_pos2 = of_SendEditor(SCI_GETLENGTH)
of_SendEditor(SCI_SETTARGETSTART, ll_pos1)
of_SendEditor(SCI_SETTARGETEND,   ll_pos2)

// search for the string
ll_found = of_SendEditor(SCI_SEARCHINTARGET, Len(as_findstring), as_findstring)
do while ll_found > -1
	// select the first occurrence, mark all occurrences
	ll_line = of_SendEditor(SCI_LINEFROMPOSITION, ll_found)
	of_SendEditor(SCI_ENSUREVISIBLE, ll_line)
	of_MarkerAdd(SC_MARK_CIRCLE, ll_line + 1, of_Color("Red"))
	If ll_hits = 0 Then
		of_SendEditor(SCI_SETSEL, ll_found, ll_found + Len(as_findstring))
	End If
	ll_hits++
	// move start of search range
	ll_pos1 = ll_found + Len(as_findstring)
	ll_pos2 = of_SendEditor(SCI_GETLENGTH)
	of_SendEditor(SCI_SETTARGETSTART, ll_pos1)
	of_SendEditor(SCI_SETTARGETEND,   ll_pos2)
	// search for the string again
	ll_found = of_SendEditor(SCI_SEARCHINTARGET, Len(as_findstring), as_findstring)
loop

Return ll_hits

end function

public subroutine of_showwhitespace (boolean ab_show);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ShowWhiteSpace
//
// PURPOSE:    This function will toggle white space on/off
//
// ARGUMENTS:  ab_show	- True=Show white space, False=Do not show them
//
// RETURN:		None
// -----------------------------------------------------------------------------

If ab_show Then
	of_SendEditor(SCI_SETVIEWWS, SCWS_VISIBLEALWAYS)
Else
	of_SendEditor(SCI_SETVIEWWS, SCWS_INVISIBLE)
End If

end subroutine

public subroutine of_showeol (boolean ab_show);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ShowEOL
//
// PURPOSE:    This function will toggle end-of-line marks on/off
//
// ARGUMENTS:  ab_show	- True=Show EOL marks, False=Do not show them
//
// RETURN:		None
// -----------------------------------------------------------------------------

If ab_show Then
	of_SendEditor(SCI_SETVIEWEOL, 1)
Else
	of_SendEditor(SCI_SETVIEWEOL, 0)
End If

end subroutine

public subroutine of_emptyclipboard ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_EmptyClipBoard
//
// PURPOSE:    This function clears the contents of the clipboard
//
// RETURN:		None
// -----------------------------------------------------------------------------

If OpenClipboard(0) Then
	EmptyClipboard()
	CloseClipboard()
End If

end subroutine

public function long of_getselectedlength ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetSelectedLength
//
// PURPOSE:    This function returns the length of the selected text
//
// RETURN:		The length
// -----------------------------------------------------------------------------

// get the length of the selected text
Return of_SendEditor(SCI_GETSELECTIONEND) - of_SendEditor(SCI_GETSELECTIONSTART)

end function

public subroutine of_indentselected ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_IndentSelected
//
// PURPOSE:    This function adds tab characters to selected lines.
//
// RETURN:		None
// -----------------------------------------------------------------------------

Long caretPos, ll_start, ll_end, ll_line
Long ll_selstart, ll_selend, ll_length
String ls_tab = "~t"

// get first selected line
ll_selstart = of_SendEditor(SCI_GETSELECTIONSTART)
ll_start    = of_SendEditor(SCI_LINEFROMPOSITION, ll_selstart)

// get last selected line
ll_selend = of_SendEditor(SCI_GETSELECTIONEND)
ll_end    = of_SendEditor(SCI_LINEFROMPOSITION, ll_selend)

ll_length = ll_selend - ll_selstart

// if end of selection is start of the line, end on prior line
If ll_selend = of_SendEditor(SCI_POSITIONFROMLINE, ll_end) Then
	ll_end = ll_end - 1
	ll_length = ll_length - 1
End If

of_SendEditor(SCI_BEGINUNDOACTION)

// insert comment characters
For ll_line = ll_start To ll_end
	caretPos = of_SendEditor(SCI_POSITIONFROMLINE, ll_line)
	of_SendEditor(SCI_INSERTTEXT, caretPos, ls_tab)
	ll_length = ll_length + 1
Next

of_SendEditor(SCI_ENDUNDOACTION)

// reselect the text
of_SelectText(ll_selstart, ll_length)

end subroutine

public subroutine of_unindentselected ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_UnindentSelected
//
// PURPOSE:    This function removes tab characters to selected lines.
//
// RETURN:		None
// -----------------------------------------------------------------------------

Long caretPos, ll_start, ll_end, ll_line, ll_len
Long ll_selstart, ll_selend, ll_length
String ls_tab = "~t", ls_text, ls_replace

// get first selected line
ll_selstart = of_SendEditor(SCI_GETSELECTIONSTART)
ll_start    = of_SendEditor(SCI_LINEFROMPOSITION, ll_selstart)

// get last selected line
ll_selend = of_SendEditor(SCI_GETSELECTIONEND)
ll_end    = of_SendEditor(SCI_LINEFROMPOSITION, ll_selend)

ll_length = ll_selend - ll_selstart

// if end of selection is start of the line, end on prior line
If ll_selend = of_SendEditor(SCI_POSITIONFROMLINE, ll_end) Then
	ll_end = ll_end - 1
	ll_length = ll_length - 1
End If

of_SendEditor(SCI_BEGINUNDOACTION)

// remove comment characters
For ll_line = ll_start To ll_end
	ll_len = of_SendEditor(SCI_LINELENGTH, ll_line)
	ls_text = Space(ll_len)
	of_SendEditor(SCI_GETLINE, ll_line, ls_text)
	If Left(ls_text, 1) = ls_tab Then
		caretPos = of_SendEditor(SCI_POSITIONFROMLINE, ll_line)
		of_SendEditor(SCI_SETTARGETSTART, caretPos)
		of_SendEditor(SCI_SETTARGETEND,   caretPos + 1)
		of_SendEditor(SCI_REPLACETARGET, 0, ls_replace)
		ll_length = ll_length - 1
	End If
Next

of_SendEditor(SCI_ENDUNDOACTION)

// reselect the text
of_SelectText(ll_selstart, ll_length)

end subroutine

public function integer of_gotoprevtab ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GotoPrevTab
//
// PURPOSE:    This function will move the caret to the previous tab location.
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Long caretPos, ll_line, ll_column, ll_tabwidth
Long ll_newcol, ll_newpos

caretPos  = of_SendEditor(SCI_GETCURRENTPOS)

ll_line   = of_SendEditor(SCI_LINEFROMPOSITION, caretPos)

ll_column = of_SendEditor(SCI_GETCOLUMN, caretPos)

ll_tabwidth = of_SendEditor(SCI_GETTABWIDTH)

ll_newcol = Long((ll_column / ll_tabwidth) + .5) * ll_tabwidth

ll_newpos = of_SendEditor(SCI_FINDCOLUMN, ll_line, ll_newcol - ll_tabwidth)

Return of_SendEditor(SCI_GOTOPOS, ll_newpos)

end function

public function long of_stylegetbold (long al_style);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_StyleGetBold
//
// PURPOSE:    This function returns the bold attribute of a given style
//
// ARGUMENTS:  al_style	- The number of the style
//
// RETURN:		0=not bold, 1=bold
// -----------------------------------------------------------------------------
return of_SendEditor(SCI_STYLEGETBOLD, al_style, 0)

end function

public function long of_stylesetfore (long al_style, long al_color);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_StyleSetFore
//
// PURPOSE:    This function changes the foreground color of the given style
//
// ARGUMENTS:  al_style	- The number of the style
//             al_color - the color code
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
return of_SendEditor(SCI_STYLESETFORE,al_style,al_color)

end function

public function long of_stylesetbold (long al_style, boolean ab_bold);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_StyleSetBold
//
// PURPOSE:    This function changes the bold attribute of the given style
//
// ARGUMENTS:  al_style	- The number of the style
//             ab_bold  - bold, or not bold ?
//
// REMARK : it seems to be a display bug with monospaced font that are not rendered as bold
//          and it is not planned to be fixed (see bug ticket #1086525 of the scintilla project)
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
IF ab_bold = true THEN
	RETURN of_SendEditor(SCI_STYLESETBOLD, al_style, 1)
ELSE
	RETURN of_SendEditor(SCI_STYLESETBOLD, al_style, 0)
END IF
end function

public function long of_getlexer ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetLexer
//
// PURPOSE:    This function returns the lexer currently selected
//             see the SCLEX_... constants for the possibles values
//
// RETURN:		The current lexer
// -----------------------------------------------------------------------------
return of_SendEditor(SCI_GETLEXER)

end function

public function integer of_setkeywords (long al_wordset, string as_keywords);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetKeywords
//
// PURPOSE:    This function loads a word list in the given wordset
//
// ARGUMENTS:  al_wordset  - the number of wordset (0 to 9 - usage is lexer-dependant)
//             as_keywords - a list of words. It can be blank, tab, ~n or ~r separated
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
RETURN of_SendEditor(SCI_SETKEYWORDS,al_wordset,as_keywords)
end function

public function long of_getstylebitsneeded ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetStyleBitsNeeded
//
// PURPOSE:    This function returns the number of style bits needed by the current lexer
//             That value should be used as an argument for of_SetStyleBits()
//
// Refer to the "Text retrieval and modification" section of the scintilla documentation
// for info about the styles bits
//
// RETURN:		The bits number needed (max is 7)
// -----------------------------------------------------------------------------

return of_SendEditor(SCI_GETSTYLEBITSNEEDED)

end function

public function long of_getstylebits ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetStyleBits
//
// PURPOSE:    This function returns the number of style bits currently setted
//
// Refer to the "Text retrieval and modification" section of the scintilla documentation
// for info about the styles bits
//
// RETURN:		The bits number (max is 7)
// -----------------------------------------------------------------------------

return of_SendEditor(SCI_GETSTYLEBITS)

end function

public function long of_setstylebits (long al_bits);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetStyleBits
//
// PURPOSE:    This function changes the number of style bits 
//
// Refer to the "Text retrieval and modification" section of the scintilla documentation
// for info about the styles bits
//
// ARGUMENTS:  al_bits	- The number of bits - should be the result of of_GetStyleBitsNeeded()
//	                       Max value is 7
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

RETURN of_SendEditor(SCI_SETSTYLEBITS, al_bits)
end function

public function long of_getstyleat (long al_pos);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetStyleAt
//
// PURPOSE:    This function returns the style of the given position
//
// RETURN:		The style number
// -----------------------------------------------------------------------------

return of_SendEditor(SCI_GETSTYLEAT, al_pos)

end function

public function long of_getcurrentpos ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetCurrentPos
//
// PURPOSE:    This function returns the current position in the scintilla buffer
//
// RETURN:		The current position
// -----------------------------------------------------------------------------
return of_SendEditor(SCI_GETCURRENTPOS)
end function

public function integer of_cleardocumentstyle ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ClearDocumentStyle
//
// PURPOSE:    This function clears all styling information and resets the folding state
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
return of_SendEditor(SCI_CLEARDOCUMENTSTYLE)
end function

public function integer of_stylesetfont (long al_style, string as_font);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_StyleSetFont
//
// PURPOSE:    This function changes the font used to display the given style
//
// ARGUMENTS:  al_style	- The number of the style
//             as_font  - the name of the font (can contain spaces)
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
RETURN of_SendEditor(SCI_STYLESETFONT, al_style,as_font)
end function

public function integer of_stylesetsize (long al_style, integer ai_size);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_StyleSetSize
//
// PURPOSE:    This function changes the font size of the given style
//
// ARGUMENTS:  al_style	- The number of the style
//             ai_size  - the size in points
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
RETURN of_SendEditor(SCI_STYLESETSIZE, al_style, ai_size)
end function

public function long of_stylesetback (long al_style, long al_color);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_StyleSetBack
//
// PURPOSE:    This function changes the background color of the given style
//
// ARGUMENTS:  al_style	- The number of the style
//             al_color - the color code
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
return of_SendEditor(SCI_STYLESETBACK,al_style,al_color)

end function

public function long of_getwrapmode ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetWrapMode
//
// PURPOSE:    This function returns the current setting of the text wrapping
//
// RETURN:		SC_WRAP_NONE, SC_WRAP_WORD or SC_WRAP_CHAR
//	            see of_SetWrapMode() for further info
// -----------------------------------------------------------------------------
return of_SendEditor(SCI_GETWRAPMODE)

end function

public function long of_setwrapmode (long al_wrapmode);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetWrapMode
//
// PURPOSE:    This function will set the text wrapping mode
//
// ARGUMENTS:  al_wrapmode	- The wrapping mode
//              values       SC_WRAP_NONE - wrapping is disabled
//                           SC_WRAP_WORD - enable wrapping on word boundaries
//                           SC_WRAP_CHAR - enable wrapping between any characters
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
RETURN of_SendEditor(SCI_SETWRAPMODE, al_wrapmode)
end function

public function long of_getwrapvisualflags ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetWrapVisualFlags
//
// PURPOSE:    This function returns the current setting of the wrapping info
//
// RETURN:		SC_WRAPVISUALFLAG_NONE, SC_WRAPVISUALFLAG_END or SC_WRAPVISUALFLAG_START
//	            see of_SetWrapVisualFlags() for further info
// -----------------------------------------------------------------------------
return of_SendEditor(SCI_GETWRAPVISUALFLAGS)

end function

public function long of_setwrapvisualflags (long al_wrapvisuflags);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetWrapVisualFlags
//
// PURPOSE:    This function will set the display of wrapping indicators
//
// ARGUMENTS:  al_wrapvisuflags	- the type of indicators
//              values  SC_WRAPVISUALFLAG_NONE - No visual flags
//                      SC_WRAPVISUALFLAG_END  - Visual flag at end of subline of a wrapped line
//                      SC_WRAPVISUALFLAG_START - Visual flag at begin of subline of a wrapped line
//                                                Subline is indented by at least 1 to make room for the flag
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
RETURN of_SendEditor(SCI_SETWRAPVISUALFLAGS, al_wrapvisuflags)
end function

public function long of_setviewws (long al_wsmode);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetViewWs
//
// PURPOSE:    This function will change the display of the whitespaces
//             of_ShowWhiteSpace can toggle the display
//             of_SetViewWs enables a little finer tuning, it is especially useful to display python code
//
// ARGUMENTS:  al_wsmode - the type of display
//              Possible values :
//						SCWS_INVISIBLE				The normal display mode with white space displayed 
//														as an empty background colour.
//						SCWS_VISIBLEALWAYS  		White space characters are drawn as dots and arrows,
//						SCWS_VISIBLEAFTERINDENT White space used for indentation is displayed normally
//														but after the first visible character, 
//														it is shown as dots and arrows.
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
return of_SendEditor(SCI_SETVIEWWS, al_wsmode)

end function

public function integer of_setwhitespaceback (long al_use, long al_backcolor);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetWhitespaceBack
//
// PURPOSE:    This function will change the background color display of the whitespaces
//
// ARGUMENTS:  al_use       - the type of display 0=color not used, 1=color used
//             al_backcolor - the color code
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
RETURN of_SendEditor(SCI_SETWHITESPACEBACK, al_use, al_backcolor)
end function

public function integer of_setwhitespacefore (long al_use, long al_forecolor);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetWhitespaceFore
//
// PURPOSE:    This function will change the foreground color display of the whitespaces
//
// ARGUMENTS:  al_use       - the type of display 0=color not used, 1=color used
//             al_forecolor - the color code
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
RETURN of_SendEditor(SCI_SETWHITESPACEFORE, al_use, al_forecolor)
end function

public function long of_getviewws ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetViewWs
//
// PURPOSE:    This function returns the current setting of the whitespaces display
//
// RETURN:		SCWS_INVISIBLE, SCWS_VISIBLEALWAYS or SCWS_VISIBLEAFTERINDENT
//	            see of_SetViewWs() for further info
// -----------------------------------------------------------------------------
return of_SendEditor(SCI_GETVIEWWS)

end function

public function long of_setproperty (string as_keyword, string as_value);return this.of_Sendeditor( SCI_SETPROPERTY, as_keyword, as_value )
end function

public function long of_markeradd (long al_marker_idx, long al_line);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_MarkerAdd
//
// PURPOSE:    This function will add a marker to the current line
//
// ARGUMENTS:  al_type	- The marker type ( SC_MARK_* )
//					al_line	- The line number to be marked
//					al_color	- The background color
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_MARKERADD, al_line - 1, al_marker_idx)

end function

public function long of_markerdelete (long al_marker_idx, long al_linenumber);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_MarkerDelete
//
// PURPOSE:    This function will delete a marker from the current line
//
// ARGUMENTS:  al_linenumber	- The line number to delete the marker from
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_MARKERDELETE, al_linenumber - 1, al_marker_idx)

end function

public subroutine of_markerdefine (long al_marker_idx, long al_type, long al_color);of_SendEditor(SCI_MARKERDEFINE,  al_marker_idx, al_type)
of_SendEditor(SCI_MARKERSETBACK, al_marker_idx, al_color)
end subroutine

public function string of_stringptr (long textptr, charset textcharset);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_StringPtr
//
// PURPOSE:    This function returns a string from an memory address.
//
// ARGUMENTS:  textcharset	- CharsetAnsi! or CharsetUnicode!
//
// RETURN:		None
// -----------------------------------------------------------------------------

Blob lblob_text
Integer li_strlen = 50
String ls_text

choose case textcharset
	case CharsetAnsi!
		lblob_text = Blob(Space(li_strlen))
		CopyMemory(lblob_text, textptr, li_strlen)
		ls_text = String(lblob_text, EncodingAnsi!)
	case else
		ls_text = String(lblob_text, "address")
end choose

Return ls_text

end function

public function long of_setencoding (encoding aencoding);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetEncoding
//
// PURPOSE:    This function will set the text encoding style and set the
//					Unicode codepage on or off as appropriate.
//
// ARGUMENTS:  aEncoding	EncodingAnsi!
//									EncodingUTF8!
//									EncodingUTF16BE!
//									EncodingUTF16LE!
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

// save the encoding style
iEncoding = aEncoding

If iEncoding = EncodingAnsi! Then
	return of_SendEditor(SCI_SETCODEPAGE, 0)
Else
	return of_SendEditor(SCI_SETCODEPAGE, 65001)
End If

end function

public function long of_setseparator (character ac_separator);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetSeparator
//
// PURPOSE:    This function changes the separator character for the User List
//					and Autocomplete popup list.
//
// ARGUMENTS:  ac_separator	- The character that separates the list.
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

return Send(il_hWindow, SCI_AUTOCSETSEPARATOR, Asc(ac_separator), 0)

end function

public function long of_zoomin ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ZoomIn
//
// PURPOSE:    This function will zoom in the text.
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

return of_SendEditor(SCI_ZOOMIN)

end function

public function long of_zoomout ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ZoomOut
//
// PURPOSE:    This function will zoom out the text.
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

return of_SendEditor(SCI_ZOOMOUT)

end function

public function long of_zoomlevel (integer ai_level);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_ZoomLevel
//
// PURPOSE:    This function sets the Zoom level.
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

return of_SendEditor(SCI_SETZOOM, ai_level)


end function

public function long of_getzoomlevel ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetZoomLevel
//
// PURPOSE:    This function will return the current zoom level.
//
// RETURN:		Zoom Level
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_GETZOOM)

end function

public function long of_setreadonly (boolean ab_readonly);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetReadOnly
//
// PURPOSE:    This function will toggle read only on/off
//
// ARGUMENTS:  ab_readonly	- True=Read Only, False=Not Read Only
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

ib_readonly = ab_readonly

If ab_readonly Then
	return of_SendEditor(SCI_SETREADONLY, 1)
Else
	return of_SendEditor(SCI_SETREADONLY, 0)
End If

end function

public function long of_macrorecording (boolean ab_record);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_MacroRecording
//
// PURPOSE:    This function will toggle macro recording mode.
//
// ARGUMENTS:  ab_record	- True=Start Recording, False=Stop Recording
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

If ab_record Then
	return of_SendEditor(SCI_STARTRECORD, 1)
Else
	return of_SendEditor(SCI_STOPRECORD, 0)
End If

end function

public function long of_setdwelltime (long al_dwelldelay);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetDwellTime
//
// PURPOSE:    This function will set mouse dwell time.
//
// ARGUMENTS:  al_dwelldelay	- Time in milliseconds
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

return of_SendEditor(SCI_SETMOUSEDWELLTIME, al_dwelldelay)

end function

public function long of_getreadonly ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetReadOnly
//
// PURPOSE:    This function will return the state of read only.
//
// RETURN:		Zoom Level
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_GETREADONLY)

end function

public function long of_setlexer (long al_lexer);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetLexer
//
// PURPOSE:    This function selects a lexer for the syntax highlighting
//             see the SCLEX_... constants for the possibles values
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
long l_ret 
l_ret = of_SendEditor(SCI_SETLEXER,al_lexer, 0)

// refer to the "Text retrieval and modification" section of the scintilla documentation
// for info about the styles bits
of_SetStyleBits(of_GetStyleBitsNeeded())

RETURN l_ret

end function

public function long of_loadlexerlibrary (string as_library);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_LoadLexerLibrary
//
// PURPOSE:    This function loads an external lexer dll
//
// ARGUMENTS:  as_library	- the path to the lexer dll
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

return of_SendEditor(SCI_LOADLEXERLIBRARY, 0, as_library)

end function

public function long of_gettextheight (long al_line);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetTextHeight
//
// PURPOSE:    This function will return the pixel height of a line 
//
// ARGUMENTS:  al_line	- The line number
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_TEXTHEIGHT, al_line)

end function

public function long of_gettextwidth (long al_stylenumber, string as_text);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetTextWidth
//
// PURPOSE:    This function will return the pixel width of a string 
//             drawn in the given styleNumber
//
// ARGUMENTS:  al_stylenumber	- The styme number
//             as_text - the string to measure
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_TEXTWIDTH, al_stylenumber, as_text)

end function

public function long of_setmarginwidthn (integer ai_margin, integer ai_width);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetMarginWidthN
//
// PURPOSE:    This function will change the given margin width
//
// ARGUMENTS:  ai_margin	- The margin nulber (0..4)
//             ai_width		- the width in pixels
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_SETMARGINWIDTHN, ai_margin, ai_width)

end function

public function long of_settext (string as_text);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_SetText
//
// PURPOSE:    This function will import text into the control
//
// ARGUMENTS:  as_text	- The text to be imported
//
// RETURN:		result of the sent message
// -----------------------------------------------------------------------------

long ll_ret

ll_ret = of_SendEditor(SCI_SETTEXT, Len(as_text), as_text)

of_SetNotModified()

return ll_ret
end function

public function long of_appendtext (string as_text);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_AppendText
//
// PURPOSE:    Append some text to the current text
//
// ARGUMENTS:  as_text	- The text to add
//
// RETURN:		return of the sent message
// -----------------------------------------------------------------------------

long ll_ret

ll_ret = of_SendEditor(SCI_APPENDTEXT, Len(as_text), as_text)

//of_SetModified()

return ll_ret

end function

public function long of_getlinecount ();// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_GetLineCount
//
// PURPOSE:    This function returns the number of lines in the control
//
// RETURN:		The number of lines contained in the control
// -----------------------------------------------------------------------------

Return of_SendEditor(SCI_GETLINECOUNT)

end function

public subroutine stylesetspec (integer styleindex, string stylespecs);//#
//# Help routine for StyleSet
//#
//
//sub StyleSetSpec {
//  my ($self, $style, $textstyle) = @_;
string ls_styles[], ls_key, ls_value
long i, j
split_to_array( stylespecs, ",", ls_styles[] )
//  foreach my $prop (split (/,/, $textstyle)) {
for i = 1 to upperbound( ls_styles[] )
//    my ($key, $value) = split (/:/, $prop);
	ls_value = ls_styles[i]
	ls_key = pop_str( ls_value, ":" )
	choose case ls_key
//    $self->StyleSetFore($style, $value) if $key eq 'fore';
		case 'fore' ; of_stylesetfore( styleindex, to_long(ls_value))
//    $self->StyleSetBack($style, $value) if $key eq 'back';
		case 'back' ; of_stylesetback( styleindex, to_long(ls_value))
//    $self->StyleSetFont($style, $value) if $key eq 'face';
		case 'face' ; of_stylesetfont( styleindex, ls_value)
//    $self->StyleSetSize($style, int ($value) )  if $key eq 'size';
		case 'size' ; of_stylesetsize( styleindex, to_long(ls_value))
//    $self->StyleSetBold($style, 1)      if $key eq 'bold';
		case 'bold' ; of_stylesetbold( styleindex, true )
//    $self->StyleSetBold($style, 0)      if $key eq 'notbold';
		case 'nobold' ; of_stylesetbold( styleindex, false)
//    $self->StyleSetItalic($style, 1)    if $key eq 'italic';
		case 'italic' ; of_setstyleitalic( styleindex, true)
//    $self->StyleSetItalic($style, 0)    if $key eq 'notitalic';
		case 'noitalic' ; of_setstyleitalic( styleindex, false)
//    $self->StyleSetUnderline($style, 1) if $key eq 'underline';
		case 'underline' ; of_setstyleunderline( styleindex, true)
//    $self->StyleSetUnderline($style, 0) if $key eq 'notunderline';
		case 'nounderline' ; of_setstyleunderline( styleindex, false)
//    $self->StyleSetEOLFilled ($style, 1) if $key eq 'eolfilled';
		case 'eolfilled' ; of_setstyleeolfilled( styleindex, true)
//    $self->StyleSetEOLFilled ($style, 0) if $key eq 'noteolfilled';
		case 'noeolfilled' ; of_setstyleeolfilled( styleindex, false)
	end choose
next
//  }
//}
end subroutine

public function long to_long (string as_value);if match(as_value, "#[0-9A-Fa-f]+") then
	//a ~html color
	as_value = upper( trim( mid( as_value, 2) ) )
	string hex_keys = '0123456789ABCDEF'
	long i, s, v = 0
	s = len( as_value )
	for i = 1 to s
		v += ( pos(hex_keys, mid(as_value,i,1)) -1) * 16 ^ (s - i)
	next
	return v
end if

return long( as_value )
end function

public function long of_setstyleitalic (long al_style, boolean ab_bold);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_StyleSetBold
//
// PURPOSE:    This function changes the bold attribute of the given style
//
// ARGUMENTS:  al_style	- The number of the style
//             ab_bold  - bold, or not bold ?
//
// REMARK : it seems to be a display bug with monospaced font that are not rendered as bold
//          and it is not planned to be fixed (see bug ticket #1086525 of the scintilla project)
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
IF ab_bold = true THEN
	RETURN of_SendEditor(SCI_STYLESETITALIC, al_style, 1)
ELSE
	RETURN of_SendEditor(SCI_STYLESETITALIC, al_style, 0)
END IF
end function

public function long of_setstyleunderline (long al_style, boolean ab_bold);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_StyleSetBold
//
// PURPOSE:    This function changes the bold attribute of the given style
//
// ARGUMENTS:  al_style	- The number of the style
//             ab_bold  - bold, or not bold ?
//
// REMARK : it seems to be a display bug with monospaced font that are not rendered as bold
//          and it is not planned to be fixed (see bug ticket #1086525 of the scintilla project)
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
IF ab_bold = true THEN
	RETURN of_SendEditor(SCI_STYLESETUNDERLINE, al_style, 1)
ELSE
	RETURN of_SendEditor(SCI_STYLESETUNDERLINE, al_style, 0)
END IF
end function

public function long of_setstyleeolfilled (long al_style, boolean ab_bold);// -----------------------------------------------------------------------------
// SCRIPT:     u_genidwdm_scilexer.of_StyleSetBold
//
// PURPOSE:    This function changes the bold attribute of the given style
//
// ARGUMENTS:  al_style	- The number of the style
//             ab_bold  - bold, or not bold ?
//
// REMARK : it seems to be a display bug with monospaced font that are not rendered as bold
//          and it is not planned to be fixed (see bug ticket #1086525 of the scintilla project)
//
// RETURN:		Value returned from message
// -----------------------------------------------------------------------------
IF ab_bold = true THEN
	RETURN of_SendEditor(SCI_STYLESETEOLFILLED, al_style, 1)
ELSE
	RETURN of_SendEditor(SCI_STYLESETEOLFILLED, al_style, 0)
END IF
end function

public subroutine setmargintypen (integer arg_1, integer arg_2);this.of_sendeditor( 2240, arg_1, arg_2);
end subroutine

public subroutine setmarginwidthn (integer arg_1, integer arg_2);this.of_sendeditor( 2242, arg_1, arg_2);
end subroutine

public subroutine setmarginsensitiven (integer arg_1, integer arg_2);this.of_sendeditor( 2246, arg_1, arg_2);
end subroutine

public subroutine markerdefine (integer arg_1, integer arg_2);this.of_sendeditor( 2040, arg_1, arg_2);
end subroutine

public subroutine markersetfore (integer arg_1, string arg_2);this.of_sendeditor( 2041, arg_1, to_long(arg_2) );
end subroutine

public subroutine markersetback (integer arg_1, string arg_2);this.of_sendeditor( 2042, arg_1, to_long(arg_2) );
end subroutine

public subroutine styleclearall ();this.of_sendeditor( 2050, 0, 0 );
end subroutine

public subroutine setedgecolumn (integer arg_1);this.of_sendeditor( 2361, arg_1, 0);
end subroutine

public subroutine setedgemode (integer arg_1);this.of_sendeditor( 2363, arg_1, 0);
end subroutine

public subroutine setindent (integer arg_1);this.of_sendeditor( 2122, arg_1, 0);
end subroutine

public subroutine setusetabs (integer arg_1);this.of_sendeditor( 2124, arg_1, 0);
end subroutine

public subroutine setindentationguides (integer arg_1);this.of_sendeditor( 2132, arg_1, 0);
end subroutine

public subroutine setmarginmaskn (integer arg_1, unsignedlong arg_2);this.of_sendeditor( 2243, arg_1, arg_2);
end subroutine

public function string pop_str (ref string as_str, string as_lookup);/*
 * Author : geni
 * date : 12/07/2007 
 *
 * extract the first-left substring separated by as_lookup string from as_str; and return it
 */
string sub_string
int i
i = pos( as_str, as_lookup )
sub_string = mid( as_str, 1, i - len( as_lookup ) )
as_str = mid( as_str, i + len( as_lookup ) )

return sub_string
end function

public function boolean split_to_array (string as_string, string as_separator, ref string as_array[]);long d_pos, f_pos, seplength
string vide[]
seplength = len( as_separator )
as_array = vide
if isnull(as_string) or as_string = "" then 
	return false
end if

d_pos = 1
f_pos = pos(as_string,as_separator)
if f_pos = 0 then 
	as_array[ upperbound(as_array) + 1 ] = as_string
else
	do
		as_array[ upperbound(as_array) + 1 ] = mid( as_string, d_pos, f_pos - d_pos)
		d_pos = f_pos + seplength
		f_pos = pos(as_string,as_separator,d_pos)
	loop while f_pos > 0
	as_array[ upperbound(as_array) + 1 ] = mid( as_string, d_pos)
end if

return true

end function

on u_genidwdm_scilexer.create
end on

on u_genidwdm_scilexer.destroy
end on

event constructor;// get handle to the editor window
il_hWindow = Handle(this)

// set default tab width
of_SetTabWidth(ii_tab_width)

// set default colors
of_SendEditor(SCI_STYLESETBACK, STYLE_LINENUMBER, il_margincolor)
of_SendEditor(SCI_SETSELBACK, 1, il_selectcolor)

// set properties as defined on the layout panel
of_showindentguides(ib_indentguides)
of_showlinenumbers(ib_shownumbers)
of_setfont(is_facename)
of_setreadonly(ib_readonly)

end event

event rbuttondown;// show custom popup menu

end event

