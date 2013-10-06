dwdebugmachine
==============

My Datawindow debug tool, it is my favorite debugging tool for datawindow in Powerbuilder classic.

I used to make it available in my dw-ancestors so I can invoke it to diagnose quickly datawindow related bugs.
It save me time in a lot of situations from 2007 where I start to write it :-)

In two lines of code you can show the DWDebugger with a datawindow "dw_1":

  	w_genidwdm_dwdebugger lw_modal
	openwithparm(lw_modal, dw_1 )

In order to incorporate in your application you must:

- add pbnicw.pbd, pbnihash.pbd, pbnilist.pbd, pbniregex.pbd, geni_dwdm105.pbd to your project library list.
- copy pbnicw.pbx, pbnihash.pbx, pbnilist.pbx, pbniregex.pbx, scilexer.dll, LexDWExpr.dll in your project folder.

Take a look at the sample workspace for more details.

- under "Artistic License".
- relying on pbniregex, pbnicw and pbnilist; all are open source available at http://sebastien.kirche.free.fr/powerbuilder/en.html
- powerfilter enable (just put your copie of powerfilter.pbd in the project library list) see http://www.powertothebuilder.com/powerfilter.aspx
- can be linked with embeddingperl to script application (even at runtime) see http://www.embeddingperl.com

