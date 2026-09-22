<?xml version="1.0" encoding="UTF-8"?>
<pattern xmlns="http://purl.oclc.org/dsdl/schematron">

    <rule context="cv:EndpointID[@schemeID = '0192']">
        <assert id="EHF-COMMON-R010"
            test="matches(., '^[0-9]{9}$') and u:mod11(.)"
            flag="fatal">MUST be a valid Norwegian organization number. Only numerical value allowed</assert>
    </rule>

    <rule context="cv:IssueDate | cv:ValidTo | cv:ExpirationDate | cv:LastPractice |
      cv:StartDate | cv:EndDate">
        <assert id="EHF-COMMON-R030"
            test="(string(.) castable as xs:date) and (string-length(.) = 10)"
            flag="fatal">A date must be formatted YYYY-MM-DD.</assert>
    </rule>

</pattern>
