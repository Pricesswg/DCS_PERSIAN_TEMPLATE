-----------------------------------------------------------------------------------------------------------------
------------------------------CAP BLUE ZONE SCRIPTING - SIRYA DYNAMIC TEMPLATE -----------------------------------
-----------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- DEFINE THE SET:GROUP OBJECT THAT BUILDS A COLLECTION OF GROUPS THAT DEFINE THE EWR NETWORK.
-- HERE WE BUILD THE NETWORK WHIT ALL THE GROUPS THAT HAVE A NAME STARTING WHIT EWR AND EW.        
-------------------------------------------------------------------------------------------------------------------

DetectionSetGroup = SET_GROUP:New()
DetectionSetGroup:FilterPrefixes("BLUEEWR", "AWACS")
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

BlueZone = ZONE_POLYGON:New( "blueborder", GROUP:FindByName( "blueborder" ) )

A2ADispatcher:SetBorderZone( {BlueZone} )

CAPZoneBlueBorder = ZONE_POLYGON:New( "blueborder", GROUP:FindByName( "blueborder" ) )
BLUECAPLIWA = ZONE_POLYGON:New( "BLUECAPLIWA", GROUP:FindByName( "BLUECAPLIWA" ) )
BLUECAPFUJARAH = ZONE_POLYGON:New( "BLUECAPFUJARAH", GROUP:FindByName( "BLUECAPFUJARAH" ) )
BLUECAPKHASAB = ZONE_POLYGON:New( "BLUECAPKHASAB", GROUP:FindByName( "BLUECAPKHASAB" ) )
BLUECAPDUBAI = ZONE_POLYGON:New( "BLUECAPDUBAI", GROUP:FindByName( "BLUECAPDUBAI" ) )

-------------------------------------------------------------------------------------------------------------------
--DEFINE THE CAP GROUP FOR NATO
-------------------------------------------------------------------------------------------------------------------

NATOCAPTemplates = {
    "BLUESQ F15 1",
    "BLUESQ F15 2",
    "BLUESQ F16 1",
    "BLUESQ F16 2",
    "BLUESQ F18 1",
    "BLUESQ M2000 1",
    "BLUESQ M2000 2",
    "BLUESQ M2000 3",
    "BLUESQ F14 2",
    "BLUESQ F14 2"
    }

    -------------------------------------------------------------------------------------------------------------------
-- CAP SQUADRONS
-------------------------------------------------------------------------------------------------------------------

--BLUECAPLIWA
A2ADispatcher:SetSquadron( "BLUECAPLIWA", AIRBASE.PersianGulf.Liwa_Airbase, NATOCAPTemplates )
--BLUECAPFUJARAH
A2ADispatcher:SetSquadron( "BLUECAPFUJARAH", AIRBASE.PersianGulf.Al_Minhad_AB, NATOCAPTemplates )
--BLUECAPKHASAB
A2ADispatcher:SetSquadron( "BLUECAPKHASAB", AIRBASE.PersianGulf.Khasab, NATOCAPTemplates )
--BLUECAPDUBAI
A2ADispatcher:SetSquadron( "BLUECAPDUBAI", AIRBASE.PersianGulf.Al_Minhad_AB, NATOCAPTemplates )

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

--BLUECAPLIWA
A2ADispatcher:SetSquadronTakeoffFromParkingHot( "BLUECAPLIWA" )
--BLUECAPFUJARAH
A2ADispatcher:SetSquadronTakeoffFromParkingHot( "BLUECAPFUJARAH" )
--BLUECAPKHASAB
A2ADispatcher:SetSquadronTakeoffFromParkingHot( "BLUECAPKHASAB" )
--BLUECAPDUBAI
A2ADispatcher:SetSquadronTakeoffFromParkingHot( "BLUECAPDUBAI" )

-------------------------------------------------------------------------------------------------------------------
--DEFINE THE DEFAULT LANDING AND DESPAWN METHOD FOR THE CAP SQUADRONS
-------------------------------------------------------------------------------------------------------------------
--BLUECAPLIWA
A2ADispatcher:SetSquadronLandingAtRunway( "BLUECAPLIWA" )
--BLUECAPFUJARAH
A2ADispatcher:SetSquadronLandingAtRunway( "BLUECAPFUJARAH" )
--BLUECAPKHASAB
A2ADispatcher:SetSquadronLandingAtRunway( "BLUECAPKHASAB" )
--BLUECAPDUBAI
A2ADispatcher:SetSquadronLandingAtRunway( "BLUECAPDUBAI" )

-------------------------------------------------------------------------------------------------------------------
--DEFINE THE PARAMETERS FOR THE SPAWN OF THE SQUADRONS, THE ORIGINAL TIMING IS 300/750 
-------------------------------------------------------------------------------------------------------------------

--BLUECAPLIWA
A2ADispatcher:SetSquadronCap( "BLUECAPLIWA", BLUECAPLIWA, 15000, 30000, 500, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronCapInterval( "BLUECAPLIWA", 2, 24, 900, 2 )

--BLUECAPFUJARAH
A2ADispatcher:SetSquadronCap( "BLUECAPFUJARAH", BLUECAPFUJARAH, 15000, 30000, 500, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronCapInterval( "BLUECAPFUJARAH", 2, 24, 600, 2 )

--BLUECAPKHASAB
A2ADispatcher:SetSquadronCap( "BLUECAPKHASAB", BLUECAPKHASAB, 15000, 30000, 500, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronCapInterval( "BLUECAPKHASAB", 2, 24, 800, 2 )

--BLUECAPDUBAI
A2ADispatcher:SetSquadronCap( "BLUECAPDUBAI", BLUECAPDUBAI, 15000, 30000, 500, 800, 800, 1200, "BARO" )
A2ADispatcher:SetSquadronCapInterval( "BLUECAPDUBAI", 2, 24, 700, 2 )

-------------------------------------------------------------------------------------------------------------------
--DEFINE THE GROUPING OF THE SQUADRONS
-------------------------------------------------------------------------------------------------------------------

--BLUECAPLIWA
A2ADispatcher:SetSquadronGrouping( "BLUECAPLIWA", 2 )
--BLUECAPFUJARAH
A2ADispatcher:SetSquadronGrouping( "BLUECAPFUJARAH", 2 )
--BLUECAPKHASAB
A2ADispatcher:SetSquadronGrouping( "BLUECAPKHASAB", 2 )
--BLUECAPDUBAI
A2ADispatcher:SetSquadronGrouping( "BLUECAPDUBAI", 2 )


-------------------------------------------------------------------------------------------------------------------
--DEFINE THE DEFAULT OVERHEAD FOR THE SQUADRONS, DEFAULT IS 1.0/1.5
-------------------------------------------------------------------------------------------------------------------

--BLUECAPLIWA
A2ADispatcher:SetSquadronOverhead( "BLUECAPLIWA", 1.0)
--BLUECAPFUJARAH
A2ADispatcher:SetSquadronOverhead( "BLUECAPFUJARAH", 1.0)
--BLUECAPKHASAB
A2ADispatcher:SetSquadronOverhead( "BLUECAPKHASAB", 1.0)
--BLUECAPDUBAI
A2ADispatcher:SetSquadronOverhead( "BLUECAPDUBAI", 1.0)

-------------------------------------------------------------------------------------------------------------------
 -- DET THE DEFAULT FUEL THRESHOLD
-------------------------------------------------------------------------------------------------------------------

 --A2ADispatcher:SetSquadronFuelThreshold( "BLUESX", 0.30 )  -- Go RTB when only 30% of fuel remaining in the tank.
 --A2ADispatcher:SetSquadronFuelThreshold( "BLUESX", 0.30 )  
 --A2ADispatcher:SetSquadronRefuelThreshold( "BLUESX", 0.30 ) 


-------------------------------------------------------------------------------------------------------------------
-- TEST AA INTERCEPT BY AWACS
-------------------------------------------------------------------------------------------------------------------

AIDispatcher = AI_A2A_GCICAP:New( { "AWACS" } )
AIDispatcher:SetBorderZone( {BlueZone} )
AIDispatcher:SetDefaultTakeoffInAirAltitude( 12000 )

NATOA2ATemplates = {
    "BLUESQ F15 1",
    "BLUESQ F15 2",
    "BLUESQ F16 1",
    "BLUESQ F16 2",
    "BLUESQ F18 1",
    "BLUESQ M2000 1",
    "BLUESQ M2000 2",
    "BLUESQ M2000 3",
    "BLUESQ F14 2",
    "BLUESQ F14 2"
    }


 AIDispatcher:SetSquadron( "INTERCEPT1", AIRBASE.PersianGulf.Al_Minhad_AB, NATOA2ATemplates, 10 )
 AIDispatcher:SetSquadronGci( "INTERCEPT1", 650, 1600 )

 AIDispatcher:SetSquadron( "INTERCEPT2", AIRBASE.PersianGulf.Al_Dhafra_AB, NATOA2ATemplates, 10 )
 AIDispatcher:SetSquadronGci( "INTERCEPT2", 650, 1600 )




