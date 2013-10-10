HA$PBExportHeader$dwdebugmachine105.sra
$PBExportComments$Generated Application Object
forward
global type dwdebugmachine105 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables

end variables

global type dwdebugmachine105 from application
string appname = "dwdebugmachine105"
string displayname = "Datawindow DebugMachine"
end type
global dwdebugmachine105 dwdebugmachine105

on dwdebugmachine105.create
appname="dwdebugmachine105"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on dwdebugmachine105.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open( w_main )
end event

