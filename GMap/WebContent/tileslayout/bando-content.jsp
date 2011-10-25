<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="gmap.uti.DiaDiemTree"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=vi"></script>
<script type="text/javascript" src="scripts/MyGoogleMap.js"></script>
<script type="text/javascript" src="scripts/gears_init.js"></script>
<script type="text/javascript" src="scripts/jquery.js"></script>
<script type="text/javascript" src="scripts/ftiens4.js"> </script>
<script type="text/javascript" src="scripts/ua.js"> </script>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />

  <style>
   /*                                                          */
   /* Styles for the tree.                                     */
   /*                                                          */
   SPAN.TreeviewSpanArea A {
     font-size: 10pt; 
     font-family: verdana,helvetica; 
     text-decoration: none;
     color: black;}
   SPAN.TreeviewSpanArea A:hover {
     color: '#820082';}

   /*                                                          */
   /* Styles for the remainder of the document.                */
   /*                                                          */
   BODY {
     background-color: white;}
   TD {
     font-size: 10pt; 
     font-family: verdana,helvetica;}
  </style>
  
<table width="100%" border="1" cellspacing="0" cellpadding="2">
  <tr>
    <td colspan="2">Dùng cho tìm kiếm</td>

  </tr>
  <tr>
        <td width="30%" valign="top">
<table width="100%" border="1" cellspacing="2" cellpadding="2">
  <tr>
    <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>
        	<form action="./them-dia-diem" name="frmThemDiaDiem" id="frmThemDiaDiem" method="post" onsubmit="return themDiaDiem();">
          		<input type="submit" name="themDiaDiemButt" id="themDiaDiemButt" value="Thêm địa điểm"/>
          		<input type="hidden" name="iIdFolder" id="iIdFolder"/>
          		<input type="hidden" name="iKinhDo" id="iKinhDo"/>
          		<input type="hidden" name="iViDo" id="iViDo"/>
          	</form>
		</td>
        <td>
        	<form action="./them-thu-muc" name="frmThuMuc" id="frmThuMuc" method="post" onsubmit="return themThuMuc();">
          		<input type="submit" name="themDiaDiemButt" id="themDiaDiemButt" value="Thêm thư mục"/>
          		<input type="hidden" name="iIdFolder" id="iIdFolder"/>
          		<input type="hidden" name="iKinhDo" id="iKinhDo"/>
          		<input type="hidden" name="iViDo" id="iViDo"/>
          	</form>
		</td>
        <td>&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td>
                <script>	
ICONPATH = "./images/treeview/"	;	  	
USETEXTLINKS = 1;
STARTALLOPEN = 1;
USEFRAMES = 0;
USEICONS = 1;
WRAPTEXT = 1;
PRESERVESTATE = 1;
HIGHLIGHT = 1;
<% out.print(((DiaDiemTree)request.getAttribute("diaDiemTree")).toString()); %>
foldersTree.treeID = "FramelessHili" ;
		</script>

 <table border=0><tr><td><font size=-2><a style="font-size:7pt;text-decoration:none;color:silver" href="http://www.treemenu.net/" target=_blank>Javascript Tree Menu</a></font></td></tr></table>
 <span class=TreeviewSpanArea>
  <script>initializeDocument();</script>
  <noscript>
   A tree for site navigation will open here if you enable JavaScript in your browser.
  </noscript>
 </span>
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>        
 
    </td>
    <td>
    	<script type="text/javascript">
		 	$(document).ready(function(){
				initialize();
				<% out.print(((DiaDiemTree)request.getAttribute("diaDiemTree")).khoiTaoMakerJS()); %>
			});		
    	</script>
    	<div id="map" style="height: 600px;">    		
    	</div>
	</td>
  </tr>
</table>