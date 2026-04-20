<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="CertTemplate">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="CertTemplate" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="CERT_TEMPLATE" />
        <FIELD name="TYPE" value="PROPERTY" />
        <FIELD name="DESCRIPTION" value="Certificate Template Property Sheet" />
        <FIELD name="TITLE" value="Certificate Template" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="SPELLCHECK_DETAILS" value="False" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="LABTABLE" />
        <FIELD name="DEFAULT_ICON" value="CERT_TEMPLATE" />
        <FIELD name="WINDOW_STYLE" value="FLOAT" />
        <FIELD name="SHOW_WELCOME_PAGE" value="True" />
        <FIELD name="HAS_ERRORS" value="False" />
        <FIELD name="PAGE_EXTENSION" value="" />
        <FIELD name="DYNAMIC_FORM_DEFINITION" value="" />
        <FIELD name="SPEECH_ENABLED" value="False" />
        <FIELD name="TITLE_ID" value="Certificate Template" />
        <FIELD name="TITLE_MS" value="Certificate Template" />
        <FIELD name="TITLE_VI" value="Certificate Template" />
        <FIELD name="TITLE_ZH" value="Certificate Template" />
      </RECORD>
    </TABLE>
    <PAGES>
      <PAGE name="AttachmentPage" />
      <PAGE name="InspectionPage" />
      <PAGE name="VersionPage" />
    </PAGES>
  </DATA>
  <DEFINITION><![CDATA[<?xml version="1.0" encoding="utf-16"?>
<interface xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.thermo.com/informatics/xmlns/interface/1.0">
  <forms>
    <form name="PageGeneral">
      <height>500</height>
      <width>600</width>
      <caption>General</caption>
      <components>
        <dataquery name="TemplateQuery">
          <entity>REPORT_TEMPLATE</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>DataEntityDefinition</property>
              <operand>Equals</operand>
              <value>CERT</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <entityBrowseDefinition name="TemplateBrowse">
          <query>TemplateQuery</query>
          <entity>REPORT_TEMPLATE</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <minimumsize>
        <height>500</height>
        <width>600</width>
      </minimumsize>
      <extendedfunctions />
      <controls>
        <prompt name="ActionComment">
          <location>
            <x>12</x>
            <y>168</y>
          </location>
          <height>21</height>
          <width>575</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Action Comment</caption>
          <property>FbActionComment</property>
          <propertylength>100</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="IsGroupLevel">
          <location>
            <x>12</x>
            <y>279</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>8</tabindex>
          <caption>Is Country Level ?</caption>
          <property>FbIsGroupLevel</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <PromptEntityBrowseDefinition name="ReportTemplate">
          <location>
            <x>12</x>
            <y>200</y>
          </location>
          <height>20</height>
          <width>575</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Report template for certificate generation</tooltip>
          <caption>Report Template</caption>
          <property>ReportTemplate</property>
          <Browse>TemplateBrowse</Browse>
        </PromptEntityBrowseDefinition>
        <TextEdit name="NameExpression">
          <location>
            <x>12</x>
            <y>253</y>
          </location>
          <height>20</height>
          <width>575</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Name Expression</caption>
          <property>NameExpression</property>
          <propertylength>500</propertylength>
          <mandatory>true</mandatory>
          <defaultvalue xsi:type="xsd:string" />
          <readonly>true</readonly>
          <showbutton>true</showbutton>
        </TextEdit>
        <prompt name="CertificateType">
          <location>
            <x>11</x>
            <y>226</y>
          </location>
          <height>21</height>
          <width>576</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Certificate Type</caption>
          <property>CertificateType</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="CertTemplateVersion">
          <location>
            <x>459</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>129</width>
          <tabindex>1</tabindex>
          <anchor>Top Right</anchor>
          <tooltip>Version number of the Template</tooltip>
          <caption>Version</caption>
          <property>CertTemplateVersion</property>
          <propertylength>10</propertylength>
          <mandatory>true</mandatory>
          <captionwidth>58</captionwidth>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <EntityImage name="EntityImage1">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>32</height>
          <width>32</width>
        </EntityImage>
        <prompt name="CertTemplateName">
          <location>
            <x>120</x>
            <y>19</y>
          </location>
          <height>21</height>
          <width>333</width>
          <anchor>Top Left Right</anchor>
          <property>CertTemplateName</property>
          <propertylength>100</propertylength>
          <viewname />
          <nulltext>&lt;To be Generated&gt;</nulltext>
        </prompt>
        <line name="Line">
          <location>
            <x>12</x>
            <y>46</y>
          </location>
          <height>12</height>
          <width>576</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="Description">
          <location>
            <x>13</x>
            <y>64</y>
          </location>
          <height>98</height>
          <width>575</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Description</caption>
          <property>Description</property>
          <viewname />
        </prompt>
        <line name="Line1">
          <location>
            <x>11</x>
            <y>303</y>
          </location>
          <height>12</height>
          <width>576</width>
          <tabindex>9</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="GroupId">
          <location>
            <x>11</x>
            <y>321</y>
          </location>
          <height>21</height>
          <width>576</width>
          <tabindex>10</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Group</caption>
          <property>GroupId</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="ModifiedOn">
          <location>
            <x>11</x>
            <y>348</y>
          </location>
          <height>21</height>
          <width>576</width>
          <tabindex>11</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Modified On</caption>
          <property>ModifiedOn</property>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="ModifiedBy">
          <location>
            <x>12</x>
            <y>375</y>
          </location>
          <height>21</height>
          <width>575</width>
          <tabindex>12</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Modified By</caption>
          <property>ModifiedBy</property>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <line name="Line2">
          <location>
            <x>11</x>
            <y>402</y>
          </location>
          <height>12</height>
          <width>576</width>
          <tabindex>13</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <prompt name="Modifiable">
          <location>
            <x>12</x>
            <y>420</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>14</tabindex>
          <caption>Modifiable</caption>
          <property>Modifiable</property>
          <readonly>true</readonly>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="PageCategorization">
      <height>500</height>
      <width>600</width>
      <caption>Categorization</caption>
      <minimumsize>
        <height>500</height>
        <width>600</width>
      </minimumsize>
      <extendedfunctions />
      <controls>
        <prompt name="TestDisplay">
          <location>
            <x>49</x>
            <y>285</y>
          </location>
          <height>21</height>
          <width>535</width>
          <tabindex>54</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Test Display</caption>
          <property>FbTestmethodDisplay</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="Factory">
          <location>
            <x>50</x>
            <y>206</y>
          </location>
          <height>21</height>
          <width>535</width>
          <tabindex>51</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Factory</caption>
          <property>FbFactory</property>
          <propertylength>100</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="RealName">
          <location>
            <x>49</x>
            <y>261</y>
          </location>
          <height>21</height>
          <width>535</width>
          <tabindex>53</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Real Name</caption>
          <property>FbRealName</property>
          <propertylength>80</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="ProductLinePrompt">
          <location>
            <x>49</x>
            <y>236</y>
          </location>
          <height>21</height>
          <width>535</width>
          <tabindex>52</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Product Line</caption>
          <property>FbProductLine</property>
          <propertylength>100</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="CountryPrompt">
          <location>
            <x>51</x>
            <y>179</y>
          </location>
          <height>21</height>
          <width>535</width>
          <tabindex>50</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Country</caption>
          <property>FbCountry</property>
          <propertylength>10</propertylength>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <label name="Label1">
          <location>
            <x>51</x>
            <y>332</y>
          </location>
          <height>34</height>
          <width>534</width>
          <tabindex>49</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>General information parameter regarding the certificate style.</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <label name="UsageLabel">
          <location>
            <x>53</x>
            <y>32</y>
          </location>
          <height>32</height>
          <width>534</width>
          <tabindex>48</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>These parameters are copied through to the certificate as default values and allow categorization of both the template and certificates.</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <picturebox name="GeneralPicture">
          <location>
            <x>10</x>
            <y>332</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>47</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAARASURBVFhHtVdLT1NBFG7URI3AzkTjzii60cRf4WOPgMYo0egKI4Q3G9hA2ygWkNIWTAyPhbjwQQTksXAjREBN3ClEKGLS1hfSJi2QjOc7nSm341CuAb7kC/fentfMOXPm4LCLurq6nKqqqsKKioqOysrKt8QwcUUSz/gWIBaQTLZU2zqqq6tzyehDYowobBKyneXl5celmf9HSUnJflrJXTK0CqO0etHS0iJGR0fF7OysCIfDIpFIMPGMb/gNMjIIcIVsuGn39kmz9oDISfGjctzb2ysikYiwCwTU09PDujKQ8ZqamsPSfGaQ0hlSQE6F2+0WwWBQmhViPrIkWoamxNmGx+JEaUAcuHqPiWd8ax2aFsHvS1Ka5OfnhcvlUkEslJWVnZZuzMDKlfP29naxvLzMhr7++CNudgyJ3ZdcwlHgzMhdhS6R53kmvoR/s24sFhOBQCAVBPk4JN2lA3kigQ8QhMLa2hobeDr5SWRdazI6y8TsoibxfOoz24Atv9+vgphCfUm365AFx1sWjUZZ0TMwySsyObBD6DYPTrEt7ARSKoOol26TkEdtFUWjco6VZ3KuwyQDwobaCdSELMzltFTQB5xzrnZggXK+2bbrMMkoIh2LP5P11N3drXbBy87R4eglhsjUUSvyvTQaslKHScbKG/5BlsMRlQFEuWOS40J8aG1tZQEcNTvVrsMkYyVsYmeB5uZmDoJ856P40NvF2NhY8kcqGpOB7eCDV9PsY2RkhAMg337kH5cIt1LgXGOfUXk7eMH5hH3MzMyoNIwjgAheVP6P3fEblXXqMMnoRMcELHUQQgAJvOBSAew2HR0mGZ2wDcCXDCCeCiAej/OPOxlATtF9loUvawBpKcgtCRiVdeowyeg8WdrBsnoKuAhRGIDdItRhktG5URFijOJhAsCValLWqcMko9M7/I5lh4eHVQA+BFCAF0wyAO7znWhEey67U43I4/FwANSI8tCKs+glilaM3ADX/QNGI1bqMMlYeYvmCSAUCqnVR+Gb7wN66cRHjFEABhBcICZDijpMMoqo/m+/kpdRV1eXCiDAzgE5Ca1gF3BlAgPvZzOmQodJBsR1/GI6eR3Pzc2p6zhBf49K90lQX3YjMqfTmRpIcC9sdSDBDAloA0mjdLsOOZKNQwDjkxrJMExslg4Tse3908mjDVs+n4+d00LfFBcX75Vu04EphQSCEPR6vamhNLwUE7cfjXAlm5xZiVVfaetP5VwbShdra2uPSHdmYHQmwQUoYD5UNQHgGOFKPe/s466Gtg3iGU2mjc65OmoAco6UwpZc2CnpJjNoRjxIwq+hiKLBGKWOqB3gqFlGL972DcfxjYA8kXI9MaoMYZLBMIFWioCs/5rhG35T044kqr1hw5zbASInQ15iKhAbxLzn/+eobQXoWmQwn4z7iBPEEBFXOYjnCXLaTn8vpjrcpnA4/gJKQFjyVQoOkwAAAABJRU5ErkJggg==</image>
        </picturebox>
        <line name="GeneralLine">
          <location>
            <x>10</x>
            <y>312</y>
          </location>
          <height>14</height>
          <width>575</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>General</caption>
        </line>
        <picturebox name="UsagePicture">
          <location>
            <x>12</x>
            <y>32</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>45</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAWMSURBVFhHvVdLTJxVFB60iRvrQo2JJia6cOHGpS6MhpVJo4tu2LhwZRcmEiG835TnSHnKI2nTAmkRZoBxCEMRBAwTSIG2wAASGDBFZniNw/AeBpjH8Zwz9/756UyBtuCXnDD/fXznO+fee+5FcxZER0e/lpiY2JiUlDSSnJz8fXZ29iui6/8BOs1D56Cy0ZSUlM9F98UiPj7+E3R4RI6bm5shMzNTigigNaelpb0vhp4/MNWX0MkjclhXVwcEt9sN7e3tgFmRQvbwdzYtk5h2fkBi5E/iqLe2tliAxNLSEtTU1EgRZHNoX4upL4+EhISPkHCfyIeHh9mpbfMQ/pzbgW2Pj78DgQBMTk5CQUGBWkgPbtiPBc0LIwKJeomwurqaHR35AmCc2ITGxy7Qjbrgsc3NbYTDw0Po6ekB3A9SxBFmrwKFXBZ8zwck+IGIiNDhcLCTh//ssXO1kaAn6wfcT1hfX4eGhgZ1NpbRvkPKiCDzGYCq38NJm0TQ19fHxI5db4hztfVad2BzP7gshPn5eSgtLVULGUHeT4WLk4GpM9GksrIy8Pl84Mcsd/y1Fdax2pqeWhaaOzg4CFlZWVKED7nzhJvwwEHf0mAsMmCz2ZhoYnk/rMNnmcGyAbMODwRlAOzs7KiXxSpchSIuLu5tHOCggSaTiSdTWmnDhXN0mo3Z3cxBoAImBFwT7kIhaj1otVre1RTBHzPbYclPMxItj+rCwoIsWpaoqKhXhbvjwDP/jVAIVquVJ86uecKSn8WmVvaZw+/3Q3l5OfNiSQ9fpLDcvoHR22iQXq/nie5DPzSPbYQlP81MU1vgo52LMJvNMvVkLrSfQrKAjVU0ICMjA/b29ngiEUzi5tO/gIi1nSPmoNJNJZzsqSM5hvalcK/RpKamjsjOyspKWFxcZAICZeLBQmgBepbRWAm584eGhriSjo6OQk5OjhQRoD2H2X9dk56e7iypqIKs60on1NfXw8bGhqACjqpz+uRa0Dq+AR6vn8fPzMwwDwVEziXkTUrHnPpRxI+0BKC7b4bGR06oN3QpnSgMOjs7+UQQiGfeecDnPJyAv7GPcHBwwJcT8dCNqQaJ6e/vlz4CeDq+IgEB/e8DCpFueBlq7txT7vv8/HxOn4zk0BvgikeVT87pxuMq4zQajTyPIlWDhKkK0jraFd4DqGaxprZBIVPMPAsFP9+QE0L2B51zuppJiLwHqJ+E5+Xlgcfj4TbC8vIyFBUVMQ+mnSK/i37fYgHY2EUpaRuYCrvrm7pH8IQEn2FETkeVyquEdO71eqGkpITHTU1NcRuBskfLSe3UL9JPRsfyiiYmJuZdJLZSo7a4HO6P2UNEND50wK1ff8NJwWWhI0v3PzmV6O7u5r7a2lr+pr7W1lZlvMVi4faVlRWoqKjgdjQLZ4GAH9dQnZs6bt5rgbZxZ4gQ/ZANyqpvysm82SjC1dVVwOPMkbpcLnA6nUoFLC4uhrW1NXYe5uHSLtwHERkZeQmzUY9CAimpadDU9QAr4nERZE19Friek6cIoQjpL1W+6elpwPPN3zqdLniviDqQm5sr5/jRbsXGxr4pXB8H1u0PUcgErXluYRG0jTwJEcHH1tjLkRMpXWIdHR28TyhCegsQ7HY7P+uEY7JhDPAz4epk4I69ig74dfTL7QYwjv8bIkQ3vAS5BVolusLCQn5LbG9vg8FgUI4zmh3t+Z5nAhEopASF4IsmBe6azMeWpQktNS24y6mC7u7ucvSqf2DcOF/LZfdlgMvyDkZjpoiycvLBMDDDzo0WFztqaWmBubk55SiS4VgT2geC4nyAhJG4hqvk4EbVbWhFIfS7qqpKcYw2im+ML8SUiwGmNQM3G//PqDIqsaF3/kUBRVxGh51o9Ja8Q48b0XVGaDT/AbgWFyROEbBaAAAAAElFTkSuQmCC</image>
        </picturebox>
        <line name="UsageLine">
          <location>
            <x>13</x>
            <y>12</y>
          </location>
          <height>14</height>
          <width>575</width>
          <anchor>Top Left Right</anchor>
          <caption>Usage</caption>
        </line>
        <prompt name="Style">
          <location>
            <x>49</x>
            <y>372</y>
          </location>
          <height>21</height>
          <width>536</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Certificate style, e.g. COA/COQ.</tooltip>
          <caption>Style</caption>
          <property>Style</property>
          <viewname />
        </prompt>
        <prompt name="Language">
          <location>
            <x>51</x>
            <y>151</y>
          </location>
          <height>21</height>
          <width>536</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Associated Language</tooltip>
          <caption>Language</caption>
          <property>Language</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <prompt name="Customer">
          <location>
            <x>51</x>
            <y>124</y>
          </location>
          <height>21</height>
          <width>536</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Associated Customer</tooltip>
          <caption>Customer</caption>
          <property>Customer</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <prompt name="GradeCode">
          <location>
            <x>51</x>
            <y>97</y>
          </location>
          <height>21</height>
          <width>536</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Associated Level</tooltip>
          <caption>Grade Code</caption>
          <property>GradeCode</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <prompt name="Product">
          <location>
            <x>51</x>
            <y>70</y>
          </location>
          <height>21</height>
          <width>536</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Associated Product</tooltip>
          <caption>Product</caption>
          <property>Product</property>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="Page6">
      <height>500</height>
      <width>600</width>
      <caption>Report Templates</caption>
      <components>
        <entityBrowseDefinition name="ReportTemplateBrowse">
          <query>DataQueryDesign1</query>
          <entity>REPORT_TEMPLATE</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="ReportTemplateQuery">
          <entity>REPORT_TEMPLATE</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>DataEntityDefinition</property>
              <operand>Equals</operand>
              <value>CERT</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
      </components>
      <extendedfunctions />
      <controls>
        <datagridcontrol name="ReportTemplateGrid">
          <location>
            <x>13</x>
            <y>13</y>
          </location>
          <height>475</height>
          <width>575</width>
          <anchor>Top Bottom Left Right</anchor>
          <showbuttons>true</showbuttons>
          <autosizecolumns>true</autosizecolumns>
          <MultiSelect>false</MultiSelect>
          <showiconcolumn>false</showiconcolumn>
          <showindicator>true</showindicator>
          <showhorzlines>true</showhorzlines>
          <showvertlines>true</showvertlines>
          <allowsort>false</allowsort>
          <fixedcolumns>0</fixedcolumns>
          <gridcolumns>
            <GridColumnDefinition name="Reportidentity">
              <location />
              <width>100</width>
              <caption>Report Identity</caption>
              <BrowseType>ReportTemplateBrowse</BrowseType>
              <readonly>false</readonly>
              <IsMandatory>true</IsMandatory>
              <IsUnique>true</IsUnique>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Reportidentity</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="Inspection Category">
              <location />
              <width>100</width>
              <caption>Inspection Category</caption>
              <readonly>true</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Reportidentity.FbInspectionCategory</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="Language">
              <location />
              <width>100</width>
              <caption>Language</caption>
              <readonly>true</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Reportidentity.FbLanguage</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="MaterialType">
              <location />
              <width>100</width>
              <caption>Material Type</caption>
              <readonly>true</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Reportidentity.FbMaterialType</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="MarketType">
              <location />
              <width>100</width>
              <caption>Market Type</caption>
              <readonly>true</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Reportidentity.FbMarketType</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="IsoCheck">
              <location />
              <width>100</width>
              <caption>Iso Check</caption>
              <readonly>true</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Reportidentity.FbIsoCheck</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="Version">
              <location />
              <width>100</width>
              <caption>Version</caption>
              <readonly>true</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Reportidentity.Version</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="FbDefaultCheck">
              <location />
              <width>100</width>
              <caption>Default</caption>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>FbDefaultCheck</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
          </gridcolumns>
          <readonly>false</readonly>
          <supportedoperations>Add Delete Move</supportedoperations>
          <defaultview>Horizontal</defaultview>
          <property>FbReportTemplateEntries</property>
        </datagridcontrol>
      </controls>
    </form>
    <form name="PageControl">
      <height>500</height>
      <width>600</width>
      <caption>Control</caption>
      <components>
        <entityBrowseDefinition name="WorkflowBrowse">
          <query>WorkflowQuery</query>
          <entity>WORKFLOW</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="WorkflowQuery">
          <entity>WORKFLOW</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>TableName</property>
              <operand>Equals</operand>
              <value>CERT</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
      </components>
      <minimumsize>
        <height>500</height>
        <width>600</width>
      </minimumsize>
      <extendedfunctions />
      <controls>
        <prompt name="InspectionPlan">
          <location>
            <x>52</x>
            <y>449</y>
          </location>
          <height>21</height>
          <width>538</width>
          <tabindex>19</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Inspection Plan</caption>
          <property>CertificateInspectionPlan</property>
          <propertylength>100</propertylength>
          <viewname />
        </prompt>
        <prompt name="ResultsReadOnly">
          <location>
            <x>52</x>
            <y>126</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>4</tabindex>
          <tooltip>Force the results grid to be read only - overriding the template settings</tooltip>
          <caption>Results Read Only</caption>
          <property>ResultsReadOnly</property>
          <viewname />
        </prompt>
        <label name="LoginLabel">
          <location>
            <x>52</x>
            <y>32</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Entity templates control the prompts that are displayed during login. Specify one for the certificate and another for the result rows</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <label name="ApprovalLabel">
          <location>
            <x>50</x>
            <y>423</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>18</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Specify the inspection plan to use when approving certificates</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <line name="ApprovalLine">
          <location>
            <x>10</x>
            <y>403</y>
          </location>
          <height>14</height>
          <width>578</width>
          <tabindex>17</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Approval</caption>
        </line>
        <picturebox name="ApprovalPicture">
          <location>
            <x>10</x>
            <y>423</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>54</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAP2SURBVFhHzVdLSFRRGDYKqkWbaNEyaNWmQHrRg15G0EoSXUQEVkSjuBDfr3EQyVUuAiGwjW9ICBMCUzIMa3KRC8dES2fSVHqn6czozL339P3/Pcfu6PU5I/jBP/eee/7//77zn8e9E7cZyM3N3ZOfn59ZUFDQWVRU9LmwsPAT7p/jeWpGRsZO6bY5ANFVEP7Jy8sTdkZicD0i3WMLjDARyTUiqq+vFz6fT4RCIeH3+0VfX5+orKxUIqbge0iGxQY5OTn7kXiGCLq7u4UdwuGwqK6uZhGYmg/JycnbZXj0wJzfp8QNDQ0mmz4v5vsfiMCLBNhlEfY28WOqRnl5OYtATJIMjx5ybsXo6CgTEbm/NT7CtK9d3NfR0cECsF4aZHh0yMrK2oeERnFxsdA0TQhDF4G2C0sEzL3LYAFDQ0NqGjwyxX+4XK4dKM2B9cwPkt2khDS/BH1qcAk5C3h7l/tpcZI/BA/IFCbw8AxK+Z06cf2ChRUvu1YEStlLMW63mwnCI3W2AsK+J9zf09Oj1sBTmYIX0UUkClKH0+lkB4iYxXY5Kl1sgf7b5FtWVsZbDvUXwVfJEcSBtksi9PEx9xmGIaqqqpSAW5wENwmwOXrY3NzM26WmpkaJmFlOBASfRlyA/Hp7e3l02rc3TBrsTBKh4RpMxwCvCYX29naVdyIzM3M3jeCklZwUEmgx1dbWLisCz08hblbFmUFBMedOx2p/jYaZh0A5JyYmRF1dnRr5PKb3HCdCoyuS3MAozINkOREY+QlFTvte180R6r/7WASBYqkq1E/TQ75kiP2J2AQmJ6AxQB0ej4cDjdA0yndNhAYfcZsSKeUI/gv/O7jyiWclF1oAP+ao6ditqKhYIEWMjph+3Dtpy0pqE+np6c/Iifbw8PAwJzDmfvFCCg085LZVhLIIcglqUyWVD0jf43oDc71X0i0F9vtkWloaB6wmgl4wK5HTc+rHiAOYrlSk32ayrAAIGIcJVGJBxMjICCddLIJI6EVjR67EgZy27nGZfnWA3EECyNZSicUg8qamJkXux+o+K1OvHSkpKXlKhMPhWLOIReQB2HmZcv2wilCVKCkpEV6vl8nsRNB0kJ80h0y1cay3ElSBxsZG9pNb9JhMtXFsaREr7Q6riMXH9oZgJ4LWxHIirMf2VhExlZ2dfVim2jiiEYEXmA9x0X/5QoRLiVBblD5a1AeoEfzBLzBt8iW36XuCRJIfDqaDMk10sBMRcU7MT+FH51d6S0uLqsA0vjF3yRTRwyrCOh0LIizkMA0LMVGGxg52IkpLS1mEIsdZoON6XYbEHnYLU9mmkytAxD0IGION4y93K7bdGMwD8ivSZQ2Ii/sHh001VGMvhRoAAAAASUVORK5CYII=</image>
        </picturebox>
        <label name="WorkflowLabel">
          <location>
            <x>50</x>
            <y>173</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Certificates follow a status lifecycle and the specific one may be defined here along with the initial status</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <label name="AdhocLabel">
          <location>
            <x>51</x>
            <y>296</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>12</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Additional records may be added to the certificate and this is controlled via the following flags</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <line name="AdhocLine">
          <location>
            <x>11</x>
            <y>276</y>
          </location>
          <height>14</height>
          <width>578</width>
          <tabindex>11</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Adhoc Entries</caption>
        </line>
        <picturebox name="AdhocPicture">
          <location>
            <x>11</x>
            <y>296</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>50</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAHYQAAB2EBlcO4tgAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAARMSURBVFhHpVZbb1RVFN4FTJAIQmoUCfGNRGOQmIipL/4D8cnoOwlPkCAPmjSxHuqFNoUXq00djC8aMcaQGAOhHdozLe1Mp3QERGgpaqc32kLTmXamc+bSmcO3zqy9e+Z2Zub0a1am2ftb31pnX9Zeoh58dk0c0XrFGc0rfv68VwRg9/D/BH6D+P0Vc834bdI0sY1dtg7tT7GrxStOQfw+Apm1GLjhll7xKfmyjDu09IgPIThfHKBWQyJz0DguTNHAkrVB08UOrUd0FQt+1bc7fmX8ZODR2thgLPloLJ1NPExnjX/jqaW/lmJ3bvQ9bB5q9zWuFPshkcvQfI7lnQHiXjj12QXODxxYmon6B0zTNGDVkFlenxjuHHp12q6BJG7jfLzCYcrjxJh4BuSC4MPT5ylwPK9dF1L3F3/XNe+2rNRCEpNY2Rc5XCnsy37WuyMzGx2h4GWxGPvb/PHmu+b3I2+ZUys6j5YiaoRHaOukLkz/4DexnUNugg+cJJkzEWvJK+JisElxO3z7zRz+KmE1OR9q9W7fkHxsxWkOmwddF0yo087L7oh2/QWVAJmRifJMeUw+ueqTXGzFMp01Do+vxz2Xkx0D+5dyuVyM/Sqi3gSA7A/BdyYlH0m0cXghMHBXTjjtux0uEjBXjfmbko8Eoh/7xbNWeZWDdFjAq+WquUqA8J3/9bD0wcq/L5DJGTlwdfxUgHlV4TaB0JxHnQVYJy3/T3JgfnV0kHlV4TaBWGohJH3w8UN09/1ygCaZZ91zHBqzTd9X1jRvQ0EC5/S9ZXld/sMFdWIjm5xSfj1igbZAvXJU25lnFRlF3KJdGDzIqhbsRcmgLRiXA/SwMMmqcHJ8q9auN9oLVcI2l6IEgnKAXjUmWcvW4XtJibi1r/v3mHcXLrEqbUFKPVJY/ceCOhk5QE8q8xQS6ZWy1tbfWBAokgiX5WVzG6yUx3rqyW2bX5DOQLMcoPeceVXh9hZgNXSb30VagSY5QM0EOJk81RluE/CMHH0gfXADPxLUQGIVVHWiZoK5jnCTgJGOqJIPW//kD7HbeguogZQT39w4NA1uMu9SGW4SuHTr2B3Jx0d3W8EJ9ChgYE5OUifDPhVRbwJ0wCUXseLN18TLHD4P6l43CQ3ZlcR/jgeyy/+GCn6u//mS025HMrM28WXfLmNTX7Ry2E3wWbgsSfQyrqXmRlmjBFQnqMJRkbHf82KkMmv/UFMrdWEBNCM7OWwhqHVGEuqeUhtFnQx0snm5+kDL/sX1nerLYbMlS18Map2RhOpcyLoDbz6IGFM1v5TJzOq9X269pw4c2yz1HhzGGdQ6Iwn7u23Zt8OvhUOzHh9Kdgiv2v+IZTUwKK8zVOGoyHiCb6t7brNA1S8vBrXO1L0ikeUygjUZfOOw1op7Xguoe4VIGwQjxQEcbB0+3XV/tRPoK6iHg3gnxIdgi7AkLA17DBvF1nmovKoKVxVCPAUsStg4XUcfjgAAAABJRU5ErkJggg==</image>
        </picturebox>
        <line name="WorkflowLine">
          <location>
            <x>10</x>
            <y>153</y>
          </location>
          <height>14</height>
          <width>578</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Workflow</caption>
        </line>
        <picturebox name="WorkflowPicture">
          <location>
            <x>10</x>
            <y>173</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>48</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAEySURBVFhH7Ze9TkJBEEbvc9Ba2/Bu9+eJTHwAShJ7IYHW0l474w2oOIvfcW4mQAK6hE04yWn229lvGghUV65A27a35tz8MDeZfG+aZmKOVOtYOAuXs5mWUK1jwWcK+77f5CK9rSVWqnUU6Go+6FGtExd4fF79q1DeAnezl63Dx04Ryl0gLsL9KHkUuKdahwAYvJgFho+dIpS3wP389XeJXXKP+Sg5cK5ahwAYnD69HVyCe8xHyYFz1ToEwCDGwmOF8heIkjMfJQfOVesQAIO4qzxJznyUHDhXrUMADGIsPFYod4F9H0Vy5nE4mwRy1ToEEB/Y931AzjwOZ5NArlqHAOIDfxXKWSAXhxb4SsGZfpavVet0XbdUmF3relCtU9f12MKFuf2Dksl1Kreum5/WqvoGTHET3BmA+pEAAAAASUVORK5CYII=</image>
        </picturebox>
        <picturebox name="LoginPicture">
          <location>
            <x>12</x>
            <y>32</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>47</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAKmSURBVFhH7ZbLaxNRFMYnLeJz4cI/QBfdCj6oryrSVlFXFo1ibbRKoCgNTTqZTBSjE7toqVYjVrRuRF00QqJQ8dWp4uMPMLTRnUhciNbYuvBVQY7n3N47kyZxSNsZcZEPvjCZe+f8vnNnMrlSWWUFg8Flqqo+Rk+gwSFT7aFwOLyUY03hAMGLXeSEhzjWFJ5knaPG6cMhjfMAExxrig/wec5JcDjWVH6AU4OSrRYqB/hfAnzhWFP/IMBvdK+iKFUcOVVOBjitz6GSuzlKcrvdlfzQlFMBonol3Ek39xAD37YLkXEN/QP9KRQKHWVwkhMBCH477TlH9TVNW4D1nwiOMIbociQAwZPDnvNUm3f+jOr3BlsgW18N79wbIKIqjIn/DV5bA7DOR5piBPf7/Yux7ijVvqS0wOfNq2FsxaQze2vESryxLQDBEyONDJ7beVgNQbqh3oCTR3esEQHe2xJA0ysIfkHAcWmfUs1uzQfJ2H44eUyGV9vqGDy7tRrOqq0iQKcNAVxwK7XrMsFzHziCf0ish28DK+HuxT0sxPC+LQYcH8J7Pp9v7iwDuCCearhSCG814ML9PR586CZZ6PsMTuInOH46AVzQn9rZVwinztdNgWfiG6EjEhCdPzDgpJkFsFp2azjOn8fAQvkBShT7necv+8fk3+HoRwVwEg7MZEtWw6+9SteeiSI8sdYK/rAonISD092U/hL3EI8z9GDld/42vgmiJwz4YCAQmM9gxURbZZyko0vdlr+k62RZXkLf6b5bwHVL+GyExbcT5Hp3MwN/HVgFr2/WGnBs7Dku+yI+3X4F2tu7CBTrOAJ9nV6IHJdF1+QXjsJJTZ6D2bY2fy6UPIad36DXMZ/mnBo9B34eOuz9jlutBIJ9CF2OXVfw4RIlSX8A5VQXUgPrndMAAAAASUVORK5CYII=</image>
        </picturebox>
        <line name="LoginLine">
          <location>
            <x>11</x>
            <y>12</y>
          </location>
          <height>14</height>
          <width>578</width>
          <anchor>Top Left Right</anchor>
          <caption>Login</caption>
        </line>
        <prompt name="AllowAddTest">
          <location>
            <x>192</x>
            <y>363</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>16</tabindex>
          <tooltip>Allow the addition of tests</tooltip>
          <caption>Allow Add Test</caption>
          <property>AllowAddTest</property>
          <viewname />
        </prompt>
        <prompt name="AllowAddSample">
          <location>
            <x>52</x>
            <y>363</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>15</tabindex>
          <tooltip>Allow the addition of samples</tooltip>
          <caption>Allow Add Sample</caption>
          <property>AllowAddSample</property>
          <viewname />
        </prompt>
        <prompt name="AllowAddLot">
          <location>
            <x>52</x>
            <y>336</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>13</tabindex>
          <tooltip>Allow the addition of lots</tooltip>
          <caption>Allow Add Lot</caption>
          <property>AllowAddLot</property>
          <viewname />
        </prompt>
        <prompt name="AllowAddJob">
          <location>
            <x>192</x>
            <y>336</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>14</tabindex>
          <tooltip>Allow the addition of jobs</tooltip>
          <caption>Allow Add Job</caption>
          <property>AllowAddJob</property>
          <viewname />
        </prompt>
        <prompt name="EntryTemplate">
          <location>
            <x>51</x>
            <y>99</y>
          </location>
          <height>21</height>
          <width>537</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Reported result grid template</tooltip>
          <caption>Result Template</caption>
          <property>EntryTemplate</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="InitialStatus">
          <location>
            <x>51</x>
            <y>213</y>
          </location>
          <height>21</height>
          <width>537</width>
          <tabindex>9</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The starting status of the certificate</tooltip>
          <caption>Initial Status</caption>
          <property>InitialStatus</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <PromptEntityBrowseDefinition name="Workflow">
          <location>
            <x>52</x>
            <y>240</y>
          </location>
          <height>20</height>
          <width>536</width>
          <tabindex>10</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>The status lifecycle of the certificate</tooltip>
          <caption>Lifecycle</caption>
          <property>CertificateWorkflow</property>
          <mandatory>true</mandatory>
          <Browse>WorkflowBrowse</Browse>
        </PromptEntityBrowseDefinition>
        <prompt name="EntityTemplate">
          <location>
            <x>51</x>
            <y>72</y>
          </location>
          <height>21</height>
          <width>537</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Main template for the certificate properties</tooltip>
          <caption>Main Template</caption>
          <property>EntityTemplate</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
      </controls>
    </form>
    <form name="PageData">
      <height>500</height>
      <width>600</width>
      <caption>Data</caption>
      <minimumsize>
        <height>500</height>
        <width>600</width>
      </minimumsize>
      <extendedfunctions />
      <controls>
        <label name="AliasLabel">
          <location>
            <x>52</x>
            <y>407</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>67</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>The reported values may be passed to an alias to convert to commonly used terms</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <picturebox name="AliasPicture">
          <location>
            <x>12</x>
            <y>407</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>68</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAPPSURBVFhHxVZNaFRXFD61VpTaIhaCoZXSgq5EEG2ISi0ILqQrF4EWuuimBXFRhmQmk/+nRmytdFEYCLPI2JCGZhYhJqV1JoFuxJX9WSqEOOqM5s9nYpyk0Uyu3zk5L7y8vJnJvx8c5t2/7/vuvefeO1QI1dXVJ4LB4Gda3FyEw+GvYcBonNXqzUEgENgB0bTLwJhlWe9qc0EEbtEOK0nXrD/oA61aOSAYYuFIJGKi0aiYCIVCDdqcF9/eprcg/ntTkoxWrRyY6U4IjrDowMCASaVSziqMY2V2a7elMPQGhGMsviYD2HuLBVtaWoyD1tZWMYG2Zu22BE19FHHEORr76BsrQcdC1+kd7VIcNTU170FogsUGBwdV3ph0Os3ibGKyqqqqRLsvAELNbnFPzDQl6M/GBJ3W7vmBfb7C4rFYTITnbNvkhkfku62tzdmKH7W7oDFJlT6i/pGgPusv2qNDF6O2trYU5FmeaSaTEdGpqz+Z7OUf5HtoaMhZhem6urr3eUxFnN5E0t30FcsfD2tvUKmIugHyCM+wvb1dBHMjI+Zp+XFjf1Jucul5Qx0dHc4q/KzDCDPaBdJ/PSIFA1t2y7Joi1IQVVZWfgjS/5EDZnh4WMSyFy8Z+9ARieyFZqkbHR013Ad9Z5ALH+lwzoESq4/ueIWwPXNYIRvfL33aKnS4nPsYz6yzs1OEcplHxi47umDAPlxmZu+lpC0ejzurENXhgroE7YVYyiOU5Ta9nI7AaD1+H3EbfrtkIGa0H2QvkQNmbGxMRArBRmJyX4yZ5bFCoqhP0j4k2mOvATf4WMJINww8mK8IhX7jGXV1dalEcXBfXYVfhMQFq58OQvgJBNLYlitavQhWnLah/T8pgMRWstVEWkg8qErQ2yyiRV8gebfLB0jOI7Iu0uXGc0RYSF4n+P7AEe6FmSmXuWLBfXvwX8P/UloJVNxPpGhg7HUhQbKEGxJ0WAp5gKS5ifhKiwsAkcx8YmJCU7Q4uK+amBISEIf4IuGzLBU+0LM7u+gCAZRIqZcPZ5yQ4KU6pQK2XBb99LE0uKDnmmMGT+3nWr3EAH3xfcFwsMgAjsRWEN93iRisyDO88X/LC5akpLsNMQ2jJ9fNAAOrEPCIFIvJhn46um4G+HXCjHt9hPIGVmZ83Qww+AbDkv/qJ+YX627AATL9DMj/8RN1Au1TDTfo0w0x4ACJdgBmzuE36hF/4ZyEDTXghstADqa+1OrNNwDx77RK4DWwXKzGwF2IV2txASBZ+1W8FoCkR8lWE91Ks3rwk8qvGshW+hx3B4PBPa8Amng5JG3BL8wAAAAASUVORK5CYII=</image>
        </picturebox>
        <line name="AliasLine">
          <location>
            <x>11</x>
            <y>387</y>
          </location>
          <height>14</height>
          <width>579</width>
          <tabindex>66</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Value Aliases</caption>
        </line>
        <label name="ReportedLabel">
          <location>
            <x>50</x>
            <y>213</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>The values reported for the certificate results are generated using the following expressions</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <picturebox name="ReportedPicture">
          <location>
            <x>10</x>
            <y>213</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>65</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAKmSURBVFhH7ZbLaxNRFMYnLeJz4cI/QBfdCj6oryrSVlFXFo1ibbRKoCgNTTqZTBSjE7toqVYjVrRuRF00QqJQ8dWp4uMPMLTRnUhciNbYuvBVQY7n3N47kyZxSNsZcZEPvjCZe+f8vnNnMrlSWWUFg8Flqqo+Rk+gwSFT7aFwOLyUY03hAMGLXeSEhzjWFJ5knaPG6cMhjfMAExxrig/wec5JcDjWVH6AU4OSrRYqB/hfAnzhWFP/IMBvdK+iKFUcOVVOBjitz6GSuzlKcrvdlfzQlFMBonol3Ek39xAD37YLkXEN/QP9KRQKHWVwkhMBCH477TlH9TVNW4D1nwiOMIbociQAwZPDnvNUm3f+jOr3BlsgW18N79wbIKIqjIn/DV5bA7DOR5piBPf7/Yux7ijVvqS0wOfNq2FsxaQze2vESryxLQDBEyONDJ7beVgNQbqh3oCTR3esEQHe2xJA0ysIfkHAcWmfUs1uzQfJ2H44eUyGV9vqGDy7tRrOqq0iQKcNAVxwK7XrMsFzHziCf0ish28DK+HuxT0sxPC+LQYcH8J7Pp9v7iwDuCCearhSCG814ML9PR586CZZ6PsMTuInOH46AVzQn9rZVwinztdNgWfiG6EjEhCdPzDgpJkFsFp2azjOn8fAQvkBShT7necv+8fk3+HoRwVwEg7MZEtWw6+9SteeiSI8sdYK/rAonISD092U/hL3EI8z9GDld/42vgmiJwz4YCAQmM9gxURbZZyko0vdlr+k62RZXkLf6b5bwHVL+GyExbcT5Hp3MwN/HVgFr2/WGnBs7Dku+yI+3X4F2tu7CBTrOAJ9nV6IHJdF1+QXjsJJTZ6D2bY2fy6UPIad36DXMZ/mnBo9B34eOuz9jlutBIJ9CF2OXVfw4RIlSX8A5VQXUgPrndMAAAAASUVORK5CYII=</image>
        </picturebox>
        <line name="ReportedValues">
          <location>
            <x>9</x>
            <y>193</y>
          </location>
          <height>14</height>
          <width>579</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Reported Values</caption>
        </line>
        <label name="DuplicatesLabel">
          <location>
            <x>50</x>
            <y>122</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>The Fill Mode controls what happens when there are multiple results for the same method component</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <picturebox name="DuplicatesPicture">
          <location>
            <x>10</x>
            <y>122</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>62</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAVLSURBVFhHpVftT5tVFOebmqjfTDR+M9FvLvGPGVCGc5oly7LgRCktMAWML7QuCnT2TWBKYcO5OReZM1CIc/K6sUxQs7EyStFtLTpwbbe+4fX8bu+9PPdpi537Jb/0ee4995xz7zn3PKcV5aKtre1Ju91uaWxs/Mxms80SY8SMIJ4x5idWk8wTYtnDo6mp6QVS2ktMElmZhGyP1Wp9Xqh5cNTX1z9GOzlMirJQSrtn3d3dLBgMsqWlJRaLxVg6nebEM8YwBxnhBJghHU46vUeF2vIAz2nhgjQ8ODjI1tbWWLmAQwMDA3ytcGSqubn5GaF+e9Cil2gBYsqcTieLRCJCLWPp3D8sGt9k12JZtnAzy+ZWM5x4xhjmICOxsrLCHA6HdGK1oaFhhzBTHNi5NO7xeFg8HueKoDR8J8cuRTLsYhkM/ZljqWzekWQyyfx+v3KCbDwtzOlAnEjgCgSxIJfLcQXr9zb5LosZ2o6XaQ3WAtDl8/mkE5eQX8LsFkTC8SNLJBJ84e27m0WVPwijpAPASSCkwol2YTYPcdWySBoZc3gvlRzpP812VlmK8nVrC5sNpzSjZsqTQE6IxIxroaAB3HOe7QBibjz2nxY3mKX2lQLjVZZadnZmSckNnJ1gB21vM+/xYTUGIhwZkZyBQECegpsbR4WjlyQ8k1dt+a+cpuDo1+MFxsGPPAFN7rV9B9Sc95juBHQCuKLCgQSvmGTYggGXy8UFsHtjtp+7uMwsu3ZrhkEYm7h+VzPS5jii5iura9i3k4tqDjrlFe3q6uJOkO0qJB9qOxsbG+OTSBqj0kPvfayU7tm7Tz0fOzejyYHTN5LsreZ3lQyejfOoE8Do6Ch3gGz7EH98RHgpBRapoMgFF67e4TuBMvyeHP+ZVdNp2NsdmmIjg1duaic2Pn9bzUE3EAqFZBim4MAaXmT856mqyQVD388qRfX2Vj7m/PQLbkTKFCMclOv6To2pcVRMwJAHUTiQxgs+KoAx+/1D3ylFHa4+Pja7klbzpfhJz5dqnevzU2ocugHYEg6klAOpVIpPGh3wHS90YDtK5zp7T6h1eJbzl3/POwBbRge0EOCY5IKhka0QvNH4jhovxh9+jbHDngH+bG/dCkH/mR+VzMKt4iHgSYjEALQkvLbBKi27uCIk4fD0dTVnZqvTxRP0zIXfWFVNrVoTnL+lZEolIdoo3kwAuCqaYke32s3+g1a6+39r8+Dp87+o2/Lq3v1K3t6m35aYuIYjIyPSAS8cqMYLOhnAXIhG5iJaGe5wHdWUzizfZwfetKl5SZTpUoWos7OTO0CFaCdK8eP0kkApRmwAcykODE+oHZodcAe+KTAO9p4ManLoJ4BoNCp3n4Bt/j2glx4Moo0C4Ck+IEYFJ4Jz/FpOhuJqDPWg5uU9BcYttbt5EZNyyP5M3j7r7++XDvi5cUB0QhmcAj6ZwMZ9PRRm4spZD71fYFyyq+8rJSs/x+FwWH6O0/T7nDCfB9VlJzzr6OhQDYn5u/B/KOu/qSH5UJjdgmjJpiCA9snYkpnDUQ5x7Ov38kkHXV6vlxunjU7W1dU9IszqQJdCAhEIut1u1ZRmaRMr6+U3pTcoiWXMTU3pHy0tLc8Kc8WB1pkEV7EA/aHMCQDJiSNFQUFVQ9kG8Ywxc1uOmCOk0CU29qIwsz2oR3yKhM9jIZIGbZS8ouUAV83QevFjL9mOlwLiRIvbiQmpCJ0MmgmUUjhk/GuGMczJbkcQ2f5ByZiXA3hOitxE5UgZRL/nK7hqDwNULVJYRcq9xGlilIhPOYjnaTLqod9KVeH+ExUV/wLrUjID+i8ZdAAAAABJRU5ErkJggg==</image>
        </picturebox>
        <line name="DuplicatesLine">
          <location>
            <x>9</x>
            <y>102</y>
          </location>
          <height>14</height>
          <width>579</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Result Duplicates</caption>
        </line>
        <label name="SelectionLabel">
          <location>
            <x>50</x>
            <y>34</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>The load mode controls which data is considered for inclusion in the certificate</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <picturebox name="PictureBox1">
          <location>
            <x>10</x>
            <y>34</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>59</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAKqSURBVFhH7ZY/aFNRFMavFaSgVHTpYAeLgw4uTp10c3IOTdShoDi4BfKflj5r07wYxaCiSSUUCxKNxEERC20XhVJbRRGpBY0UJyUNKKgxNXL9zs194SXv2uYF3pYPfiQ599zvO+8P74V11FFHzJXoZ259HlQAdwjynmPu2H6ZalItXLXJCeZkqknOHnkzFZlqkrrROSxSNTmJRaomJ7FI1eQkFqmanMQiVZOTWKRqchKLVE32qTKPnmSD0cNsSOtmrvF9eOqdY+74GeaJ9jKXtou5Jwa6Tup3OefbZLKU2tAOVXBCum0qCgd98qeU2tQGcZ1sAoFAXzAYnAFl8BYc8/v9R/H5DvwKhULTPp9vp8hskNK0Zb6yU1qPpmldCFkC3MQ3Sb2GIW/LVJPUxq3hiZ0lC5ifNgdtwt9wODwgcutSGbfGG+bKbcfRd+P0rinC/sdLOmMyHVKbb40nfpy2wzDQFLAlGHhIZAu18zoe1B/RVhjtgWGpOaAFvoDdIh+Gdv+Q/GCDlw7QVpgkTaa2wA15WeSLv0kefRbGLZ6J2ARtw9EfgVGFzMbGY3xk9EJDQKFQ4MVikeOmq9eoL371Bg/VahtYOyRmaEc4gqdkmp9d5sufN/iLtTK/NXVPBKXTaTxvaspms6KWupPjS2u/Re+ThVVjiAfSzr6wuahfuSYMDZ69L9XCUimez+cFmUxG1J6vlhp6E8mbVC9JO/vC5rJlgJV1ESb5A6rG7+YBYokk1delnX0Zl+Dh/CthuPjpJ78+OW2ER7xe795IJNKL78NUo8tDl4l6czMLRt+ktLMvDHAQBt/JaCyq8+GRUWGKm/MxlhveeKhP0RrdqNrFqBH+kYaULe0JL5d+GN0HH8BrEMFTbodcrouefBj4PNYXwQpIotbDGGP/ADNFQpXxOE/HAAAAAElFTkSuQmCC</image>
        </picturebox>
        <line name="SelectionLine">
          <location>
            <x>9</x>
            <y>14</y>
          </location>
          <height>14</height>
          <width>579</width>
          <anchor>Top Left Right</anchor>
          <caption>Inclusion</caption>
        </line>
        <prompt name="Alias">
          <location>
            <x>50</x>
            <y>447</y>
          </location>
          <height>21</height>
          <width>538</width>
          <tabindex>13</tabindex>
          <anchor>Top Left Right</anchor>
          <tooltip>Lab Alias to use for reported values</tooltip>
          <caption>Alias</caption>
          <property>LabAlias</property>
          <viewname />
        </prompt>
        <prompt name="LoadMode">
          <location>
            <x>50</x>
            <y>74</y>
          </location>
          <height>21</height>
          <width>538</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Load Mode</caption>
          <property>LoadMode</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <prompt name="FillMode">
          <location>
            <x>50</x>
            <y>162</y>
          </location>
          <height>21</height>
          <width>538</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Fill Mode</caption>
          <property>FillMode</property>
          <mandatory>true</mandatory>
          <viewname />
        </prompt>
        <TextEdit name="ReportedValueExpression">
          <location>
            <x>50</x>
            <y>357</y>
          </location>
          <height>20</height>
          <width>538</width>
          <tabindex>12</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Value Expression</caption>
          <property>ReportedValueExpression</property>
          <propertylength>500</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <TextEdit name="ReportedUnitsExpression">
          <location>
            <x>50</x>
            <y>331</y>
          </location>
          <height>20</height>
          <width>538</width>
          <tabindex>11</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Units Expression</caption>
          <property>ReportedUnitsExpression</property>
          <propertylength>500</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <TextEdit name="ReportedNameExpression">
          <location>
            <x>50</x>
            <y>305</y>
          </location>
          <height>20</height>
          <width>538</width>
          <tabindex>10</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Name Expression</caption>
          <property>ReportedNameExpression</property>
          <propertylength>500</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <TextEdit name="ReportedLimitExpression">
          <location>
            <x>50</x>
            <y>279</y>
          </location>
          <height>20</height>
          <width>538</width>
          <tabindex>9</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Limit Expression</caption>
          <property>ReportedLimitExpression</property>
          <propertylength>500</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <TextEdit name="ReportedAnalysisExpression">
          <location>
            <x>50</x>
            <y>253</y>
          </location>
          <height>20</height>
          <width>538</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Analysis Expression</caption>
          <property>ReportedAnalysisExpression</property>
          <propertylength>500</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
      </controls>
    </form>
    <form name="PageFiltering">
      <height>500</height>
      <width>600</width>
      <caption>Selection</caption>
      <components>
        <entityBrowseDefinition name="LotCriteriaBrowse">
          <query>LotCriteriaQuery</query>
          <entity>CRITERIA_SAVED</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <dataquery name="LotCriteriaQuery">
          <entity>CRITERIA_SAVED</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>TableName</property>
              <operand>Equals</operand>
              <value>LOT_DETAILS</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <dataquery name="JobCriteriaQuery">
          <entity>CRITERIA_SAVED</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>TableName</property>
              <operand>Equals</operand>
              <value>JOB_HEADER</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <dataquery name="SampleCriteriaQuery">
          <entity>CRITERIA_SAVED</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>TableName</property>
              <operand>Equals</operand>
              <value>SAMPLE</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <dataquery name="TestCriteriaQuery">
          <entity>CRITERIA_SAVED</entity>
          <conditions>
            <entityoperandquery name="">
              <join>And</join>
              <ascending>true</ascending>
              <property>TableName</property>
              <operand>Equals</operand>
              <value>TEST</value>
              <propertyvalue />
              <controlvalue />
            </entityoperandquery>
          </conditions>
        </dataquery>
        <entityBrowseDefinition name="JobCriteriaBrowse">
          <query>JobCriteriaQuery</query>
          <entity>CRITERIA_SAVED</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <entityBrowseDefinition name="SampleCriteriaBrowse">
          <query>SampleCriteriaQuery</query>
          <entity>CRITERIA_SAVED</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
        <entityBrowseDefinition name="TestCriteriaBrowse">
          <query>TestCriteriaQuery</query>
          <entity>CRITERIA_SAVED</entity>
          <property />
          <returnProperty />
          <ShowColumnHeaders>true</ShowColumnHeaders>
          <ExplorerColumns />
          <ShowAllVersions>Default</ShowAllVersions>
          <ShowRemoved>Default</ShowRemoved>
        </entityBrowseDefinition>
      </components>
      <minimumsize>
        <height>500</height>
        <width>600</width>
      </minimumsize>
      <extendedfunctions />
      <controls>
        <prompt name="AddSubSamples">
          <location>
            <x>50</x>
            <y>467</y>
          </location>
          <height>21</height>
          <width>122</width>
          <tabindex>72</tabindex>
          <tooltip>Include sub samples when selecting results</tooltip>
          <caption>Add Sub Samples</caption>
          <property>AddSubsamples</property>
          <viewname />
        </prompt>
        <label name="SubSampleLabel">
          <location>
            <x>50</x>
            <y>427</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>70</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Determine whether the results for sub samples should also be pulled into the certificate</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <picturebox name="PictureBox2">
          <location>
            <x>10</x>
            <y>427</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>71</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAALeSURBVFhH7VZLaxNRFI4K6kIQN6JYcSEuRFzoQnAn/gAX0kkmiWjWakxpmkdTtGmt2liwPmqKj4iLSCjaWp8gBV0URFPRTaVBKlY3KdSI9ZEaQa/fuTmTNjFtMjPFhfSDD2bOPec738ydexjLfCEUCq0NBoP3AoFAFhQVSDl3fT7fGi43D25ertmsRM0dLjcPCMonrxZsIsvl5sGCLF8ZWj6Xm0epgaEPP8tSw4KBeTHgcDhWKYp9p6I4Dv9zA4rNfhYUGksNVIJpAy6Xa3mtan8zw0DOgIGsoQnmdrtraq1qOzefUqz21xSfkVct+w1NME9d3US+uXpJVfdvs6rqIRqrNNmwXu2D9MtRzDf8YiqDcv1+v7Ba7XbeDXMgQb0GiFxuHqUGyh0dooYFA/+/gUqYzUBDQ8NqxPtAOlXDOJK7wN24phlBsRvhcHgFp0+DF1m+MiiXari8AMQGeE3jZ3ByZgzH9wqnTwMLuifYEY8ns9fprGEJC4T3lMsrw1/I3cFleeidYPX13heqY983jN8+qlcUZQniwyV5c3EIW7FYNjcKm822WVGcW+kaT3SwTJM5iZoDUsgs6KOCYLq0QRUcB1eyjHFg69pKhPUwwjLG4PV6N0DkO0yItlMdormlrajB6OioSKfT9O9fiB0/GRGnOy+KYGMj3efw/W1iOf2AQILEbz95JQdVcuyH6L7eIxtFo1E+tELE43EZuxzvE8n3OZn74OmIZiLBcvqB4vFIZ1fRtBxMZQoGent7JWOxmIwNpj4V5Xac66b4BMvpB4ozfxkYyRtg/maygUxRbuTMBYpPspx+oPiR3ILHL6Xgs3dZ0XU1/7oRDzc1Na3DHm/E/XmKRa8lxPOxKZl7ayCpmexhOf2A+HYIfCUh+riONrdoog85RcMixO7T2rFwq2g90a7lfYTJ9ZxjDBDZAibAt2AKT96K2bCUlwvAT+wyDJ9mzvsC3sQ9RrnF8geK+TEueLDfagAAAABJRU5ErkJggg==</image>
        </picturebox>
        <line name="SubSamplesLine">
          <location>
            <x>9</x>
            <y>407</y>
          </location>
          <height>14</height>
          <width>579</width>
          <tabindex>69</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Sub Samples</caption>
        </line>
        <label name="FilterLabel">
          <location>
            <x>50</x>
            <y>215</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>7</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>In addition to the criteria you may specify an expression for each record type. It will only be included if it evaluates to true.</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <picturebox name="FilterPicture">
          <location>
            <x>12</x>
            <y>215</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>65</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAALESURBVFhH7VXNi1JRHDUi+oCgVdTsWretRW36B9q0cNGqnREkKPgNorQZRZRWLVJQ0I0w20BRicJNSR8qCiMENaOD6PQlz299t/N73msz8hpsZnwrDxxm3r33d87v3nvmjm4Nm8122W63b4ETkGlECb5hr9d7QYeP5wuTmtHhcDyjE8jTR6FQYFohn8+LJt7QCWzSh8/nY5Ik8SWrw2AwYMFgUDTwQkf3gF/e00A4HGbT6VRZ+GV/wj7WR6fCWmvMZGjKssyi0agw/2axWK6KIG5gYI8mUqmU0sAEfZT2xqywMzoRPzdGbDghe8bS6bQw7+P+byvmAhi8Cw4xwYrFolLQH8nKDtSEl+GH3RGThjPzSqVCoSNzGT8fctvDwEk8pQ7dbjdrNptK4Y/eVFV8Gbal2XW2Wi3m8XjE7je5nTro75MW+v1+1u12FYHdnxNVg6O4gxrCQujSer3+LLdSh9FoPI+F76ggEonMQ0lBUjNS4/aB0MXjcWG+bTKZrnCbo+Fyua6joEGFFBzCeMlQFrGG1hIymYww74A3ufxyQME8lKVSSRHsIZQULDVjIs11eeiq1aoI3dRqtd7nsv8HFD8BD4Xye/ffoaQ5QrvdnocOTdi53PEAkZckFAgEWK/XUwwoYIvm9V+z0A2HQxYKhcTRb0HizEzpmDAYDOewi7ckGIvFlGDRIVPQhPnB0CUSCWH+Ca/sJS5zMuAOr0GwTsIULIIIZRmkV5OQzWaF+T6e2Ru8/HTgdDrvQHhAwSqXy4ohBa4/noWuVqsxrCHzERq+x8tOF3ikHtEOKWCLwHGL3T/my1cDbsJt/0KM82Wrw7qBdQPrBmAyJaNGo8GtZ9CsATxGr8iIXsRkMsk6nY62DZjN5otowg0ziQzpX3Uul9OuAQE0sYFTiMFUuRLO33xaO6CRWzB+jWa+gg/48JLQ6f4AHClDF58bhcUAAAAASUVORK5CYII=</image>
        </picturebox>
        <line name="FilterLine">
          <location>
            <x>9</x>
            <y>195</y>
          </location>
          <height>14</height>
          <width>579</width>
          <tabindex>6</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Filter Expressions</caption>
        </line>
        <label name="CriteriaLabel">
          <location>
            <x>50</x>
            <y>32</y>
          </location>
          <height>34</height>
          <width>538</width>
          <tabindex>1</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Criteria can be specified for each record type and will be applied when choosing records to add to the certificate.</caption>
          <font>
            <size>9</size>
          </font>
        </label>
        <picturebox name="CriteriaPicture">
          <location>
            <x>10</x>
            <y>32</y>
          </location>
          <height>34</height>
          <width>34</width>
          <tabindex>62</tabindex>
          <caption>PictureBox1</caption>
          <image>iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC/xhBQAAAAlwSFlzAAAOwwAADsMBx2+oZAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAKqSURBVFhH7ZY/aFNRFMavFaSgVHTpYAeLgw4uTp10c3IOTdShoDi4BfKflj5r07wYxaCiSSUUCxKNxEERC20XhVJbRRGpBY0UJyUNKKgxNXL9zs194SXv2uYF3pYPfiQ599zvO+8P74V11FFHzJXoZ259HlQAdwjynmPu2H6ZalItXLXJCeZkqknOHnkzFZlqkrrROSxSNTmJRaomJ7FI1eQkFqmanMQiVZOTWKRqchKLVE32qTKPnmSD0cNsSOtmrvF9eOqdY+74GeaJ9jKXtou5Jwa6Tup3OefbZLKU2tAOVXBCum0qCgd98qeU2tQGcZ1sAoFAXzAYnAFl8BYc8/v9R/H5DvwKhULTPp9vp8hskNK0Zb6yU1qPpmldCFkC3MQ3Sb2GIW/LVJPUxq3hiZ0lC5ifNgdtwt9wODwgcutSGbfGG+bKbcfRd+P0rinC/sdLOmMyHVKbb40nfpy2wzDQFLAlGHhIZAu18zoe1B/RVhjtgWGpOaAFvoDdIh+Gdv+Q/GCDlw7QVpgkTaa2wA15WeSLv0kefRbGLZ6J2ARtw9EfgVGFzMbGY3xk9EJDQKFQ4MVikeOmq9eoL371Bg/VahtYOyRmaEc4gqdkmp9d5sufN/iLtTK/NXVPBKXTaTxvaspms6KWupPjS2u/Re+ThVVjiAfSzr6wuahfuSYMDZ69L9XCUimez+cFmUxG1J6vlhp6E8mbVC9JO/vC5rJlgJV1ESb5A6rG7+YBYokk1delnX0Zl+Dh/CthuPjpJ78+OW2ER7xe795IJNKL78NUo8tDl4l6czMLRt+ktLMvDHAQBt/JaCyq8+GRUWGKm/MxlhveeKhP0RrdqNrFqBH+kYaULe0JL5d+GN0HH8BrEMFTbodcrouefBj4PNYXwQpIotbDGGP/ADNFQpXxOE/HAAAAAElFTkSuQmCC</image>
        </picturebox>
        <line name="CriteriaSelection">
          <location>
            <x>9</x>
            <y>12</y>
          </location>
          <height>14</height>
          <width>579</width>
          <anchor>Top Left Right</anchor>
          <caption>Criteria</caption>
        </line>
        <TextEdit name="FilterResult">
          <location>
            <x>48</x>
            <y>307</y>
          </location>
          <height>20</height>
          <width>536</width>
          <tabindex>12</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Result Filter</caption>
          <property>FilterResult</property>
          <propertylength>500</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <TextEdit name="FilterTest">
          <location>
            <x>48</x>
            <y>281</y>
          </location>
          <height>20</height>
          <width>536</width>
          <tabindex>11</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Test Filter</caption>
          <property>FilterTest</property>
          <propertylength>500</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <TextEdit name="FilterSample">
          <location>
            <x>48</x>
            <y>255</y>
          </location>
          <height>20</height>
          <width>536</width>
          <tabindex>10</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Sample Filter</caption>
          <property>FilterSample</property>
          <propertylength>500</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <TextEdit name="FilterJob">
          <location>
            <x>48</x>
            <y>333</y>
          </location>
          <height>20</height>
          <width>536</width>
          <tabindex>9</tabindex>
          <anchor>Top Left Right</anchor>
          <visible>false</visible>
          <caption>Job Filter</caption>
          <property>FilterJob</property>
          <propertylength>500</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <TextEdit name="FilterLot">
          <location>
            <x>48</x>
            <y>359</y>
          </location>
          <height>20</height>
          <width>536</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
          <visible>false</visible>
          <caption>Lot Filter</caption>
          <property>FilterLot</property>
          <propertylength>500</propertylength>
          <defaultvalue xsi:type="xsd:string" />
          <showbutton>true</showbutton>
        </TextEdit>
        <PromptEntityBrowseDefinition name="TestCriteria">
          <location>
            <x>48</x>
            <y>98</y>
          </location>
          <height>20</height>
          <width>538</width>
          <tabindex>5</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Test Criteria</caption>
          <property>TestCriteria</property>
          <Browse>TestCriteriaBrowse</Browse>
        </PromptEntityBrowseDefinition>
        <PromptEntityBrowseDefinition name="SampleCriteria">
          <location>
            <x>48</x>
            <y>72</y>
          </location>
          <height>20</height>
          <width>538</width>
          <tabindex>4</tabindex>
          <anchor>Top Left Right</anchor>
          <caption>Sample Criteria</caption>
          <property>SampleCriteria</property>
          <Browse>SampleCriteriaBrowse</Browse>
        </PromptEntityBrowseDefinition>
        <PromptEntityBrowseDefinition name="LotCriteria">
          <location>
            <x>50</x>
            <y>124</y>
          </location>
          <height>20</height>
          <width>538</width>
          <tabindex>2</tabindex>
          <anchor>Top Left Right</anchor>
          <visible>false</visible>
          <caption>Lot Criteria</caption>
          <property>LotCriteria</property>
          <Browse>LotCriteriaBrowse</Browse>
        </PromptEntityBrowseDefinition>
        <PromptEntityBrowseDefinition name="JobCriteria">
          <location>
            <x>50</x>
            <y>150</y>
          </location>
          <height>20</height>
          <width>538</width>
          <tabindex>3</tabindex>
          <anchor>Top Left Right</anchor>
          <visible>false</visible>
          <caption>Job Criteria</caption>
          <property>JobCriteria</property>
          <Browse>JobCriteriaBrowse</Browse>
        </PromptEntityBrowseDefinition>
      </controls>
    </form>
    <form name="PageResults">
      <height>500</height>
      <width>600</width>
      <caption>Results</caption>
      <components>
        <stringtable name="StringTable">
          <stringentries>
            <stringentry name="AddAnalysisText">
              <value>Add Analysis Components</value>
            </stringentry>
            <stringentry name="AddAnalysisCaption">
              <value>Add Components to specific component list</value>
            </stringentry>
            <stringentry name="AddProductText">
              <value>Add Product Components</value>
            </stringentry>
            <stringentry name="AddProductCaption">
              <value>Add Product Components to specific component list</value>
            </stringentry>
          </stringentries>
        </stringtable>
      </components>
      <minimumsize>
        <height>500</height>
        <width>600</width>
      </minimumsize>
      <extendedfunctions />
      <controls>
        <datagridcontrol name="GridCertTemplateEntries">
          <location>
            <x>9</x>
            <y>57</y>
          </location>
          <height>434</height>
          <width>582</width>
          <dock>Fill</dock>
          <showbuttons>true</showbuttons>
          <autosizecolumns>true</autosizecolumns>
          <MultiSelect>false</MultiSelect>
          <showiconcolumn>false</showiconcolumn>
          <showindicator>true</showindicator>
          <showhorzlines>true</showhorzlines>
          <showvertlines>true</showvertlines>
          <allowsort>false</allowsort>
          <fixedcolumns>3</fixedcolumns>
          <gridcolumns>
            <GridColumnDefinition name="Analysis.Identity">
              <location />
              <width>100</width>
              <caption>AnalysisId</caption>
              <category>Result</category>
              <categorycaption>Result</categorycaption>
              <readonly>true</readonly>
              <IsGreyBackground>true</IsGreyBackground>
              <allowfocus>false</allowfocus>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Analysis.Identity</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnAnalysis">
              <location />
              <width>70</width>
              <caption>Analysis</caption>
              <category>Result</category>
              <readonly>true</readonly>
              <IsGreyBackground>true</IsGreyBackground>
              <allowfocus>false</allowfocus>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Analysis</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="ComponentName">
              <location />
              <width>90</width>
              <caption>Component</caption>
              <category>Result</category>
              <readonly>true</readonly>
              <IsGreyBackground>true</IsGreyBackground>
              <allowfocus>false</allowfocus>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>ComponentName</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="FbComponentType">
              <location />
              <width>50</width>
              <caption>Fb Component Type</caption>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>FbComponentType</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="Mandatory">
              <location />
              <width>55</width>
              <caption>Mandatory</caption>
              <category>Control</category>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Mandatory</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="Custom">
              <location />
              <width>40</width>
              <caption>Custom</caption>
              <category>Control</category>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>false</showbutton>
              <Property>Custom</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnReportedAnalysisExpression">
              <location />
              <width>75</width>
              <caption>Analysis Name</caption>
              <category>Reporting</category>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>true</showbutton>
              <Property>ReportedAnalysisExpression</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnReportedNameExpression">
              <location />
              <width>75</width>
              <caption>Result Name</caption>
              <category>Reporting</category>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>true</showbutton>
              <Property>ReportedNameExpression</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnReportedValueExpression">
              <location />
              <width>75</width>
              <caption>Value</caption>
              <category>Reporting</category>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>true</showbutton>
              <Property>ReportedValueExpression</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnReportedUnitsExpression">
              <location />
              <width>75</width>
              <caption>Units</caption>
              <category>Reporting</category>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>true</showbutton>
              <Property>ReportedUnitsExpression</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
            <GridColumnDefinition name="ColumnReportedLimitExpression">
              <location />
              <width>75</width>
              <caption>Limits</caption>
              <category>Reporting</category>
              <readonly>false</readonly>
              <datatype>Text</datatype>
              <showbutton>true</showbutton>
              <Property>ReportedLimitExpression</Property>
              <HidePlaceHoldersBlank>false</HidePlaceHoldersBlank>
            </GridColumnDefinition>
          </gridcolumns>
          <readonly>false</readonly>
          <supportedoperations>Add Delete Move Fill Transpose</supportedoperations>
          <defaultview>Horizontal</defaultview>
          <property>CertTemplateEntries</property>
        </datagridcontrol>
        <label name="ResultsLabel">
          <location>
            <x>9</x>
            <y>9</y>
          </location>
          <height>48</height>
          <width>582</width>
          <tabindex>2</tabindex>
          <dock>Top</dock>
          <caption>Use the results grid to explicitly control which results should be reported on the certificate. You may override the reported value expressions on a per result basis using the custom flag. The order of the results will also be maintained.</caption>
          <font>
            <size>9</size>
          </font>
        </label>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>