<?xml version="1.0" encoding="UTF-8"?>
<pattern xmlns="http://purl.oclc.org/dsdl/schematron">

<!--  <rule context="cv-req:Course | cv-req:Course/cv-req:AlternativeCourse">
      <assert id="EHF-CV-REQ-R001"
              test="(cv-req:Title) or (cv-req:Type)"
              flag="fatal">A course shall include either a title or a type.</assert>
  </rule>
-->
  <rule context="cv-req:Period">
      <!-- begge elementene er optional, assert kun dersom begge finnes -->
      <assert id="EHF-CV-REQ-R002"
              test="not(cv-req:StartDate) or not(cv-req:EndDate) or xs:date(cv-req:StartDate) &lt;= xs:date(cv-req:EndDate)"
              flag="fatal">A period end date shall be later or equal to the period start date.</assert>
  </rule>

 <!-- <rule context="cv-req:Certification | cv-req:AlternativeCertification">
      <assert id="EHF-CV-REQ-R003"
              test="(cv-req:Title) or (cv-req:Type)"
              flag="fatal">A Certification shall include either a title or a type.</assert>
  </rule>-->

  <rule context="cv-req:RequiredTotalExperience">
      <!-- begge elementene er optional, assert kun dersom begge finnes -->
      <assert id="EHF-CV-REQ-R004"
              test="not(cv-req:MinimumYearsExperience) or not(cv-req:MaximumYearsExperience) or number(cv-req:MinimumYearsExperience) &lt; number(cv-req:MaximumYearsExperience)"
              flag="fatal">Maximum experience must be larger than minimum experience.</assert>

      <!-- begge underelementene er optional i skjemaet, saa gruppen maa ikke vaere tom -->
      <assert id="EHF-CV-REQ-R015"
              test="cv-req:MinimumYearsExperience or cv-req:MaximumYearsExperience"
              flag="fatal">If required total experience is provided, at least one of minimum or
              maximum years of experience shall be stated.</assert>
  </rule>

  <rule context="cv-req:ExperienceDescription | cv-req:WorkExperienceDescription">
      <!-- PositionPercent er optional, assert kun dersom elementet finnes -->
      <assert id="EHF-CV-REQ-R005"
              test="not(cv-req:PositionPercent) or (number(cv-req:PositionPercent) &gt;= 0 and number(cv-req:PositionPercent) &lt;= 100)"
              flag="fatal">Position percent shall be a greater than or equal zero, and less than or
              equal 100.</assert>

      <!-- alle underelementene er optional i skjemaet, saa gruppen maa ikke vaere tom -->
      <assert id="EHF-CV-REQ-R014"
              test="cv-req:PositionPercent or cv-req:Role or cv-req:Activities"
              flag="fatal">If an experience description is provided, at least one of position
              percent, role or activities shall be stated.</assert>
  </rule>

  <rule context="cv-req:ExperienceValue">

      <!-- alle tre elementene er optional, assert kun dersom elementet finnes -->
      <assert id="EHF-CV-REQ-R006"
              test="not(cv-req:ProjectParticipation) or number(cv-req:ProjectParticipation) &gt; 0"
              flag="fatal">Project participation shall be greater than zero.</assert>

      <assert id="EHF-CV-REQ-R007"
              test="not(cv-req:ProjectSize) or number(cv-req:ProjectSize) &gt; 0"
              flag="fatal">Project size shall be greater than zero.</assert>

      <assert id="EHF-CV-REQ-R008"
              test="not(cv-req:ProjectValue) or number(cv-req:ProjectValue) &gt; 0"
              flag="fatal">The project value shall be greater than zero.</assert>
  </rule>

 <!-- <rule context="cv-req:Skills | cv-req:AlternativeSkills">
      <assert id="EHF-CV-REQ-R011"
              test="(cv-req:Title) or (cv-req:Type)"
              flag="fatal">A skill shall include either a title or a type.</assert>
  </rule>-->

  <!-- MinimumLengthPractice ligger direkte paa Skills/AlternativeSkills, ikke paa et eget
       SkillPractice-element. Elementet er optional, assert kun dersom det finnes. -->
  <rule context="cv-req:Skills | cv-req:AlternativeSkills">
      <assert id="EHF-CV-REQ-R012"
              test="not(cv-req:MinimumLengthPractice) or number(cv-req:MinimumLengthPractice) &gt;= 0"
              flag="fatal">Minimum length of practice shall be a greater than or equal zero.</assert>
  </rule>

 <!-- 
  <rule context="cv-req:Clearance | cv-req:AlternativeClearance">
      <assert id="EHF-CV-REQ-R009"
              test="(cv-req:Title) or (cv-req:Type)"
              flag="fatal">A clearance shall include either a title or a type.</assert>
  </rule>

  <rule context="cv-req:Reference">
      <assert id="EHF-CV-REQ-R010"
              test="(cv-req:MinimumTotalReference) &gt; 0"
              flag="fatal">Total minimum reference number shall be greater than zero.</assert>
  </rule>
  
  <rule context="cv-req:PersonalSkills">
      <assert id="EHF-CV-REQ-R013"
              test="(cv-req:Title) or (cv-req:Type)"
              flag="fatal">A personal skill shall include either a title or a type.</assert>
  </rule>
-->
</pattern>
