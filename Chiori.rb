# Chiori.rb
# ========================================
# CHIORI TEAMMATE SYNERGY GUIDE AND TEAM COMPOSITION DATABASE
# ========================================
# Guide Purpose: Comprehensive analysis of Chiori's teammates, synergies, and optimal team compositions
# Includes: Detailed breakdown of Geo and non-Geo teammates, constellation benefits, and role-specific builds
# Best Used With: The calculator files for specific build damage analysis and comparisons
# ========================================

class ChioriGuide
  def initialize
    @geo_teammates = setup_geo_teammates
    @non_geo_teammates = setup_non_geo_teammates
    @team_compositions = setup_team_compositions
  end

  # ========================================
  # GEO TEAMMATES
  # ========================================
  def setup_geo_teammates
    {
      albedo: {
        role: "Premier off-field Sub-DPS who provides a long-lasting Geo Construct",
        abilities: {
          elemental_skill: {
            name: "Abiogenesis - Solar Isotoma",
            description: "Creates a Solar Isotoma, which is considered a Geo Construct and lasts for 30 seconds",
            synergy: "Excellent for Chiori. This construct fulfills the requirement for Chiori's C0 to summon a second Tamoto doll, maximizing her off-field damage. The long duration ensures near-permanent uptime for Chiori's condition"
          },
          ascension_4: {
            name: "Homuncular Nature",
            description: "Using Albedo's Elemental Burst increases the Elemental Mastery of all party members by 125 for 10 seconds",
            synergy: "Niche, but valuable in teams built around Crystallize or Shatter reactions where Chiori might be the trigger"
          }
        },
        constellations: {
          c4: {
            name: "Descent of Divinity",
            description: "Active party members within the Solar Isotoma's field have their Plunging Attack DMG increased by 30%",
            synergy: "A powerful buff for a C6 Plunge DPS Chiori team that also includes Xianyun"
          },
          c6: {
            name: "Dust of Purification",
            description: "Active party members within the Solar Isotoma field who are protected by a Crystallize shield have their DMG increased by 17%",
            synergy: "A significant, universal damage buff for the entire team, further solidifying Albedo's position as a top-tier support for Chiori"
          }
        },
        recommended_artifacts: [
          "Husk of Opulent Dreams: Albedo's best-in-slot for personal damage",
          "Tenacity of the Millelith: A supportive option to buff the team's ATK whenever his Solar Isotoma deals damage"
        ],
        overall_synergy: "Albedo is one of Chiori's strongest partners. He provides the essential Geo Construct with 100% uptime, generates Geo particles, and adds substantial off-field damage. At higher constellations, he provides powerful team-wide buffs that benefit Chiori immensely"
      },

      geo_traveler: {
        role: "Flexible and accessible source of multiple Geo Constructs",
        abilities: {
          elemental_skill: {
            name: "Starfell Sword",
            description: "Creates a meteorite that is considered a Geo Construct, lasting 30 seconds (40 seconds at C1)",
            synergy: "Provides a long-lasting Geo Construct to enable Chiori's second Tamoto doll"
          },
          elemental_burst: {
            name: "Wake of Earth",
            description: "Creates a stone wall at its edges that is considered a Geo Construct, lasting 15 seconds (20 seconds at C6)",
            synergy: "Offers another source of Geo Constructs, though their placement can sometimes be obstructive"
          }
        },
        constellations: {
          c1: {
            name: "Invincible Stonewall",
            description: "Party members within the radius of the Elemental Burst gain a 10% CRIT Rate increase and resistance to interruption",
            synergy: "A valuable CRIT Rate buff for the entire team, including Chiori's on-field and off-field attacks"
          },
          c4: {
            name: "Reaction Force",
            description: "The Elemental Burst regenerates 5 Energy for every opponent hit, up to a maximum of 25 Energy",
            synergy: "Can help battery the team, though Chiori's low 50 Energy cost makes this less critical for her personally"
          }
        },
        recommended_artifacts: [
          "Noblesse Oblige: A classic support set to buff the team's ATK after using their Elemental Burst",
          "The Exile (4-piece): An excellent budget option to serve as a team battery"
        ],
        overall_synergy: "Geo Traveler is a solid free-to-play option for enabling C0 Chiori. Their ability to create multiple constructs and provide a team-wide CRIT Rate buff makes them a functional, if less damaging, alternative to other 5-star Geo units"
      },

      gorou: {
        role: "The dedicated support for DEF-scaling Geo characters",
        abilities: {
          elemental_skill: {
            name: "Inuzaka All-Around Defense",
            description: "Creates a General's War Banner that provides buffs based on the number of Geo characters in the party (DEF Bonus, Interruption Resistance, Geo DMG Bonus)",
            synergy: "Highly valuable. With 3 Geo characters, Gorou provides a significant flat DEF bonus and a 15% Geo DMG Bonus to the active character. However, the buff only lasts for 2 seconds after a character leaves the field, meaning Chiori's off-field Tamoto hits will not benefit",
            note: "The War Banner itself is NOT a Geo Construct"
          },
          elemental_burst: {
            name: "Juuga: Forward Onto Victory",
            description: "Creates a field that follows the active character and provides the same buffs as his Elemental Skill",
            synergy: "This is Gorou's primary method for buffing Chiori's off-field damage, as the buff follows the active character and will be active when Chiori's Tamoto dolls strike",
            note: "This field is NOT a Geo Construct"
          },
          ascension_4: {
            name: "A Favor Repaid",
            description: "After using his Elemental Burst, all nearby party members' DEF is increased by 25% for 12s",
            synergy: "An excellent party-wide DEF% buff that snapshots onto Chiori's skill, boosting her damage for its entire duration"
          }
        },
        constellations: {
          c4: {
            name: "Lapping Hound - Warm as Water",
            description: "When his Elemental Burst field is active with at least 2 Geo members, it heals the active character based on 50% of Gorou's DEF every 1.5s",
            synergy: "Provides much-needed healing in Geo-heavy teams, enabling synergies with characters like Furina"
          },
          c6: {
            name: "Valiant Hound - Mountainous Fealty",
            description: "After using his Skill or Burst, increases the CRIT DMG of Geo DMG for all party members by 10%/20%/40% depending on the banner's buff level",
            synergy: "Gorou's most powerful constellation. A 40% Geo CRIT DMG bonus is a massive damage increase for Chiori and the entire Geo team"
          }
        },
        recommended_artifacts: [
          "Husk of Opulent Dreams: Increases his DEF for stronger buffs and healing",
          "Noblesse Oblige: Trades some personal DEF for a team-wide ATK buff",
          "Exile: Best option for ensuring his Elemental Burst is always available"
        ],
        overall_synergy: "Gorou is a staple in teams with three or more Geo characters. He provides DEF, Geo DMG%, and (at C6) a massive Geo CRIT DMG buff. His buffs significantly amplify Chiori's damage, making him a core component of 'Mono Geo' teams"
      },

      arataki_itto: {
        role: "Hypercarry DPS who can also provide a Geo Construct",
        abilities: {
          elemental_skill: {
            name: "Masatsu Zetsugi - Akaushi Burst!",
            description: "Throws Ushi, a bull that taunts enemies and is considered a Geo Construct",
            synergy: "Provides a Geo Construct to enable Chiori's second Tamoto doll"
          }
        },
        constellations: {
          c2: {
            name: "Jailhouse Bread and Butter",
            description: "After using his Elemental Burst, Arataki Itto's Burst CD is decreased and he gains Energy for each Geo member in the party",
            synergy: "While focused on Itto, Chiori's particle generation helps ensure Itto can take full advantage of this"
          },
          c4: {
            name: "Going All-Out",
            description: "When Itto's Elemental Burst state ends, all nearby party members gain 20% DEF and 20% ATK for 10s",
            synergy: "A very strong buff for a 'swap-out' Itto playstyle. It boosts both of Chiori's scaling stats, providing a significant damage increase"
          }
        },
        recommended_artifacts: [
          "Husk of Opulent Dreams: His only recommended set for a DPS role"
        ],
        overall_synergy: "Chiori is an excellent Sub-DPS for Itto teams. She provides strong off-field damage that complements Itto's on-field time, helps with energy generation, and benefits immensely from Gorou, who is almost always paired with Itto"
      },

      zhongli: {
        role: "The premier defensive support and an excellent source of a Geo Construct and universal RES shred",
        abilities: {
          elemental_skill: {
            name: "Dominus Lapidis",
            description: "Creates a Stone Stele that pulses with AoE Geo DMG. The Stele is a Geo Construct and lasts for 30 seconds",
            synergy: "The ideal Geo Construct for Chiori. It has a long duration, wide resonance range with other Geo constructs, and provides consistent particle generation"
          },
          passive_talent: {
            name: "Dominance of Earth",
            description: "The Jade Shield decreases the Elemental and Physical RES of all nearby opponents by 20%",
            synergy: "One of the most powerful and universal buffs in the game. This 20% RES shred significantly increases Chiori's damage, along with the rest of the team's. His unbreakable shield also provides unmatched comfort"
          }
        },
        recommended_artifacts: [
          "Tenacity of the Millelith: His best supportive set. The pulsing Stele maintains a permanent 20% ATK buff and 30% Shield Strength for the entire party"
        ],
        overall_synergy: "Zhongli is arguably Chiori's best all-around teammate aside from Xilonen. He provides the necessary Geo Construct, an invaluable universal resistance shred, an unbreakable shield, and consistent energy. This pairing can be the foundation of many of Chiori's strongest teams"
      },

      navia: {
        role: "Burst-damage Geo DPS who synergizes with Crystallize reactions",
        constellations: {
          c4: {
            name: "The Oathsworn Never Capitulate",
            description: "Opponents hit by her Elemental Burst have their Geo RES decreased by 20% for 8s",
            synergy: "A fantastic source of Geo resistance shred that significantly boosts Chiori's damage"
          }
        },
        recommended_artifacts: [
          "Nighttime Whispers in the Echoing Woods: Her best-in-slot for personal damage"
        ],
        overall_synergy: "This is a two-way synergy. Chiori's consistent off-field Geo application is perfect for generating the Crystallize shards Navia needs to power her Elemental Skill. In return, Navia provides massive front-loaded damage, and her C4 offers a powerful damage boost for Chiori"
      },

      ningguang: {
        role: "Burst-damage Geo DPS whose Skill provides a construct",
        abilities: {
          elemental_skill: {
            name: "Jade Screen",
            description: "Creates a Jade Screen that is considered a Geo Construct and lasts for 30 seconds",
            synergy: "Reliably enables Chiori's second Tamoto doll"
          },
          ascension_4: {
            name: "Strategic Reserve",
            description: "Characters who pass through the Jade Screen gain a 12% Geo DMG Bonus for 10s",
            synergy: "A simple and effective way to give Chiori a small damage boost before swapping her out"
          }
        },
        recommended_artifacts: [
          "Noblesse Oblige / Emblem of Severed Fate: For a burst support role",
          "Archaic Petra: Can be used to buff an elemental teammate's damage"
        ],
        overall_synergy: "Ningguang serves as a functional Geo Construct provider and a quick-swap burst DPS. The Geo DMG bonus from her Jade Screen is a nice, though minor, buff for Chiori. This pair works well in quick-swap oriented teams"
      },

      noelle: {
        role: "Self-sufficient on-field DPS, shielder, and healer who scales with DEF",
        abilities: {
          elemental_skill: {
            name: "Breastplate",
            description: "Creates a shield and, while active, Noelle's attacks have a chance to heal the entire party",
            synergy: "Critically, Noelle's shield is NOT a Geo Construct. She cannot enable Chiori's second Tamoto doll at C0. Her primary synergy comes from being another DEF-scaling character who benefits from Gorou alongside Chiori"
          },
          ascension_1: {
            name: "Devotion",
            description: "When a character's HP falls below 30%, they automatically gain a shield equal to 400% of Noelle's DEF for 20s. This can occur once every 60s",
            synergy: "Provides a strong emergency shield, adding to team survivability"
          }
        },
        recommended_artifacts: [
          "Husk of Opulent Dreams: For a main DPS Noelle"
        ],
        overall_synergy: "Noelle is generally a poor partner for C0 Chiori due to her inability to create a Geo Construct. In a C1+ Chiori team, Noelle can act as the on-field driver and healer, allowing both to benefit from supports like Gorou and Furina"
      },

      yun_jin: {
        role: "Premier support for Normal Attack-focused characters",
        abilities: {
          elemental_burst: {
            name: "Cliffbreaker's Banner",
            description: "Provides a flat DMG bonus to the Normal Attacks of all party members, scaling with Yun Jin's DEF",
            synergy: "This has no direct synergy with Chiori's primary damage source, her Elemental Skill. The only exception is for a C6 Chiori built as an on-field Normal Attack driver, where Yun Jin becomes one of her best supports"
          }
        },
        recommended_artifacts: [
          "Husk of Opulent Dreams: Maximizes her DEF for the strongest buff"
        ],
        overall_synergy: "This pairing is exclusively for C6 On-Field Chiori. For any other version of Chiori, Yun Jin provides no significant benefit"
      },

      kachina: {
        role: "Future Geo character - placeholder for detailed analysis",
        abilities: {
          elemental_skill: {
            name: "Go, Go Turbo Twirly!",
            synergy: "If it can be left on the field, this construct would enable Chiori's second Tamoto"
          }
        },
        constellations: {
          c4: {
            name: "More Foes, More Caution",
            synergy: "A DEF% buff is always useful for Chiori, but its value depends on the uptime and conditions"
          }
        }
      },

      xilonen: {
        role: "Future Geo character - placeholder for detailed analysis",
        note: "Details to be added upon release"
      }
    }
  end

  # ========================================
  # NON-GEO TEAMMATES
  # ========================================
  def setup_non_geo_teammates
    {
      furina: {
        role: "Top-tier universal support",
        synergy: "A top-tier support. Her Elemental Burst provides a massive DMG% bonus to the entire team, significantly boosting Chiori's damage. Her skill also applies consistent Hydro for Crystallize shields. This pairing requires a strong party-wide healer (like C4 Gorou, Jean, or Xianyun) to maximize her buff"
      },

      bennett: {
        role: "Premier ATK buffer and healer",
        synergy: "Provides a massive flat ATK buff. Since Chiori scales on both ATK and DEF, this remains a very potent buff for her. He also provides healing, consolidating roles"
      },

      xianyun: {
        role: "Plunge attack enabler and healer",
        synergy: "The core of Plunge-based teams. She is essential for enabling the C6 Plunge DPS Chiori playstyle by allowing her to plunge repeatedly. Her team-wide healing is also excellent for synergy with Furina"
      },

      chongyun: {
        role: "Cryo infusion and cooldown reduction support",
        synergy: "His C2 reduces the Elemental Skill and Burst cooldown of characters within his field by 15%. This can increase the uptime of Chiori's damage. His Cryo infusion is mostly irrelevant unless building a niche 'Shatter' Chiori team"
      },

      layla: {
        role: "Shielder and Cryo applicator",
        synergy: "Provides a strong shield and off-field Cryo application. Her C4 gives a small buff to Normal Attacks after casting her skill, which is only relevant for C6 Chiori"
      },

      iansan: {
        role: "Future character - placeholder for detailed analysis",
        note: "Details to be added upon release"
      },

      ororon: {
        role: "Future character - placeholder for detailed analysis",
        note: "Details to be added upon release"
      }
    }
  end

  # ========================================
  # TEAM COMPOSITIONS
  # ========================================
  def setup_team_compositions
    {
      sub_dps_chiori_geo: {
        itto_hypercarry: {
          team: ["Arataki Itto", "Chiori", "Gorou", "Zhongli"],
          strategy: "The premium Mono Geo team. Zhongli provides the construct and RES shred. Gorou provides massive DEF and Geo DMG buffs. Chiori adds significant off-field damage and Geo particles, acting as a powerful Sub-DPS"
        },
        navia_geo_flex: {
          team: ["Navia", "Chiori", "Zhongli", "Bennett"],
          strategy: "Chiori and Zhongli provide consistent Geo application for Navia's Crystallize shards and off-field damage. Bennett provides a huge ATK buff for both Navia and Chiori. A powerful, high-damage team with lots of burst potential"
        }
      },

      sub_dps_chiori_non_geo: {
        double_geo_core: {
          team: ["Hu Tao", "Yelan", "Chiori", "Zhongli"],
          strategy: "Chiori and Zhongli form a powerful defensive and offensive core. They provide interruption resistance via the shield, RES shred, and significant damage on their own, all while allowing the main DPS (like Hu Tao) to operate safely and effectively. This core can be 'splashed' into many different teams"
        }
      },

      dps_chiori_c6: {
        on_field_hypercarry: {
          team: ["Chiori (C6)", "Gorou", "Zhongli (or Xilonen)", "Furina"],
          strategy: "The ultimate Chiori team. C6 allows Chiori to be the on-field driver. Gorou (C6) provides DEF and 40% Geo CRIT DMG. Zhongli provides the construct and RES shred. Furina provides an immense DMG% bonus, with Gorou's C4 healing keeping the team healthy"
        },
        on_field_plunge: {
          team: ["Chiori (C6)", "Xianyun", "Furina", "Zhongli"],
          strategy: "A variation that uses Chiori's Geo infusion for Plunging Attacks. Xianyun enables the playstyle and provides healing. Furina provides the DMG% bonus. Zhongli provides RES shred and the crucial Geo Construct"
        }
      },

      off_meta_teams: {
        shatter_chiori: {
          team: ["Chiori", "Chongyun", "Xingqiu (or Yelan)", "Kazuha (C2 Preferred)"],
          strategy: "A niche but fun build. Chongyun infuses Chiori's Normal Attacks with Cryo. Xingqiu applies Hydro to keep enemies Frozen. Chiori's Geo-infused Normal Attacks or skills will trigger Shatter on frozen enemies. Kazuha groups enemies and shreds Hydro/Cryo resistance",
          note: "Shatter is buffed by EM and character level, Lv. 90 > EM"
        }
      }
    }
  end

  # ========================================
  # PUBLIC METHODS
  # ========================================
  public

  def display_guide
    puts "=== CHIORI TEAMMATE SYNERGY GUIDE ==="
    puts
    display_geo_teammates
    puts
    display_non_geo_teammates
    puts
    display_team_compositions
  end

  def display_geo_teammates
    puts "=== GEO TEAMMATES ==="
    puts "Characters in this section provide direct Geo synergy, either through Geo Constructs, DEF scaling, or Geo-specific buffs."
    puts

    @geo_teammates.each do |character, data|
      puts "#{character.to_s.split('_').map(&:capitalize).join(' ')}"
      puts "Role: #{data[:role]}"
      
      if data[:abilities]
        puts "Abilities:"
        data[:abilities].each do |ability_type, ability_data|
          puts "  • #{ability_data[:name]}: #{ability_data[:description]}"
          puts "    Synergy: #{ability_data[:synergy]}"
          puts "    Note: #{ability_data[:note]}" if ability_data[:note]
        end
      end

      if data[:constellations]
        puts "Key Constellations:"
        data[:constellations].each do |const, const_data|
          puts "  • #{const.upcase}: #{const_data[:name]} - #{const_data[:description]}"
          puts "    Synergy: #{const_data[:synergy]}"
        end
      end

      if data[:recommended_artifacts]
        puts "Recommended Artifacts:"
        data[:recommended_artifacts].each { |artifact| puts "  • #{artifact}" }
      end

      puts "Overall Synergy: #{data[:overall_synergy]}" if data[:overall_synergy]
      puts "Note: #{data[:note]}" if data[:note]
      puts "---"
    end
  end

  def display_non_geo_teammates
    puts "=== NON-GEO TEAMMATES ==="
    puts "These characters offer powerful buffs or reactions that amplify Chiori's personal damage or the team's overall output."
    puts

    @non_geo_teammates.each do |character, data|
      puts "#{character.to_s.split('_').map(&:capitalize).join(' ')}"
      puts "Role: #{data[:role]}"
      puts "Synergy: #{data[:synergy]}" if data[:synergy]
      puts "Note: #{data[:note]}" if data[:note]
      puts "---"
    end
  end

  def display_team_compositions
    puts "=== TEAM COMPOSITIONS ==="
    puts

    @team_compositions.each do |category, teams|
      puts "#{category.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')}:"
      teams.each do |team_name, team_data|
        puts "  #{team_name.to_s.gsub('_', ' ').split.map(&:capitalize).join(' ')}:"
        puts "    Team: #{team_data[:team].join(' / ')}"
        puts "    Strategy: #{team_data[:strategy]}"
        puts "    Note: #{team_data[:note]}" if team_data[:note]
        puts
      end
    end
  end

  def get_character_synergy(character_name)
    character_key = character_name.downcase.gsub(' ', '_').to_sym
    
    geo_character = @geo_teammates[character_key]
    non_geo_character = @non_geo_teammates[character_key]
    
    if geo_character
      return geo_character
    elsif non_geo_character
      return non_geo_character
    else
      return "Character not found in guide"
    end
  end

  def get_team_recommendations(chiori_constellation = "C0")
    recommendations = []
    
    case chiori_constellation.upcase
    when "C0"
      recommendations << @team_compositions[:sub_dps_chiori_geo][:itto_hypercarry]
      recommendations << @team_compositions[:sub_dps_chiori_non_geo][:double_geo_core]
    when "C6"
      recommendations << @team_compositions[:dps_chiori_c6][:on_field_hypercarry]
      recommendations << @team_compositions[:dps_chiori_c6][:on_field_plunge]
    else
      recommendations = @team_compositions.values.flatten
    end
    
    recommendations
  end

  def search_by_role(role_keyword)
    results = {}
    
    @geo_teammates.each do |char, data|
      if data[:role].downcase.include?(role_keyword.downcase)
        results[char] = data
      end
    end
    
    @non_geo_teammates.each do |char, data|
      if data[:role].downcase.include?(role_keyword.downcase)
        results[char] = data
      end
    end
    
    results
  end
end

# ========================================
# USAGE EXAMPLE
# ========================================
if __FILE__ == $0
  guide = ChioriGuide.new
  
  # Display the full guide
  guide.display_guide
  
  # Example of searching for specific information
  puts "\n=== SEARCHING FOR SUPPORT CHARACTERS ==="
  support_chars = guide.search_by_role("support")
  support_chars.each do |char, data|
    puts "#{char}: #{data[:role]}"
  end
  
  # Example of getting team recommendations
  puts "\n=== C6 CHIORI TEAM RECOMMENDATIONS ==="
  c6_teams = guide.get_team_recommendations("C6")
  c6_teams.each do |team|
    puts "Team: #{team[:team].join(' / ')}"
    puts "Strategy: #{team[:strategy]}"
    puts "---"
  end
end
