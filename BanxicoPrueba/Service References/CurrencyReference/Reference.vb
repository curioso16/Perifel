﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:4.0.30319.42000
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On


Namespace CurrencyReference
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ServiceModel.ServiceContractAttribute([Namespace]:="http://ws.dgie.banxico.org.mx", ConfigurationName:="CurrencyReference.DgieWSPort")>  _
    Public Interface DgieWSPort
        
        <System.ServiceModel.OperationContractAttribute(Action:="", ReplyAction:="*"),  _
         System.ServiceModel.XmlSerializerFormatAttribute(Style:=System.ServiceModel.OperationFormatStyle.Rpc, SupportFaults:=true, Use:=System.ServiceModel.OperationFormatUse.Encoded)>  _
        Function reservasInternacionalesBanxico() As <System.ServiceModel.MessageParameterAttribute(Name:="result")> String
        
        <System.ServiceModel.OperationContractAttribute(Action:="", ReplyAction:="*")>  _
        Function reservasInternacionalesBanxicoAsync() As <System.ServiceModel.MessageParameterAttribute(Name:="result")> System.Threading.Tasks.Task(Of String)
        
        <System.ServiceModel.OperationContractAttribute(Action:="", ReplyAction:="*"),  _
         System.ServiceModel.XmlSerializerFormatAttribute(Style:=System.ServiceModel.OperationFormatStyle.Rpc, SupportFaults:=true, Use:=System.ServiceModel.OperationFormatUse.Encoded)>  _
        Function tasasDeInteresBanxico() As <System.ServiceModel.MessageParameterAttribute(Name:="result")> String
        
        <System.ServiceModel.OperationContractAttribute(Action:="", ReplyAction:="*")>  _
        Function tasasDeInteresBanxicoAsync() As <System.ServiceModel.MessageParameterAttribute(Name:="result")> System.Threading.Tasks.Task(Of String)
        
        <System.ServiceModel.OperationContractAttribute(Action:="", ReplyAction:="*"),  _
         System.ServiceModel.XmlSerializerFormatAttribute(Style:=System.ServiceModel.OperationFormatStyle.Rpc, SupportFaults:=true, Use:=System.ServiceModel.OperationFormatUse.Encoded)>  _
        Function tiposDeCambioBanxico() As <System.ServiceModel.MessageParameterAttribute(Name:="result")> String
        
        <System.ServiceModel.OperationContractAttribute(Action:="", ReplyAction:="*")>  _
        Function tiposDeCambioBanxicoAsync() As <System.ServiceModel.MessageParameterAttribute(Name:="result")> System.Threading.Tasks.Task(Of String)
        
        <System.ServiceModel.OperationContractAttribute(Action:="", ReplyAction:="*"),  _
         System.ServiceModel.XmlSerializerFormatAttribute(Style:=System.ServiceModel.OperationFormatStyle.Rpc, SupportFaults:=true, Use:=System.ServiceModel.OperationFormatUse.Encoded)>  _
        Function udisBanxico() As <System.ServiceModel.MessageParameterAttribute(Name:="result")> String
        
        <System.ServiceModel.OperationContractAttribute(Action:="", ReplyAction:="*")>  _
        Function udisBanxicoAsync() As <System.ServiceModel.MessageParameterAttribute(Name:="result")> System.Threading.Tasks.Task(Of String)
    End Interface
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Public Interface DgieWSPortChannel
        Inherits CurrencyReference.DgieWSPort, System.ServiceModel.IClientChannel
    End Interface
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Partial Public Class DgieWSPortClient
        Inherits System.ServiceModel.ClientBase(Of CurrencyReference.DgieWSPort)
        Implements CurrencyReference.DgieWSPort
        
        Public Sub New()
            MyBase.New
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String)
            MyBase.New(endpointConfigurationName)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As String)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal binding As System.ServiceModel.Channels.Binding, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(binding, remoteAddress)
        End Sub
        
        Public Function reservasInternacionalesBanxico() As String Implements CurrencyReference.DgieWSPort.reservasInternacionalesBanxico
            Return MyBase.Channel.reservasInternacionalesBanxico
        End Function
        
        Public Function reservasInternacionalesBanxicoAsync() As System.Threading.Tasks.Task(Of String) Implements CurrencyReference.DgieWSPort.reservasInternacionalesBanxicoAsync
            Return MyBase.Channel.reservasInternacionalesBanxicoAsync
        End Function
        
        Public Function tasasDeInteresBanxico() As String Implements CurrencyReference.DgieWSPort.tasasDeInteresBanxico
            Return MyBase.Channel.tasasDeInteresBanxico
        End Function
        
        Public Function tasasDeInteresBanxicoAsync() As System.Threading.Tasks.Task(Of String) Implements CurrencyReference.DgieWSPort.tasasDeInteresBanxicoAsync
            Return MyBase.Channel.tasasDeInteresBanxicoAsync
        End Function
        
        Public Function tiposDeCambioBanxico() As String Implements CurrencyReference.DgieWSPort.tiposDeCambioBanxico
            Return MyBase.Channel.tiposDeCambioBanxico
        End Function
        
        Public Function tiposDeCambioBanxicoAsync() As System.Threading.Tasks.Task(Of String) Implements CurrencyReference.DgieWSPort.tiposDeCambioBanxicoAsync
            Return MyBase.Channel.tiposDeCambioBanxicoAsync
        End Function
        
        Public Function udisBanxico() As String Implements CurrencyReference.DgieWSPort.udisBanxico
            Return MyBase.Channel.udisBanxico
        End Function
        
        Public Function udisBanxicoAsync() As System.Threading.Tasks.Task(Of String) Implements CurrencyReference.DgieWSPort.udisBanxicoAsync
            Return MyBase.Channel.udisBanxicoAsync
        End Function
    End Class
End Namespace
