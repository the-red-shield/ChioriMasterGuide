# C6Husk.rb
# ========================================
# CHIORI C6 MAIN DPS HUSK BUILD DAMAGE CALCULATOR
# ========================================
# Strategy: Chiori as main DPS with Husk of Opulent Dreams for maximal DEF scaling
# Team: Chiori C6 / Bennett C5 / Xilonen C2 / Gorou C6
# Build Focus: DEF scaling for Normal Attacks and overall Geo damage
# ========================================

class ChioriC6HuskDamageCalculator
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
      name: "C6 Premium Team - Triple Geo Core",
      members: [
        { name: "Chiori", constellation: "C6", role: "Main DPS" },
        { name: "Bennett", constellation: "C5", role: "Support/Healer" },
        { name: "Xilonen", constellation: "C2", role: "Support" },
        { name: "Gorou", constellation: "C6", role: "Support/Buffer" }
      ],
      strategy: "Full Geo team maximizing DEF scaling and Geo synergies with premium constellation support"
    }
  end

  # ========================================
  # CHARACTER SETUP
  # ========================================
  def setup_character
    {
      name: "Chiori",
      level: "90/90",
      constellation: "C6",
      attributes: {
        hp: 16218,
        atk: 1695,
        def: 3080,
        elemental_mastery: 175,
        crit_rate: 85.3,
        crit_dmg: 218.2,
        energy_recharge: 100.0,
        healing_bonus: 0.0,
        incoming_healing_bonus: 0.0,
        shield_strength: 45.0,
        dmg_bonuses: {
          pyro: 25.6,
          hydro: 25.6,
          electro: 25.6,
          cryo: 25.6,
          geo: 171.2,
          anemo: 25.6,
          dendro: 25.6,
          physical: 25.6
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
          c6_normal_attack_bonus: 235, # % of DEF
          description: "Chiori gains Geo Infusion for 5s. At C6, Normal Attack DMG is increased by 235% of her DEF for 5s"
        },
        ascension_4: {
          geo_dmg_bonus: 20,
          duration: 20,
          description: "When a nearby party member creates a Geo Construct, Chiori will gain 20% Geo DMG Bonus for 20s"
        }
      },
      party_buffs: {
        bennett: {
          elemental_burst: {
            base_atk: 865,
            level: 13,
            c1_bonus: 20, # % of base ATK
            c6_pyro_bonus: 15,
            description: "Increases ATK based on Bennett's Base ATK. C1: +20% base ATK. C6: +15% Pyro DMG"
          }
        },
        xilonen: {
          constellation_2: {
            active: true,
            effects: {
              geo: { dmg_bonus: 50 },
              pyro: { atk_bonus: 45 },
              hydro: { hp_bonus: 45 },
              cryo: { crit_dmg_bonus: 60 }
            }
          },
          constellation_4: {
            active: false
          }
        },
        gorou: {
          elemental_skill: {
            level: 13,
            buffs: {
              standing_firm: { def_bonus: 438 },
              impregnable: { interruption_resistance: true },
              crunch: { geo_dmg_bonus: 15 }
            }
          },
          ascension_1: {
            def_bonus: 25,
            duration: 12,
            description: "After using EB, all nearby party members' DEF is increased by 25% for 12s"
          },
          constellation_6: {
            geo_crit_dmg_bonuses: {
              standing_firm: 10,
              impregnable: 20,
              crunch: 40
            }
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
        husk_of_opulent_dreams: {
          wielder: "self",
          stacks: 4,
          effect: {
            def_bonus_per_stack: 6,
            geo_dmg_bonus_per_stack: 6,
            description: "Curiosity can stack up to 4 times, each providing 6% DEF and 6% Geo DMG Bonus"
          }
        },
        song_of_days_past: {
          recorded_healing: 15000,
          effect: {
            dmg_increase: 8, # % of recorded healing
            duration: "5 hits or 10s",
            description: "DMG increased by 8% of total recorded healing (max 15,000) for 5 hits or 10s"
          }
        },
        scroll_of_hero_cinder_city: {
          element_involved: "Geo",
          nightsoul_blessing: true,
          effect: {
            base_dmg_bonus: 12,
            nightsoul_bonus: 28,
            description: "12% DMG Bonus of reaction elements for 15s, +28% with Nightsoul's Blessing for 20s"
          }
        },
        noblesse_oblige: {
          effect: {
            atk_bonus: 20,
            duration: 12,
            description: "Using Elemental Burst increases all party members' ATK by 20% for 12s"
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
          hit_1: { non_crit: 19625, crit: 70297, avg: 62848 },
          hit_2: { non_crit: 19434, crit: 69614, avg: 62237 },
          hit_3: { non_crit: 18221, crit: 65268, avg: 58352 },
          hit_4: { non_crit: 21526, crit: 77106, avg: 68936 },
          charged_attack: { non_crit: 3666, crit: 13133, avg: 11742 },
          plunge_dmg: { non_crit: 4316, crit: 15460, avg: 13821 },
          low_plunge: { non_crit: 8630, crit: 30914, avg: 27639 },
          high_plunge: { non_crit: 10780, crit: 38614, avg: 34522 }
        }
      },
      elemental_skill: {
        talent_level: 13,
        abilities: {
          automaton_doll_sode_slash: { non_crit: 22268, crit: 79766, avg: 71314 },
          upward_thrust_attack: { non_crit: 40500, crit: 145071, avg: 129699 },
          simple_automaton_doll_kinu_c2: { non_crit: 37857, crit: 135603, avg: 121234 }
        }
      },
      elemental_burst: {
        talent_level: 13,
        skill_dmg: { non_crit: 60852, crit: 217972, avg: 194876 }
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
    puts "=== CHIORI C6 PREMIUM BUILD DAMAGE SUMMARY ==="
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
    puts "• Bennett C5: +#{@buffs[:party_buffs][:bennett][:elemental_burst][:c1_bonus]}% Base ATK, +#{@buffs[:party_buffs][:bennett][:elemental_burst][:c6_pyro_bonus]}% Pyro DMG"
    puts "• Xilonen C2: +#{@buffs[:party_buffs][:xilonen][:constellation_2][:effects][:geo][:dmg_bonus]}% Geo DMG for Chiori"
    puts "• Gorou C6: +#{@buffs[:party_buffs][:gorou][:constellation_6][:geo_crit_dmg_bonuses][:crunch]}% Geo CRIT DMG at 3 stacks"
    puts "• Husk 4pc: +#{@artifacts[:sets][:husk_of_opulent_dreams][:stacks] * @artifacts[:sets][:husk_of_opulent_dreams][:effect][:def_bonus_per_stack]}% DEF, +#{@artifacts[:sets][:husk_of_opulent_dreams][:stacks] * @artifacts[:sets][:husk_of_opulent_dreams][:effect][:geo_dmg_bonus_per_stack]}% Geo DMG"
    puts "• Peak Patrol Song: +#{@weapons[:peak_patrol_song][:effect][:max_bonus]}% All Elemental DMG"
    puts "• Chiori C6: +#{@buffs[:self_buffs][:tailoring_effect][:c6_normal_attack_bonus]}% of DEF as Normal Attack DMG"
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

  def get_team_composition
    @team_composition
  end

  def compare_with_troupe(troupe_calc)
    puts "\n=== BUILD COMPARISON: C6 HUSK vs TROUPE ==="
    puts
    
    husk_stats = @character[:attributes]
    troupe_stats = troupe_calc.get_character_stats[:attributes]
    
    puts "Husk vs Troupe Build:"
    puts "  ATK: Husk #{husk_stats[:atk]} vs Troupe #{troupe_stats[:atk]} (#{husk_stats[:atk] - troupe_stats[:atk]})"
    puts "  DEF: Husk #{husk_stats[:def]} vs Troupe #{troupe_stats[:def]} (#{husk_stats[:def] - troupe_stats[:def]})"
    puts "  Geo DMG: Husk #{husk_stats[:dmg_bonuses][:geo]}% vs Troupe #{troupe_stats[:dmg_bonuses][:geo]}% (#{husk_stats[:dmg_bonuses][:geo] - troupe_stats[:dmg_bonuses][:geo]}%)"
    
    puts "\nKey Trade-offs:"
    puts "  • Husk: +#{husk_stats[:def] - troupe_stats[:def]} DEF, +#{husk_stats[:dmg_bonuses][:geo] - troupe_stats[:dmg_bonuses][:geo]}% Geo DMG, better sustained damage"
    puts "  • Troupe: +25% off-field Elemental Skill DMG, better for sub-DPS role"
    puts "  • Both builds benefit equally from premium team buffs (Bennett C6, Gorou C6, Xilonen C2)"
  end
end

# ========================================
# USAGE EXAMPLE
# ========================================
if __FILE__ == $0
  calculator = ChioriC6HuskDamageCalculator.new
  calculator.display_damage_summary
end
