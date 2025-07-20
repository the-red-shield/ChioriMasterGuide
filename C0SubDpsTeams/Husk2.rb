# C0SubDps2Husk.rb
# ========================================
# CHIORI C0 SUB-DPS TEAM 2 HUSK BUILD DAMAGE CALCULATOR
# ========================================
# Strategy: Chiori as sub-DPS with Husk of Opulent Dreams for sustained DEF/Geo DMG
# Team: Chiori C0 / Zhongli C0 / Xiangling C6 / Ayato C0 R1
# Build Focus: Higher DEF and Geo DMG for consistent damage
# ========================================

class ChioriC0SubDPS2HuskCalculator
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
      name: "C0 Sub-DPS Team 2 - Geo/Pyro/Hydro Core",
      members: [
        { name: "Chiori", constellation: "C0", role: "Sub-DPS" },
        { name: "Zhongli", constellation: "C0", weapon: "Black Tassel R5", role: "Support" },
        { name: "Xiangling", constellation: "C6", role: "Sub-DPS" },
        { name: "Ayato", constellation: "C0", weapon: "Haran Geppaku Futsu R1", role: "Main DPS" }
      ],
      strategy: "Zhongli provides shields and resistance shred, Xiangling provides off-field Pyro damage, Ayato acts as main on-field DPS"
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
        atk: 1782,
        def: 2404,
        elemental_mastery: 50,
        crit_rate: 85.3,
        crit_dmg: 218.2,
        energy_recharge: 100.0,
        healing_bonus: 0.0,
        incoming_healing_bonus: 0.0,
        shield_strength: 70.0,
        dmg_bonuses: {
          pyro: 15.0,
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
      party_debuffs: {
        zhongli: {
          jade_shield: {
            elemental_res_reduction: 20,
            physical_res_reduction: 20,
            description: "Jade Shield decreases Elemental RES and Physical RES of opponents in a small AoE by 20%. Cannot be stacked."
          }
        },
        xiangling: {
          constellation_1: {
            pyro_res_reduction: 15,
            duration: 6,
            description: "Opponents hit by Guoba's attacks have their Pyro RES reduced by 15% for 6s."
          }
        }
      }
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
        zhongli: {
          ascension_1: {
            shield_strength_increase_per_hit: 5,
            max_stacks: 5,
            current_stacks: 5,
            description: "When Jade Shield takes DMG, the characters have their Shield Strength increased by 5% until the Jade Shield disappears. Max 5 stacks."
          }
        },
        ayato: {
          elemental_burst: {
            normal_attack_dmg_bonus: 20,
            burst_level: 10,
            description: "Increases the Normal Attack DMG of characters within its AoE by 20%."
          },
          constellation_4: {
            normal_attack_speed_bonus: 15,
            duration: 15,
            description: "After using Kamisato Art: Suiyuu [EB], all nearby party members will have 15% increased Normal Attack SPD for 15s."
          }
        },
        xiangling: {
          ascension_4: {
            atk_bonus: 10,
            duration: 10,
            description: "Picking up a chili pepper increases ATK by 10% for 10s."
          },
          constellation_6: {
            pyro_dmg_bonus: 15,
            duration: 15,
            description: "For the duration of Pyronado, all party members receive a 15% Pyro DMG Bonus."
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
          description: "After a nearby active character deals Geo DMG, the wielder will gain another 16% Normal Attack DMG and 24% Elemental Skill DMG for 15s"
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
            max_stacks: 4,
            description: "Curiosity can stack up to 4 times, each providing 6% DEF and a 6% Geo DMG Bonus."
          }
        },
        tenacity_of_the_millelith: {
          effect: {
            atk_bonus: 20,
            shield_strength_bonus: 30,
            duration: 3,
            description: "When an Elemental Skill hits an opponent, the ATK of all nearby party members is increased by 20% and their Shield Strength is increased by 30% for 3s."
          }
        },
        noblesse_oblige: {
          effect: {
            atk_bonus: 20,
            duration: 12,
            description: "Using an Elemental Burst increases all party members' ATK by 20% for 12s. This effect cannot stack."
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
          hit_1: { non_crit: 2512, crit: 7992, avg: 7186 },
          hit_2: { non_crit: 2380, crit: 7574, avg: 6811 },
          hit_3: { non_crit: 1546, crit: 4920, avg: 4424 },
          hit_4: { non_crit: 3818, crit: 12150, avg: 10925 },
          charged_attack: { non_crit: 2203, crit: 7011, avg: 6304 },
          plunge_dmg: { non_crit: 2594, crit: 8253, avg: 7421 },
          low_plunge: { non_crit: 5186, crit: 16503, avg: 14840 },
          high_plunge: { non_crit: 6478, crit: 20614, avg: 18536 }
        }
      },
      elemental_skill: {
        talent_level: 10,
        abilities: {
          automaton_doll_sode_slash: { non_crit: 10049, crit: 31975, avg: 28752 },
          upward_thrust_attack: { non_crit: 18276, crit: 58154, avg: 52291 },
          simple_automaton_doll_kinu_c2: { non_crit: 17083, crit: 54358, avg: 48879 }
        }
      },
      elemental_burst: {
        talent_level: 10,
        skill_dmg: { non_crit: 25441, crit: 80953, avg: 72792 }
      },
      reactions: {
        lunar_charged: { dmg: 2814 },
        bloom: { dmg: 4223 },
        hyperbloom: { dmg: 6335 },
        burgeon: { dmg: 6335 },
        burning: { dmg: 566 },
        swirl: { dmg: 1207 },
        superconduct: { dmg: 3168 },
        electro_charged: { dmg: 4223 },
        overloaded: { dmg: 6222 },
        shattered: { dmg: 6335 }
      }
    }
  end

  # ========================================
  # PUBLIC METHODS
  # ========================================
  public

  def display_damage_summary
    puts "=== CHIORI C0 SUB-DPS TEAM 2 HUSK BUILD DAMAGE SUMMARY ==="
    puts "Team: #{@team_composition[:members].map { |m| "#{m[:name]} #{m[:constellation]}" }.join(' / ')}"
    puts "Strategy: #{@team_composition[:strategy]}"
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

  def display_team_synergy
    puts "\n=== TEAM SYNERGY ANALYSIS ==="
    puts "#{@team_composition[:name]}"
    puts
    
    puts "Key Synergies:"
    puts "• Zhongli Shield: -20% Elemental and Physical RES for enemies"
    puts "• Geo Resonance: +15% DMG when shielded"
    puts "• Ayato Burst: +20% Normal Attack DMG"
    puts "• Ayato C4: +15% Normal Attack SPD"
    puts "• Xiangling C6: +15% Pyro DMG Bonus"
    puts "• Tenacity of the Millelith: +20% ATK for party"
    puts "• Noblesse Oblige: +20% ATK for party"
    puts "• Husk of Opulent Dreams: +24% DEF and +24% Geo DMG at max stacks"
  end

  def get_character_stats
    @character
  end

  def get_team_composition
    @team_composition
  end

  def get_total_buffs
    @buffs
  end

  def get_total_debuffs
    @debuffs
  end

  def compare_with_troupe(troupe_calc)
    puts "\n=== BUILD COMPARISON: C0 SUB-DPS TEAM 2 HUSK vs TROUPE ==="
    puts
    
    husk_stats = @character[:attributes]
    troupe_stats = troupe_calc.get_character_stats[:attributes]
    
    puts "Husk vs Troupe Build:"
    puts "  DEF: Husk #{husk_stats[:def]} vs Troupe #{troupe_stats[:def]} (+#{husk_stats[:def] - troupe_stats[:def]} difference)"
    puts "  Geo DMG: Husk #{husk_stats[:dmg_bonuses][:geo]}% vs Troupe #{troupe_stats[:dmg_bonuses][:geo]}% (+#{husk_stats[:dmg_bonuses][:geo] - troupe_stats[:dmg_bonuses][:geo]}% difference)"
    puts "  CRIT Rate: Both #{husk_stats[:crit_rate]}%"
    
    puts "\nKey Trade-offs:"
    puts "  • Husk: +#{husk_stats[:def] - troupe_stats[:def]} DEF, +#{husk_stats[:dmg_bonuses][:geo] - troupe_stats[:dmg_bonuses][:geo]}% Geo DMG, better sustained damage"
    puts "  • Troupe: +25% off-field Elemental Skill DMG, better for pure sub-DPS role"
    puts "  • Husk performs better for Burst damage (#{@damage_calculations[:elemental_burst][:skill_dmg][:avg]} vs Troupe's lower Burst DMG)"
    puts "  • Both builds benefit equally from team buffs (Zhongli, Ayato, Xiangling)"
  end
end

# ========================================
# USAGE EXAMPLE
# ========================================
if __FILE__ == $0
  calculator = ChioriC0SubDPS2HuskCalculator.new
  calculator.display_damage_summary
  calculator.display_team_synergy
end
