<?xml version="1.0" encoding="UTF-8"?>
<pattern xmlns="http://purl.oclc.org/dsdl/schematron">

    <rule context="cv-req:EndpointID[@schemeID = '0192']">
        <assert id="EHF-COMMON-R011"
            test="matches(., '^[0-9]{9}$') and u:mod11(.)"
            flag="fatal">MUST be a valid Norwegian organization number. Only numerical value allowed</assert>
    </rule>

    <rule context="cv-req:IssueDate | cv-req:ValidTo | cv-req:ExpirationDate | cv-req:StartDate|
      cv-req:EndDate | cv-req:LastPractice">
        <assert id="EHF-COMMON-R031"
            test="(string(.) castable as xs:date) and (string-length(.) = 10)"
            flag="fatal">A date must be formatted YYYY-MM-DD.</assert>
    </rule>
</pattern>
