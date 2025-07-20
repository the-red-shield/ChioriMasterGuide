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
      Genshin Impact. It contains multiple damage calculators, constellation 
      scaling analysis, weapon comparisons, artifact set evaluations, and team
      composition recommendations.
      
      The project includes a detailed mathematical analysis document (KQMwork.tex)
      that provides in-depth formulas, calculations, and visualizations for all
      aspects of Chiori's kit and performance across different investment levels.

      PROJECT STRUCTURE
      ================
      The project is organized into several directories, each focusing on specific
      aspects of Chiori's kit and team compositions:

      1. -GetStarted/
         - Core documentation and introductory materials
         - Includes comprehensive LaTeX analysis (KQMwork.tex)
         - Character statistics and base information

      2. ConstellationScaling/
         - Complete analysis of each constellation level (C0-C6)
         - Each file represents a specific constellation with R1 weapon
         - Separate files for Husk and Troupe artifact sets
         - Includes baseConfig.rb with shared configuration
      
      3. AnyTwoGeoBaselineC0/
         - Baseline configurations for any 2-Geo team comps
         - Separate directories for Uraku Misugiri and Flute of Ezpitzal
         - Each weapon directory contains both Husk and Troupe variants

      4. C0SubDpsTeams/
         - Focused on C0 Sub-DPS team configurations
         - Multiple Husk and Troupe build variations

      5. C6DpsTeams/
         - Optimized C6 Main DPS team configurations
         - Both Husk and Troupe artifact set options

      6. TeammateDmgContribution/
         - Detailed analysis of damage contributions from different teammates
         - Covers multiple support and sub-DPS characters
         - Includes constellation variations for certain characters

      MAIN FEATURES
      ============
      • Complete Constellation Analysis (C0-C6)
      • Weapon Comparison (Uraku Misugiri vs Flute of Ezpitzal)
      • Artifact Set Comparison (Husk vs Troupe)
      • Team Composition Optimization
      • Mathematical Framework for Damage Calculations
      • Teammate Synergy Analysis
      • Role-Specific Build Recommendations

      HOW TO USE THIS PROJECT
      ======================
      1. Start with the -GetStarted/Chiori.rb file for an overview
      2. Review KQMwork.tex for comprehensive mathematical analysis
      3. Use specific calculator files based on your constellation level
      4. For C0: Use C0SubDpsTeams/ directory
      5. For C6: Use C6DpsTeams/ directory
      6. For specific weapon analysis: Check AnyTwoGeoBaselineC0/
      7. For constellation progression: See ConstellationScaling/
      
      CALCULATIONS & METHODOLOGY
      =========================
      All damage calculations follow Genshin Impact's standard formula:
      Damage = Base Damage × DMG Bonus × CRIT × Enemy Multipliers
      
      Where:
      • Base Damage includes talent scaling, ATK, and DEF conversion
      • DMG Bonus includes elemental DMG%, passive bonuses, and artifact effects
      • CRIT calculated as 1 + (CRIT Rate × CRIT DMG)
      • Enemy multipliers account for DEF reduction and RES shred
      
      Standardized testing is performed against Level 100 enemies with 10% Geo RES,
      using realistic buff uptimes and consistent rotation sequences.
    INFO
  end

  def self.file_structure
    puts <<~STRUCTURE
      PROJECT STRUCTURE
      =================
      ChioriMasterGuide/
      ├── -GetStarted/                          # Core files
      │   ├── Chiori.rb                         # Main synergy guide
      │   ├── ChioriStatistics.rb               # Statistical analysis
      │   ├── KQMwork.tex                       # Mathematical analysis document
      │   ├── chioriAnalysis.pdf                # Compiled analysis document
      │   └── chiori_banner.png                 # Visual asset
      ├── PROJECT_OVERVIEW.rb                   # This overview file
      ├── README.md                             # Project README
      ├── ConstellationScaling/                 # Constellation level analysis
      │   ├── baseConfig.rb                     # Base configuration template
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
      │   ├── Husk1.rb                          # Team 1 Husk build
      │   ├── Troupe1.rb                        # Team 1 Troupe build
      │   ├── Husk2.rb                          # Team 2 Husk build
      │   └── Troupe2.rb                        # Team 2 Troupe build
      ├── AnyTwoGeoBaselineC0/                  # Any Two Geo team builds
      │   ├── Uraku/                            # Uraku Misugiri builds
      │   │   ├── UrakuHusk.rb                  # Uraku Husk build
      │   │   └── UrakuTroupe.rb                # Uraku Troupe build
      │   └── FoE/                              # Flute of Ezpitzal builds
      │       ├── FoEHusk.rb                    # FoE Husk build
      │       └── FoETroupe.rb                  # FoE Troupe build
      ├── TeammateDmgContribution/              # Teammate analysis
      │   ├── AyatoC0R1.rb                      # Ayato contribution
      │   ├── BennetC5.rb                       # Bennett contribution
      │   ├── GorouC6.rb                        # Gorou contribution
      │   ├── HuTaoC0R1.rb                      # Hu Tao contribution
      │   ├── XianglingC0.rb                    # Xiangling contribution
      │   ├── XilonenC0R1.rb                    # Xilonen C0 contribution
      │   ├── XilonenC2R1.rb                    # Xilonen C2 contribution
      │   ├── YelanC0R1.rb                      # Yelan contribution
      │   └── ZhongliC0.rb                      # Zhongli contribution
      └── webpage/                              # Web documentation
          └── pageformatting.xml                # Web formatting template

      Each .rb file is structured consistently and can be run independently!
    STRUCTURE
  end

  def self.usage_examples
    puts <<~EXAMPLES
      ╔════════════════════════════════════════════════════════════════════╗
      ║                        USAGE EXAMPLES                             ║
      ╚════════════════════════════════════════════════════════════════════╝

      COMMAND LINE USAGE:
      ==================
      # View the main character guide
      ruby -GetStarted/Chiori.rb
      
      # Run constellation scaling analysis
      ruby ConstellationScaling/C0R1Husk.rb  # For C0 analysis with Husk
      ruby ConstellationScaling/C6R1Troupe.rb  # For C6 analysis with Troupe
      
      # Run specific team calculations
      ruby C0SubDpsTeams/Husk1.rb  # For C0 Sub-DPS with Husk
      ruby C6DpsTeams/C6Troupe.rb  # For C6 Main DPS with Troupe
      
      # Compare weapons
      ruby AnyTwoGeoBaselineC0/Uraku/UrakuHusk.rb
      ruby AnyTwoGeoBaselineC0/FoE/FoEHusk.rb
      
      # Analyze teammate contributions
      ruby TeammateDmgContribution/GorouC6.rb  # For Gorou C6 analysis
      
      RUBY INTERACTIVE USAGE:
      ======================
      # Load the main guide
      require_relative '-GetStarted/Chiori'
      guide = ChioriGuide.new
      
      # Get constellation-specific information
      c0_info = guide.get_constellation_info(0)
      c6_info = guide.get_constellation_info(6)
      
      # Compare artifact sets
      husk_performance = guide.analyze_artifact_set("Husk", 6)  # For C6
      troupe_performance = guide.analyze_artifact_set("Troupe", 6)  # For C6
      
      # Run comparative analysis
      comparison = guide.compare_builds("Husk", "Troupe", 6)  # For C6
      
      # Generate comprehensive report
      guide.generate_report("full_analysis.txt")
    EXAMPLES
  end

  def self.key_findings
    puts <<~FINDINGS
      ╔════════════════════════════════════════════════════════════════════╗
      ║                         KEY FINDINGS                              ║
      ╚════════════════════════════════════════════════════════════════════╝

      CONSTELLATION IMPACT:
      ===================
      • C0: Strong off-field Sub-DPS with DEF scaling on Skill and Burst
      • C1: Improved AoE for Tamoto and additional Tamoto generation
      • C2: Introduces Kinu dolls, significantly increasing off-field damage
      • C3: +3 levels to Elemental Skill for increased damage scaling
      • C4: Enhanced follow-up effects with additional Kinu generation
      • C5: +3 levels to Elemental Burst for increased damage scaling
      • C6: Transforms into powerful on-field Main DPS with 235% DEF scaling
           for Normal Attacks
      
      WEAPON COMPARISON:
      ================
      • Uraku Misugiri (5★):
        - Base ATK: 542
        - CRIT DMG: 88.2%
        - Performance advantage: 14.6% in sustained scenarios
      
      • Flute of Ezpitzal (4★):
        - Base ATK: 455
        - DEF%: 68.97%
        - Competitive 4★ alternative with strong DEF scaling
      
      ARTIFACT SET ANALYSIS:
      ====================
      • Husk of Opulent Dreams (4pc):
        - 2.5% advantage for C0 Sub-DPS
        - Provides DEF% and Geo DMG bonus
        - Better for sustained damage scenarios
      
      • Golden Troupe (4pc):
        - 9.5% advantage for C6 Main DPS
        - Enhances Elemental Skill damage
        - Better for quick-swap and burst scenarios
      
      OPTIMAL TEAM COMPOSITIONS:
      ========================
      • C0 Sub-DPS:
        - Chiori + Geo Resonance Partner + 2 Flexible Slots
        - Best with Zhongli for shields and RES shred
      
      • C6 Main DPS:
        - Chiori + Gorou + Zhongli + Flex (Bennett/Yelan)
        - 142% damage increase over C0 when optimally built
    FINDINGS
  end
  
  def self.verify_project_structure
    puts "Verifying Project Structure..."
    
    # Check for required folders
    required_folders = ["C0SubDpsTeams", "C6DpsTeams", "ConstellationScaling", 
                        "AnyTwoGeoBaselineC0", "TeammateDmgContribution", "-GetStarted"]
    missing_folders = required_folders.reject { |folder| Dir.exist?(folder) }
    
    if missing_folders.empty?
      puts "✓ All required folders are present"
    else
      puts "✗ Missing folders: #{missing_folders.join(', ')}"
    end
    
    # Check for main files
    main_files = ["-GetStarted/Chiori.rb", "PROJECT_OVERVIEW.rb", "README.md"]
    missing_files = main_files.reject { |file| File.exist?(file) }
    
    if missing_files.empty?
      puts "✓ All main files are present"
    else
      puts "✗ Missing main files: #{missing_files.join(', ')}"
    end
    
    # Check for the LaTeX file
    if File.exist?("-GetStarted/KQMwork.tex")
      puts "✓ Mathematical analysis document (KQMwork.tex) is present"
    else
      puts "✗ Mathematical analysis document (KQMwork.tex) is missing"
    end
    
    # Check for calculator files
    calculator_files = Dir.glob("**/*.rb") - main_files
    if calculator_files.any?
      puts "✓ Found #{calculator_files.count} calculator files"
    else
      puts "✗ No calculator files found"
    end
  end

  def self.run
    puts "\n"
    display_info
    puts "\n\n"
    file_structure
    puts "\n\n"
    usage_examples
    puts "\n\n"
    key_findings
    puts "\n\n"
    quick_start
    puts "\n\n"
    verify_project_structure
    puts "\n"
  end
  
  def self.quick_start
    puts <<~QUICKSTART
      QUICK START GUIDE
      =================
      1. Navigate to the project directory
      2. Run: ruby -GetStarted/Chiori.rb
      3. Explore the interactive guide features
      4. Try the damage calculators in their respective folders:
         - ConstellationScaling/ for progression analysis from C0 to C6
         - C6DpsTeams/ for main DPS builds
         - C0SubDpsTeams/ for sub-DPS team variants
         - AnyTwoGeoBaselineC0/ for Geo team compositions
      5. Use the comparison methods to analyze build differences
      6. Review mathematical analysis in KQMwork.tex
      7. Check TeammateDmgContribution/ for character synergy details

      Need help? All classes have built-in help methods!
    QUICKSTART
  end
  
  def self.list_all_files
    puts "All Project Files:"
    puts
    
    Dir.glob("**/*.rb").sort.each do |file|
      puts "• #{file}"
    end
  end
end

# ========================================
# USAGE EXAMPLE
# ========================================
# The following code will only execute if this file is run directly
if __FILE__ == $0
  puts "Running PROJECT_OVERVIEW.rb directly..."
  puts "This will display all project information sections."
  puts "=" * 80
  puts "\n"
  ProjectOverview.run
end
