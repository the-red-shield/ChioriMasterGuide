# XilonenC2R1.rb
# ========================================
# XILONEN C2 R1 DAMAGE CONTRIBUTION CALCULATOR
# ========================================
# Purpose: Calculate Xilonen's damage contribution and buffs as a team member for Chiori
# Build: Xilonen C2 with Peak Patrol Song R1, Scroll of the Hero/Noblesse/Song of Days Past
# Team: Chiori / Xilonen / Gorou / Bennett
# ========================================

class XilonenC2R1DamageCalculator
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
      constellation: "C2",
      attributes: {
        hp: 17185,
        atk: 2494,
        def: 4048,
        elemental_mastery: 0,
        crit_rate: 61.1,
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
          geo: 147.2,
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
        },
        constellation_2: {
          active: true,
          geo_dmg_bonus: 50,
          pyro_atk_bonus: 45,
          hydro_hp_bonus: 45,
          cryo_crit_dmg_bonus: 60,
          description: "When Xilonen's Source Samples are active, all nearby party members will gain effects corresponding to the active Source Sample that matches their Elemental Type: Geo: +50% DMG, Pyro: +45% ATK, Hydro: +45% Max HP, Cryo: +60% CRIT DMG."
        }
      },
      party_buffs: {
        gorou_skill: {
          active: true,
          def_bonus: 438,
          geo_dmg_bonus: 15,
          skill_level: 13,
          description: "Provides up to 3 buffs to active characters within the skill's AoE based on the number of Geo characters in the party: 1 character: Adds 'Standing Firm' - 438 DEF bonus, 2 characters: Adds 'Impregnable' - Increased resistance to interruption, 3 characters: Adds 'Crunch' - 15% Geo DMG Bonus."
        },
        gorou_a1: {
          active: true,
          def_percent_bonus: 25,
          duration: 12,
          description: "After using Juuga: Forward Unto Victory [EB], all nearby party members' DEF is increased by 25% for 12s."
        },
        gorou_c6: {
          active: true,
          geo_crit_dmg_bonus: 40,
          duration: 12,
          description: "For 12s after using Inuzaka All-Round Defense [ES] or Juuga: Forward Unto Victory [EB], increases all nearby party members' Geo CRIT DMG based on the buff level of the skill's field: 'Standing Firm': 10%, 'Impregnable': 20%, 'Crunch': 40%."
        },
        bennett_burst: {
          active: true,
          base_atk: 865,
          burst_level: 13,
          constellation: 1,
          atk_bonus_percent: 112, # Based on talent level 13 with C1
          description: "Increases ATK of the characters within its AoE based on Bennett's Base ATK. At C1, the ATK Bonus is further increased by 20% of his Base ATK."
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
        },
        noblesse_oblige: {
          wielder: "self",
          effect: {
            atk_bonus: 20,
            duration: 12,
            description: "Using an Elemental Burst increases all party members' ATK by 20% for 12s. This effect cannot stack."
          }
        },
        song_of_days_past: {
          wielder: "self",
          effect: {
            recorded_healing: 15000,
            dmg_bonus_percent: 8,
            duration: 10,
            hits: 5,
            description: "When the equipping character trigger healing, healing (including overflow) from all party members will be recorded for 6s upto 15,000. After that the active character's DMG on Normal, Charged, Plunging Attacks, Elemental Skill, and Elemental Burst will be increased by 8% of total recorded healing. This effect lasts for 5 hits or 10s."
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
          rush_dmg: { non_crit: 26672, crit: 68015, avg: 51933 },
          continuous_party_healing_c6: { value: 4858 }
        }
      },
      elemental_skill: {
        talent_level: 10,
        abilities: {}
      },
      elemental_burst: {
        talent_level: 10,
        abilities: {
          skill_dmg: { non_crit: 40587, crit: 103498, avg: 79026 },
          additional_beat_dmg: { non_crit: 40587, crit: 103498, avg: 79026 },
          continuous_healing: { value: 8680 }
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
    puts "XILONEN C2 R1 DAMAGE CONTRIBUTION SUMMARY"
    puts "=========================================="
    puts 
    puts "Character: #{@character[:name]} #{@character[:constellation]} with Peak Patrol Song R1"
    puts "Build: Scroll of the Hero of Cinder City + Noblesse Oblige + Song of Days Past"
    puts "Team: Chiori / Xilonen / Gorou / Bennett"
    puts
    
    puts "--- Normal Attack Damage ---"
    @damage_calculations[:normal_attacks][:abilities].each do |name, values|
      next if name == :continuous_party_healing_c6 && @character[:constellation] != "C6"
      formatted_name = name.to_s.split('_').map(&:capitalize).join(' ')
      puts "#{formatted_name}: #{values[:avg]} avg damage"
    end
    
    puts "\n--- Elemental Burst Damage ---"
    @damage_calculations[:elemental_burst][:abilities].each do |name, values|
      next if name == :continuous_healing
      formatted_name = name.to_s.split('_').map(&:capitalize).join(' ')
      puts "#{formatted_name}: #{values[:avg]} avg damage"
    end
    
    puts "\n--- Team Contribution ---"
    puts "• C2: Provides Elemental-specific buffs through Source Samples (50% Geo DMG for Chiori)"
    puts "• Provides All Elemental DMG Bonus to team members (up to 25.6% from Peak Patrol Song)"
    puts "• Provides 12-40% Geo DMG Bonus to team from Scroll of the Hero artifact set"
    puts "• Provides 20% ATK bonus to all team members via Noblesse Oblige"
    puts "• Song of Days Past provides up to 8% of healing as DMG bonus (1200% at 15k healing)"
    puts "• Contributes to Geo Resonance for team-wide 15% damage increase when shielded"
    puts "• Geo RES shred through Enduring Rock and Source Samples (up to 35% total)"
    
    puts "\n--- Rotation Synergy ---"
    puts "• Gorou E → Bennett Q → Xilonen Normal Attacks → Xilonen Q → Chiori E+Q"
    puts "• Ensure Source Samples are active before swapping to Chiori to maximize C2 bonus"
    puts "• Utilize Gorou's buffs (DEF, Geo DMG, Geo CRIT DMG) for both Xilonen and Chiori"
    puts "• Bennett's ATK buff combines with Noblesse for massive ATK increase"
    
    puts "\n--- Buff Contribution to Chiori ---"
    weapon_buff = @weapons[:peak_patrol_song][:effect][:stacks] == 2 ? 
                  [25.6, 8.0 * (@character[:attributes][:def] / 1000.0)].min : 0
    
    artifact_buff = @artifacts[:sets][:scroll_of_the_hero_of_cinder_city][:effect][:dmg_bonus]
    artifact_buff_with_blessing = artifact_buff + @artifacts[:sets][:scroll_of_the_hero_of_cinder_city][:effect][:additional_dmg_bonus_with_nightsouls_blessing]
    
    c2_buff = @buffs[:self_buffs][:constellation_2][:geo_dmg_bonus]
    noblesse_buff = @artifacts[:sets][:noblesse_oblige][:effect][:atk_bonus]
    days_past_buff = (@artifacts[:sets][:song_of_days_past][:effect][:recorded_healing] * 
                     @artifacts[:sets][:song_of_days_past][:effect][:dmg_bonus_percent] / 100.0)
    
    gorou_def = @buffs[:party_buffs][:gorou_skill][:def_bonus]
    gorou_geo_dmg = @buffs[:party_buffs][:gorou_skill][:geo_dmg_bonus]
    gorou_crit_dmg = @buffs[:party_buffs][:gorou_c6][:geo_crit_dmg_bonus]
    bennett_atk = @buffs[:party_buffs][:bennett_burst][:base_atk] * (@buffs[:party_buffs][:bennett_burst][:atk_bonus_percent] / 100.0)
    
    puts "• +#{c2_buff}% Geo DMG Bonus from C2 Source Samples (Geo element)"
    puts "• +#{weapon_buff.round(1)}% All Elemental DMG Bonus from Peak Patrol Song (with 2 stacks)"
    puts "• +#{artifact_buff_with_blessing}% Geo DMG Bonus from Scroll of the Hero (with Nightsoul's Blessing)"
    puts "• +#{noblesse_buff}% ATK from Noblesse Oblige"
    puts "• +#{days_past_buff.round} flat DMG from Song of Days Past (at 15k healing)"
    puts "• +#{gorou_def} flat DEF from Gorou's skill"
    puts "• +#{gorou_geo_dmg}% Geo DMG Bonus from Gorou's skill"
    puts "• +#{gorou_crit_dmg}% Geo CRIT DMG from Gorou's C6"
    puts "• +#{bennett_atk.round} flat ATK from Bennett's burst"
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
    puts "XILONEN C2 SYNERGY WITH CHIORI ANALYSIS"
    puts "=========================================="
    puts
    puts "Synergy Rating: Exceptional (S+ Tier)"
    puts
    puts "Key Synergies:"
    puts "1. C2 provides a massive 50% Geo DMG bonus to Chiori"
    puts "2. Xilonen's Peak Patrol Song provides significant Elemental DMG bonus (up to 25.6%)"
    puts "3. Scroll of the Hero artifact set gives up to 40% Geo DMG bonus for the team"
    puts "4. Noblesse Oblige provides 20% ATK buff for the whole team"
    puts "5. Works synergistically with Gorou to provide DEF, Geo DMG, and Geo CRIT DMG buffs"
    puts "6. High DEF stat (#{@character[:attributes][:def]}) maximizes weapon passive bonus"
    
    # Calculate total team buffs
    weapon_buff = @weapons[:peak_patrol_song][:effect][:stacks] == 2 ? 
                  [25.6, 8.0 * (@character[:attributes][:def] / 1000.0)].min : 0
    
    artifact_buff = @artifacts[:sets][:scroll_of_the_hero_of_cinder_city][:effect][:dmg_bonus]
    artifact_buff_with_blessing = artifact_buff + 
                                  @artifacts[:sets][:scroll_of_the_hero_of_cinder_city][:effect][:additional_dmg_bonus_with_nightsouls_blessing]
    
    c2_buff = @buffs[:self_buffs][:constellation_2][:geo_dmg_bonus]
    noblesse_buff = @artifacts[:sets][:noblesse_oblige][:effect][:atk_bonus]
    days_past_buff = (@artifacts[:sets][:song_of_days_past][:effect][:recorded_healing] * 
                     @artifacts[:sets][:song_of_days_past][:effect][:dmg_bonus_percent] / 100.0)
    
    gorou_def = @buffs[:party_buffs][:gorou_skill][:def_bonus]
    gorou_geo_dmg = @buffs[:party_buffs][:gorou_skill][:geo_dmg_bonus]
    gorou_crit_dmg = @buffs[:party_buffs][:gorou_c6][:geo_crit_dmg_bonus]
    bennett_atk = @buffs[:party_buffs][:bennett_burst][:base_atk] * (@buffs[:party_buffs][:bennett_burst][:atk_bonus_percent] / 100.0)
    
    geo_res_shred = @debuffs[:resonance_and_reactions][:enduring_rock][:geo_res_reduction] +
                    @debuffs[:character_debuffs][:source_samples][:elemental_res_reduction]
    
    total_dmg_bonus = weapon_buff + artifact_buff_with_blessing + c2_buff + gorou_geo_dmg + 
                      @buffs[:resonance_and_reactions][:geo_resonance][:shielded_dmg_bonus]
    
    puts "\nTotal Buff Package for Chiori:"
    puts "• DMG Bonus: +#{total_dmg_bonus.round(1)}%"
    puts "• ATK Bonus: +#{noblesse_buff}% + #{bennett_atk.round} flat ATK"
    puts "• DEF Bonus: +#{gorou_def} flat DEF"
    puts "• CRIT DMG Bonus: +#{gorou_crit_dmg}% for Geo DMG"
    puts "• Geo RES Reduction: -#{geo_res_shred}%"
    puts "• Additional DMG: +#{days_past_buff.round} flat damage per hit"
    puts "• Effective DMG Increase: ~#{((1 + total_dmg_bonus/100) * (1 + noblesse_buff/100) * (1 + geo_res_shred/100) - 1).round(2) * 100}%"
    
    if chiori_calc
      chiori_stats = chiori_calc.get_character_stats
      puts "\nComparison with Chiori:"
      puts "• Xilonen DEF: #{@character[:attributes][:def]} (powers her weapon passive) vs Chiori DEF: #{chiori_stats[:attributes][:def]}"
      puts "• Xilonen Geo DMG: #{@character[:attributes][:dmg_bonuses][:geo]}% vs Chiori Geo DMG: #{chiori_stats[:attributes][:dmg_bonuses][:geo]}%"
      puts "• Xilonen CRIT: #{@character[:attributes][:crit_rate]}%/#{@character[:attributes][:crit_dmg]}% vs Chiori CRIT: #{chiori_stats[:attributes][:crit_rate]}%/#{chiori_stats[:attributes][:crit_dmg]}%"
    end
    
    puts "\nRotation Recommendation:"
    puts "• Gorou E → Bennett Q → Xilonen Normal Attacks → Xilonen Q → Chiori E & Q → Repeat"
    puts "• Ensure Source Samples are active before swapping to Chiori for C2 bonus"
    puts "• Bennett's burst should always be active during Chiori's field time"
    puts "• Use Gorou's burst for added Geo CRIT DMG when available"
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
  
  # Constellation benefit analysis
  def constellation_benefit_analysis
    c0_damage = 34033  # From XilonenC0R1 normal attack avg
    c2_damage = 51933  # Current normal attack avg
    
    damage_increase_percent = ((c2_damage / c0_damage) - 1) * 100
    
    {
      c1_benefit: "Allows healing based on DEF when triggering Nightsoul Burst with Nightsoul's Blessing state active.",
      c2_benefit: "Provides significant team buffs through Source Samples: 50% Geo DMG bonus for Chiori, greatly increasing her damage output.",
      c2_vs_c0_dps_increase: damage_increase_percent.round(1),
      c2_vs_c0_team_buff_increase: 50.0,  # Direct Geo DMG bonus from C2
      recommendation: "C2 provides a substantial team DPS increase through the 50% Geo DMG bonus from Source Samples, making it a high-value constellation for Geo-focused teams with Chiori."
    }
  end
  
  # Analyze buff uptime
  def buff_uptime_analysis
    {
      peak_patrol_song: "High uptime, refreshed by normal attacks (15s duration)",
      scroll_of_cinder_city: "15s duration (20s with Nightsoul's Blessing)",
      noblesse_oblige: "12s duration with ~15s burst cooldown (~80% uptime)",
      song_of_days_past: "10s duration after 6s healing collection phase, can be maintained",
      geo_resonance: "100% uptime with shield",
      constellation_2: "Depends on Source Sample uptime, typically high with proper play",
      gorou_skill: "10s duration with 10s cooldown (100% uptime)",
      gorou_burst: "9s duration with 20s cooldown (~45% uptime)",
      bennett_burst: "12s duration with 15s cooldown (~80% uptime)"
    }
  end

# ========================================
# USAGE EXAMPLE
# ========================================
if __FILE__ == $0
  calculator = XilonenC2R1DamageCalculator.new
  calculator.display_damage_contribution
  puts calculator.constellation_benefit_analysis
end
