INCLUDE Irvine32.inc

TOTAL_CARS EQU 50

.data

; 50-vehicle database
car00 BYTE "Suzuki Mehran (800cc)", 0
car01 BYTE "Suzuki Alto (660cc)", 0
car02 BYTE "Suzuki Cultus (1.0L)", 0
car03 BYTE "Suzuki Wagon R (1.0L)", 0
car04 BYTE "Suzuki Swift (1.2L)", 0
car05 BYTE "Suzuki Bolan (Carry)", 0
car06 BYTE "Suzuki Khyber (1.0L)", 0
car07 BYTE "Suzuki Ciaz (1.4L)", 0
car08 BYTE "Suzuki Every (660cc)", 0
car09 BYTE "Prince Pearl (800cc)", 0
car10 BYTE "United Bravo (800cc)", 0
car11 BYTE "Daihatsu Mira (660cc)", 0
car12 BYTE "Daihatsu Move (660cc)", 0
car13 BYTE "Toyota Corolla 1.3L", 0
car14 BYTE "Toyota Corolla 1.6L", 0
car15 BYTE "Toyota Corolla 1.8L", 0
car16 BYTE "Toyota Yaris 1.3L", 0
car17 BYTE "Toyota Yaris 1.5L", 0
car18 BYTE "Toyota Vitz (1.0L)", 0
car19 BYTE "Toyota Passo (1.0L)", 0
car20 BYTE "Toyota Aqua (1.5H)", 0
car21 BYTE "Toyota Prius (1.8L)", 0
car22 BYTE "Toyota Corolla Cross (1.8L)", 0
car23 BYTE "Toyota Mark X (2.5L)", 0
car24 BYTE "Toyota Crown (3.0L)", 0
car25 BYTE "Toyota Prado (2.7L)", 0
car26 BYTE "Toyota Fortuner (2.7)", 0
car27 BYTE "Toyota Hilux Revo (2.8L)", 0
car28 BYTE "Toyota Land Cruiser V8 (4.7L)", 0
car29 BYTE "Honda Civic Rebirth (1.8L)", 0
car30 BYTE "Honda Civic X (1.8L)", 0
car31 BYTE "Honda Civic X (1.5T)", 0
car32 BYTE "Honda City 1.2L", 0
car33 BYTE "Honda City 1.5L", 0
car34 BYTE "Honda BR-V (1.5L)", 0
car35 BYTE "Honda Vezel (1.5H)", 0
car36 BYTE "Honda Accord (2.4L)", 0
car37 BYTE "KIA Picanto (1.0L)", 0
car38 BYTE "KIA Stonic (1.4L)", 0
car39 BYTE "KIA Sportage (2.0L)", 0
car40 BYTE "KIA Sorento (2.4L)", 0
car41 BYTE "Hyundai Elantra (2.0L)", 0
car42 BYTE "Hyundai Tucson (2.0L)", 0
car43 BYTE "Hyundai Sonata (2.0L)", 0
car44 BYTE "Changan Alsvin (1.5L)", 0
car45 BYTE "Changan Karvaan (1.0L)", 0
car46 BYTE "MG HS (1.5T)", 0
car47 BYTE "Haval H6 (1.5T)", 0
car48 BYTE "DFSK Glory 580 Pro", 0
car49 BYTE "BAIC BJ40 Plus (2.0T)", 0

carNames DWORD OFFSET car00, OFFSET car01, OFFSET car02, OFFSET car03, OFFSET car04, OFFSET car05, OFFSET car06, OFFSET car07, OFFSET car08, OFFSET car09
    DWORD OFFSET car10, OFFSET car11, OFFSET car12, OFFSET car13, OFFSET car14, OFFSET car15, OFFSET car16, OFFSET car17, OFFSET car18, OFFSET car19
    DWORD OFFSET car20, OFFSET car21, OFFSET car22, OFFSET car23, OFFSET car24, OFFSET car25, OFFSET car26, OFFSET car27, OFFSET car28, OFFSET car29
    DWORD OFFSET car30, OFFSET car31, OFFSET car32, OFFSET car33, OFFSET car34, OFFSET car35, OFFSET car36, OFFSET car37, OFFSET car38, OFFSET car39
    DWORD OFFSET car40, OFFSET car41, OFFSET car42, OFFSET car43, OFFSET car44, OFFSET car45, OFFSET car46, OFFSET car47, OFFSET car48, OFFSET car49

tankCapacities DWORD 30, 27, 35, 35, 37, 36, 33, 42, 37, 27
    DWORD 30, 28, 30, 55, 55, 55, 42, 42, 42, 38
    DWORD 36, 45, 36, 70, 71, 87, 80, 80, 93, 50
    DWORD 47, 47, 40, 40, 42, 40, 65, 35, 45, 62
    DWORD 70, 50, 62, 60, 40, 40, 55, 60, 58, 75

cityAcOff DWORD 15, 18, 14, 14, 12, 12, 13, 13, 14, 14
    DWORD 13, 18, 17, 12, 11, 10, 13, 12, 14, 15
    DWORD 20, 19, 19, 8, 7, 6, 7, 8, 5, 10
    DWORD 10, 11, 13, 12, 11, 16, 8, 11, 12, 9
    DWORD 8, 10, 9, 9, 12, 10, 9, 10, 8, 7

cityAcOn DWORD 13, 16, 12, 12, 10, 10, 11, 11, 12, 12
    DWORD 11, 16, 15, 10, 9, 8, 11, 10, 12, 13
    DWORD 18, 17, 17, 6, 5, 4, 5, 6, 4, 8
    DWORD 8, 9, 11, 10, 9, 14, 6, 9, 10, 7
    DWORD 6, 8, 7, 7, 10, 8, 7, 8, 6, 5

hwyAcOff DWORD 18, 22, 17, 17, 15, 14, 16, 16, 17, 17
    DWORD 16, 22, 21, 15, 14, 13, 16, 15, 17, 18
    DWORD 23, 22, 21, 11, 10, 8, 9, 10, 7, 13
    DWORD 13, 15, 16, 15, 14, 18, 11, 14, 15, 12
    DWORD 11, 13, 12, 13, 15, 12, 12, 13, 11, 9

hwyAcOn DWORD 16, 20, 15, 15, 13, 12, 14, 14, 15, 15
    DWORD 14, 20, 19, 13, 12, 11, 14, 13, 15, 16
    DWORD 21, 20, 19, 9, 8, 6, 7, 8, 5, 11
    DWORD 11, 13, 14, 13, 12, 16, 9, 12, 13, 10
    DWORD 9, 11, 10, 11, 13, 10, 10, 11, 9, 7

; shared trip and ECU state variables

tripConfigured BYTE 0 ; 0 = not planned yet, 1 = planned
selectedCarIdx DWORD 0
selectedTankCap DWORD 0
routeType DWORD 1 ; 1 = City, 2 = Highway
acState DWORD 1 ; 1 = AC Off, 2 = AC On
effectiveMileage DWORD 0

tripDistance DWORD 0
petrolRate DWORD 0
passengerCount DWORD 1
currentFuel DWORD 0

litersNeeded DWORD 0
totalCostPKR DWORD 0
perPersonCost DWORD 0
currentRangeKM DWORD 0
deficitLiters DWORD 0
topUpCostPKR DWORD 0
refuelRequired BYTE 0 ; 0 = No, 1 = Yes

telematicsFlag BYTE 0 ; 8-bit ECU status register
co2EmissionsKG DWORD 0
ecoGradeChar BYTE 'B'

; menu and prompt strings

appTitle BYTE "DRIVELOGIX: Embedded Vehicle Telematics & Trip Economy Engine", 0
menuHeader BYTE "--- MAIN CONSOLE MENU ---", 0
menuOpt1 BYTE "[1] Plan New Trip (Select Vehicle, Route, AC, Fuel & Cost Split)", 0
menuOpt2 BYTE "[2] Range & Refueling Validator (Tank Range vs Trip Distance)", 0
menuOpt3 BYTE "[3] Run 8-Bit ECU Telematics Diagnostics (Sensor Bitmask Check)", 0
menuOpt4 BYTE "[4] Display Trip Eco-Analytics (CO2 Emissions & Driver Grade)", 0
menuOpt5 BYTE "[5] Save Trip Diagnostic Report to File (DriveLogix_Report.txt)", 0
menuOpt6 BYTE "[6] Exit DriveLogix Engine", 0
promptMenu BYTE "Enter your choice [1 - 6]: ", 0
msgInvalid BYTE "Invalid input! Please enter a valid number within range.", 0
msgNoTrip BYTE "Please plan a trip first using Option [1]!", 0

; module 1 strings

catHeader BYTE "--- PAKISTANI VEHICLE CATALOG (ID: 0 to 49) ---", 0
catBracketL BYTE "[", 0
catBracketR BYTE "] ", 0
catSpacer BYTE "  |  ", 0
promptCarID BYTE "Enter Vehicle ID [0 - 49]: ", 0
promptRoute BYTE "Select Route Type (1 = City Urban, 2 = Highway/Motorway): ", 0
promptAC BYTE "Select Climate Control (1 = AC Off, 2 = AC On): ", 0
msgCarSel BYTE "Selected Vehicle  : ", 0
msgTankCap BYTE "Fuel Tank Capacity: ", 0
msgEffMil BYTE "Effective Mileage : ", 0
msgKmL BYTE " km/L", 0
msgLiters BYTE " Liters", 0

; module 2 strings

promptDist BYTE "Enter Trip Distance (km): ", 0
promptRate BYTE "Enter Petrol Price (PKR/Liter): ", 0
promptPass BYTE "Enter Number of Passengers (min 1): ", 0
promptFuel BYTE "Enter Current Fuel in Tank (Liters): ", 0
m2Header BYTE "--- MODULE 2: FUEL & EXPENSE BREAKDOWN ---", 0
msgFuelReq BYTE "Total Fuel Required : ", 0
msgTotCost BYTE "Total Trip Expense  : PKR ", 0
msgPerPass BYTE "Cost Per Passenger  : PKR ", 0

; module 3 strings

m3Header BYTE "--- MODULE 3: RANGE & REFUELING VALIDATOR ---", 0
msgCurRange BYTE "Estimated Tank Range: ", 0
msgTripDist BYTE "Planned Trip Length : ", 0
msgKmUnit BYTE " km", 0
msgRangeOK BYTE "STATUS: Sufficient fuel in tank. No refueling stop required.", 0
msgRangeLow BYTE "ALERT : Mandatory refueling stop required before/during trip!", 0
msgDeficit BYTE "Fuel Deficit Needed : ", 0
msgTopUp BYTE "Minimum Top-Up Cost : PKR ", 0

; module 4 strings

m4Header BYTE "--- MODULE 4: 8-BIT ECU TELEMATICS DIAGNOSTICS ---", 0
promptSpeed BYTE "Enter Current Vehicle Speed (km/h): ", 0
promptRPM BYTE "Enter Current Engine RPM (e.g. 2500): ", 0
promptTemp BYTE "Enter Engine Coolant Temp (Celsius, e.g. 90): ", 0
msgRegBin BYTE "ECU 8-Bit Status Register (Binary): ", 0
msgEcuOK BYTE "[OK] All ECU parameters normal. Zero hazard flags active.", 0
msgBit0 BYTE "[HAZARD - BIT 0] OVERSPEED WARNING (> 120 km/h)!", 0
msgBit1 BYTE "[HAZARD - BIT 1] HIGH RPM WARNING (> 4500 RPM)!", 0
msgBit2 BYTE "[ADVISORY - BIT 2] LOW FUEL RESERVE WARNING (< 15% Tank Capacity)!", 0
msgBit3 BYTE "[HAZARD - BIT 3] ENGINE OVERHEATING (> 105 C)!", 0

; module 5 strings

m5Header BYTE "--- MODULE 5: ECO-ANALYTICS & CARBON FOOTPRINT ---", 0
msgCO2 BYTE "Estimated CO2 Emissions : ", 0
msgKgUnit BYTE " kg", 0
msgGradeA BYTE "Driver Efficiency Rating: GRADE A (Optimal Eco-Performance)", 0
msgGradeB BYTE "Driver Efficiency Rating: GRADE B (Moderate Consumption)", 0
msgGradeC BYTE "Driver Efficiency Rating: GRADE C (High Consumption / Hazard)", 0

; file output strings and buffer

fileName BYTE "DriveLogix_Report.txt", 0
fileHandle HANDLE ?
reportBuf BYTE 1024 DUP(0)
bufIdx DWORD 0

fLine2 BYTE "DRIVELOGIX: TRIP & TELEMATICS DIAGNOSTIC REPORT", 0Dh, 0Ah, 0
fVehicle BYTE "Vehicle Model: ", 0
fMileage BYTE "Effective Mileage: ", 0
fDistance BYTE "Trip Distance (km): ", 0
fFuelReq BYTE "Fuel Required (L): ", 0
fTotalCost BYTE "Total Cost (PKR): ", 0
fSplitCost BYTE "Per Passenger (PKR): ", 0
fRefuel BYTE "Refuel Deficit (L): ", 0
fCO2 BYTE "CO2 Footprint (kg): ", 0
fGrade BYTE "Eco Efficiency Grd: ", 0
fNewLine BYTE 0Dh, 0Ah, 0
msgFileOK BYTE "Report successfully saved to DriveLogix_Report.txt!", 0
msgFileErr BYTE "Error: Could not create output file.", 0
msgBye BYTE "Exiting DriveLogix Engine. Drive safely!", 0

.code

; main menu controller
main PROC
MenuLoop:
    call Clrscr
    mov eax, lightGreen + (black * 16)
    call SetTextColor
    mov edx, OFFSET appTitle
    call WriteString
    call Crlf
    call Crlf

    mov eax, white + (black * 16)
    call SetTextColor
    mov edx, OFFSET menuHeader
    call WriteString
    call Crlf
    mov edx, OFFSET menuOpt1
    call WriteString
    call Crlf
    mov edx, OFFSET menuOpt2
    call WriteString
    call Crlf
    mov edx, OFFSET menuOpt3
    call WriteString
    call Crlf
    mov edx, OFFSET menuOpt4
    call WriteString
    call Crlf
    mov edx, OFFSET menuOpt5
    call WriteString
    call Crlf
    mov edx, OFFSET menuOpt6
    call WriteString
    call Crlf
    call Crlf

    mov edx, OFFSET promptMenu
    call WriteString
    call ReadInt

    cmp eax, 1
    je DoOption1
    cmp eax, 2
    je DoOption2
    cmp eax, 3
    je DoOption3
    cmp eax, 4
    je DoOption4
    cmp eax, 5
    je DoOption5
    cmp eax, 6
    je ExitProgram

    mov eax, lightRed + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgInvalid
    call WriteString
    call Crlf
    call WaitMsg
    jmp MenuLoop

DoOption1:
    call Module1_SelectVehicle
    call Module2_FuelAndCost
    call Crlf
    call WaitMsg
    jmp MenuLoop

DoOption2:
    cmp tripConfigured, 0
    je NotReady
    call Module3_RangeValidator
    call Crlf
    call WaitMsg
    jmp MenuLoop

DoOption3:
    call Module4_TelematicsCheck
    call Crlf
    call WaitMsg
    jmp MenuLoop

DoOption4:
    cmp tripConfigured, 0
    je NotReady
    call Module5_EcoAnalytics
    call Crlf
    call WaitMsg
    jmp MenuLoop

DoOption5:
    cmp tripConfigured, 0
    je NotReady
    call SaveReportToFile
    call Crlf
    call WaitMsg
    jmp MenuLoop

NotReady:
    mov eax, yellow + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgNoTrip
    call WriteString
    call Crlf
    call WaitMsg
    jmp MenuLoop

ExitProgram:
    mov eax, lightGreen + (black * 16)
    call SetTextColor
    call Crlf
    mov edx, OFFSET msgBye
    call WriteString
    call Crlf
    exit
main ENDP

; module 1: vehicle catalog and parallel array lookup
Module1_SelectVehicle PROC
    call Clrscr
    mov eax, lightCyan + (black * 16)
    call SetTextColor
    mov edx, OFFSET catHeader
    call WriteString
    call Crlf

    ; displaying all 50 vehicles in 2 columns (25 rows)
    mov eax, lightGray + (black * 16)
    call SetTextColor
    mov esi, 0
    mov ecx, 25

CatalogLoop:
    ; left column (0 to 24)
    mov edx, OFFSET catBracketL
    call WriteString
    mov eax, esi
    call WriteDec
    mov edx, OFFSET catBracketR
    call WriteString
    mov edx, carNames[esi * 4]
    call WriteString

    ; right column (25 to 49)
    mov edx, OFFSET catSpacer
    call WriteString
    mov edi, esi
    add edi, 25
    mov edx, OFFSET catBracketL
    call WriteString
    mov eax, edi
    call WriteDec
    mov edx, OFFSET catBracketR
    call WriteString
    mov edx, carNames[edi * 4]
    call WriteString
    call Crlf

    inc esi
    loop CatalogLoop
    call Crlf

AskCarID:
    mov eax, white + (black * 16)
    call SetTextColor
    mov edx, OFFSET promptCarID
    call WriteString
    call ReadInt
    cmp eax, 0
    jl BadCar
    cmp eax, 49
    jg BadCar
    mov selectedCarIdx, eax
    jmp AskRoute

BadCar:
    mov eax, lightRed + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgInvalid
    call WriteString
    call Crlf
    jmp AskCarID

AskRoute:
    mov eax, white + (black * 16)
    call SetTextColor
    mov edx, OFFSET promptRoute
    call WriteString
    call ReadInt
    cmp eax, 1
    je ValidRoute
    cmp eax, 2
    je ValidRoute
    jmp AskRoute

ValidRoute:
    mov routeType, eax

AskAC:
    mov edx, OFFSET promptAC
    call WriteString
    call ReadInt
    cmp eax, 1
    je ValidAC
    cmp eax, 2
    je ValidAC
    jmp AskAC

ValidAC:
    mov acState, eax

    ; indexed lookup using esi * 4
    mov esi, selectedCarIdx
    mov eax, tankCapacities[esi * 4]
    mov selectedTankCap, eax

    cmp routeType, 1
    jne CheckHighway

    ; city mileage
    cmp acState, 1
    jne CityWithAC
    mov eax, cityAcOff[esi * 4]
    jmp StoreMileage

CityWithAC:
    mov eax, cityAcOn[esi * 4]
    jmp StoreMileage

CheckHighway:
    ; highway mileage
    cmp acState, 1
    jne HwyWithAC
    mov eax, hwyAcOff[esi * 4]
    jmp StoreMileage
HwyWithAC:
    mov eax, hwyAcOn[esi * 4]

StoreMileage:
    mov effectiveMileage, eax

    ; displaying selected vehicle summary
    call Crlf
    mov eax, lightGreen + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgCarSel
    call WriteString
    mov esi, selectedCarIdx
    mov edx, carNames[esi * 4]
    call WriteString
    call Crlf

    mov edx, OFFSET msgTankCap
    call WriteString
    mov eax, selectedTankCap
    call WriteDec
    mov edx, OFFSET msgLiters
    call WriteString
    call Crlf

    mov edx, OFFSET msgEffMil
    call WriteString
    mov eax, effectiveMileage
    call WriteDec
    mov edx, OFFSET msgKmL
    call WriteString
    call Crlf
    call Crlf
    ret

Module1_SelectVehicle ENDP

; module 2: fuel volume, PKR cost and passenger split

Module2_FuelAndCost PROC
    mov eax, white + (black * 16)
    call SetTextColor

AskDist:
    mov edx, OFFSET promptDist
    call WriteString
    call ReadInt
    cmp eax, 1
    jl AskDist
    mov tripDistance, eax

AskRate:
    mov edx, OFFSET promptRate
    call WriteString
    call ReadInt
    cmp eax, 1
    jl AskRate
    mov petrolRate, eax

AskPass:
    mov edx, OFFSET promptPass
    call WriteString
    call ReadInt
    cmp eax, 1
    jl AskPass
    mov passengerCount, eax

AskTank:
    mov edx, OFFSET promptFuel
    call WriteString
    call ReadInt
    cmp eax, 0
    jl AskTank
    mov currentFuel, eax

    ; liters needed = distance / effective mileage
    mov eax, tripDistance
    mov edx, 0
    div effectiveMileage
    cmp edx, 0 ; round up by 1 liter if remainder > 0
    je ExactLiters
    inc eax

ExactLiters:
    mov litersNeeded, eax

    ; total cost = liters needed * petrol rate
    mov eax, litersNeeded
    imul eax, petrolRate
    mov totalCostPKR, eax

    ; per-passenger cost = total cost / passenger count
    mov eax, totalCostPKR
    mov edx, 0
    div passengerCount
    mov perPersonCost, eax

    mov tripConfigured, 1

    ; display module 2 output
    call Crlf
    mov eax, lightCyan + (black * 16)
    call SetTextColor
    mov edx, OFFSET m2Header
    call WriteString
    call Crlf

    mov eax, white + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgFuelReq
    call WriteString
    mov eax, litersNeeded
    call WriteDec
    mov edx, OFFSET msgLiters
    call WriteString
    call Crlf

    mov edx, OFFSET msgTotCost
    call WriteString
    mov eax, totalCostPKR
    call WriteDec
    call Crlf

    mov edx, OFFSET msgPerPass
    call WriteString
    mov eax, perPersonCost
    call WriteDec
    call Crlf
    ret
Module2_FuelAndCost ENDP

; module 3: tank range check and refuel deficit detector


Module3_RangeValidator PROC
    call Clrscr
    mov eax, lightCyan + (black * 16)
    call SetTextColor
    mov edx, OFFSET m3Header
    call WriteString
    call Crlf
    call Crlf

    ; current range = current fuel * effective mileage
    mov eax, currentFuel
    imul eax, effectiveMileage
    mov currentRangeKM, eax

    mov eax, white + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgCurRange
    call WriteString
    mov eax, currentRangeKM
    call WriteDec
    mov edx, OFFSET msgKmUnit
    call WriteString
    call Crlf

    mov edx, OFFSET msgTripDist
    call WriteString
    mov eax, tripDistance
    call WriteDec
    mov edx, OFFSET msgKmUnit
    call WriteString
    call Crlf
    call Crlf

    mov eax, currentRangeKM
    cmp eax, tripDistance
    jl NeedsRefuel

    ; sufficient fuel
    mov refuelRequired, 0
    mov deficitLiters, 0
    mov topUpCostPKR, 0
    mov eax, lightGreen + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgRangeOK
    call WriteString
    call Crlf
    ret

NeedsRefuel:
    mov refuelRequired, 1
    mov eax, litersNeeded
    sub eax, currentFuel
    mov deficitLiters, eax

    imul eax, petrolRate
    mov topUpCostPKR, eax

    mov eax, yellow + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgRangeLow
    call WriteString
    call Crlf

    mov edx, OFFSET msgDeficit
    call WriteString
    mov eax, deficitLiters
    call WriteDec
    mov edx, OFFSET msgLiters
    call WriteString
    call Crlf

    mov edx, OFFSET msgTopUp
    call WriteString
    mov eax, topUpCostPKR
    call WriteDec
    call Crlf
    ret
Module3_RangeValidator ENDP

; module 4: 8-bit ECU telematics bitmask check

Module4_TelematicsCheck PROC
    call Clrscr
    mov eax, lightCyan + (black * 16)
    call SetTextColor
    mov edx, OFFSET m4Header
    call WriteString
    call Crlf
    call Crlf

    mov telematicsFlag, 0 ; reset 8-bit status register
    mov eax, white + (black * 16)
    call SetTextColor

    ; bit 0: speed > 120 km/h
    mov edx, OFFSET promptSpeed
    call WriteString
    call ReadInt
    cmp eax, 120
    jle CheckRPM
    or telematicsFlag, 00000001b

CheckRPM:
    ; bit 1: RPM > 4500
    mov edx, OFFSET promptRPM
    call WriteString
    call ReadInt
    cmp eax, 4500
    jle CheckTemp
    or telematicsFlag, 00000010b

CheckTemp:
    ; bit 3: coolant temp > 105 C
    mov edx, OFFSET promptTemp
    call WriteString
    call ReadInt
    cmp eax, 105
    jle CheckLowFuel
    or telematicsFlag, 00001000b

CheckLowFuel:
    ; bit 2: current fuel < 15% of tank capacity
    cmp tripConfigured, 0
    je DecodeFlags
    mov eax, currentFuel
    imul eax, 100
    mov ebx, selectedTankCap
    imul ebx, 15
    cmp eax, ebx
    jge DecodeFlags
    or telematicsFlag, 00000100b

DecodeFlags:
    call Crlf
    mov edx, OFFSET msgRegBin
    call WriteString
    movzx eax, telematicsFlag
    call WriteBin
    call Crlf
    call Crlf

    cmp telematicsFlag, 0
    jne EvaluateBits

    mov eax, lightGreen + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgEcuOK
    call WriteString
    call Crlf
    ret

EvaluateBits:
    ; testing bit 0 (overspeed)
    test telematicsFlag, 00000001b
    jz TestBit1
    mov eax, lightRed + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgBit0
    call WriteString
    call Crlf

TestBit1:
    ; testing bit 1 (high RPM)
    test telematicsFlag, 00000010b
    jz TestBit2
    mov eax, lightRed + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgBit1
    call WriteString
    call Crlf

TestBit2:
    ; testing bit 2 (low fuel advisory)
    test telematicsFlag, 00000100b
    jz TestBit3
    mov eax, yellow + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgBit2
    call WriteString
    call Crlf

TestBit3:
    ; testing bit 3 (Engine Overheating)
    test telematicsFlag, 00001000b
    jz DoneDecode
    mov eax, lightRed + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgBit3
    call WriteString
    call Crlf

DoneDecode:
    ret
Module4_TelematicsCheck ENDP

; module 5: eco-analytics and CO2 grader

Module5_EcoAnalytics PROC
    call Clrscr
    mov eax, lightCyan + (black * 16)
    call SetTextColor
    mov edx, OFFSET m5Header
    call WriteString
    call Crlf
    call Crlf

    ; CO2 emissions (kg) = liters needed * 2
    mov eax, litersNeeded
    shl eax, 1
    mov co2EmissionsKG, eax

    mov eax, white + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgCO2
    call WriteString
    mov eax, co2EmissionsKG
    call WriteDec
    mov edx, OFFSET msgKgUnit
    call WriteString
    call Crlf
    call Crlf

    ; checking if any critical hazard flags are active (bits 0, 1, 3)
    test telematicsFlag, 00001011b
    jnz AssignGradeC

    mov eax, effectiveMileage
    cmp eax, 10
    jl AssignGradeC

    cmp eax, 15
    jl AssignGradeB

    ; grade A (>= 15 km/L and no hazards)
    mov ecoGradeChar, 'A'
    mov eax, lightGreen + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgGradeA
    call WriteString
    call Crlf
    ret

AssignGradeB:
    mov ecoGradeChar, 'B'
    mov eax, yellow + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgGradeB
    call WriteString
    call Crlf
    ret

AssignGradeC:
    mov ecoGradeChar, 'C'
    mov eax, lightRed + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgGradeC
    call WriteString
    call Crlf
    ret
Module5_EcoAnalytics ENDP

; file export

SaveReportToFile PROC
    mov bufIdx, 0

    ; header
    mov esi, OFFSET fLine2
    call AppendStrToBuf


    ; vehicle name
    mov esi, OFFSET fVehicle
    call AppendStrToBuf
    mov eax, selectedCarIdx
    mov esi, carNames[eax * 4]
    call AppendStrToBuf
    mov esi, OFFSET fNewLine
    call AppendStrToBuf

    ; effective mileage
    mov esi, OFFSET fMileage
    call AppendStrToBuf
    mov eax, effectiveMileage
    call AppendNumToBuf
    mov esi, OFFSET fNewLine
    call AppendStrToBuf

    ; trip distance
    mov esi, OFFSET fDistance
    call AppendStrToBuf
    mov eax, tripDistance
    call AppendNumToBuf
    mov esi, OFFSET fNewLine
    call AppendStrToBuf

    ; fuel required
    mov esi, OFFSET fFuelReq
    call AppendStrToBuf
    mov eax, litersNeeded
    call AppendNumToBuf
    mov esi, OFFSET fNewLine
    call AppendStrToBuf

    ; total cost
    mov esi, OFFSET fTotalCost
    call AppendStrToBuf
    mov eax, totalCostPKR
    call AppendNumToBuf
    mov esi, OFFSET fNewLine
    call AppendStrToBuf

    ; per passenger cost
    mov esi, OFFSET fSplitCost
    call AppendStrToBuf
    mov eax, perPersonCost
    call AppendNumToBuf
    mov esi, OFFSET fNewLine
    call AppendStrToBuf

    ; refuel deficit
    mov esi, OFFSET fRefuel
    call AppendStrToBuf
    mov eax, deficitLiters
    call AppendNumToBuf
    mov esi, OFFSET fNewLine
    call AppendStrToBuf

    ; CO2 footprint
    mov esi, OFFSET fCO2
    call AppendStrToBuf
    mov eax, co2EmissionsKG
    call AppendNumToBuf
    mov esi, OFFSET fNewLine
    call AppendStrToBuf

    ; eco grade
    mov esi, OFFSET fGrade
    call AppendStrToBuf
    mov edi, bufIdx
    mov al, ecoGradeChar
    mov reportBuf[edi], al
    inc bufIdx
    mov esi, OFFSET fNewLine
    call AppendStrToBuf

    ; create, write and close file
    mov edx, OFFSET fileName
    call CreateOutputFile
    cmp eax, INVALID_HANDLE_VALUE
    je FileFailed
    mov fileHandle, eax

    mov eax, fileHandle
    mov edx, OFFSET reportBuf
    mov ecx, bufIdx
    call WriteToFile

    mov eax, fileHandle
    call CloseFile

    mov eax, lightGreen + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgFileOK
    call WriteString
    call Crlf
    ret

FileFailed:
    mov eax, lightRed + (black * 16)
    call SetTextColor
    mov edx, OFFSET msgFileErr
    call WriteString
    call Crlf
    ret
SaveReportToFile ENDP

AppendStrToBuf PROC
    mov edi, bufIdx
CopyCharLoop:
    mov al, [esi]
    cmp al, 0
    je DoneCopyStr
    mov reportBuf[edi], al
    inc esi
    inc edi
    jmp CopyCharLoop
DoneCopyStr:
    mov bufIdx, edi
    ret
AppendStrToBuf ENDP

; converts unsigned int in eax to ASCII digits and appends to reportBuf
AppendNumToBuf PROC
    mov ecx, 0 ; digit counter
    mov ebx, 10
ConvertLoop:
    mov edx, 0
    div ebx ; eax = quotient, edx = remainder
    add dl, '0' ; convert remainder to ASCII
    push edx ; push digit onto stack
    inc ecx
    cmp eax, 0
    jne ConvertLoop

    mov edi, bufIdx
PopDigitsLoop:
    pop eax
    mov reportBuf[edi], al
    inc edi
    loop PopDigitsLoop
    mov bufIdx, edi
    ret
AppendNumToBuf ENDP

END main