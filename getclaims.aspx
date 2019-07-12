<%--
 This Sample Code is provided for the purpose of illustration only and is not intended to be used in a production environment. 
 THIS SAMPLE CODE AND ANY RELATED INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, 
 INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.  

 We grant you a nonexclusive, royalty-free right to use and modify the sample code and to reproduce and distribute the object 
 code form of the Sample Code, provided that you agree: 
    (i)   to not use our name, logo, or trademarks to market your software product in which the sample code is embedded; 
    (ii)  to include a valid copyright notice on your software product in which the sample code is embedded; and 
    (iii) to indemnify, hold harmless, and defend us and our suppliers from and against any claims or lawsuits, including 
          attorneys' fees, that arise or result from the use or distribution of the sample code.

Please note: None of the conditions outlined in the disclaimer above will supercede the terms and conditions contained within 
             the Premier Customer Services Description.

--%>
<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title>View claim for the current user.</title>
</head>
<body>
   <form id="form1" runat="server">
   <div>
   <%
      Microsoft.IdentityModel.Claims.IClaimsIdentity ci = System.Threading.Thread.CurrentPrincipal.Identity as Microsoft.IdentityModel.Claims.IClaimsIdentity;
      Response.Write("<table><tr><th align=left>ClaimType</th><th align=left>ClaimValue</th></tr>"); 
      foreach (Microsoft.IdentityModel.Claims.Claim c in ci.Claims)
      {
          Response.Write(string.Format("<tr><td>{0}</td><td>{1}</td></tr>", c.ClaimType, c.Value));
      }
      Response.Write("</table>");
   %>
   </div>
   </form>
</body>
</html>