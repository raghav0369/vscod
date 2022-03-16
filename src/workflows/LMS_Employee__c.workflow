<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>HAPPY_BIRTHDAY_C2n</fullName>
        <description>HAPPY Birthday C2N</description>
        <protected>false</protected>
        <recipients>
            <recipient>raghavc2n@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BirthdayEmailer_Templates/Happy_Birthday</template>
    </alerts>
    <alerts>
        <fullName>HAPPY_Birthday</fullName>
        <description>HAPPY Birthday</description>
        <protected>false</protected>
        <recipients>
            <recipient>raghavc2n@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BirthdayEmailer_Templates/Birthday_Alerts</template>
    </alerts>
    <rules>
        <fullName>HAPPY BIRTHDAY</fullName>
        <actions>
            <name>HAPPY_Birthday</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LMS_Employee__c.Date_of_Birth__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
