<?xml version="1.0" encoding="UTF-8"?>
<pattern xmlns="http://purl.oclc.org/dsdl/schematron">

  <rule context="cv:Period">
          <!-- endret til å sjekke at dersom både start og sluttdato er oppgitt, gitt at begge elementene er optional -->
      <assert id="EHF-CV-R001"
              test="(exists(cv:EndDate) and exists(cv:StartDate) and xs:date(cv:EndDate) >= xs:date(cv:StartDate)) or not(exists(cv:StartDate)) or not(exists(cv:EndDate))"
              flag="fatal">If both period start date and period end date are given, the period end date shall be later or equal to the period start date.</assert>
  </rule>

<!--  <rule context="cv:Course">
      <assert id="EHF-CV-R002"
              test="(cv:Title) or (cv:Type)"
              flag="fatal">A course shall include either a title or a type.</assert>
  </rule>

  <rule context="cv:Certification">
      <assert id="EHF-CV-R003"
              test="(cv:Title) or (cv:Type)"
              flag="fatal">A Certification shall include either a title or a type.</assert>
  </rule>-->

  <rule context="cv:ExperienceDescription | cv:WorkExperienceDescription">
      <!-- PositionPercent er optional, assert kun dersom elementet finnes -->
      <assert id="EHF-CV-R004"
              test="not(cv:PositionPercent) or (number(cv:PositionPercent) &gt;= 0 and number(cv:PositionPercent) &lt;= 100)"
              flag="fatal">Position percent shall be a greater than or equal zero, and less than or
              equal 100.</assert>

      <!-- alle underelementene er optional i skjemaet, saa gruppen maa ikke vaere tom -->
      <assert id="EHF-CV-R013"
              test="cv:PositionPercent or cv:Role or cv:Activities"
              flag="fatal">If an experience description is provided, at least one of position
              percent, role or activities shall be stated.</assert>
  </rule>

  <rule context="cv:ExperienceValue">

      <!-- alle tre elementene er optional, assert kun dersom elementet finnes -->
      <assert id="EHF-CV-R005"
              test="not(cv:ProjectParticipation) or number(cv:ProjectParticipation) &gt; 0"
              flag="fatal">Project participation shall be greater than zero.</assert>

      <assert id="EHF-CV-R006"
              test="not(cv:ProjectSize) or number(cv:ProjectSize) &gt; 0"
              flag="fatal">Project size shall be greater than zero.</assert>

      <assert id="EHF-CV-R007"
              test="not(cv:ProjectValue) or number(cv:ProjectValue) &gt; 0"
              flag="fatal">The project value shall be greater than zero.</assert>
  </rule>

  <rule context="cv:Skills">
<!--      <assert id="EHF-CV-R009"
              test="(cv:Title) or (cv:Type)"
              flag="fatal">A skill shall include either a title or a type.</assert>-->
      <!-- elementet er optional, assert kun dersom elementet finnes -->
      <assert id="EHF-CV-R010"
              test="not(cv:MinimumLengthPractice) or number(cv:MinimumLengthPractice) &gt;= 0"
              flag="fatal">Minimum length of practice shall be a greater than or equal zero.</assert>
  </rule>
  
  <!-- 
  <rule context="cv:Clearance">
      <assert id="EHF-CV-R008"
              test="(cv:Title) or (cv:Type)"
              flag="fatal">A clearance shall include either a title or a type.</assert>
  </rule>
  
  <rule context="cv:PersonalSkills">
      <assert id="EHF-CV-R011"
              test="(cv:Title) or (cv:Type)"
              flag="fatal">A personal skill shall include either a title or a type.</assert>
  </rule>

  <rule context="cv:SocialMedia">
      <assert id="EHF-CV-R012"
              test="(cv:Title) or (cv:Type)"
              flag="fatal">A social media shall include either a title or a type.</assert>
  </rule>
-->
</pattern>
