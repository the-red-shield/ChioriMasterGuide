# DuoGeoC0SoloHusk.rb
# ========================================
# CHIORI C0 DUO GEO SOLO HUSK BUILD DAMAGE CALCULATOR
# ========================================
# Strategy: Chiori as solo carry with Husk of Opulent Dreams for sustained DEF/Geo DMG
# Team: Chiori C0 / Geo Support / Flex / Flex
# Build Focus: Higher DEF and Geo DMG for consistent damage
# ========================================

class ChioriC0DuoGeoHuskCalculator
  def initialize
    @team_composition = setup_team_composition
    @character = setup_character
    @debuffs = setup_debuffs
    @buffs = setup_buffs
    @weapons = setup_weapons
    @artifacts = setup_artifacts
    @target = setup_target
    @damage_calculations = calculate_damage
  end

  private

  # ========================================
  # TEAM COMPOSITION
  # ========================================
  def setup_team_composition
    {
      name: "C0 Duo Geo Solo - Husk Build",
      members: [
        { name: "Chiori", constellation: "C0", role: "Main DPS" },
        { name: "Geo Support", constellation: "C0", role: "Support" },
        { name: "Flex", constellation: "C0", role: "Support/Sub-DPS" },
        { name: "Flex", constellation: "C0", role: "Support/Sub-DPS" }
      ],
      strategy: "Duo Geo core providing resonance and consistent Geo damage with two flexible support slots"
    }
  end

  # ========================================
  # CHARACTER SETUP
  # ========================================
  def setup_character
    {
      name: "Chiori",
      level: "90/90",
      constellation: "C0",
      attributes: {
        hp: 16218,
        atk: 1349,
        def: 2404,
        elemental_mastery: 50,
        crit_rate: 85.3,
        crit_dmg: 218.2,
        energy_recharge: 100.0,
        healing_bonus: 0.0,
        incoming_healing_bonus: 0.0,
        shield_strength: 15.0,
        dmg_bonuses: {
          pyro: 0.0,
          hydro: 0.0,
          electro: 0.0,
          cryo: 0.0,
          geo: 90.6,
          anemo: 0.0,
          dendro: 0.0,
          physical: 0.0
        },
        attack_speeds: {
          normal: 100.0,
          charged: 100.0
        }
      }
    }
  end

  # ========================================
  # DEBUFFS SETUP
  # ========================================
  def setup_debuffs
    {
      resonance_and_reactions: {
        enduring_rock: {
          geo_res_reduction: 20,
          duration: 15,
          description: "Shielded characters dealing DMG to enemies will decrease their Geo RES by 20% for 15s"
        }
      },
      party_debuffs: {}
    }
  end

  # ========================================
  # BUFFS SETUP
  # ========================================
  def setup_buffs
    {
      resonance_and_reactions: {
        geo_resonance: {
          shield_strength_bonus: 15,
          shielded_dmg_bonus: 15,
          description: "Increases Shield Strength by 15%. Increases DMG dealt by characters that protected by a shield by 15%"
        }
      },
      self_buffs: {
        tailoring_effect: {
          geo_infusion_duration: 5,
          description: "Chiori gains Geo Infusion for 5s. At C6, Normal Attack DMG is increased by 235% of her DEF for 5s"
        },
        ascension_4: {
          geo_dmg_bonus: 20,
          duration: 20,
          description: "When a nearby party member creates a Geo Construct, Chiori will gain 20% Geo DMG Bonus for 20s"
        }
      },
      party_buffs: {
        geo_traveler: {
          constellation_1: {
            active: false,
            crit_rate_bonus: 10,
            description: "Active characters within the Wake of Earth's radius have their CRIT Rate increased by 10%"
          }
        },
        amber: {
          constellation_6: {
            active: false,
            movement_speed_bonus: 15,
            atk_bonus: 15,
            duration: 10,
            description: "Fiery Rain [EB] increases all party members' Movement SPD and ATK by 15% for 10s"
          }
        },
        barbara: {
          constellation_2: {
            active: false,
            hydro_dmg_bonus: 15,
            description: "During Let the Show Begin's [ES] duration, your active character gains a 15% Hydro DMG Bonus"
          }
        }
      }
    }
  end

  # ========================================
  # WEAPONS SETUP
  # ========================================
  def setup_weapons
    {
      uraku_misugiri: {
        refinement: 1,
        level: "90/90",
        wielder: "self",
        effect: {
          normal_attack_bonus: 16,
          elemental_skill_bonus: 24,
          duration: 15,
          description: "After a nearby active character deals Geo DMG, gain 16% Normal Attack DMG and 24% Elemental Skill DMG for 15s"
        }
      }
    }
  end

  # ========================================
  # ARTIFACTS SETUP
  # ========================================
  def setup_artifacts
    {
      sets: {
        husk_of_opulent_dreams: {
          wielder: "self",
          stacks: 4,
          effect: {
            def_bonus_per_stack: 6,
            geo_dmg_bonus_per_stack: 6,
            description: "Curiosity can stack up to 4 times, each providing 6% DEF and 6% Geo DMG Bonus"
          }
        }
      },
      main_stats: {
        flower: { level: 20, stat: "HP" },
        feather: { level: 20, stat: "ATK" },
        sands: { level: 20, stat: "DEF%", value: 58.3 },
        goblet: { level: 20, stat: "Geo DMG Bonus", value: 46.6 },
        circlet: { level: 20, stat: "CRIT Rate", value: 31.1 }
      },
      substat_totals: {
        atk_percent: 20,
        def_percent: 20,
        crit_rate: 30,
        crit_dmg: 80,
        elemental_mastery: 50
      }
    }
  end

  # ========================================
  # TARGET SETUP
  # ========================================
  def setup_target
    {
      level: 100,
      resistances: {
        pyro: 10,
        hydro: 10,
        electro: 10,
        cryo: 10,
        geo: 10,
        anemo: 10,
        dendro: 10,
        physical: 10
      }
    }
  end

  # ========================================
  # DAMAGE CALCULATIONS
  # ========================================
  def calculate_damage
    {
      normal_attacks: {
        talent_level: 10,
        attacks: {
          hit_1: { non_crit: 1602, crit: 5096, avg: 4583 },
          hit_2: { non_crit: 1518, crit: 4830, avg: 4343 },
          hit_3: { non_crit: 986, crit: 3138, avg: 2821 },
          hit_4: { non_crit: 2435, crit: 7748, avg: 6967 },
          charged_attack: { non_crit: 1523, crit: 4847, avg: 4359 },
          plunge_dmg: { non_crit: 1793, crit: 5706, avg: 5131 },
          low_plunge: { non_crit: 3586, crit: 11410, avg: 10260 },
          high_plunge: { non_crit: 4479, crit: 14252, avg: 12815 }
        }
      },
      elemental_skill: {
        talent_level: 10,
        abilities: {
          automaton_doll_sode_slash: { non_crit: 8346, crit: 26557, avg: 23880 },
          upward_thrust_attack: { non_crit: 15179, crit: 48299, avg: 43431 },
          simple_automaton_doll_kinu_c2: { non_crit: 14188, crit: 45147, avg: 40596 }
        }
      },
      elemental_burst: {
        talent_level: 10,
        skill_dmg: { non_crit: 21130, crit: 67235, avg: 60458 }
      },
      reactions: {
        lunar_charged: { dmg: 2412 },
        bloom: { dmg: 3620 },
        hyperbloom: { dmg: 5430 },
        burgeon: { dmg: 5430 },
        burning: { dmg: 453 },
        swirl: { dmg: 1207 },
        superconduct: { dmg: 2715 },
        electro_charged: { dmg: 3620 },
        overloaded: { dmg: 4978 },
        shattered: { dmg: 5430 }
      }
    }
  end

  # ========================================
  # PUBLIC METHODS
  # ========================================
  public

  def display_damage_summary
    puts "=== CHIORI C0 DUO GEO HUSK BUILD DAMAGE SUMMARY ==="
    puts
    
    puts "Normal Attacks (Talent Level #{@damage_calculations[:normal_attacks][:talent_level]}):"
    @damage_calculations[:normal_attacks][:attacks].each do |attack, damage|
      puts "  #{attack.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')}: #{damage[:avg]} avg (#{damage[:non_crit]} non-crit, #{damage[:crit]} crit)"
    end
    
    puts
    puts "Elemental Skill (Talent Level #{@damage_calculations[:elemental_skill][:talent_level]}):"
    @damage_calculations[:elemental_skill][:abilities].each do |ability, damage|
      puts "  #{ability.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')}: #{damage[:avg]} avg (#{damage[:non_crit]} non-crit, #{damage[:crit]} crit)"
    end
    
    puts
    puts "Elemental Burst (Talent Level #{@damage_calculations[:elemental_burst][:talent_level]}):"
    puts "  Skill DMG: #{@damage_calculations[:elemental_burst][:skill_dmg][:avg]} avg (#{@damage_calculations[:elemental_burst][:skill_dmg][:non_crit]} non-crit, #{@damage_calculations[:elemental_burst][:skill_dmg][:crit]} crit)"
    
    puts
    puts "Reaction Damage:"
    @damage_calculations[:reactions].each do |reaction, damage|
      puts "  #{reaction.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')}: #{damage[:dmg]}"
    end
  end

  def get_character_stats
    @character
  end

  def get_total_buffs
    @buffs
  end

  def get_total_debuffs
    @debuffs
  end

  def get_target_info
    @target
  end

  def compare_with_troupe(troupe_calc)
    puts "\n=== BUILD COMPARISON: C0 HUSK vs C0 TROUPE ==="
    puts
    
    husk_stats = @character[:attributes]
    troupe_stats = troupe_calc.get_character_stats[:attributes]
    
    puts "Husk Build vs Troupe Build:"
    puts "  DEF: Husk #{husk_stats[:def]} vs Troupe #{troupe_stats[:def]} (#{husk_stats[:def] - troupe_stats[:def] > 0 ? '+' : ''}#{husk_stats[:def] - troupe_stats[:def]})"
    puts "  Geo DMG: Husk #{husk_stats[:dmg_bonuses][:geo]}% vs Troupe #{troupe_stats[:dmg_bonuses][:geo]}% (#{husk_stats[:dmg_bonuses][:geo] - troupe_stats[:dmg_bonuses][:geo] > 0 ? '+' : ''}#{husk_stats[:dmg_bonuses][:geo] - troupe_stats[:dmg_bonuses][:geo]}%)"
    
    puts "\nKey Differences:"
    puts "  • Husk Build: +#{husk_stats[:def] - troupe_stats[:def]} DEF, better for sustained damage"
    puts "  • Husk Build: +#{husk_stats[:dmg_bonuses][:geo] - troupe_stats[:dmg_bonuses][:geo]}% Geo DMG from artifact set"
    puts "  • Troupe Build: +25% Elemental Skill DMG when off-field"
    puts "  • Both builds use same weapon and basic duo geo setup"
  end

  def compare_with_c6_builds(premium_calc = nil, troupe_c6_calc = nil)
    puts "\n=== BUILD COMPARISON: C0 vs C6 BUILDS ==="
    puts
    
    c0_stats = @character[:attributes]
    
    puts "C0 Duo Geo Husk Build Stats:"
    puts "  ATK: #{c0_stats[:atk]}"
    puts "  DEF: #{c0_stats[:def]}"
    puts "  Geo DMG: #{c0_stats[:dmg_bonuses][:geo]}%"
    puts "  Constellation: #{@character[:constellation]}"
    
    if premium_calc
      premium_stats = premium_calc.get_character_stats[:attributes]
      puts "\nComparison with C6 Premium:"
      puts "  ATK Difference: #{c0_stats[:atk] - premium_stats[:atk]} (C0 vs C6)"
      puts "  DEF Difference: #{c0_stats[:def] - premium_stats[:def]} (C0 vs C6)"
      puts "  Geo DMG Difference: #{c0_stats[:dmg_bonuses][:geo] - premium_stats[:dmg_bonuses][:geo]}% (C0 vs C6)"
    end
    
    puts "\nKey C0 Limitations:"
    puts "  • No C6 DEF scaling on Normal Attacks"
    puts "  • Lower overall stats due to constellation differences"
    puts "  • Simpler team composition (basic duo geo setup)"
    puts "  • Still benefits from Husk's DEF and Geo DMG stacking"
  end
  
  # Access methods for other calculators to compare
  def get_character_stats
    @character
  end
  
  def get_damage_calculations
    @damage_calculations
  end
end

# ========================================
# USAGE EXAMPLE
# ========================================
if __FILE__ == $0
  calculator = ChioriC0DuoGeoHuskCalculator.new
  calculator.display_damage_summary
end
