# DuoGeoC0SoloTroupe.rb
# ========================================
# CHIORI C0 DUO GEO SOLO TROUPE BUILD DAMAGE CALCULATOR
# ========================================
# Strategy: Chiori as solo carry with Golden Troupe for enhanced Elemental Skill DMG
# Team: Chiori C0 / Geo Support / Flex / Flex
# Build Focus: Elemental Skill DMG for consistent damage with off-field damage potential
# ========================================

class ChioriC0DuoGeoTroupeCalculator
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
      name: "C0 Duo Geo Solo - Troupe Build",
      members: [
        { name: "Chiori", constellation: "C0", role: "Main DPS" },
        { name: "Geo Support", constellation: "C0", role: "Support" },
        { name: "Flex", constellation: "C0", role: "Support/Sub-DPS" },
        { name: "Flex", constellation: "C0", role: "Support/Sub-DPS" }
      ],
      strategy: "Duo Geo core providing resonance with Troupe set for improved off-field Elemental Skill damage"
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
        def: 1890,
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
          geo: 66.6,
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
        golden_troupe: {
          wielder: "self",
          effect: {
            off_field_skill_bonus: 25,
            clear_delay: 2,
            description: "When not on the field, Elemental Skill DMG will be further increased by 25%. This effect will be cleared 2s after taking the field"
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
          hit_1: { non_crit: 1440, crit: 4582, avg: 4120 },
          hit_2: { non_crit: 1365, crit: 4342, avg: 3905 },
          hit_3: { non_crit: 886, crit: 2821, avg: 2536 },
          hit_4: { non_crit: 2189, crit: 6966, avg: 6263 },
          charged_attack: { non_crit: 1346, crit: 4281, avg: 3850 },
          plunge_dmg: { non_crit: 1584, crit: 5040, avg: 4532 },
          low_plunge: { non_crit: 3167, crit: 10078, avg: 9062 },
          high_plunge: { non_crit: 3956, crit: 12588, avg: 11319 }
        }
      },
      elemental_skill: {
        talent_level: 10,
        abilities: {
          automaton_doll_sode_slash: { non_crit: 8403, crit: 26739, avg: 24044 },
          upward_thrust_attack: { non_crit: 15283, crit: 48631, avg: 43729 },
          simple_automaton_doll_kinu_c2: { non_crit: 14286, crit: 45457, avg: 40875 }
        }
      },
      elemental_burst: {
        talent_level: 10,
        skill_dmg: { non_crit: 15906, crit: 50614, avg: 45512 }
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
    puts "=== CHIORI C0 DUO GEO GOLDEN TROUPE BUILD DAMAGE SUMMARY ==="
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

  def compare_with_c6_builds(premium_calc = nil, troupe_c6_calc = nil)
    puts "\n=== BUILD COMPARISON: C0 vs C6 BUILDS ==="
    puts
    
    c0_stats = @character[:attributes]
    
    puts "C0 Duo Geo Troupe Build Stats:"
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
    puts "  • Still benefits from Golden Troupe's +25% off-field Skill DMG"
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
  calculator = ChioriC0DuoGeoTroupeCalculator.new
  calculator.display_damage_summary
end
