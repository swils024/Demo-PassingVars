# Demo-PassingVars

A simple variable scoping demo of passing variables between Intersystems Caché ObjectScript classes and Routines. 

In this scenario you are not allowed to modify the EXISTINGCODE routine but you want to obtain the variables set within it. To do this, we have created a new intermediate routine called INTERVARS that passes variables back to the Cache ObjectScript Run() ClassMethod (static method in other languages). 

While this was designed to be run from the shell, you could easily extend the %CSP.REST class and add web service config to return a JSON object instead.

# Instructions
+ Import the code into a clean namespace. On fresh installations, USER is ideal.
+ From the shell <b>Set status = ##class(PassingVars.Demo1).Run()</b>
+ From the shell <b>ZWrite ^LOG</b>