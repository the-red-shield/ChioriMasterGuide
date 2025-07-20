# XilonenC0R1.rb
# ========================================
# XILONEN C0 R1 DAMAGE CONTRIBUTION CALCULATOR
# ========================================
# Purpose: Calculate Xilonen's damage contribution and buffs as a team member for Chiori
# Build: Xilonen C0 with Peak Patrol Song R1, Scroll of the Hero of Cinder City set
# Team: Chiori / Xilonen / Yelan / Hu Tao
# ========================================

class XilonenC0R1DamageCalculator
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
      name: "Xilonen",
      level: "90/90",
      constellation: "C0",
      attributes: {
        hp: 17185,
        atk: 1128,
        def: 3378,
        elemental_mastery: 0,
        crit_rate: 73.1,
        crit_dmg: 115.0,
        energy_recharge: 100.0,
        healing_bonus: 0,
        incoming_healing_bonus: 0,
        shield_strength: 15.0,
        dmg_bonuses: {
          pyro: 45.6,
          hydro: 45.6,
          electro: 45.6,
          cryo: 45.6,
          geo: 132.2,
          anemo: 45.6,
          dendro: 45.6,
          physical: 0
        },
        attack_speeds: {
          normal: 100.0,
          charged: 100.0
        }
      },
      talents: {
        normal_attack: 10,
        elemental_skill: 10,
        elemental_burst: 10
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
      character_debuffs: {
        source_samples: {
          elemental_res_reduction: 15,
          duration: 10,
          description: "When the Source Samples are active, nearby opponents' corresponding elemental RES is decreased."
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
        }
      },
      self_buffs: {
        nightsouls_blessing: {
          active: true,
          normal_plunging_dmg_bonus: 30,
          description: "Uses roller blades to do Normal Attacks. Unable to use Charged Attacks. Normal and Plunging Attacks deal Geo DMG. At A1, if Xilonen has less than 2 converted Source Samples, her Normal and Plunging DMG is increased by 30%."
        },
        ascension_4: {
          def_bonus: 20,
          duration: 15,
          description: "When nearby party members trigger a Nightsoul Burst, Xilonen's DEF is increased by 20% for 15s."
        }
      },
      party_buffs: {
        yelan_a4: {
          active: true,
          stacks: 10,
          dmg_bonus: 36, # 1% + (3.5% * 10 stacks) = 36%
          description: "During Depth-Clarion Dice [EB], your own active character gains 1% DMG Bonus which will increase by a further 3.5% every second. Maximum 50%."
        },
        hu_tao_a1: {
          active: true,
          crit_rate_bonus: 12,
          duration: 8,
          description: "When a Paramita Papilio [ES] state ends, all allies in the party (excluding Hu Tao) will have their CRIT Rate increased by 12% for 8s."
        }
      }
    }
  end

  # ========================================
  # WEAPONS SETUP
  # ========================================
  def setup_weapons
    {
      peak_patrol_song: {
        refinement: 1,
        level: "90/90",
        wielder: "self",
        effect: {
          stacks: 2,
          def_increase: 8, # Per stack
          elemental_dmg_bonus: 10, # Per stack
          team_elemental_dmg_bonus_per_def: 8, # Per 1000 DEF
          max_team_elemental_dmg_bonus: 25.6,
          duration: 15,
          description: "Gain 'Ode to Flowers' after Normal or Plunging Attacks hit an opponent: DEF increases by 8% and gain a 10% All Elemental DMG Bonus for 6s. Max 2 stacks, trigger CD is 0.1s. When this effect reaches 2 stacks or the 2nd stack's duration is refreshed, increase all nearby party members' All Elemental DMG Bonus by 8% for every 1,000 DEF the equipping character has, up to a maximum of 25.6%, for 15s."
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
        scroll_of_the_hero_of_cinder_city: {
          wielder: "self",
          stats: {
            def_percent: 50.0,
            crit_rate: 25.0,
            crit_dmg: 65.0
          },
          effect: {
            dmg_bonus: 12,
            additional_dmg_bonus_with_nightsouls_blessing: 28,
            element_involved: "Geo",
            duration: 15,
            nightsouls_blessing_duration: 20,
            description: "When the equipping character triggers an Elemental Reaction involving their Elemental Type, all nearby party members gain 12% DMG Bonus of Elemental Types involved in that reaction for 15s. When the equipping character is in Nightsoul's Blessing when triggering this, an additional 28% DMG Bonus of Elemental Types involved in that reaction will be granted to all characters for 20s."
          }
        }
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
        pyro: 10.0,
        hydro: 10.0,
        electro: 10.0,
        cryo: 10.0,
        geo: 10.0,
        anemo: 10.0,
        dendro: 10.0,
        physical: 10.0
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
        abilities: {
          rush_dmg: { non_crit: 18490, crit: 39753, avg: 34033 },
          continuous_party_healing_c6: { value: 4053 }
        }
      },
      elemental_skill: {
        talent_level: 10,
        abilities: {}
      },
      elemental_burst: {
        talent_level: 10,
        abilities: {
          skill_dmg: { non_crit: 29022, crit: 62397, avg: 53419 },
          additional_beat_dmg: { non_crit: 29022, crit: 62397, avg: 53419 },
          continuous_healing: { value: 7425 }
        }
      },
      reactions: {
        lunar_charged: { dmg: 2162 },
        bloom: { dmg: 2604 },
        hyperbloom: { dmg: 3906 },
        burgeon: { dmg: 3906 },
        burning: { dmg: 409 },
        swirl: { dmg: 868 },
        superconduct: { dmg: 1953 },
        electro_charged: { dmg: 2604 },
        overloaded: { dmg: 4496 },
        shattered: { dmg: 3906 }
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
    puts "XILONEN C0 R1 DAMAGE CONTRIBUTION SUMMARY"
    puts "=========================================="
    puts 
    puts "Character: #{@character[:name]} #{@character[:constellation]} with Peak Patrol Song R1"
    puts "Build: Scroll of the Hero of Cinder City with #{@character[:attributes][:def]} DEF"
    puts
    
    puts "--- Normal Attack Damage ---"
    @damage_calculations[:normal_attacks][:abilities].each do |name, values|
      next if name == :continuous_party_healing_c6 # Skip this for C0
      formatted_name = name.to_s.split('_').map(&:capitalize).join(' ')
      puts "#{formatted_name}: #{values[:avg]} avg damage"
    end
    
    puts "\n--- Elemental Burst Damage ---"
    @damage_calculations[:elemental_burst][:abilities].each do |name, values|
      next if name == :continuous_healing # Skip healing value
      formatted_name = name.to_s.split('_').map(&:capitalize).join(' ')
      puts "#{formatted_name}: #{values[:avg]} avg damage"
    end
    
    puts "\n--- Team Contribution ---"
    puts "• Provides All Elemental DMG Bonus to team members (up to 25.6% from Peak Patrol Song)"
    puts "• Provides 12% Geo DMG Bonus to team from Scroll of the Hero artifact set"
    puts "• Additional 28% Geo DMG Bonus when triggering reactions in Nightsoul's Blessing state"
    puts "• Contributes to Geo Resonance for team-wide 15% damage increase when shielded"
    puts "• Geo RES shred through Enduring Rock and Source Samples (up to 35% total)"
    
    puts "\n--- Rotation Synergy ---"
    puts "• Use Normal Attacks to build Peak Patrol Song stacks before swapping to Chiori"
    puts "• Use Burst before swapping to maximize team damage during Chiori's field time"
    puts "• Trigger Geo reactions while in Nightsoul's Blessing state for maximum artifact effect"
    puts "• Maintain Source Samples for RES shred"
    
    puts "\n--- Buff Contribution to Chiori ---"
    weapon_buff = @weapons[:peak_patrol_song][:effect][:stacks] == 2 ? 
                  [25.6, 8.0 * (@character[:attributes][:def] / 1000.0)].min : 0
    
    artifact_buff = @artifacts[:sets][:scroll_of_the_hero_of_cinder_city][:effect][:dmg_bonus]
    artifact_buff_with_blessing = artifact_buff + @artifacts[:sets][:scroll_of_the_hero_of_cinder_city][:effect][:additional_dmg_bonus_with_nightsouls_blessing]
    
    puts "• +#{weapon_buff.round(1)}% All Elemental DMG Bonus from Peak Patrol Song (with 2 stacks)"
    puts "• +#{artifact_buff}% Geo DMG Bonus from Scroll of the Hero (basic)"
    puts "• +#{artifact_buff_with_blessing}% Geo DMG Bonus from Scroll of the Hero (with Nightsoul's Blessing)"
    puts "• +15% DMG from Geo Resonance when shielded"
    puts "• -35% Geo RES on enemies (20% from Enduring Rock, 15% from Source Samples)"
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
    puts "XILONEN SYNERGY WITH CHIORI ANALYSIS"
    puts "=========================================="
    puts
    puts "Synergy Rating: Excellent (S-Tier)"
    puts
    puts "Key Synergies:"
    puts "1. Xilonen's Peak Patrol Song provides significant Elemental DMG bonus to Chiori"
    puts "2. Scroll of the Hero artifact set gives up to 40% Geo DMG bonus for the team"
    puts "3. Geo Resonance provides 15% DMG when shielded (through Crystallize)"
    puts "4. Provides Geo RES shred through both Enduring Rock and Source Samples"
    puts "5. High DEF stat (#{@character[:attributes][:def]}) maximizes weapon passive bonus"
    
    # Calculate total team buffs
    weapon_buff = @weapons[:peak_patrol_song][:effect][:stacks] == 2 ? 
                  [25.6, 8.0 * (@character[:attributes][:def] / 1000.0)].min : 0
    
    artifact_buff = @artifacts[:sets][:scroll_of_the_hero_of_cinder_city][:effect][:dmg_bonus]
    artifact_buff_with_blessing = artifact_buff + 
                                  @artifacts[:sets][:scroll_of_the_hero_of_cinder_city][:effect][:additional_dmg_bonus_with_nightsouls_blessing]
    
    geo_res_shred = @debuffs[:resonance_and_reactions][:enduring_rock][:geo_res_reduction] +
                    @debuffs[:character_debuffs][:source_samples][:elemental_res_reduction]
    
    total_dmg_bonus = weapon_buff + artifact_buff_with_blessing + @buffs[:resonance_and_reactions][:geo_resonance][:shielded_dmg_bonus]
    
    puts "\nTotal Buff Package for Chiori:"
    puts "• DMG Bonus: +#{total_dmg_bonus.round(1)}%"
    puts "• Geo RES Reduction: -#{geo_res_shred}%"
    puts "• Effective DMG Increase: ~#{((1 + total_dmg_bonus/100) * (1 + geo_res_shred/100) - 1).round(2) * 100}%"
    
    if chiori_calc
      chiori_stats = chiori_calc.get_character_stats
      puts "\nComparison with Chiori:"
      puts "• Xilonen DEF: #{@character[:attributes][:def]} (powers her weapon passive) vs Chiori DEF: #{chiori_stats[:attributes][:def]}"
      puts "• Xilonen Geo DMG: #{@character[:attributes][:dmg_bonuses][:geo]}% vs Chiori Geo DMG: #{chiori_stats[:attributes][:dmg_bonuses][:geo]}%"
      puts "• Xilonen CRIT: #{@character[:attributes][:crit_rate]}%/#{@character[:attributes][:crit_dmg]}% vs Chiori CRIT: #{chiori_stats[:attributes][:crit_rate]}%/#{chiori_stats[:attributes][:crit_dmg]}%"
    end
    
    puts "\nRotation Recommendation:"
    puts "• Xilonen Normal Attacks → Xilonen Burst → Yelan Skill → Yelan Burst → Hu Tao Skill → Chiori Skill & Burst → Repeat"
    puts "• Maximize Xilonen's time on-field only to build Peak Patrol Song stacks and trigger Nightsoul's Blessing for artifact effect"
    puts "• Ensure Chiori has maximum field time when all buffs are active"
  end
  
  # Calculate total damage contribution over a rotation
  def total_damage_per_rotation(rotation_duration = 25)
    # Calculate total damage over a rotation
    total_damage = 0
    
    # Assuming 10 normal attack hits during rotation
    normal_attacks = 10
    total_damage += normal_attacks * @damage_calculations[:normal_attacks][:abilities][:rush_dmg][:avg]
    
    # Assuming 2 burst uses in rotation
    bursts = 2
    total_damage += bursts * (@damage_calculations[:elemental_burst][:abilities][:skill_dmg][:avg] + 
                             @damage_calculations[:elemental_burst][:abilities][:additional_beat_dmg][:avg])
    
    # Estimate reaction damage
    reaction_damage = 4 * @damage_calculations[:reactions][:shattered][:dmg]  # Assuming 4 shattered reactions
    total_damage += reaction_damage
    
    return total_damage
  end
  
  # Calculate DPS contribution
  def dps_contribution(rotation_duration = 25)
    total_damage_per_rotation(rotation_duration) / rotation_duration
  end
  
  # Analyze buff uptime
  def buff_uptime_analysis
    {
      peak_patrol_song: "High uptime, refreshed by normal attacks (15s duration)",
      scroll_of_cinder_city: "15s duration (20s with Nightsoul's Blessing)",
      geo_resonance: "100% uptime with shield",
      yelan_a4: "15s duration out of 18s cooldown (~83% uptime)",
      hu_tao_a1: "8s duration with ~16s skill cooldown (~50% uptime)"
    }
  end
end

# ========================================
# USAGE EXAMPLE
# ========================================
if __FILE__ == $0
  calculator = XilonenC0R1DamageCalculator.new
  calculator.display_damage_contribution
end
