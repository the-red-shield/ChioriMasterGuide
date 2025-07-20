
# Chiori Master Guide

````markdown

A comprehensive Ruby-based guide and damage calculator for Chiori, a Geo character in Genshin Impact. This project includes extensive mathematical analysis, detailed constellation scaling, weapon comparisons, and team composition recommendations.

## Overview

This project contains multiple damage calculators for different builds and constellation levels, constellation scaling analysis, weapon comparisons, teammate synergy analysis, and team composition recommendations for Chiori, all structured using proper Ruby programming practices. The project also includes an extensive LaTeX document (`KQMwork.tex`) with detailed mathematical analysis and visual representations of damage scaling.

## Features

- ✅ Comprehensive character database with detailed stats and scaling information
- ✅ Full constellation scaling analysis (C0-C6) with R1 weapon calculations
- ✅ Multiple build calculators for different constellation levels (C0 and C6)
- ✅ Weapon comparison tools for Uraku Misugiri and Flute of Ezpitzal
- ✅ Team composition recommendations by constellation level
- ✅ Build comparison tools for each artifact set variant (Husk vs Troupe)
- ✅ Role-specific builds (Main DPS, Sub-DPS, Duo Geo)
- ✅ Teammate damage contribution analysis
- ✅ Detailed mathematical framework in LaTeX with graphical visualizations

## Project Structure

```
ChioriMasterGuide/
├── -GetStarted/                           # Core documentation and introductory files
│   ├── Chiori.rb                          # Main Chiori character guide
│   ├── ChioriStatistics.rb                # Complete character statistics
│   ├── KQMwork.tex                        # Comprehensive mathematical analysis document
│   ├── chioriAnalysis.pdf                 # Compiled PDF of the mathematical analysis
│   └── chiori_banner.png                  # Character banner image
├── AnyTwoGeoBaselineC0/                   # Baseline configurations for any 2-Geo team
│   ├── FoE/                               # Flute of Ezpitzal builds
│   │   ├── FoEHusk.rb                     # Flute of Ezpitzal with Husk artifacts
│   │   └── FoETroupe.rb                   # Flute of Ezpitzal with Troupe artifacts
│   └── Uraku/                             # Uraku Misugiri builds
│       ├── UrakuHusk.rb                   # Uraku Misugiri with Husk artifacts
│       └── UrakuTroupe.rb                 # Uraku Misugiri with Troupe artifacts
├── C0SubDpsTeams/                         # C0 Sub-DPS team configurations
│   ├── Husk1.rb                           # First Husk build variation
│   ├── Husk2.rb                           # Second Husk build variation
│   ├── Troupe1.rb                         # First Troupe build variation
│   └── Troupe2.rb                         # Second Troupe build variation
├── C6DpsTeams/                            # C6 Main DPS team configurations
│   ├── C6Husk.rb                          # C6 Husk build calculator
│   └── C6Troupe.rb                        # C6 Troupe build calculator
├── ConstellationScaling/                  # Detailed scaling analysis for each constellation
│   ├── baseConfig.rb                      # Base configuration for all scaling calculations
│   ├── C0R1Husk.rb                        # C0 with R1 weapon (Husk)
│   ├── C0R1Troupe.rb                      # C0 with R1 weapon (Troupe)
│   ├── C1R1Husk.rb                        # C1 with R1 weapon (Husk)
│   ├── C1R1Troupe.rb                      # C1 with R1 weapon (Troupe)
│   ├── C2R1Husk.rb                        # C2 with R1 weapon (Husk)
│   ├── C2R1Troupe.rb                      # C2 with R1 weapon (Troupe)
│   ├── C3R1Husk.rb                        # C3 with R1 weapon (Husk)
│   ├── C3R1Troupe.rb                      # C3 with R1 weapon (Troupe)
│   ├── C4R1Husk.rb                        # C4 with R1 weapon (Husk)
│   ├── C4R1Troupe.rb                      # C4 with R1 weapon (Troupe)
│   ├── C5R1Husk.rb                        # C5 with R1 weapon (Husk)
│   ├── C5R1Troupe.rb                      # C5 with R1 weapon (Troupe)
│   ├── C6R1Husk.rb                        # C6 with R1 weapon (Husk)
│   └── C6R1Troupe.rb                      # C6 with R1 weapon (Troupe)
├── TeammateDmgContribution/               # Teammate damage contribution analysis
│   ├── AyatoC0R1.rb                       # Ayato contribution
│   ├── BennetC5.rb                        # Bennett contribution
│   ├── GorouC6.rb                         # Gorou contribution
│   ├── HuTaoC0R1.rb                       # Hu Tao contribution
│   ├── XianglingC0.rb                     # Xiangling contribution
│   ├── XilonenC0R1.rb                     # Xilonen C0 contribution
│   ├── XilonenC2R1.rb                     # Xilonen C2 contribution
│   ├── YelanC0R1.rb                       # Yelan contribution
│   └── ZhongliC0.rb                       # Zhongli contribution
├── webpage/                               # Web page resources
│   └── pageformatting.xml                 # XML formatting for web display
├── Chiori.rb                              # Main integration point for all modules
├── ChioriStatistics.rb                    # Character statistics and scaling values
├── CONTRIBUTING.md                        # Guidelines for contributors
├── LICENSE                                # MIT License
├── PROJECT_OVERVIEW.rb                    # Project overview and documentation
└── README.md                              # This file
```

## How to Use

### Requirements

- Ruby (version 2.7.0 or higher recommended)
- LaTeX compiler (for viewing/modifying the mathematical analysis)

### Running Individual Files

```bash
# Display full synergy guide
ruby -GetStarted/Chiori.rb

# Show constellation scaling analysis for C6 with Husk artifacts
ruby ConstellationScaling/C6R1Husk.rb

# Show C6 Husk build damage summary
ruby C6DpsTeams/C6Husk.rb

# Show C0 Sub-DPS Team Husk damage
ruby C0SubDpsTeams/Husk1.rb

# Compare Uraku vs Flute of Ezpitzal with Husk artifacts
ruby AnyTwoGeoBaselineC0/Uraku/UrakuHusk.rb
ruby AnyTwoGeoBaselineC0/FoE/FoEHusk.rb
```

### Interactive Usage Examples

```ruby
# Load the main guide
require_relative '-GetStarted/Chiori'
guide = ChioriGuide.new

# Search for support characters
supports = guide.search_by_role("support")

# Get team recommendations for C6 Chiori
c6_teams = guide.get_team_recommendations("C6")

# Compare different builds
require_relative 'C0SubDpsTeams/Husk1'
require_relative 'C0SubDpsTeams/Troupe1'

husk_calc = ChioriC0SubDPSHuskCalculator.new
troupe_calc = ChioriC0SubDPSTroupeCalculator.new

# Show comparison between builds
husk_calc.compare_with_troupe(troupe_calc)
```

## Key Analysis Highlights

### Constellation Impact

- **C0**: Strong off-field Sub-DPS with DEF scaling on Elemental Skill and Burst
- **C1**: Improved AoE for Tamoto and additional Tamoto generation with Geo teammates
- **C2**: Introduces Kinu dolls, significantly increasing off-field damage potential
- **C3**: +3 levels to Elemental Skill for increased damage scaling
- **C4**: Enhanced follow-up effects with additional Kinu generation
- **C5**: +3 levels to Elemental Burst for increased damage scaling
- **C6**: Transforms into powerful on-field Main DPS with 235% DEF scaling for Normal Attacks

### Weapon Comparison

- **Uraku Misugiri (5★)**: Higher Base ATK (542) and CRIT DMG (88.2%), providing a 14.6% damage advantage in sustained scenarios
- **Flute of Ezpitzal (4★)**: Lower Base ATK (455) but higher DEF% (68.97%), making it a competitive 4★ alternative

### Artifact Set Analysis

- **Husk of Opulent Dreams (4pc)**: 2.5% advantage for C0 Sub-DPS, provides DEF% and Geo DMG bonus
- **Golden Troupe (4pc)**: 9.5% advantage for C6 Main DPS, enhances Elemental Skill damage

## Mathematical Framework

The project includes a comprehensive mathematical analysis document (`KQMwork.tex`) that details:

- Complete damage formulas with ATK, DEF, and CRIT scaling
- Frame-by-frame analysis of attack sequences
- Constellation scaling calculations
- Artifact and weapon comparative analysis
- Team rotation optimization

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Disclaimer

This project is fan-made content and is not affiliated with or endorsed by miHoYo/HoYoverse. Genshin Impact and all related characters, names, and terms are trademarks and copyrights of miHoYo/HoYoverse.
````
