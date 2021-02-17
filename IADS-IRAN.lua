do
-----------------------------------------------------------------------------------------------------------------
----------------------------IADS RED INTEGRATION - PERSIAN GULF DYNAMIC TEMPLATE --------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
--CREATE THE RED COALITION, NAMED IRAN
-----------------------------------------------------------------------------------------------------------------
    IRANIADS = SkynetIADS:create('IRAN')

-----------------------------------------------------------------------------------------------------------------
--DEBUGGING, REMOVE THE -- COMMAND TO ACTIVATE THE EXPORT
-----------------------------------------------------------------------------------------------------------------

        --debug settings remove from here on if you do not wan't any output on what the IADS is doing
        --local iadsDebug = IRANIADS:getDebugSettings()
        --iadsDebug.IADSStatus = true
        --iadsDebug.samWentDark = true
        --iadsDebug.contacts = true
        --iadsDebug.radarWentLive = true
        --iadsDebug.noWorkingCommmandCenter = true
        --iadsDebug.ewRadarNoConnection = true
        --iadsDebug.samNoConnection = true
        --iadsDebug.jammerProbability = true
        --iadsDebug.addedEWRadar = true
        --iadsDebug.addedSAMSite = true
        --iadsDebug.hasNoPower = true
        --iadsDebug.harmDefence = true
        --iadsDebug.warnings = true
        --iadsDebug.samSiteStatusEnvOutput = true
        --iadsDebug.earlyWarningRadarStatusEnvOutput = true
        
        ---end remove debug ---

-----------------------------------------------------------------------------------------------------------------
--DEFINE THE PREFIXES TO IDENTIFY EARLY WARNING RADARS AND SAM SITES
-----------------------------------------------------------------------------------------------------------------

IRANIADS:addEarlyWarningRadarsByPrefix('EWR', 'EW')
IRANIADS:addSAMSitesByPrefix('SAM')
IRANIADS:setUpdateInterval(30)
IRANIADS:addRadioMenu()
        
IRANIADS:setupSAMSitesAndThenActivate()

IRANIADS:addMooseSetGroup(DetectionSetGroup)

-----------------------------------------------------------------------------------------------------------------        
--COMMAND CENTER - NODE - ELECTRIC CENTRAL ADD:
-----------------------------------------------------------------------------------------------------------------        

local commandCenter = StaticObject.getByName("CMD-EAST")
local comPowerSource = StaticObject.getByName("Static-Electric-EAST")   
local conNode = Unit.getByName("NODEEAST")   
IRANIADS:addCommandCenter(commandCenter):addPowerSource(comPowerSource):addConnectionNode(conNode)


local commandCenter = StaticObject.getByName("CMD-NORD")
local comPowerSource = StaticObject.getByName("Static-Electric-NORD")
local conNode = Unit.getByName("NODENORD")
local conNode = Unit.getByName("NODECENTER")
IRANIADS:addCommandCenter(commandCenter):addPowerSource(comPowerSource):addConnectionNode(conNode)

local commandCenter = StaticObject.getByName("CMD-WEST")
local comPowerSource = StaticObject.getByName("Static-Electric-SUD")
local comPowerSource = StaticObject.getByName("Static-Electric-ISOLE")
local conNode = Unit.getByName("NODEFARWEST")
local conNode = Unit.getByName("NODEWEST")
IRANIADS:addCommandCenter(commandCenter):addPowerSource(comPowerSource):addConnectionNode(conNode)

-----------------------------------------------------------------------------------------------------------------
--EW RADAR ADD:
-----------------------------------------------------------------------------------------------------------------

 local connectionNodeEW = Unit.getByName("NODEFARWEST")
 local powerSource = StaticObject.getByName("Static-Electric-ISOLE")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-1'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)

 local connectionNodeEW = Unit.getByName("NODEFARWEST")
 local powerSource = StaticObject.getByName("Static-Electric-ISOLE")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-2'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)

 local connectionNodeEW = Unit.getByName("NODEWEST")
 local powerSource = StaticObject.getByName("Static-Electric-SUD")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-3'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)

  local connectionNodeEW = Unit.getByName("NODEWEST")
 local powerSource = StaticObject.getByName("Static-Electric-SUD")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-4'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)
 
 local connectionNodeEW = Unit.getByName("NODEEAST")
 local powerSource = StaticObject.getByName("Static-Electric-ISOLE")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-5'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)

 local connectionNodeEW = Unit.getByName("NODEEAST")
 local powerSource = StaticObject.getByName("Static-Electric-ISOLE")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-6'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)

 local connectionNodeEW = Unit.getByName("NODEEAST")
 local powerSource = StaticObject.getByName("Static-Electric-ISOLE")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-7'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)
 
 local connectionNodeEW = Unit.getByName("NODEEAST")
 local powerSource = StaticObject.getByName("Static-Electric-ISOLE")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-8'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)

 local connectionNodeEW = Unit.getByName("NODENORD")
 local powerSource = StaticObject.getByName("Static-Electric-NORD")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-9'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)

 local connectionNodeEW = Unit.getByName("NODENORD")
 local powerSource = StaticObject.getByName("Static-Electric-NORD")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-10'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)

 local connectionNodeEW = Unit.getByName("NODENORD")
 local powerSource = StaticObject.getByName("Static-Electric-NORD")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-11'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)

 local connectionNodeEW = Unit.getByName("NODEEAST")
 local powerSource = StaticObject.getByName("Static-Electric-SUD")
 IRANIADS:getEarlyWarningRadarByUnitName('EWR-12'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource)

-----------------------------------------------------------------------------------------------------------------       
--SAM SITE ADD
-----------------------------------------------------------------------------------------------------------------

local SA15PointDEF = IRANIADS:getSAMSiteByGroupName('SAM-SA15-BANDAR')
local connectionNode = Unit.getByName("NODEWEST")
local powerSource = StaticObject.getByName("Static-Electric-SUD")
IRANIADS:getSAMSiteByGroupName('SAM-HAWK-BANDAR'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):addPointDefence(SA15PointDEF):setActAsEW(true):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)

local SA15PointDEF = IRANIADS:getSAMSiteByGroupName('SAM-SA15-BUSHIER')
local connectionNode = Unit.getByName("NODEEAST")
local powerSource = StaticObject.getByName("Static-Electric-EAST")
IRANIADS:getSAMSiteByGroupName('SAM-HAWK-BUSHIER'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):addPointDefence(SA15PointDEF):setActAsEW(true):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)

local SA15PointDEF = IRANIADS:getSAMSiteByGroupName('SAM-SA15-BUSHIER')
local connectionNode = Unit.getByName("NODEEAST")
local powerSource = StaticObject.getByName("Static-Electric-EAST")
IRANIADS:getSAMSiteByGroupName('SAM-HAWK-BUSHIER-1'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):addPointDefence(SA15PointDEF):setActAsEW(true):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)

local SA15PointDEF = IRANIADS:getSAMSiteByGroupName('SAM-SA15-BUSHIER')
local connectionNode = Unit.getByName("NODEEAST")
local powerSource = StaticObject.getByName("Static-Electric-EAST")
IRANIADS:getSAMSiteByGroupName('SAM-HAWK-BUSHIER-1'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):addPointDefence(SA15PointDEF):setActAsEW(true):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)

local SA15PointDEF = IRANIADS:getSAMSiteByGroupName('SAM-SA15-HAVADARYA')
local connectionNode = Unit.getByName("NODEWEST")
local powerSource = StaticObject.getByName("Static-Electric-SUD")
IRANIADS:getSAMSiteByGroupName('SAM-HAWK-HAVADARYA'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):addPointDefence(SA15PointDEF):setActAsEW(true):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)

local connectionNodeE= Unit.getByName("NODEFARWEST")
local powerSource = StaticObject.getByName("Static-Electric-SUD")
IRANIADS:getSAMSiteByGroupName('SAM-HAWK-JASK'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):setActAsEW(true)

local connectionNode = Unit.getByName("NODENORD")
local powerSource = StaticObject.getByName("Static-Electric-NORD")
IRANIADS:getSAMSiteByGroupName('SAM-HAWK-JIROFT'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):setActAsEW(true)

local connectionNode = Unit.getByName("NODEEAST")
local powerSource = StaticObject.getByName("Static-Electric-ISOLE")
IRANIADS:getSAMSiteByGroupName('SAM-HAWK-LAVAN'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):setActAsEW(true)

local connectionNode = Unit.getByName("NODENORD")
local powerSource = StaticObject.getByName("Static-Electric-NORD")
IRANIADS:getSAMSiteByGroupName('SAM-HAWK-SHIRAZ'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):setActAsEW(true)

local SA15PointDEF = IRANIADS:getSAMSiteByGroupName('SAM-SA15-ABUMUSA')
local connectionNode = Unit.getByName("NODECENTER")
local powerSource = StaticObject.getByName("Static-Electric-ISOLE")
IRANIADS:getSAMSiteByGroupName('SAM-RAPIER-ABU'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):addPointDefence(SA15PointDEF):setActAsEW(true):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)

local connectionNode = Unit.getByName("NODEWEST")
local powerSource = StaticObject.getByName("Static-Electric-EAST")
IRANIADS:getSAMSiteByGroupName('SAM-RAPIER-NODEWEST'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):setActAsEW(true)

local SA15PointDEF = IRANIADS:getSAMSiteByGroupName('SAM-SA15-BUSHIER')
local connectionNode = Unit.getByName("NODEEAST")
local powerSource = StaticObject.getByName("Static-Electric-EAST")
IRANIADS:getSAMSiteByGroupName('SAM-S300-BUSHIER'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):addPointDefence(SA15PointDEF):setActAsEW(true):setIgnoreHARMSWhilePointDefencesHaveAmmo(true)

local connectionNode = Unit.getByName("NODENORD")
local powerSource = StaticObject.getByName("Static-Electric-NORD")
IRANIADS:getSAMSiteByGroupName('SAM-S300-KERMAN'):addConnectionNode(connectionNodeEW):addPowerSource(powerSource):setActAsEW(true)

-----------------------------------------------------------------------------------------------------------------
--Molniya AND AWACS NODE connections:
-----------------------------------------------------------------------------------------------------------------

local connectionNodeEW = Unit.getByName('NODENORD')
IRANIADS:getEarlyWarningRadarByUnitName('EW-K-50'):addConnectionNode(connectionNodeEW)

-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
--add the variable for the CAP Scripting
IRANIADS:addMooseSetGroup(DetectionSetGroup)


end