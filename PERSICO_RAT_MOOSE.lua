do
    --------------------------------------------------------------------    
    --------------------RAT - RANDOM AIR TRAFFIC------------------------
    ----SERVE PER SPAWNARE UN TRAFFICO AEREO RANDOMICO SULL'AO----------
    --------------------------------------------------------------------
    
    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER C17
    --------------------------------------------------------------------
    
    local C17=RAT:New("C17")
    C17:SetDeparture({"Al Dhafra AFB", "Al Minhad AFB", "Khasab"})
    C17:SetDestination({"Liwa AFB", "Al Dhafra AFB", "Al Minhad AFB", "Khasab"})
    C17:SetEPLRS(true)
    C17:SetTakeoff("cold")
    C17:SetTerminalType(AIRBASE.TerminalType.OpenBig)
 
    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER C5 GALAXY
    --------------------------------------------------------------------
    
    local C5=RAT:New("C5")
    C5:SetDeparture({"Al Dhafra AFB", "Al Minhad AFB", "Sharjah Intl"})
    C5:SetDestination({"Liwa AFB", "Al Dhafra AFB", "Al Minhad AFB", "Khasab", "Sharjah Intl"})
    C5:SetEPLRS(true)
    C5:SetTakeoff("cold")
    C5:SetTerminalType(AIRBASE.TerminalType.OpenBig)

    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER C130 HERCULES MOD
    --------------------------------------------------------------------

    local C130=RAT:New("C130")
    C130:SetDeparture({"Liwa AFB", "Al Dhafra AFB", "Al Minhad AFB", "Sharjah Intl"})
    C130:SetDestination({"Liwa AFB", "Al Dhafra AFB", "Al Minhad AFB", "Khasab", "Sharjah Intl"})
    C130:SetEPLRS(true)
    C130:SetTakeoff("cold")
    C130:SetTerminalType(AIRBASE.TerminalType.OpenBig)
   
    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER BOEING 727
    --------------------------------------------------------------------
    
    local b727=RAT:New("RAT-727")
    b727:SetDeparture({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b727:SetDestination({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b727:SetEPLRS(true)
    b727:SetTakeoff("cold")
    b727:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    local b7271=RAT:New("RAT-727-1")
    b7271:SetDeparture({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7271:SetDestination({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7271:SetEPLRS(true)
    b7271:SetTakeoff("cold")
    b7271:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER BOEING 737
    --------------------------------------------------------------------
    
    local b737=RAT:New("RAT-737")
    b737:SetDeparture({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b737:SetDestination({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b737:SetEPLRS(true)
    b737:SetTakeoff("cold")
    b737:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    local b7371=RAT:New("RAT-737-1")
    b7371:SetDeparture({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7371:SetDestination({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7371:SetEPLRS(true)
    b7371:SetTakeoff("cold")
    b7371:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    local b7372=RAT:New("RAT-737-2")
    b7372:SetDeparture({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7372:SetDestination({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7372:SetEPLRS(true)
    b7372:SetTakeoff("cold")
    b7372:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER BOEING 747
    --------------------------------------------------------------------
    
    local b747=RAT:New("RAT-747")
    b747:SetDeparture({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b747:SetDestination({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b747:SetEPLRS(true)
    b747:SetTakeoff("cold")
    b747:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    local b7471=RAT:New("RAT-747-1")
    b7471:SetDeparture({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7471:SetDestination({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7471:SetEPLRS(true)
    b7471:SetTakeoff("cold")
    b7471:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER BOEING 757
    --------------------------------------------------------------------
    
    local b757=RAT:New("RAT-757")
    b757:SetDeparture({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b757:SetDestination({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b757:SetEPLRS(true)
    b757:SetTakeoff("cold")
    b757:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    local b7571=RAT:New("RAT-757-1")
    b7571:SetDeparture({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7571:SetDestination({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7571:SetEPLRS(true)
    b7571:SetTakeoff("cold")
    b7571:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    local b7572=RAT:New("RAT-757-2")
    b7572:SetDeparture({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7572:SetDestination({"Al Ain Intl", "Sas al Nakheel", "Abu Dhabi Intl", "Al Maktoum Intl", "Dubai Intl", "Sharjah Intl", "Ras Al Khaimah Intl", "Fujairah Intl"})
    b7572:SetEPLRS(true)
    b7572:SetTakeoff("cold")
    b7572:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER ILYUSHIN IL-76
    --------------------------------------------------------------------
    
    local il76=RAT:New("RAT-IL76")
    il76:SetDeparture({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    il76:SetDestination({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    il76:SetEPLRS(true)
    il76:SetTakeoff("cold")
    il76:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    local il761=RAT:New("RAT-IL76-1")
    il761:SetDeparture({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    il761:SetDestination({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    il761:SetEPLRS(true)
    il761:SetTakeoff("cold")
    il761:SetTerminalType(AIRBASE.TerminalType.OpenBig)

    local il762=RAT:New("RAT-IL76-2")
    il762:SetDeparture({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    il762:SetDestination({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    il762:SetEPLRS(true)
    il762:SetTakeoff("cold")
    il762:SetTerminalType(AIRBASE.TerminalType.OpenBig)

    local il763=RAT:New("RAT-IL76-3")
    il763:SetDeparture({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    il763:SetDestination({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    il763:SetEPLRS(true)
    il763:SetTakeoff("cold")
    il763:SetTerminalType(AIRBASE.TerminalType.OpenBig)

    local il764=RAT:New("RAT-IL76-4")
    il764:SetDeparture({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    il764:SetDestination({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    il764:SetEPLRS(true)
    il764:SetTakeoff("cold")
    il764:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER ANTONOV C130 IRAN
    --------------------------------------------------------------------
    
    local C130IRAN=RAT:New("C130IRAN")
    C130IRAN:SetDeparture({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    C130IRAN:SetDestination({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    C130IRAN:SetEPLRS(true)
    C130IRAN:SetTakeoff("cold")
    C130IRAN:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER P3C ORION
    --------------------------------------------------------------------
    
    local P3C=RAT:New("RAT-P3C")
    P3C:SetDeparture({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    P3C:SetDestination({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    P3C:SetEPLRS(true)
    P3C:SetTakeoff("cold")
    P3C:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    --------------------------------------------------------------------
    --SCRIPT DI SPAWN RAT PER YAKOVLEV YAK-40
    --------------------------------------------------------------------
    
    local A320IRAN=RAT:New("RAT-A320IRAN")
    A320IRAN:SetDeparture({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    A320IRAN:SetDestination({"Shiraz Intl", "Kerman", "Jiroft", "Lavan Island", "Bandar Lengeh", "Qeshm Island", "Havadarya", "Bandar Abbas Intl", "Bandar-e-Jask"})
    A320IRAN:SetEPLRS(true)
    A320IRAN:SetTakeoff("cold")
    A320IRAN:SetTerminalType(AIRBASE.TerminalType.OpenBig)
    
    --------------------------------------------------------------------
    --DEFINE THE MAX NUMBER OF CIVILIAN PLANE AND THE GROUPS DISTRIBUTION
    --------------------------------------------------------------------
    local manager=RATMANAGER:New(20)
    manager:Add(C17, 1)
    manager:Add(C5, 1)
    manager:Add(C130, 1)
    manager:Add(b727, 1)
    manager:Add(b7271, 1)
    manager:Add(b737, 1)
    manager:Add(b7371, 1)
    manager:Add(b7372, 1)
    manager:Add(b747, 1)
    manager:Add(b7471, 1)
    manager:Add(b757, 1)
    manager:Add(b7571, 1)
    manager:Add(b7572, 1)
    manager:Add(il76, 1)
    manager:Add(il761, 1)
    manager:Add(il762, 1)
    manager:Add(il763, 1)
    manager:Add(il764, 1)
    manager:Add(C130IRAN, 1)
    manager:Add(P3C, 1)
    manager:Add(A320IRAN, 1)
    
    --------------------------------------------------------------------
    --DEFINE THE STARTING TIME FOR THE RAT AND THE STOP FUNCION IN SECONDS
    --------------------------------------------------------------------
    manager:Start (30)
    manager:Stop(14400)
    
    end