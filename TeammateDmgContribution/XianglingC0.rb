# XianglingC0.rb
# ========================================
# XIANGLING C0 DAMAGE CONTRIBUTION CALCULATOR
# ========================================
# Purpose: Calculate Xiangling's damage contribution and buffs as a team member for Chiori
# Build: Xiangling C0 with Prototype Starglitter R5, Noblesse Oblige set
# Team: Chiori / Zhongli / Xiangling / Ayato 
# ========================================

class XianglingC0DamageCalculator
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
      name: "Xiangling",
      level: "90/90",
      constellation: "C0",
      attributes: {
        hp: 15655,
        atk: 1597,
        def: 669,
        elemental_mastery: 196,
        crit_rate: 71.1,
        crit_dmg: 130.0,
        energy_recharge: 197.7,
        healing_bonus: 0.0,
        incoming_healing_bonus: 0.0,
        shield_strength: 70.0,
        dmg_bonuses: {
          pyro: 46.6,
          hydro: 0.0,
          electro: 0.0,
          cryo: 0.0,
          geo: 0.0,
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
          description: "Shielded characters dealing DMG to enemies will decrease their Geo RES by 20% for 15s."
        }
      },
      party_debuffs: {
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
        melt: {
          damage_multiplier: 2.682,
          description: "Increases Pyro DMG by 2.682 times when reacting with Cryo."
        },
        vaporize: {
          damage_multiplier: 2.011,
          description: "Increases Pyro DMG by 2.011 times when reacting with Hydro."
        }
      },
      self_buffs: {
        ascension_4: {
          atk_bonus: 10,
          duration: 10,
          description: "Picking up a chili pepper increases ATK by 10% for 10s."
        }
      },
      party_buffs: {
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
        zhongli: {
          ascension_1: {
            shield_strength_increase_per_hit: 5,
            max_stacks: 5,
            current_stacks: 5,
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
      prototype_starglitter: {
        refinement: 5,
        level: "90/90",
        wielder: "self",
        effect: {
          stacks: 2,
          normal_charged_attack_dmg_bonus: 32, # 16% per stack, 2 stacks = 32%
          duration: 12,
          description: "After using an Elemental Skill, increases Normal and Charged Attack DMG by 16% for 12s. Max 2 stacks."
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
        noblesse_oblige: {
          wielder: "self",
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
        atk_percent: 25,
        elemental_mastery: 100,
        crit_rate: 35,
        crit_dmg: 80
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
          flame_dmg: { non_crit: 5320, crit: 12236, avg: 10237 }
        }
      },
      elemental_burst: {
        talent_level: 10,
        abilities: {
          hit_1_swing: { non_crit: 3868, crit: 8897, avg: 7443 },
          hit_2_swing: { non_crit: 4728, crit: 10874, avg: 9097 },
          hit_3_swing: { non_crit: 5888, crit: 13542, avg: 11330 },
          pyronado_dmg: { non_crit: 6017, crit: 13839, avg: 11578 }
        }
      },
      reactions: {
        lunar_charged: { dmg: 3599 },
        bloom: { dmg: 7377 },
        hyperbloom: { dmg: 11066 },
        burgeon: { dmg: 11066 },
        burning: { dmg: 922 },
        swirl: { dmg: 2108 },
        superconduct: { dmg: 5533 },
        electro_charged: { dmg: 7377 },
        overloaded: { dmg: 10144 },
        shattered: { dmg: 11066 }
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
    puts "XIANGLING C0 DAMAGE CONTRIBUTION SUMMARY"
    puts "=========================================="
    puts 
    puts "Character: #{@character[:name]} #{@character[:constellation]} with Prototype Starglitter R5"
    puts "Build: Noblesse Oblige with #{@character[:attributes][:energy_recharge]}% Energy Recharge"
    puts
    
    puts "--- Elemental Skill Damage ---"
    @damage_calculations[:elemental_skill][:abilities].each do |name, values|
      formatted_name = name.to_s.split('_').map(&:capitalize).join(' ')
      puts "#{formatted_name} (1/4): #{values[:avg]} avg damage"
    end
    
    puts "\n--- Elemental Burst Damage ---"
    @damage_calculations[:elemental_burst][:abilities].each do |name, values|
      formatted_name = name.to_s.split('_').map(&:capitalize).join(' ')
      puts "#{formatted_name}: #{values[:avg]} avg damage"
    end
    
    puts "\n--- Reaction Damage ---"
    puts "Vaporize (with Ayato): #{(@damage_calculations[:elemental_burst][:abilities][:pyronado_dmg][:avg] * @buffs[:resonance_and_reactions][:vaporize][:damage_multiplier]).round} avg damage"
    
    puts "\n--- Team Contribution ---"
    puts "• Provides off-field Pyro application through Pyronado"
    puts "• Enables vaporize reactions with Ayato's Hydro application"
    puts "• Provides 20% ATK bonus to all team members via Noblesse Oblige"
    puts "• Consistent off-field DPS during Chiori's on-field time"
    puts "• C0 offers solid damage even without constellations"
    
    puts "\n--- Rotation Synergy ---"
    puts "• Zhongli E → Xiangling E+Q → Ayato Q → Ayato E → Chiori E+Q"
    puts "• Pyronado persists off-field, allowing Chiori to trigger Crystallize"
    puts "• High Energy Recharge (#{@character[:attributes][:energy_recharge]}%) ensures good burst uptime"
    
    puts "\n--- Buff Contribution to Chiori ---"
    puts "• +20% ATK from Noblesse Oblige"
    puts "• Provides Pyro application for Crystallize shields"
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
    puts "XIANGLING SYNERGY WITH CHIORI ANALYSIS"
    puts "=========================================="
    puts
    puts "Synergy Rating: Very Good (A-Tier)"
    puts
    puts "Key Synergies:"
    puts "1. Xiangling's Pyronado provides consistent Pyro application for Crystallize reactions"
    puts "2. Noblesse Oblige provides a valuable 20% ATK buff for the whole team"
    puts "3. Works as an off-field sub-DPS, complementing Chiori's on-field time"
    puts "4. Provides energy particles through Guoba to help with team energy needs"
    puts "5. Benefits from Geo Resonance when paired with Chiori and Zhongli"
    
    if chiori_calc
      chiori_stats = chiori_calc.get_character_stats
      puts "\nComparison with Chiori:"
      puts "• Xiangling ATK: #{@character[:attributes][:atk]} vs Chiori ATK: #{chiori_stats[:attributes][:atk]}"
      puts "• Xiangling CRIT: #{@character[:attributes][:crit_rate]}%/#{@character[:attributes][:crit_dmg]}% vs Chiori CRIT: #{chiori_stats[:attributes][:crit_rate]}%/#{chiori_stats[:attributes][:crit_dmg]}%"
      puts "• Xiangling EM: #{@character[:attributes][:elemental_mastery]} (benefits reactions) vs Chiori EM: #{chiori_stats[:attributes][:elemental_mastery]}"
    end
  end
end

# ========================================
# USAGE EXAMPLE
# ========================================
if __FILE__ == $0
  calculator = XianglingC0DamageCalculator.new
  calculator.display_damage_contribution
end
