<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>No_of_Hours_Worked</fullName>
        <description>No of Hours Worked</description>
        <protected>false</protected>
        <recipients>
            <recipient>raghavc2n@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/No_of_Hours_Worked</template>
    </alerts>
    <alerts>
        <fullName>Time_Sheet_approval</fullName>
        <description>Time Sheet approval</description>
        <protected>false</protected>
        <recipients>
            <recipient>raghavc2n@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Time_Sheet_approval</template>
    </alerts>
    <alerts>
        <fullName>Time_Sheet_approvals</fullName>
        <description>Time Sheet approval</description>
        <protected>false</protected>
        <recipients>
            <recipient>raghavc2n@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Time_Sheet_approval</template>
    </alerts>
    <alerts>
        <fullName>Total_Number_of_Hours_Worked</fullName>
        <description>Total Number of Hours Worked</description>
        <protected>false</protected>
        <recipients>
            <recipient>raghavc2n@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/No_of_Hours_Worked</template>
    </alerts>
    <fieldUpdates>
        <fullName>Submissions_Process</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Submit</literalValue>
        <name>Submissions Process</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>No of hours</fullName>
        <actions>
            <name>Total_Number_of_Hours_Worked</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>EM_TimeSheet__c.EM_Total_Hours_worked__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
