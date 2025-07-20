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

      C6 Main DPS Builds:
      • C6DPS/C6Husk.rb               - C6 Main DPS Husk build calculator
      • C6DPS/C6Troupe.rb             - C6 Main DPS Golden Troupe build calculator

      C0 Sub-DPS Builds:
      • C0SubDPS/C0SubDps1Husk.rb     - C0 Sub-DPS Team 1 Husk build calculator
      • C0SubDPS/C0SubDps1Troupe.rb   - C0 Sub-DPS Team 1 Troupe build calculator
      • C0SubDPS/C0SubDps2Husk.rb     - C0 Sub-DPS Team 2 Husk build calculator
      • C0SubDPS/C0SubDps2Troupe.rb   - C0 Sub-DPS Team 2 Troupe build calculator

      Duo Geo Team Builds:
      • DuoGeoAnyTeamUraku/DuoGeoC0SoloHusk.rb     - C0 Duo Geo Uraku Husk build calculator
      • DuoGeoAnyTeamUraku/DuoGeoC0SoloTroupe.rb   - C0 Duo Geo Uraku Troupe build calculator
      • DuoGeoAnyTeamFoE/DuoGeoC0SFoESoloHusk.rb   - C0 Duo Geo FoE Husk build calculator
      • DuoGeoAnyTeamFoE/DuoGeoC0FoESoloTroupe.rb  - C0 Duo Geo FoE Troupe build calculator

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
      
      2. C6 Main DPS Calculators (C6DPS folder)
         • Character stats for C6 constellation
         • Comparison between Husk and Golden Troupe sets
         • Premium team optimization with Bennett/Gorou/Xilonen
         • Full DEF scaling with C6 benefits
         • Complete damage analysis for all talent levels
      
      3. C0 Sub-DPS Calculators (C0SubDPS folder)
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
      require_relative 'C0SubDPS/C0SubDps1Husk'
      require_relative 'C0SubDPS/C0SubDps1Troupe'
      
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
      
      Duo Geo Team Variations:
      • Uraku Misugiri provides +16% Normal Attack and +24% Skill DMG
      • Flute of Ezpitzal provides enhanced DEF scaling
      • Husk builds provide more consistent Geo DMG and DEF scaling
      • Troupe builds excel in swap-heavy rotations with off-field damage

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
    required_folders = ["C0SubDPS", "C6DPS", "DuoGeoAnyTeamFoE", "DuoGeoAnyTeamUraku", "TeammateDmgContribution"]
    missing_folders = required_folders.reject { |folder| Dir.exist?(folder) }
    
    if missing_folders.empty?
      puts "✓ All required folders are present"
    else
      puts "✗ Missing folders: #{missing_folders.join(', ')}"
    end
    
    # Check for main files
    main_files = ["Chiori.rb", "PROJECT_OVERVIEW.rb"]
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
         - C6DPS/ for main DPS builds
         - C0SubDPS/ for sub-DPS team variants
         - DuoGeoAnyTeamUraku/ and DuoGeoAnyTeamFoE/ for Geo team comps
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
