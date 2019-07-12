# GetClaims

This is a custom application page that enumerates all the claims of the login user.
The application page can be deployed on WFE of SharePoint On-premises. This page does not work on SharePoint Online as it is application page using inline code of ASPX.

## Scenarios : Example

We can enumerate the group that the log in user resides by looking at the value of the following claim.
http://schemas.microsoft.com/ws/2008/06/identity/claims/role

## How to use it

1. Place this file in the following folder of WFE.

C:\Program Files\Common Files\Microsoft Shared\web server extensions\{ver}\TEMPLATE\LAYOUTS\

* {ver} should be replaced as below.
 14 for SPS2010

 15 for SPS2013

 16 for SPS2016

2. Navigate to the deployed page such as following.

 http://sharepointwfe/_layouts/getclaims.aspx

 http://sharepointwfe/_layouts/15/getclaims.aspx


## Reference

Original Code is from Japan SharePoint Support Team Blog. 

URL: https://blogs.technet.microsoft.com/sharepoint_support/2016/02/17/sharepoint-server-1243/