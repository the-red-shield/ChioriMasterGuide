# Chiori Master Guide

A comprehensive Ruby-based guide and damage calculator for Chiori, a Geo character in Genshin Impact.

## Overview

This project contains multiple damage calculators for different builds and constellation levels, teammate synergy analysis, and team composition recommendations for Chiori, all structured using proper Ruby programming practices.

## Features

- ✅ Comprehensive character database with 12+ Geo teammates
- ✅ Multiple build calculators for different constellation levels (C0 and C6)
- ✅ Team composition recommendations by constellation level
- ✅ Build comparison tools for each artifact set variant (Husk vs Troupe)
- ✅ Role-specific builds (Main DPS, Sub-DPS, Duo Geo)
- ✅ Teammate damage contribution analysis

## Project Structure

ChioriMasterGuide/
├── Chiori.rb                             # Main synergy guide
├── PROJECT_OVERVIEW.rb                   # Overview file
├── C6DPS/                                # C6 Main DPS builds
│   ├── C6Husk.rb                         # C6 Husk build calculator
│   └── C6Troupe.rb                       # C6 Troupe build calculator
├── C0SubDPS/                             # C0 Sub-DPS builds
│   ├── C0SubDps1Husk.rb                  # Team 1 Husk build
│   ├── C0SubDps1Troupe.rb                # Team 1 Troupe build
│   ├── C0SubDps2Husk.rb                  # Team 2 Husk build
│   └── C0SubDps2Troupe.rb                # Team 2 Troupe build
├── DuoGeoAnyTeamUraku/                   # Duo Geo Uraku builds
│   ├── DuoGeoC0SoloHusk.rb               # Uraku Husk build
│   └── DuoGeoC0SoloTroupe.rb             # Uraku Troupe build
├── DuoGeoAnyTeamFoE/                     # Duo Geo FoE builds
│   ├── DuoGeoC0SFoESoloHusk.rb           # FoE Husk build
│   └── DuoGeoC0FoESoloTroupe.rb          # FoE Troupe build
└── TeammateDmgContribution/              # Teammate analysis
    ├── AyatoC0R1.rb                      # Ayato contribution
    ├── BennetC5.rb                       # Bennett contribution
    ├── GorouC6.rb                        # Gorou contribution
    ├── HuTaoC0R1.rb                      # Hu Tao contribution
    ├── XianglingC0.rb                    # Xiangling contribution
    ├── XilonenC0R1.rb                    # Xilonen C0 contribution
    ├── XilonenC2R1.rb                    # Xilonen C2 contribution
    ├── YelanC0R1.rb                      # Yelan contribution
    └── ZhongliC0.rb                      # Zhongli contribution

## How to Use

### Requirements

- Ruby (version 2.7.0 or higher recommended)

### Running Individual Files

```bash
# Display full synergy guide
ruby Chiori.rb                                    

# Show C6 Husk build damage summary
ruby C6DPS/C6Husk.rb                             

# Show C0 Sub-DPS Team 1 Husk damage
ruby C0SubDPS/C0SubDps1Husk.rb                   

# Show C0 Duo Geo Uraku Husk damage
ruby DuoGeoAnyTeamUraku/DuoGeoC0SoloHusk.rb      
```

### Interactive Usage Examples

```ruby
# Load the main guide
require_relative 'Chiori'
guide = ChioriGuide.new

# Search for support characters
supports = guide.search_by_role("support")

# Get team recommendations for C6 Chiori
c6_teams = guide.get_team_recommendations("C6")

# Compare different builds
require_relative 'C0SubDPS/C0SubDps1Husk'
require_relative 'C0SubDPS/C0SubDps1Troupe'

husk_calc = ChioriC0SubDPSHuskCalculator.new
troupe_calc = ChioriC0SubDPSTroupeCalculator.new

# Show comparison between builds
husk_calc.compare_with_troupe(troupe_calc)
```

## Build Comparison Highlights

### C6 Husk Build vs C6 Troupe Build

- **Husk**: Higher DEF (3080 vs 2566), better sustained damage
- **Husk**: +24% Geo DMG Bonus over Troupe, stronger defensive scaling
- **Troupe**: Higher ATK (2724 vs 1695), +25% Elemental Skill DMG off-field
- **Troupe**: Better burst damage potential

### C0 Sub-DPS vs C6 Main DPS

- **C6**: Substantial DEF scaling for Normal Attacks (235% of DEF)
- **C6**: Higher overall damage ceiling with optimal teams
- **C0 Sub-DPS**: Strong off-field damage with less field time required
- **C0 Sub-DPS**: More flexible team compositions

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Disclaimer

This project is fan-made content and is not affiliated with or endorsed by miHoYo/HoYoverse. Genshin Impact and all related characters, names, and terms are trademarks and copyrights of miHoYo/HoYoverse.
