-----------------------------------------------------------------------------------------------------------------
------------------------------CAP BLUE ZONE SCRIPTING - SIRYA DYNAMIC TEMPLATE -----------------------------------
-----------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- DEFINE THE SET:GROUP OBJECT THAT BUILDS A COLLECTION OF GROUPS THAT DEFINE THE EWR NETWORK.
-- HERE WE BUILD THE NETWORK WHIT ALL THE GROUPS THAT HAVE A NAME STARTING WHIT EWR AND EW.        
-------------------------------------------------------------------------------------------------------------------

DetectionSetGroup = SET_GROUP:New()
DetectionSetGroup:FilterPrefixes("EWR", "EW")
DetectionSetGroup:FilterStart()
Detection = DETECTION_AREAS:New( DetectionSetGroup, 42000 )

-------------------------------------------------------------------------------------------------------------------
-- SETUP THE DISPATCHER, AND INITIALIZE IT.            
-------------------------------------------------------------------------------------------------------------------

A2ADispatcher = AI_A2A_DISPATCHER:New( Detection )
A2ADispatcher:SetEngageRadius( 40000 )

-------------------------------------------------------------------------------------------------------------------
-- SETUP THE BORDER
-- INITIALIZE THE DISPATCHER, SETTING UP A BORDER ZONE. THIS IS A POLYGON,
-- WHICH TAKES THE WAYPOINTS OF A LATE ACTIVATED GROUP WHIT THE NAME redborder AS THE BOUNDARIES OF THE BORDER AREA 
-- ANY ENEMY CROSSING THIS BORDER WILL BE ENGAGED
-------------------------------------------------------------------------------------------------------------------

RedZone = ZONE_POLYGON:New( "redborder", GROUP:FindByName( "redborder" ) )

A2ADispatcher:SetBorderZone( {RedZone} )

CAPZoneRedBorder = ZONE_POLYGON:New( "redborder", GROUP:FindByName( "redborder" ) )
CAPREDCAPBUSHEIRDX = ZONE_POLYGON:New( "CAPREDCAPBUSHEIRDX", GROUP:FindByName( "REDCAPBUSHEIR" ) )
REDCAPLAVAN = ZONE_POLYGON:New("REDCAPLAVAN",GROUP:FindByName( "REDCAPLAVAN" ) )
REDCAPISOLE = ZONE_POLYGON:New( "REDCAPISOLE", GROUP:FindByName( "REDCAPISOLE" ) )
REDCAPQUESHM = ZONE_POLYGON:New( "REDCAPQUESHM", GROUP:FindByName( "REDCAPQUESHM" ) )
REDCAPBANDAR = ZONE_POLYGON:New( "REDCAPBANDAR", GROUP:FindByName( "REDCAPBANDAR" ) )
REDCAPJASK = ZONE_POLYGON:New( "REDCAPJASK", GROUP:FindByName( "REDCAPJASK" ) )

-------------------------------------------------------------------------------------------------------------------
--DEFINE THE CAP GROUP FOR IRAN
-------------------------------------------------------------------------------------------------------------------
REDCAPTemplates = {
    "REDSQ F14A 1",
    "REDSQ F14A 2",
    "REDSQ F14B IRAN",
    "F4E CAP",
    "F5E CAP 1",
    "F5E CAP 2",
    "MIG21 CAP 1",
    "MIG21 CAP 1",
    "MIG29 CAP 1",
    "MIG29 CAP 2"
    }


-------------------------------------------------------------------------------------------------------------------
-- CAP SQUADRONS
-------------------------------------------------------------------------------------------------------------------

--REDCAPBUSHEIR
A2ADispatcher:SetSquadron( "REDCAPBUSHEIR", AIRBASE.PersianGulf.Shiraz_International_Airport, REDCAPTemplates )
--REDCAPLAVAN
A2ADispatcher:SetSquadron( "REDCAPLAVAN", AIRBASE.PersianGulf.Lavan_Island_Airport, REDCAPTemplates )
--REDCAPISOLE
A2ADispatcher:SetSquadron( "REDCAPISOLE", AIRBASE.PersianGulf.Bandar_Lengeh, REDCAPTemplates )
--REDCAPQUESHM
A2ADispatcher:SetSquadron( "REDCAPQUESHM", AIRBASE.PersianGulf.Qeshm_Island, REDCAPTemplates )
--REDCAPBANDAR
A2ADispatcher:SetSquadron( "REDCAPBANDAR", AIRBASE.PersianGulf.Bandar_Abbas_Intl, REDCAPTemplates )
--REDCAPJASK
A2ADispatcher:SetSquadron( "REDCAPJASK", AIRBASE.PersianGulf.Bandar_e_Jask_airfield, REDCAPTemplates )

-------------------------------------------------------------------------------------------------------------------
--AIRBASE OF PERSIAN GULF, USE THEM TO DEFINE THE AIRFIELD OF DEPARTURE.
-------------------------------------------------------------------------------------------------------------------


--AIRBASE.PersianGulf.Abu_Dhabi_International_Airport
--AIRBASE.PersianGulf.Abu_Musa_Island_Airport
--AIRBASE.PersianGulf.Al-Bateen_Airport
--AIRBASE.PersianGulf.Al_Ain_International_Airport
--AIRBASE.PersianGulf.Al_Dhafra_AB
--AIRBASE.PersianGulf.Al_Maktoum_Intl
--AIRBASE.PersianGulf.Al_Minhad_AB
--AIRBASE.PersianGulf.Bandar_e_Jask_airfield
--AIRBASE.PersianGulf.Bandar_Abbas_Intl
--AIRBASE.PersianGulf.Bandar_Lengeh
--AIRBASE.PersianGulf.Dubai_Intl
--AIRBASE.PersianGulf.Fujairah_Intl
--AIRBASE.PersianGulf.Havadarya
--AIRBASE.PersianGulf.Jiroft_Airport
--AIRBASE.PersianGulf.Kerman_Airport
--AIRBASE.PersianGulf.Khasab
--AIRBASE.PersianGulf.Kish_International_Airport
--AIRBASE.PersianGulf.Lar_Airbase
--AIRBASE.PersianGulf.Lavan_Island_Airport
--AIRBASE.PersianGulf.Liwa_Airbase
--AIRBASE.PersianGulf.Qeshm_Island
--AIRBASE.PersianGulf.Ras_Al_Khaimah_International_Airport
--AIRBASE.PersianGulf.Sas_Al_Nakheel_Airport
--AIRBASE.PersianGulf.Sharjah_Intl
--AIRBASE.PersianGulf.Shiraz_International_Airport
--AIRBASE.PersianGulf.Sir_Abu_Nuayr
--AIRBASE.PersianGulf.Sirri_Island
--AIRBASE.PersianGulf.Tunb_Island_AFB
--AIRBASE.PersianGulf.Tunb_Kochak

-------------------------------------------------------------------------------------------------------------------    
--DEFINE THE DEFAULT TAKEOFF ALTITUDE FOR THE AIR SPAWNED AIRCRAFT
-------------------------------------------------------------------------------------------------------------------

A2ADispatcher:SetDefaultTakeoffInAirAltitude( 8000 )    

-------------------------------------------------------------------------------------------------------------------
--DEFINE THE TAKEOFF METHOD FOR THE SQUADRONS
-------------------------------------------------------------------------------------------------------------------

--REDCAPBUSHEIR
A2ADispatcher:SetSquadronTakeoffFromParkingHot( "REDCAPBUSHEIR" )
--REDCAPLAVAN
A2ADispatcher:SetSquadronTakeoffFromParkingHot( "REDCAPLAVAN" )
--REDCAPISOLE
A2ADispatcher:SetSquadronTakeoffFromParkingHot( "REDCAPISOLE" )
--REDCAPQUESHM
A2ADispatcher:SetSquadronTakeoffFromParkingHot( "REDCAPQUESHM" )
--REDCAPBANDAR
A2ADispatcher:SetSquadronTakeoffFromParkingHot( "REDCAPBANDAR" )
--REDCAPJASK
A2ADispatcher:SetSquadronTakeoffFromParkingHot( "REDCAPJASK" )

-------------------------------------------------------------------------------------------------------------------
--DEFINE THE DEFAULT LANDING AND DESPAWN METHOD FOR THE CAP SQUADRONS
-------------------------------------------------------------------------------------------------------------------
--REDCAPBUSHEIR
A2ADispatcher:SetSquadronLandingAtRunway( "REDCAPBUSHEIR" )
--REDCAPLAVAN
A2ADispatcher:SetSquadronLandingAtRunway( "REDCAPLAVAN" )
--REDCAPISOLE
A2ADispatcher:SetSquadronLandingAtRunway( "REDCAPISOLE" )
--REDCAPQUESHM
A2ADispatcher:SetSquadronLandingAtRunway( "REDCAPQUESHM" )
--REDCAPBANDAR
A2ADispatcher:SetSquadronLandingAtRunway( "REDCAPBANDAR" )
--REDCAPJASK
A2ADispatcher:SetSquadronLandingAtRunway( "REDCAPJASK" )

-------------------------------------------------------------------------------------------------------------------
--DEFINE THE PARAMETERS FOR THE SPAWN OF THE SQUADRONS, THE ORIGINAL TIMING IS 300/750 
-------------------------------------------------------------------------------------------------------------------

--REDCAPBUSHEIR
A2ADispatcher:SetSquadronCap( "REDCAPBUSHEIR", REDCAPBUSHEIR, 15000, 30000, 500, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronCapInterval( "REDCAPBUSHEIR", 2, 24, 900, 2 )
--REDCAPLAVAN
A2ADispatcher:SetSquadronCap( "REDCAPLAVAN", REDCAPLAVAN, 15000, 30000, 500, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronCapInterval( "REDCAPLAVAN", 2, 24, 600, 2 )
--REDCAPISOLE
A2ADispatcher:SetSquadronCap( "REDCAPISOLE", REDCAPISOLE, 15000, 30000, 500, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronCapInterval( "REDCAPISOLE", 2, 24, 800, 2 )
--REDCAPQUESHM
A2ADispatcher:SetSquadronCap( "REDCAPQUESHM", REDCAPQUESHM, 15000, 30000, 500, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronCapInterval( "REDCAPQUESHM", 2, 24, 700, 2 )
--REDCAPBANDAR
A2ADispatcher:SetSquadronCap( "REDCAPBANDAR", REDCAPBANDAR, 15000, 30000, 500, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronCapInterval( "REDCAPBANDAR", 2, 24, 900, 2 )
--REDCAPJASK
A2ADispatcher:SetSquadronCap( "REDCAPJASK", REDCAPJASK, 15000, 30000, 500, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronCapInterval( "REDCAPJASK", 2, 24, 1000, 2 )

-------------------------------------------------------------------------------------------------------------------
--DEFINE THE GROUPING OF THE SQUADRONS
-------------------------------------------------------------------------------------------------------------------

--REDCAPBUSHEIR
A2ADispatcher:SetSquadronGrouping( "REDCAPBUSHEIR", 2 )
--REDCAPLAVAN
A2ADispatcher:SetSquadronGrouping( "REDCAPLAVAN", 2 )
--REDCAPISOLE
A2ADispatcher:SetSquadronGrouping( "REDCAPISOLE", 2 )
--REDCAPQUESHM
A2ADispatcher:SetSquadronGrouping( "REDCAPQUESHM", 2 )
--REDCAPBANDAR
A2ADispatcher:SetSquadronGrouping( "REDCAPBANDAR", 2 )
--REDCAPJASK
A2ADispatcher:SetSquadronGrouping( "REDCAPJASK", 2 )

-------------------------------------------------------------------------------------------------------------------
--DEFINE THE DEFAULT OVERHEAD FOR THE SQUADRONS, DEFAULT IS 1.0/1.5
-------------------------------------------------------------------------------------------------------------------

--REDCAPBUSHEIR
A2ADispatcher:SetSquadronOverhead( "REDCAPBUSHEIR", 1.0)
--REDCAPLAVAN
A2ADispatcher:SetSquadronOverhead( "REDCAPLAVAN", 1.0)
--REDCAPISOLE
A2ADispatcher:SetSquadronOverhead( "REDCAPISOLE", 1.0)
--REDCAPQUESHM
A2ADispatcher:SetSquadronOverhead( "REDCAPQUESHM", 1.0)
--REDCAPBANDAR
A2ADispatcher:SetSquadronOverhead( "REDCAPBANDAR", 1.0)
--REDCAPJASK
A2ADispatcher:SetSquadronOverhead( "REDCAPJASK", 1.0)

-------------------------------------------------------------------------------------------------------------------
 -- DET THE DEFAULT FUEL THRESHOLD
-------------------------------------------------------------------------------------------------------------------

 --A2ADispatcher:SetSquadronFuelThreshold( "REDSX", 0.30 )  -- Go RTB when only 30% of fuel remaining in the tank.
 --A2ADispatcher:SetSquadronFuelThreshold( "REDSX", 0.30 )  
 --A2ADispatcher:SetSquadronRefuelThreshold( "REDSX", 0.30 ) 


-------------------------------------------------------------------------------------------------------------------
-- TEST AA INTERCEPT BY AWACS
-------------------------------------------------------------------------------------------------------------------


AIDispatcher = AI_A2A_GCICAP:New( { "EWR", "EW" } )
AIDispatcher:SetBorderZone( {RedZone} )
AIDispatcher:SetDefaultTakeoffInAirAltitude( 12000 )

REDA2ATemplates = {
    "REDSQ F14A 1",
    "REDSQ F14A 2",
    "REDSQ F14B IRAN",
    "MIG29 CAP 1",
    "MIG29 CAP 2"
    }


 AIDispatcher:SetSquadron( "REDINTERCEPT1", AIRBASE.PersianGulf.Bandar_Abbas_Intl, REDA2ATemplates, 10 )
 AIDispatcher:SetSquadronGci( "REDINTERCEPT1", 650, 1600 )

 AIDispatcher:SetSquadron( "REDINTERCEPT2", AIRBASE.PersianGulf.Bandar_Lengeh, REDA2ATemplates, 10 )
 AIDispatcher:SetSquadronGci( "REDINTERCEPT2", 650, 1600 )

