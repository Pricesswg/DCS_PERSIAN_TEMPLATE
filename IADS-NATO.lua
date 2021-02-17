do
    
-----------------------------------------------------------------------------------------------------------------
------------------------------IADS BLUE INTEGRATION - PERSIANGULF DYNAMIC TEMPLATE ------------------------------
-----------------------------------------------------------------------------------------------------------------    

-----------------------------------------------------------------------------------------------------------------        
--DEFINE THE BLUE COALITION, NAMED NATO: IT ALSO INCLUDE THE AMERICAN CARRIER GROUP
-----------------------------------------------------------------------------------------------------------------
        
blueIADS = SkynetIADS:create('NATO')
        
-----------------------------------------------------------------------------------------------------------------
--DEBUGGING, REMOVE THE -- COMMAND TO ACTIVATE THE EXPORT
-----------------------------------------------------------------------------------------------------------------
        
        ---debug settings remove from here on if you do not wan't any output on what the IADS is doing
        --local iadsDebug = blueIADS:getDebugSettings()
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
--DEFINE THE PREFIXES FOR THE BLUE COALITION
-----------------------------------------------------------------------------------------------------------------
        
        blueIADS:addEarlyWarningRadarsByPrefix('AWACS' , 'ngton')
        blueIADS:addSAMSitesByPrefix('BLUESAM')
        blueIADS:setUpdateInterval(30)
        blueIADS:addRadioMenu()
        
        blueIADS:addMooseSetGroup(DetectionSetGroup)
-----------------------------------------------------------------------------------------------------------------        
--COMMAND CENTER - NODE - ELECTRIC CENTRAL ADD:
-----------------------------------------------------------------------------------------------------------------        
        local commandCenter = StaticObject.getByName("BLUECMD")
        local comPowerSource = StaticObject.getByName("Static-Electric-BLUECMD")   
        local conNode = Unit.getByName("BLUENODE")   
        blueIADS:addCommandCenter(commandCenter):addPowerSource(comPowerSource):addConnectionNode(conNode)

-----------------------------------------------------------------------------------------------------------------
--DEFINE THE SAM SITE 
-----------------------------------------------------------------------------------------------------------------
        
    local connectionNode = Unit.getByName("BLUENODE")
    blueIADS:getSAMSiteByGroupName('BLUESAM-PATRIOT-1'):addConnectionNode(connectionNode)
    blueIADS:setupSAMSitesAndThenActivate()

    local connectionNode = Unit.getByName("BLUENODE")
    blueIADS:getSAMSiteByGroupName('BLUESAM-PATRIOT-2'):addConnectionNode(connectionNode)
    blueIADS:setupSAMSitesAndThenActivate()

    local connectionNode = Unit.getByName("BLUENODE")
    blueIADS:getSAMSiteByGroupName('BLUESAM-PATRIOT-3'):addConnectionNode(connectionNode)
    blueIADS:setupSAMSitesAndThenActivate()

    local connectionNode = Unit.getByName("BLUENODE")
    blueIADS:getSAMSiteByGroupName('BLUESAM-PATRIOT-4'):addConnectionNode(connectionNode)
    blueIADS:setupSAMSitesAndThenActivate()

    local connectionNode = Unit.getByName("BLUENODE")
    blueIADS:getSAMSiteByGroupName('BLUESAM-PATRIOT-5'):addConnectionNode(connectionNode)
    blueIADS:setupSAMSitesAndThenActivate()

-----------------------------------------------------------------------------------------------------------------
--Molniya AND AWACS NODE connections:
-----------------------------------------------------------------------------------------------------------------

local connectionNodeEW = Unit.getByName('BLUENODE')
blueIADS:getEarlyWarningRadarByUnitName('AWACS'):addConnectionNode(connectionNodeEW)
                
--add the variable for the CAP Scripting
        
    blueIADS:addMooseSetGroup(DetectionSetGroup)
        

end