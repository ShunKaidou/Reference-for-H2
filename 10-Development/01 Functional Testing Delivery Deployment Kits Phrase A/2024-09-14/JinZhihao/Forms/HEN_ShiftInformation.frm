<?xml version="1.0" encoding="utf-8"?>
<FORM_EXPORT name="HEN_ShiftInformation">
  <DATA>
    <TABLE name="FORM">
      <RECORD>
        <FIELD name="NAME" value="HEN_ShiftInformation" />
        <FIELD name="FORM_ENTITY_DEFINITION" value="HEN_SHIFT_INFORMATION" />
        <FIELD name="TYPE" value="FORM" />
        <FIELD name="DESCRIPTION" value="Shift Information" />
        <FIELD name="TITLE" value="Shift Information" />
        <FIELD name="GROUP_ID" value="" />
        <FIELD name="MODIFIABLE" value="True" />
        <FIELD name="SPELLCHECK_DETAILS" value="False" />
        <FIELD name="INCLUDE_DETAILS" value="False" />
        <FIELD name="FILE_DIRECTORY" value="" />
        <FIELD name="FILE_EXTENSION" value="" />
        <FIELD name="FORM_XML" value="" />
        <FIELD name="CATEGORY" value="GENERAL" />
        <FIELD name="DEFAULT_ICON" value="INT_FORMS" />
        <FIELD name="WINDOW_STYLE" value="FLOAT" />
        <FIELD name="SHOW_WELCOME_PAGE" value="True" />
        <FIELD name="HAS_ERRORS" value="False" />
        <FIELD name="PAGE_EXTENSION" value="" />
        <FIELD name="DYNAMIC_FORM_DEFINITION" value="" />
        <FIELD name="SPEECH_ENABLED" value="False" />
      </RECORD>
    </TABLE>
    <PAGES />
  </DATA>
  <DEFINITION><![CDATA[<?xml version="1.0" encoding="utf-16"?>
<interface xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.thermo.com/informatics/xmlns/interface/1.0">
  <forms>
    <form name="FormDefinition1">
      <height>350</height>
      <width>500</width>
      <caption>General</caption>
      <minimumsize>
        <height>350</height>
        <width>500</width>
      </minimumsize>
      <maximumsize>
        <height>350</height>
        <width>500</width>
      </maximumsize>
      <controls>
        <prompt name="Days">
          <location>
            <x>12</x>
            <y>107</y>
          </location>
          <height>21</height>
          <width>475</width>
          <tabindex>11</tabindex>
          <caption>Days</caption>
          <property>Days</property>
          <captionwidth>80</captionwidth>
          <viewname />
        </prompt>
        <ActionButtonDefinition name="ModifyOKButton">
          <location>
            <x>321</x>
            <y>315</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>10</tabindex>
          <anchor>Bottom Right</anchor>
          <caption>&amp;OK</caption>
          <size>
            <Width>75</Width>
            <Height>23</Height>
          </size>
          <formresult>OK</formresult>
          <accept>false</accept>
          <cancel>false</cancel>
          <save>false</save>
        </ActionButtonDefinition>
        <prompt name="Personnel">
          <location>
            <x>12</x>
            <y>12</y>
          </location>
          <height>21</height>
          <width>475</width>
          <tabindex>1</tabindex>
          <caption>Personnel</caption>
          <property>Personnel</property>
          <propertylength>100</propertylength>
          <mandatory>true</mandatory>
          <captionwidth>80</captionwidth>
          <viewname />
        </prompt>
        <line name="Line2">
          <location>
            <x>14</x>
            <y>188</y>
          </location>
          <height>14</height>
          <width>576</width>
          <tabindex>9</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <line name="Line1">
          <location>
            <x>13</x>
            <y>66</y>
          </location>
          <height>8</height>
          <width>576</width>
          <tabindex>8</tabindex>
          <anchor>Top Left Right</anchor>
        </line>
        <ActionButtonDefinition name="CancelButton">
          <location>
            <x>412</x>
            <y>315</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>9</tabindex>
          <anchor>Bottom Right</anchor>
          <caption>&amp;Cancel</caption>
          <size>
            <Width>75</Width>
            <Height>23</Height>
          </size>
          <formresult>Cancel</formresult>
          <accept>false</accept>
          <cancel>false</cancel>
          <save>false</save>
        </ActionButtonDefinition>
        <ActionButtonDefinition name="OKButton">
          <location>
            <x>321</x>
            <y>315</y>
          </location>
          <height>23</height>
          <width>75</width>
          <tabindex>8</tabindex>
          <anchor>Bottom Right</anchor>
          <caption>&amp;OK</caption>
          <size>
            <Width>75</Width>
            <Height>23</Height>
          </size>
          <formresult>OK</formresult>
          <accept>false</accept>
          <cancel>false</cancel>
          <save>true</save>
        </ActionButtonDefinition>
        <prompt name="ActualHours">
          <location>
            <x>12</x>
            <y>161</y>
          </location>
          <height>21</height>
          <width>475</width>
          <tabindex>6</tabindex>
          <caption>Actual Hours</caption>
          <property>ActualHours</property>
          <captionwidth>80</captionwidth>
          <viewname />
        </prompt>
        <prompt name="PlannedHours">
          <location>
            <x>12</x>
            <y>134</y>
          </location>
          <height>21</height>
          <width>475</width>
          <tabindex>5</tabindex>
          <caption>Planned Hours</caption>
          <property>PlannedHours</property>
          <captionwidth>80</captionwidth>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="Description">
          <location>
            <x>12</x>
            <y>208</y>
          </location>
          <height>79</height>
          <width>475</width>
          <tabindex>7</tabindex>
          <caption>Description</caption>
          <property>Description</property>
          <propertylength>255</propertylength>
          <captionwidth>80</captionwidth>
          <viewname />
        </prompt>
        <prompt name="ShiftEndTime">
          <location>
            <x>265</x>
            <y>80</y>
          </location>
          <height>21</height>
          <width>222</width>
          <tabindex>4</tabindex>
          <caption>End</caption>
          <property>ShiftEndTime</property>
          <mandatory>true</mandatory>
          <captionwidth>80</captionwidth>
          <readonly>true</readonly>
          <viewname />
        </prompt>
        <prompt name="ShiftStartTime">
          <location>
            <x>13</x>
            <y>80</y>
          </location>
          <height>21</height>
          <width>224</width>
          <tabindex>3</tabindex>
          <caption>Start</caption>
          <property>ShiftStartTime</property>
          <mandatory>true</mandatory>
          <captionwidth>80</captionwidth>
          <viewname />
        </prompt>
        <prompt name="ShiftType">
          <location>
            <x>12</x>
            <y>39</y>
          </location>
          <height>21</height>
          <width>475</width>
          <tabindex>2</tabindex>
          <caption>Shift Type</caption>
          <property>ShiftType</property>
          <mandatory>true</mandatory>
          <captionwidth>80</captionwidth>
          <viewname />
        </prompt>
      </controls>
    </form>
  </forms>
</interface>]]></DEFINITION>
</FORM_EXPORT>