

# ========================================
# CHARACTER STATS
# ========================================
def character_stats
  {
    name: "Chiori",
    level: "90/90",
    constellation: 3,
    attributes: {
      hp: 16218,
      atk: 1349,
      def: 2404,
      elemental_mastery: 50,
      crit_rate: 85.3,
      crit_dmg: 218.2,
      energy_recharge: 100.0,
      healing_bonus: 0.0,
      incoming_healing_bonus: 0.0,
      shield_strength: 15.0,
      pyro_dmg_bonus: 25.6,
      hydro_dmg_bonus: 25.6,
      electro_dmg_bonus: 25.6,
      cryo_dmg_bonus: 25.6,
      geo_dmg_bonus: 156.2,
      anemo_dmg_bonus: 25.6,
      dendro_dmg_bonus: 25.6,
      physical_dmg_bonus: 0.0,
      normal_atk_spd: 100.0,
      charged_atk_spd: 100.0
    },
    debuffs: {
      enduring_rock: "Shielded characters dealing DMG to enemies will decrease their Geo RES by 20% for 15s."
    },
    party: ["Xilonen"],
    source_samples: "When the Source Samples are active, nearby opponents' corresponding Elemental RES will decrease.",
    elemental_skill_level: 10,
    buffs: {
      resonance_reactions: {
        geo_resonance: "Increases Shield Strength by 15%. Increases DMG dealt by characters that protected by a shield by 15%."
      },
      self: {
        tailoring_effect: "Chiori gains Geo Infusion for 5s.",
        c6_effect: "At C6, Chiori's Normal Attack DMG is increased by 235% of her DEF for 5s.",
        ascension_4: "When a nearby party member creates a Geo Construct, Chiori will gain 20% Geo DMG Bonus for 20s."
      },
      party: ["Xilonen"]
    },
    weapons: {
      uraku_misugiri: {
        name: "Uraku Misugiri",
        refinement: 1,
        level: "90/90",
        effect: "After a nearby active character deals Geo DMG, the wielder will gain another 16% Normal Attack DMG and 24% Elemental Skill DMG for 15s."
      },
      peak_patrol_song: {
        name: "Peak Patrol Song",
        refinement: 1,
        effect: "When this effect reaches 2 stacks or the 2nd stack's duration is refreshed, increase all nearby party members' All Elemental DMG Bonus by 8% for every 1,000 DEF the equipping character has, up to a maximum of 25.6%, for 15s.",
        wielder_def: 3500
      }
    },
    artifacts: {
      husk_of_opulent_dreams: "Curiosity can stack up to 4 times, each providing 6% DEF and a 6% Geo DMG Bonus.",
      husk_stacks: 4,
      scroll_of_hero: "When the equipping character triggers an Elemental Reaction involving their Elemental Type, all nearby party members gain 12% DMG Bonus of Elemental Types involved in that reaction for 15s. When the equipping character is in Nightsoul's Blessing when triggering this, an additional 28% DMG Bonus of Elemental Types involved in that reaction will be granted to all characters for 20s.",
      element_involved: "Geo",
      nightsouls_blessing: true
    },

    artifact_stats: {
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
def damage_calculations
  {
    normal_attacks: {
      talent_level: 10,
      hits: {
        "1-Hit": { non_crit: 2394, crit: 7618, avg: 6850 },
        "2-Hit": { non_crit: 2269, crit: 7220, avg: 6493 },
        "3-Hit (1/2)": { non_crit: 1474, crit: 4690, avg: 4218 },
        "4-Hit": { non_crit: 3640, crit: 11582, avg: 10415 },
        "Charged Attack (1/2)": { non_crit: 2354, crit: 7490, avg: 6735 },
        "Plunge DMG": { non_crit: 2771, crit: 8817, avg: 7928 },
        "Low Plunge": { non_crit: 5541, crit: 17631, avg: 15853 },
        "High Plunge": { non_crit: 6921, crit: 22022, avg: 19802 }
      }
    },
    
    elemental_skill: {
      talent_level: 13,
      hits: {
        "Automaton Doll: Sode Slash": { non_crit: 14528, crit: 46227, avg: 41567 },
        "Upward Thrust Attack DMG": { non_crit: 26422, crit: 84073, avg: 75599 },
        "Simple Automaton Doll: Kinu (C2)": { non_crit: 24697, crit: 78586, avg: 70665 }
      }
    },
    
    elemental_burst: {
      talent_level: 10,
      hits: {
        "Skill DMG": { non_crit: 32650, crit: 103891, avg: 93419 }
      }
    },
    
    reactions_dmg: {
      "Lunar-charged": { non_crit: 2412, crit: nil, avg: 2412 },
      "Bloom": { non_crit: 3620, crit: nil, avg: 3620 },
      "Hyperbloom": { non_crit: 5430, crit: nil, avg: 5430 },
      "Burgeon": { non_crit: 5430, crit: nil, avg: 5430 },
      "Burning": { non_crit: 568, crit: nil, avg: 568 },
      "Swirl": { non_crit: 1207, crit: nil, avg: 1207 },
      "Superconduct": { non_crit: 2715, crit: nil, avg: 2715 },
      "Electro-charged": { non_crit: 3620, crit: nil, avg: 3620 },
      "Overloaded": { non_crit: 6250, crit: nil, avg: 6250 },
      "Shattered": { non_crit: 5430, crit: nil, avg: 5430 }
    }
  }
end
