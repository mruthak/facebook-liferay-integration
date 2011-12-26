<%
/**
* Copyright (c) 2000-2010 Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
%>

<%@ include file="init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationActionURL" />

<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:fieldset>		
		<aui:input label="use-facebook-sdk" name="isFBSDK" type="checkbox" value="<%= useFBSDK %>"/>
		
		<aui:input name="urlToLike" type="text" value="<%= urlToLike %>" />
		
		<aui:select name="layoutStyle">
			<aui:option label="standard" selected='<%= layoutStyle.equals("") %>' value="" />
			<aui:option label="buttonCount" selected='<%= layoutStyle.equals("buttonCount") %>' />
		</aui:select>
		
		<aui:input name="showFaces" type="checkbox" value="<%= showFaces %>"/>
	
		<aui:select name="verbToDisplay">
			<aui:option label="like" selected='<%= verbToDisplay.equals("") %>' value="" />
			<aui:option label="recommend" selected='<%= verbToDisplay.equals("recommend")  %>' />
		</aui:select>
		
		<aui:select name="colorsScheme">
			<aui:option label="light" selected='<%= colorsScheme.equals("") %>' value="" />
			<aui:option label="dark" selected='<%= colorsScheme.equals("dark") %>' />
		</aui:select>
		
		<aui:select name="font" showEmptyOption="true">
			<aui:option label="arial" selected='<%= font.equals("arial") %>' />
			<aui:option label="verdana" selected='<%= font.equals("verdana") %>' />
		</aui:select>
		
		<aui:input name="width" type="text" value="<%= width %>" />
		
		<aui:input name="height" type="text" value="<%= height %>" />
	</aui:fieldset>
	
	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>