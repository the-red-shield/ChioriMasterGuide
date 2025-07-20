
# DuoGeoC0FoESoloTroupe.rb
# ========================================
# CHIORI C0 DUO GEO SOLO FLUTE OF EZPITZAL TROUPE BUILD DAMAGE CALCULATOR
# ========================================
# Strategy: Chiori as solo carry with Golden Troupe for enhanced Elemental Skill DMG using Flute of Ezpitzal
# Team: Chiori C0 / Geo Support / Flex / Flex
# Build Focus: Elemental Skill DMG with DEF scaling from Flute of Ezpitzal
# ========================================

class ChioriC0DuoGeoFoETroupeCalculator
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
      name: "C0 Duo Geo Solo - Flute of Ezpitzal Troupe Build",
      members: [
        { name: "Chiori", constellation: "C0", role: "Main DPS" },
        { name: "Geo Support", constellation: "C0", role: "Support" },
        { name: "Flex", constellation: "C0", role: "Support/Sub-DPS" },
        { name: "Flex", constellation: "C0", role: "Support/Sub-DPS" }
      ],
      strategy: "Duo Geo core providing resonance with Troupe set for improved off-field Elemental Skill damage with Flute of Ezpitzal weapon"
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
        atk: 1243,
        def: 2662,
        elemental_mastery: 0,
        crit_rate: 85.3,
        crit_dmg: 130.0,
        energy_recharge: 100.0,
        healing_bonus: 0.0,
        incoming_healing_bonus: 0.0,
        shield_strength: 15.0,
        pyro_dmg_bonus: 0.0,
        hydro_dmg_bonus: 0.0,
        electro_dmg_bonus: 0.0,
        cryo_dmg_bonus: 0.0,
        geo_dmg_bonus: 66.6,
        anemo_dmg_bonus: 0.0,
        dendro_dmg_bonus: 0.0,
        physical_dmg_bonus: 0.0,
        normal_atk_spd: 100.0,
        charged_atk_spd: 100.0
      }
    }
  end

  # ========================================
  # DEBUFFS SETUP
  # ========================================
  def setup_debuffs
    {
      enduring_rock: {
        name: "Enduring Rock",
        description: "Shielded characters dealing DMG to enemies will decrease their Geo RES by 20% for 15s."
      }
    }
  end

  # ========================================
  # BUFFS SETUP
  # ========================================
  def setup_buffs
    {
      resonance: {
        name: "Geo Resonance",
        description: "Increases Shield Strength by 15%. Increases DMG dealt by characters that protected by a shield by 15%."
      },
      infusion: {
        name: "Geo Infusion",
        description: "Chiori gains Geo Infusion for 5s from Tailoring effect [~A1]."
      },
      ascension_4: {
        name: "Ascension 4",
        description: "When a nearby party member creates a Geo Construct, Chiori will gain 20% Geo DMG Bonus for 20s."
      }
    }
  end

  # ========================================
  # WEAPONS SETUP
  # ========================================
  def setup_weapons
    {
      flute_of_ezpitzal: {
        name: "Flute of Ezpitzal",
        refinement: "R5",
        level: "90/90",
        description: "Increases this character's DEF by 32% for 15s when using an Elemental Skill."
      }
    }
  end

  # ========================================
  # ARTIFACTS SETUP
  # ========================================
  def setup_artifacts
    {
      golden_troupe: {
        name: "Golden Troupe",
        description: "When not on the field, Elemental Skill DMG will be further increased by 25%. This effect will be cleared 2s after taking the field.",
        substats: {
          atk_percent: 20,
          def_percent: 20,
          crit_rate: 30,
          crit_dmg: 80
        }
      }
    }
  end

  # ========================================
  # TARGET SETUP
  # ========================================
  def setup_target
    {
      name: "Custom Target",
      level: 100,
      resistance: {
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
        hits: {
          hit_1: { non_crit: 1128, crit: 2595, avg: 2379 },
          hit_2: { non_crit: 1069, crit: 2460, avg: 2255 },
          hit_3: { non_crit: 695, crit: 1598, avg: 1465 },
          hit_4: { non_crit: 1715, crit: 3945, avg: 3618 },
          charged_attack: { non_crit: 1240, crit: 2852, avg: 2615 },
          plunge_dmg: { non_crit: 1460, crit: 3358, avg: 3079 },
          low_plunge: { non_crit: 2919, crit: 6714, avg: 6157 },
          high_plunge: { non_crit: 3646, crit: 8387, avg: 7690 }
        }
      },
      elemental_skill: {
        talent_level: 10,
        hits: {
          automaton_doll_sode_slash: { non_crit: 8691, crit: 19989, avg: 18328 },
          upward_thrust_attack_dmg: { non_crit: 15806, crit: 36355, avg: 33334 },
          simple_automaton_doll_kinu: { non_crit: 14775, crit: 33982, avg: 31159 }
        }
      },
      elemental_burst: {
        talent_level: 10,
        hits: {
          skill_dmg: { non_crit: 19589, crit: 45055, avg: 41312 }
        }
      },
      reactions_dmg: {
        lunar_charged: { non_crit: 2162, crit: nil, avg: 2162 },
        bloom: { non_crit: 2604, crit: nil, avg: 2604 },
        hyperbloom: { non_crit: 3906, crit: nil, avg: 3906 },
        burgeon: { non_crit: 3906, crit: nil, avg: 3906 },
        burning: { non_crit: 326, crit: nil, avg: 326 },
        swirl: { non_crit: 868, crit: nil, avg: 868 },
        superconduct: { non_crit: 1953, crit: nil, avg: 1953 },
        electro_charged: { non_crit: 2604, crit: nil, avg: 2604 },
        overloaded: { non_crit: 3581, crit: nil, avg: 3581 },
        shattered: { non_crit: 3906, crit: nil, avg: 3906 }
      }
    }
  end

  public

  # ========================================
  # RESULT DISPLAY
  # ========================================
  def display_results
    puts "===== #{@team_composition[:name]} ====="
    puts "Strategy: #{@team_composition[:strategy]}"
    puts "\nTeam Members:"
    @team_composition[:members].each do |member|
      puts "- #{member[:name]} (#{member[:constellation]}) - #{member[:role]}"
    end
    
    puts "\nWeapon: #{@weapons[:flute_of_ezpitzal][:name]} #{@weapons[:flute_of_ezpitzal][:refinement]}"
    puts "Artifact Set: #{@artifacts[:golden_troupe][:name]}"
    
    puts "\nNormal Attack Damage (Talent Level #{@damage_calculations[:normal_attacks][:talent_level]}):"
    @damage_calculations[:normal_attacks][:hits].each do |name, values|
      puts "- #{name.to_s.gsub('_', ' ').capitalize}: #{values[:avg]} (Avg)"
    end
    
    puts "\nElemental Skill Damage (Talent Level #{@damage_calculations[:elemental_skill][:talent_level]}):"
    @damage_calculations[:elemental_skill][:hits].each do |name, values|
      puts "- #{name.to_s.gsub('_', ' ').capitalize}: #{values[:avg]} (Avg)"
    end
    
    puts "\nElemental Burst Damage (Talent Level #{@damage_calculations[:elemental_burst][:talent_level]}):"
    @damage_calculations[:elemental_burst][:hits].each do |name, values|
      puts "- #{name.to_s.gsub('_', ' ').capitalize}: #{values[:avg]} (Avg)"
    end
  end
end

# Create an instance and display the results
if __FILE__ == $0
  calculator = ChioriC0DuoGeoFoETroupeCalculator.new
  calculator.display_results
end
