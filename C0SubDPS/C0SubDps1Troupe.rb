# C0SubDPS1Troupe.rb
# ========================================
# CHIORI C0 SUB-DPS TEAM 1 Troupe BUILD DAMAGE CALCULATOR
# ========================================
# Strategy: Chiori as sub-DPS with Golden Troupe for sustained Elemental Skill DMG
# Team: Chiori C0 / Xilonen C0 / Yelan C0 / Hu Tao C0
# Build Focus: Elemental Skill DMG from off field for consistent damage
# ========================================

class ChioriC0SubDPSTroupeCalculator
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
      name: "C0 Sub-DPS Team 1 - Double Geo Core",
      members: [
        { name: "Chiori", constellation: "C0", role: "Sub-DPS" },
        { name: "Xilonen", constellation: "C0", weapon: "Peak Patrol Song R1", role: "Support" },
        { name: "Yelan", constellation: "C0", role: "Sub-DPS" },
        { name: "Hu Tao", constellation: "C0", role: "Main DPS" }
      ],
      strategy: "Double Geo core providing utility and consistent damage while enabling Hu Tao hypercarry"
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
        crit_rate: 97.3,
        crit_dmg: 218.2,
        energy_recharge: 100.0,
        healing_bonus: 0.0,
        incoming_healing_bonus: 0.0,
        shield_strength: 15.0,
        dmg_bonuses: {
          pyro: 25.6,
          hydro: 25.6,
          electro: 25.6,
          cryo: 25.6,
          geo: 92.2,
          anemo: 25.6,
          dendro: 25.6,
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
        xilonen: {
          source_samples: {
            active: true,
            description: "When the Source Samples are active, nearby opponents' corresponding Elemental RES will decrease",
            elemental_skill_level: 10
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
        xilonen: {
          constellation_2: {
            active: true,
            effects: {
              geo: { dmg_bonus: 50 },
              pyro: { atk_bonus: 45 },
              hydro: { hp_bonus: 45 },
              cryo: { crit_dmg_bonus: 60 }
            },
            description: "When Source Samples are active, party members gain effects based on their Elemental Type"
          },
          constellation_4: {
            active: true,
            normal_attack_bonus_per_def: 65, # % of Xilonen's DEF
            xilonen_def: 0, # Note: Listed as 0 in original data
            duration: 15,
            max_hits: 6,
            description: "After using ES, all party members deal increased Normal, Charged, and Plunging Attack DMG based on 65% of Xilonen's DEF for 15s or 6 hits"
          }
        },
        yelan: {
          ascension_4: {
            initial_dmg_bonus: 1,
            dmg_bonus_per_second: 3.5,
            max_dmg_bonus: 50,
            current_stacks: 10,
            max_stacks: 14,
            description: "During EB, active character gains 1% DMG Bonus increasing by 3.5% every second, max 50%"
          }
        },
        hu_tao: {
          ascension_1: {
            crit_rate_bonus: 12,
            duration: 8,
            description: "When Paramita Papilio state ends, all allies (excluding Hu Tao) gain 12% CRIT Rate for 8s"
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
      },
      peak_patrol_song: {
        refinement: 1,
        wielder: "Xilonen",
        wielder_def: 3500,
        effect: {
          elemental_dmg_bonus_per_1k_def: 8,
          max_bonus: 25.6,
          duration: 15,
          description: "At 2 stacks, increase all nearby party members' All Elemental DMG Bonus by 8% per 1,000 DEF, max 25.6%, for 15s"
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
          hit_1: { non_crit: 2173, crit: 6915, avg: 6787 },
          hit_2: { non_crit: 2060, crit: 6554, avg: 6432 },
          hit_3: { non_crit: 1338, crit: 4257, avg: 4178 },
          hit_4: { non_crit: 3304, crit: 10513, avg: 10318 },
          charged_attack: { non_crit: 2111, crit: 6717, avg: 6592 },
          plunge_dmg: { non_crit: 2485, crit: 7906, avg: 7760 },
          low_plunge: { non_crit: 4969, crit: 15810, avg: 15518 },
          high_plunge: { non_crit: 6206, crit: 19748, avg: 19383 }
        }
      },
      elemental_skill: {
        talent_level: 10,
        abilities: {
          automaton_doll_sode_slash: { non_crit: 11868, crit: 37763, avg: 37064 },
          upward_thrust_attack: { non_crit: 21584, crit: 68681, avg: 67409 },
          simple_automaton_doll_kinu_c2: { non_crit: 20176, crit: 64199, avg: 63010 }
        }
      },
      elemental_burst: {
        talent_level: 10,
        skill_dmg: { non_crit: 24954, crit: 79402, avg: 77932 }
      },
      reactions: {
        lunar_charged: { dmg: 2412 },
        bloom: { dmg: 3620 },
        hyperbloom: { dmg: 5430 },
        burgeon: { dmg: 5430 },
        burning: { dmg: 568 },
        swirl: { dmg: 1207 },
        superconduct: { dmg: 2715 },
        electro_charged: { dmg: 3620 },
        overloaded: { dmg: 6250 },
        shattered: { dmg: 5430 }
      }
    }
  end

  # ========================================
  # PUBLIC METHODS
  # ========================================
  public

  def display_damage_summary
    puts "=== CHIORI C0 SUB-DPS TEAM 1 GOLDEN TROUPE BUILD DAMAGE SUMMARY ==="
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
    puts "• Xilonen C2: +50% Geo DMG for Chiori, +45% ATK for Hu Tao"
    puts "• Xilonen C4: Normal Attack DMG boost (Note: DEF value listed as 0)"
    puts "• Peak Patrol Song: +#{@weapons[:peak_patrol_song][:effect][:max_bonus]}% All Elemental DMG"
    puts "• Yelan A4: Up to +#{@buffs[:party_buffs][:yelan][:ascension_4][:max_dmg_bonus]}% DMG (current: #{@buffs[:party_buffs][:yelan][:ascension_4][:current_stacks]} stacks)"
    puts "• Hu Tao A1: +12% CRIT Rate for all allies after Paramita Papilio ends"
    puts "• Golden Troupe: +25% off-field Elemental Skill DMG"
    puts "• Geo Resonance: +15% DMG when shielded"
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

  def compare_with_husk(husk_calc)
    puts "\n=== BUILD COMPARISON: C0 SUB-DPS TROUPE vs HUSK ==="
    puts
    
    troupe_stats = @character[:attributes]
    husk_stats = husk_calc.get_character_stats[:attributes]
    
    puts "Troupe vs Husk Build:"
    puts "  DEF: Troupe #{troupe_stats[:def]} vs Husk #{husk_stats[:def]} (#{troupe_stats[:def] - husk_stats[:def]})"
    puts "  Geo DMG: Troupe #{troupe_stats[:geo]}% vs Husk #{husk_stats[:geo]}% (#{troupe_stats[:geo] - husk_stats[:geo]}%)"
    puts "  CRIT Rate: Both #{troupe_stats[:crit_rate]}%"
    
    puts "\nKey Trade-offs:"
    puts "  • Troupe: +25% off-field Elemental Skill DMG, better for sub-DPS role"
    puts "  • Husk: +#{husk_stats[:def] - troupe_stats[:def]} DEF, +#{husk_stats[:geo] - troupe_stats[:geo]}% Geo DMG, better sustained damage"
    puts "  • Both builds benefit equally from team buffs (Xilonen, Yelan, Hu Tao)"
  end
end

# ========================================
# USAGE EXAMPLE
# ========================================
if __FILE__ == $0
  calculator = ChioriC0SubDPSTroupeCalculator.new
  calculator.display_damage_summary
  calculator.display_team_synergy
end
