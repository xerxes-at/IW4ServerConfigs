@echo off
::///////////////////////////////////////////////////////////////////////
::///  	IW4x Lobby Server Configuration start-up file	 	      	  ///
::///////////////////////////////////////////////////////////////////////
::///////////////////////////////////////////////////////////////////////
:://This config best view with Notepad++ or other non-windows notepad  //
::///////////////////////////////////////////////////////////////////////
::// Defualt Playlist Gamemode from myplaylists.info		       	   //
:://								       							   //
::// 0 iw4x DLC	 (bonus edit)					       				   //
::// 1 Team Deathmatch						       					   //
::// 2 Hardcore Team Deathmatch					      				   //
::// 3 Free-for-all						       						   //
::// 4 Hardcore Free-for-all					       				   //
::// 5 Domination						       						   //
::// 6 Hardcore: Domination					       					   //
::// 7 Search and Destory					      					   //
::// 8 Hardcore: Search and Destory  				       			   //
::// 9 Demolition						      						   //
::// 10 Hardcore: Demolition					       				   //
::// 11 Capture the flag					       					   //
::// 12 Hardcore: Capture the flag				       				   //
::// 13 Headquarters   						       					   //
::// 14 Hardcore: Headquarters   				       				   //
::// 15 Sabotage						       						   //
::// 16 Hardcore: Sabotage					       					   //
::// 17 Ground War						       						   //
::// 18 Hardcore: Ground War					       				   //
:://								       							   //
::///////////////////////////////////////////////////////////////////////

::///////////////////////////////////////////////////////////////////////
::// 	         Choose your gamemode of 0-22 of your choice above     //
::///////////////////////////////////////////////////////////////////////

set PlaylistGameMode=1

::////////////////////////////////////////////////////////////////////////
::// 						Your Game Server Port.	       	       		//
::// 				Make sure you Port Forward both UDP&TCP        		//
::////////////////////////////////////////////////////////////////////////

set GamePort=28961


::///////////////////////////////////////////////////////////////////////
::// 			Offline/Private LAN Party Mode 		       			   //
:://			0 Disable (Boradcast Online)		       			   //
:://			1 Enable (Unlisted & Private Offline Mode)    		   //
::///////////////////////////////////////////////////////////////////////


set LANMode=0


::///////////////////////////////////////////////////////////////////////
::// 	Below edits are optional. For basic user. Your Done	       	   //
::///////////////////////////////////////////////////////////////////////
::// 			Load a mod on your server              	       		   //
:://			Example: ModfolderName=mods/bots	       			   //
::///////////////////////////////////////////////////////////////////////


set ModFolderName=


::///////////////////////////////////////////////////////////////////////
::// 	Your edited Playlist in the "userraw" folder goes here 	       //
::///////////////////////////////////////////////////////////////////////


set PlaylistFilename=myplaylists.info


::///////////////////////////////////////////////////////////////////////
::// 	Your edited partyserver.cfg in the "userraw" folder goes here  //
:://	This is were you edit your hostname, rcon, inactivity, etc     //
::///////////////////////////////////////////////////////////////////////


set ServerFilename=partyserver.cfg

::///////////////////////////////////////////////////////////////////////
:://You done!! WARNING!!! Don't mess with anything below this line     //
::///////////////////////////////////////////////////////////////////////

start iw4x.exe -dedicated +set fs_game "%ModFolderName%" +set sv_lanonly "%LANMode%" +set net_port "%GamePort%" +exec %ServerFilename% +set party_enable "1" +set playlistFilename "%PlaylistFilename%" +playlist "%playlistGameMode%"