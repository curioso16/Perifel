﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:4.0.30319.42000
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict Off
Option Explicit On

Imports Microsoft.SharePoint
Imports Microsoft.SharePoint.Utilities
Imports Microsoft.SharePoint.WebControls
Imports Microsoft.SharePoint.WebPartPages
Imports System
Imports System.Collections
Imports System.Collections.Generic
Imports System.Collections.Specialized
Imports System.ComponentModel.DataAnnotations
Imports System.Configuration
Imports System.Linq
Imports System.Text
Imports System.Text.RegularExpressions
Imports System.Web
Imports System.Web.Caching
Imports System.Web.DynamicData
Imports System.Web.Profile
Imports System.Web.Security
Imports System.Web.SessionState
Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.Expressions
Imports System.Web.UI.WebControls.WebParts
Imports System.Xml.Linq


Partial Public Class NewsPerifel
    
    Public Shared Widening Operator CType(ByVal target As NewsPerifel) As Global.System.Web.UI.TemplateControl
        If target Is Nothing Then Return Nothing
        Return target.TemplateControl
    End Operator
    
    <Global.System.ComponentModel.EditorBrowsableAttribute(Global.System.ComponentModel.EditorBrowsableState.Never)>  _
    Private Sub __BuildControlTree(ByVal __ctrl As Global.IntranetPerifel.NewsPerifel)
    End Sub
    
    Private Sub InitializeControl()
        Me.__BuildControlTree(Me)
        AddHandler Load, AddressOf Me.Page_Load
    End Sub
    
    <Global.System.ComponentModel.EditorBrowsableAttribute(Global.System.ComponentModel.EditorBrowsableState.Never)>  _
    Protected Overloads Overridable Function Eval(ByVal expression As String) As Object
        Return Global.System.Web.UI.DataBinder.Eval(Me.Page.GetDataItem, expression)
    End Function
    
    <Global.System.ComponentModel.EditorBrowsableAttribute(Global.System.ComponentModel.EditorBrowsableState.Never)>  _
    Protected Overloads Overridable Function Eval(ByVal expression As String, ByVal format As String) As String
        Return Global.System.Web.UI.DataBinder.Eval(Me.Page.GetDataItem, expression, format)
    End Function
End Class
