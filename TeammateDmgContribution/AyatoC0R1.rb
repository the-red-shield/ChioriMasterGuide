

# AyatoC0R1.rb
# ========================================
# AYATO C0 R1 DAMAGE CONTRIBUTION CALCULATOR
# ========================================
# Purpose: Calculate Ayato's damage contribution and buffs as a team member for Chiori
# Build: Ayato C0 with Haran Geppaku Futsu R1, Echoes of an Offering set
# Team: Chiori / Zhongli / Xiangling / Ayato 
# ========================================

class AyatoC0R1DamageCalculator
  def initialize
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
  # CHARACTER SETUP
  # ========================================
  def setup_character
    {
      name: "Ayato",
      level: "90/90",
      constellation: "C0",
      attributes: {
        hp: 18495,
        atk: 2439,
        def: 769,
        elemental_mastery: 100,
        crit_rate: 78.1,
        crit_dmg: 220.6,
        energy_recharge: 100.0,
        healing_bonus: 0.0,
        incoming_healing_bonus: 0.0,
        shield_strength: 50.0,
        dmg_bonuses: {
          pyro: 27.0,
          hydro: 58.6,
          electro: 12.0,
          cryo: 12.0,
          geo: 12.0,
          anemo: 12.0,
          dendro: 12.0,
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
          description: "Shielded characters dealing DMG to enemies will decrease their Geo RES by 20% for 15s."
        }
      },
      party_debuffs: {
        xiangling: {
          constellation_1: {
            pyro_res_reduction: 15,
            duration: 6,
            description: "Opponents hit by Guoba's attacks have their Pyro RES reduced by 15% for 6s."
          }
        },
        zhongli: {
          jade_shield: {
            elemental_res_reduction: 20,
            physical_res_reduction: 20,
            description: "Jade Shield decreases Elemental RES and Physical RES of opponents in a small AoE by 20%. Cannot be stacked."
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
          description: "Increases Shield Strength by 15%. Increases DMG dealt by characters that protected by a shield by 15%."
        },
        vaporize: {
          damage_multiplier: 2.37,
          description: "Increases Hydro DMG by 2.37 times when reacting with Pyro."
        }
      },
      self_buffs: {
        elemental_skill: {
          hydro_infusion: true,
          description: "Converts his Normal Attack DMG into AoE Hydro DMG (Shunsuiken) that cannot be overridden.",
          namisen_stacks: 4,
          hp_scaling: true,
          c2_effect: "At C2, Ayato's Max HP is increased by 50% when he has at least 3 Namisen stacks."
        },
        elemental_burst: {
          normal_attack_dmg_bonus: 20,
          description: "Increases the Normal Attack DMG of characters within its AoE by 20%."
        }
      },
      party_buffs: {
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
        },
        zhongli: {
          ascension_1: {
            shield_strength_increase_per_hit: 5,
            max_stacks: 5,
            current_stacks: 1,
            description: "When Jade Shield takes DMG, the characters have their Shield Strength increased by 5% until the Jade Shield disappears. Max 5 stacks."
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
      haran_geppaku_futsu: {
        refinement: 1,
        level: "90/90",
        wielder: "self",
        effect: {
          wavepike_stacks: 2,
          normal_attack_dmg_bonus: 40, # 20% per stack, 2 stacks = 40%
          duration: 8,
          description: "Each stack of Wavepike consumed will increase Normal Attack DMG by 20% for 8s."
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
        echoes_of_an_offering: {
          wielder: "self",
          effect: {
            proc_chance: 36,
            proc_increase_on_fail: 20,
            normal_attack_dmg_bonus: 70,
            description: "When Normal Attacks hit opponents, there is a 36% chance that it will trigger Valley Rite, which will increase Normal Attack DMG by 70% ATK. If a Normal Attack fails to trigger Valley Rite, the odds of it triggering the next time will increase by 20%."
          }
        },
        noblesse_oblige: {
          effect: {
            atk_bonus: 20,
            duration: 12,
            description: "Using an Elemental Burst increases all party members' ATK by 20% for 12s. This effect cannot stack."
          }
        },
        tenacity_of_the_millelith: {
          effect: {
            atk_bonus: 20,
            shield_strength_bonus: 30,
            duration: 3,
            cooldown: 0.5,
            description: "When an Elemental Skill hits an opponent, the ATK of all nearby party members is increased by 20% and their Shield Strength is increased by 30% for 3s. This effect can be triggered once every 0.5s. This effect can still be triggered even when the character who is using this artifact set is not on the field."
          }
        }
      },
      substat_totals: {
        crit_rate: 40,
        atk_percent: 20,
        elemental_mastery: 100,
        crit_dmg: 70
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
        talent_level: 10
      },
      elemental_skill: {
        talent_level: 10,
        abilities: {
          shunsuiken_1_hit: { non_crit: 14376, crit: 46091, avg: 39145 },
          shunsuiken_2_hit: { non_crit: 15198, crit: 48726, avg: 41384 },
          shunsuiken_3_hit: { non_crit: 16020, crit: 51362, avg: 43622 },
          extra_shunsuiken_c6: { non_crit: 35916, crit: 115145, avg: 97794 },
          water_illusion: { non_crit: 10298, crit: 33015, avg: 28040 }
        }
      },
      elemental_burst: {
        talent_level: 10,
        abilities: {
          bloomwater_blade: { non_crit: 6140, crit: 19686, avg: 16719 }
        }
      },
      reactions: {
        lunar_charged: { dmg: 3094 },
        bloom: { dmg: 5354 },
        hyperbloom: { dmg: 8030 },
        burgeon: { dmg: 8030 },
        burning: { dmg: 717 },
        swirl: { dmg: 1530 },
        superconduct: { dmg: 4015 },
        electro_charged: { dmg: 5354 },
        overloaded: { dmg: 7887 },
        shattered: { dmg: 8030 }
      }
    }
  end

  # ========================================
  # PUBLIC METHODS
  # ========================================
  public
  
  # Display damage contribution to team and summary
  def display_damage_contribution
    puts "=========================================="
    puts "AYATO C0 R1 DAMAGE CONTRIBUTION SUMMARY"
    puts "=========================================="
    puts 
    puts "Character: #{@character[:name]} #{@character[:constellation]} with Haran Geppaku Futsu R1"
    puts "Build: Echoes of an Offering"
    puts
    
    puts "--- Elemental Skill Damage ---"
    @damage_calculations[:elemental_skill][:abilities].each do |name, values|
      formatted_name = name.to_s.split('_').map(&:capitalize).join(' ')
      puts "#{formatted_name}: #{values[:avg]} avg damage"
    end
    
    puts "\n--- Elemental Burst Damage ---"
    @damage_calculations[:elemental_burst][:abilities].each do |name, values|
      formatted_name = name.to_s.split('_').map(&:capitalize).join(' ')
      puts "#{formatted_name}: #{values[:avg]} avg damage"
    end
    
    puts "\n--- Team Contribution ---"
    puts "• Provides 20% Normal Attack DMG bonus to all team members"
    puts "• Provides frequent Hydro application for reactions"
    puts "• Strong on-field DPS during Chiori's downtime"
    puts "• Benefits from Zhongli's shield and resistance shred"
    puts "• Can vaporize with Xiangling's Pyronado for 2.37x damage"
    
    puts "\n--- Rotation Synergy ---"
    puts "• Zhongli E → Xiangling E+Q → Ayato Q → Ayato E (main damage window) → Chiori E+Q"
    puts "• Ayato and Chiori can alternate field time for maximum team DPS"
    puts "• Ayato's Elemental Burst buff directly benefits Chiori's Normal Attacks"
    
    puts "\n--- Buff Contribution to Chiori ---"
    puts "• +20% Normal Attack DMG from Elemental Burst"
    puts "• +20% ATK from Noblesse Oblige (if equipped)"
    puts "• Benefits from Zhongli's Tenacity of the Millelith if equipped"
  end
  
  # Get character stats for other calculators
  def get_character_stats
    @character
  end
  
  # Get damage calculations for other calculators
  def get_damage_calculations
    @damage_calculations
  end
  
  # Analyze synergy with Chiori
  def analyze_synergy_with_chiori(chiori_calc = nil)
    puts "\n=========================================="
    puts "AYATO SYNERGY WITH CHIORI ANALYSIS"
    puts "=========================================="
    puts
    puts "Synergy Rating: Excellent (A-Tier)"
    puts
    puts "Key Synergies:"
    puts "1. Ayato's Elemental Burst provides a 20% Normal Attack DMG bonus to Chiori"
    puts "2. Ayato offers strong on-field DPS during Chiori's skill/burst cooldowns"
    puts "3. Both benefit from Geo Resonance when paired with Zhongli"
    puts "4. Complementary elements (Geo + Hydro) allow for Crystallize reactions"
    puts "5. Both are weapon-infusion characters with strong Normal Attack scaling"
    
    if chiori_calc
      chiori_stats = chiori_calc.get_character_stats
      puts "\nComparison with Chiori:"
      puts "• Ayato ATK: #{@character[:attributes][:atk]} vs Chiori ATK: #{chiori_stats[:attributes][:atk]}"
      puts "• Ayato CRIT: #{@character[:attributes][:crit_rate]}%/#{@character[:attributes][:crit_dmg]}% vs Chiori CRIT: #{chiori_stats[:attributes][:crit_rate]}%/#{chiori_stats[:attributes][:crit_dmg]}%"
    end
  end
end

# ========================================
# USAGE EXAMPLE
# ========================================
if __FILE__ == $0
  calculator = AyatoC0R1DamageCalculator.new
  calculator.display_damage_contribution
end
