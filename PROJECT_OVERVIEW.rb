# PROJECT_OVERVIEW.rb
# ========================================
# CHIORI MASTER GUIDE - PROJECT DOCUMENTATION AND USAGE INSTRUCTIONS
# ========================================
# Guide Purpose: Comprehensive overview of all files and calculators in the Chiori Master Guide
# Includes: Complete file listing, usage instructions, and feature breakdown
# Best Used With: All calculator files for damage analysis and team optimization
# ========================================

class ProjectOverview
  def self.display_info
    puts <<~INFO
      ╔════════════════════════════════════════════════════════════════════╗
      ║                        CHIORI MASTER GUIDE                        ║
      ║                   Comprehensive Genshin Impact Guide              ║
      ╚════════════════════════════════════════════════════════════════════╝

      WHAT IS THIS PROJECT?
      =====================
      This is a comprehensive Ruby-based guide for Chiori, a Geo character in 
      Genshin Impact. The project contains multiple damage calculators for different
      builds and constellation levels, teammate synergy analysis, and team composition
      recommendations, all structured using proper Ruby programming practices.

      PROJECT FILES
      =============
      Main Files:
      • Chiori.rb                     - Main synergy guide and teammate database
      • PROJECT_OVERVIEW.rb           - This overview file
      • baseConfig.rb                 - Base configuration file for all calculators

      Constellation Scaling Analysis:
      • ConstellationScaling/C0R1Husk.rb     - C0 Husk of Opulent Dreams build
      • ConstellationScaling/C0R1Troupe.rb   - C0 Golden Troupe build
      • ConstellationScaling/C1R1Husk.rb     - C1 Husk of Opulent Dreams build
      • ConstellationScaling/C1R1Troupe.rb   - C1 Golden Troupe build
      • ConstellationScaling/C2R1Husk.rb     - C2 Husk of Opulent Dreams build
      • ConstellationScaling/C2R1Troupe.rb   - C2 Golden Troupe build
      • ConstellationScaling/C3R1Husk.rb     - C3 Husk of Opulent Dreams build
      • ConstellationScaling/C3R1Troupe.rb   - C3 Golden Troupe build
      • ConstellationScaling/C4R1Husk.rb     - C4 Husk of Opulent Dreams build
      • ConstellationScaling/C4R1Troupe.rb   - C4 Golden Troupe build
      • ConstellationScaling/C5R1Husk.rb     - C5 Husk of Opulent Dreams build
      • ConstellationScaling/C5R1Troupe.rb   - C5 Golden Troupe build
      • ConstellationScaling/C6R1Husk.rb     - C6 Husk of Opulent Dreams build
      • ConstellationScaling/C6R1Troupe.rb   - C6 Golden Troupe build

      C6 Main DPS Builds:
      • C6DpsTeams/C6Husk.rb               - C6 Main DPS Husk build calculator
      • C6DpsTeams/C6Troupe.rb             - C6 Main DPS Golden Troupe build calculator

      C0 Sub-DPS Team Builds:
      • C0SubDpsTeams/Husk1.rb     - C0 Sub-DPS Team 1 Husk build calculator
      • C0SubDpsTeams/Troupe1.rb   - C0 Sub-DPS Team 1 Troupe build calculator
      • C0SubDpsTeams/Husk2.rb     - C0 Sub-DPS Team 2 Husk build calculator
      • C0SubDpsTeams/Troupe2.rb   - C0 Sub-DPS Team 2 Troupe build calculator

      Any Two Geo Team Builds:
      • AnyTwoGeoBaseline/Uraku/C0Husk.rb     - C0 Any Two Geo Uraku Husk build calculator
      • AnyTwoGeoBaseline/Uraku/C0Troupe.rb   - C0 Any Two Geo Uraku Troupe build calculator
      • AnyTwoGeoBaseline/FoE/C0SFoEHusk.rb   - C0 Any Two Geo FoE Husk build calculator
      • AnyTwoGeoBaseline/FoE/C0FoETroupe.rb  - C0 Any Two Geo FoE Troupe build calculator

      Teammate Damage Contribution:
      • TeammateDmgContribution/AyatoC0R1.rb       - Ayato C0 R1 contribution calculator
      • TeammateDmgContribution/BennetC5.rb        - Bennett C5 contribution calculator
      • TeammateDmgContribution/GorouC6.rb         - Gorou C6 contribution calculator
      • TeammateDmgContribution/HuTaoC0R1.rb       - Hu Tao C0 R1 contribution calculator
      • TeammateDmgContribution/XianglingC0.rb     - Xiangling C0 contribution calculator
      • TeammateDmgContribution/XilonenC0R1.rb     - Xilonen C0 R1 contribution calculator
      • TeammateDmgContribution/XilonenC2R1.rb     - Xilonen C2 R1 contribution calculator
      • TeammateDmgContribution/YelanC0R1.rb       - Yelan C0 R1 contribution calculator
      • TeammateDmgContribution/ZhongliC0.rb       - Zhongli C0 contribution calculator

      WHAT EACH FILE DOES
      ===================
      
      1. Chiori.rb - The Master Guide
         • Comprehensive teammate synergy analysis
         • Detailed character ability breakdowns
         • Team composition database
         • Search functionality for characters and roles
         • Interactive methods for finding optimal teams
      
      2. baseConfig.rb - Base Configuration
         • Standard template for character stats
         • Core party setup with shared buffs and debuffs
         • Common target configuration for all calculators
         • Baseline configuration for comparison purposes
      
      3. Constellation Scaling Calculators (ConstellationScaling folder)
         • Detailed progression analysis from C0 to C6
         • Direct comparison between constellation levels
         • Damage calculation for each constellation
         • Side-by-side comparisons of Husk vs Golden Troupe sets
         • Properly formatted Ruby data structures for analysis
      
      4. C6 Main DPS Calculators (C6DpsTeams folder)
         • Character stats for C6 constellation
         • Comparison between Husk and Golden Troupe sets
         • Premium team optimization with Bennett/Gorou/Xilonen
         • Full DEF scaling with C6 benefits
         • Complete damage analysis for all talent levels
      
      5. C0 Sub-DPS Calculators (C0SubDpsTeams folder)
         • Two different team compositions (Team 1 and Team 2)
         • Off-field damage optimization
         • Husk vs Troupe comparisons for sub-DPS role
         • Detailed buff/debuff tracking with teammates
         • Role-specific damage calculations

      4. Duo Geo Team Calculators (DuoGeoAnyTeamFoE and DuoGeoAnyTeamUraku folders)
         • Flexible duo Geo team compositions
         • C0 focused builds with Geo resonance
         • Weapon variations (Flute of Ezpitzal vs Uraku Misugiri)
         • Solo carry potential analysis
         • Build comparisons with detailed tradeoffs
         
      5. Teammate Damage Contribution Calculators (TeammateDmgContribution folder)
         • Detailed analysis of each character's damage contribution
         • Buff/debuff tracking from support characters
         • Constellation-specific benefits
         • Weapon and artifact optimization
         • Synergy metrics with Chiori

      6. Any Two Geo Team Calculators (AnyTwoGeoBaseline folder)
         • Refined and renamed versions of the Duo Geo calculators
         • Organized by weapon type (Uraku vs FoE subfolders)
         • Streamlined naming convention for better readability
         • Enhanced formatting with proper Ruby data structures
         • Optimized comparison metrics for team variations

      CODE STRUCTURE
      ==============
      All calculator files follow a standardized structure:
      
      1. Class Structure:
         • Consistent class naming convention (Character + Constellation + Build + Calculator)
         • Standardized initialization with all component setup
         • Private methods for data setup
         • Public methods for display and comparison
      
      2. Component Organization:
         • Team composition setup
         • Character stat setup
         • Weapons configuration
         • Artifacts configuration
         • Target/enemy setup
         • Debuffs setup
         • Buffs setup
         • Damage calculations
      
      3. Output Methods:
         • display_damage_summary() - Shows full damage breakdown
         • display_team_synergy() - Shows team buff interactions
         • get_character_stats() - Returns character attributes
         • compare_with_*() - Compares with alternative builds

      HOW TO USE THIS PROJECT
      =======================
      
      Running Individual Files:
      -------------------------
      ruby Chiori.rb                                    # Display full synergy guide
      ruby C6DPS/C6Husk.rb                             # Show C6 Husk build damage summary
      ruby C6DPS/C6Troupe.rb                           # Show C6 Troupe build damage summary
      ruby C0SubDPS/C0SubDps1Husk.rb                   # Show C0 Sub-DPS Team 1 Husk damage
      ruby DuoGeoAnyTeamUraku/DuoGeoC0SoloHusk.rb      # Show C0 Duo Geo Uraku Husk damage

      Interactive Usage Examples:
      ----------------------------
      # Load the main guide
      require_relative 'Chiori'
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

      KEY FEATURES
      ============
      ✓ Structured Ruby classes with proper OOP design
      ✓ Comprehensive character database with 12+ Geo teammates
      ✓ Multiple build calculators for different constellation levels
      ✓ Interactive search and filtering capabilities
      ✓ Team composition recommendations by constellation level
      ✓ Build comparison tools for each artifact set variant
      ✓ Role-specific builds (Main DPS, Sub-DPS, Duo Geo)
      ✓ Extensible design for future characters and builds

      BUILD COMPARISON HIGHLIGHTS
      ===========================
      C6 Husk Build vs C6 Troupe Build:
      • Husk: Higher DEF (3080 vs 2566), better sustained damage
      • Husk: +24% Geo DMG Bonus over Troupe, stronger defensive scaling
      • Troupe: Higher ATK (2724 vs 1695), +25% Elemental Skill DMG off-field
      • Troupe: Better burst damage potential
      
      C0 Sub-DPS vs C6 Main DPS:
      • C6: Substantial DEF scaling for Normal Attacks (235% of DEF)
      • C6: Higher overall damage ceiling with optimal teams
      • C0 Sub-DPS: Strong off-field damage with less field time required
      • C0 Sub-DPS: More flexible team compositions
      
      Any Two Geo Team Variations:
      • Uraku Misugiri provides +16% Normal Attack and +24% Skill DMG
      • Flute of Ezpitzal provides enhanced DEF scaling
      • Husk builds provide more consistent Geo DMG and DEF scaling
      • Troupe builds excel in swap-heavy rotations with off-field damage

      Constellation Scaling Analysis:
      • Progressive damage increases from C0 to C6
      • C2 offers significant DEF conversion for skill damage
      • C4 provides notable team buff capabilities
      • C6 dramatically changes playstyle with NA/CA DEF scaling

      EXTENDING THE PROJECT
      ====================
      To add new calculators:
      
      1. Follow the existing file structure for consistency
      2. Use the appropriate naming convention
      3. Implement all required methods (setup_*, calculate_damage, display_*)
      4. Add proper usage examples at the end of the file
      5. Update this overview file to include your new calculator

      For detailed implementation guidelines, refer to the code comments in existing files.
    INFO
  end
  
  def self.list_all_files
    puts "All Project Files:"
    puts
    
    Dir.glob("**/*.rb").sort.each do |file|
      puts "• #{file}"
    end
  end
  
  def self.verify_project_structure
    puts "Verifying Project Structure..."
    
    # Check for required folders
    required_folders = ["C0SubDpsTeams", "C6DpsTeams", "ConstellationScaling", "AnyTwoGeoBaseline", "TeammateDmgContribution"]
    missing_folders = required_folders.reject { |folder| Dir.exist?(folder) }
    
    if missing_folders.empty?
      puts "✓ All required folders are present"
    else
      puts "✗ Missing folders: #{missing_folders.join(', ')}"
    end
    
    # Check for main files
    main_files = ["Chiori.rb", "PROJECT_OVERVIEW.rb", "baseConfig.rb"]
    missing_files = main_files.reject { |file| File.exist?(file) }
    
    if missing_files.empty?
      puts "✓ All main files are present"
    else
      puts "✗ Missing main files: #{missing_files.join(', ')}"
    end
    
    # Check for calculator files
    calculator_files = Dir.glob("**/*.rb") - main_files
    if calculator_files.any?
      puts "✓ Found #{calculator_files.count} calculator files"
    else
      puts "✗ No calculator files found"
    end
  end
  
  def self.quick_start
    puts <<~QUICKSTART
      QUICK START GUIDE
      =================
      1. Navigate to the project directory
      2. Run: ruby Chiori.rb
      3. Explore the interactive guide features
      4. Try the damage calculators in their respective folders:
         - ConstellationScaling/ for progression analysis from C0 to C6
         - C6DpsTeams/ for main DPS builds
         - C0SubDpsTeams/ for sub-DPS team variants
         - AnyTwoGeoBaseline/ for Geo team compositions
      5. Use the comparison methods to analyze build differences

      Need help? All classes have built-in help methods!
    QUICKSTART
  end

  def self.file_structure
    puts <<~STRUCTURE
      PROJECT STRUCTURE
      =================
      ChioriMasterGuide/
      ├── Chiori.rb                             # Main synergy guide
      ├── PROJECT_OVERVIEW.rb                   # This overview file
      ├── baseConfig.rb                         # Base configuration template
      ├── ConstellationScaling/                 # Constellation level analysis
      │   ├── C0R1Husk.rb                       # C0 Husk build calculator
      │   ├── C0R1Troupe.rb                     # C0 Troupe build calculator
      │   ├── C1R1Husk.rb                       # C1 Husk build calculator
      │   ├── C1R1Troupe.rb                     # C1 Troupe build calculator
      │   ├── C2R1Husk.rb                       # C2 Husk build calculator
      │   ├── C2R1Troupe.rb                     # C2 Troupe build calculator
      │   ├── C3R1Husk.rb                       # C3 Husk build calculator
      │   ├── C3R1Troupe.rb                     # C3 Troupe build calculator
      │   ├── C4R1Husk.rb                       # C4 Husk build calculator
      │   ├── C4R1Troupe.rb                     # C4 Troupe build calculator
      │   ├── C5R1Husk.rb                       # C5 Husk build calculator
      │   ├── C5R1Troupe.rb                     # C5 Troupe build calculator
      │   ├── C6R1Husk.rb                       # C6 Husk build calculator
      │   └── C6R1Troupe.rb                     # C6 Troupe build calculator
      ├── C6DpsTeams/                           # C6 Main DPS builds
      │   ├── C6Husk.rb                         # C6 Husk build calculator
      │   └── C6Troupe.rb                       # C6 Troupe build calculator
      ├── C0SubDpsTeams/                        # C0 Sub-DPS builds
      │   ├── Husk1.rb                  # Team 1 Husk build
      │   ├── Troupe1.rb                # Team 1 Troupe build
      │   ├── Husk2.rb                  # Team 2 Husk build
      │   └── Troupe2.rb                # Team 2 Troupe build
      ├── AnyTwoGeoBaseline/                    # Any Two Geo team builds
      │   ├── Uraku/                            # Uraku Misugiri builds
      │   │   ├── C0Husk.rb                     # Uraku Husk build
      │   │   └── C0Troupe.rb                   # Uraku Troupe build
      │   └── FoE/                              # Flute of Ezpitzal builds
      │       ├── C0FoEHusk.rb                  # FoE Husk build
      │       └── C0FoETroupe.rb                # FoE Troupe build
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

      Each .rb file is structured consistently and can be run independently!
    STRUCTURE
  end
end

# ========================================
# USAGE EXAMPLE
# ========================================
if __FILE__ == $0
  ProjectOverview.display_info
  puts "\n"
  ProjectOverview.quick_start
  puts "\n"
  ProjectOverview.file_structure
end
