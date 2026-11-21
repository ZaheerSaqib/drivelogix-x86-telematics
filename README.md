# DriveLogix — x86 Vehicle Telematics & Trip Economy Engine

A 32-bit x86 Assembly Language (`MASM`) console application built with the **Irvine32** library. DriveLogix models automotive Electronic Control Unit (ECU) logic, parallel-array vehicle lookup across 50 Pakistani vehicles, integer-based trip fuel/expense splitting, range validation, bitwise sensor diagnostics, and persistent text report generation.

---

## Core Modules & Features

1. **50-Vehicle Catalog & Indexed Lookup (`Module1_SelectVehicle`)**
   - Stores 50 Pakistani vehicle models across parallel `DWORD` arrays (`carNames`, `tankCapacities`, `cityAcOff`, `cityAcOn`, `hwyAcOff`, `hwyAcOn`).
   - Uses scaled indexed addressing (`[esi * 4]`) on an array of 32-bit string `OFFSET` pointers for constant-time $O(1)$ lookup across City/Highway routes and AC states.
2. **Fuel & Passenger Cost Split Engine (`Module2_FuelAndCost`)**
   - Computes required fuel volume with remainder ceiling rounding (`DIV`), total trip expense in PKR (`IMUL`), and equal per-passenger cost splitting.
3. **Autonomous Range & Refuel Validator (`Module3_RangeValidator`)**
   - Evaluates current tank range (`currentFuel * effectiveMileage`) against planned trip distance and calculates fuel deficit liters and minimum top-up cost when refueling is required.
4. **8-Bit ECU Telematics Bitmask Diagnostics (`Module4_TelematicsCheck`)**
   - Packs live sensor thresholds into an 8-bit status register (`telematicsFlag`) using bitwise `OR` and decodes individual flags non-destructively using `TEST`:
     - **Bit 0 (`01h`):** Overspeed Hazard (`> 120 km/h`)
     - **Bit 1 (`02h`):** High Engine Load / RPM Hazard (`> 4500 RPM`)
     - **Bit 2 (`04h`):** Low Fuel Reserve Advisory (`< 15%` tank capacity)
     - **Bit 3 (`08h`):** Engine Coolant Overheat Hazard (`> 105°C`)
5. **Eco-Analytics & CO2 Grader (`Module5_EcoAnalytics`)**
   - Estimates $\text{CO}_2$ emissions (`litersNeeded * 2` via `SHL`) and assigns a color-coded **Grade A, B, or C** based on effective mileage and active ECU hazard flags.
6. **File Report Export (`SaveReportToFile`)**
   - Converts 32-bit integers to ASCII characters via stack reversal (`DIV 10` + `PUSH`/`POP`) and exports a formatted diagnostic summary to `DriveLogix_Report.txt` using `CreateOutputFile`, `WriteToFile`, and `CloseFile`.

---

## Build & Run Instructions (Visual Studio x86)

### Prerequisites
- **Visual Studio 2022 / 2026** with **Desktop development with C++** installed.
- **Irvine32 Library** extracted to `C:\Irvine` (`Irvine32.inc`, `Irvine32.lib`, `SmallWin.inc`, `VirtualKeys.inc`).

### Setup Steps
1. Create an **Empty Project (C++)** in Visual Studio and set the active solution platform to **`x86`** (32-bit).
2. Right-click the project in Solution Explorer → **Build Dependencies → Build Customizations** → enable **`masm (.targets, .props)`**.
3. Add `DriveLogix.asm` to the project (`Add → Existing Item`).
4. Open **Project Properties**:
   - **Microsoft Macro Assembler → General → Include Paths:** add `C:\Irvine`
   - **Linker → General → Additional Library Directories:** add `C:\Irvine`
   - **Linker → Input → Additional Dependencies:** add `Irvine32.lib`
5. Build (`Ctrl + Shift + B`) and run (`Ctrl + F5`).

---

## Sample Output (`DriveLogix_Report.txt`)

```text
DRIVELOGIX: TRIP & TELEMATICS DIAGNOSTIC REPORT
Vehicle Model: Honda Civic X (1.8L)
Effective Mileage: 11
Trip Distance (km): 330
Fuel Required (L): 30
Total Cost (PKR): 9720
Per Passenger (PKR): 3240
Refuel Deficit (L): 25
CO2 Footprint (kg): 60
Eco Efficiency Grd: C