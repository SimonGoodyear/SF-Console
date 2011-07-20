<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <outboundMessages>
        <fullName>ConsoleUpdate</fullName>
        <apiVersion>22.0</apiVersion>
        <endpointUrl>http://sfconsole.herokuapp.com/notificationservice.asmx</endpointUrl>
        <fields>Id</fields>
        <fields>Message__c</fields>
        <fields>Updated__c</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>simon.goodyear@sgopus.com</integrationUser>
        <name>ConsoleUpdate</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>ConsoleLog</fullName>
        <actions>
            <name>ConsoleUpdate</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
