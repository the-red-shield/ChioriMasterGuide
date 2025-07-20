# ========================================
# CHARACTER STATS
# ========================================
def character_stats
  {
    name: "Chiori",
    level: "90/90",
    constellation: 0,
    attributes: {
      hp: 16218,
      atk: 1349,
      def: 1890,
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
      geo_dmg_bonus: 132.2,
      anemo_dmg_bonus: 25.6,
      dendro_dmg_bonus: 25.6,
      physical_dmg_bonus: 0.0,
      normal_atk_spd: 100.0,
      charged_atk_spd: 100.0
    },
    artifact_stats: {
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
# PARTY SETUP
# ========================================
def party_setup
  {
    source_samples: {
      active: true,
      level: 10
    },
    debuffs: {
      enduring_rock: "Shielded characters dealing DMG to enemies will decrease their Geo RES by 20% for 15s."
    },
    party_members: [
      {
        name: "Xilonen",
        constellation: 0,
        weapon: {
          name: "Peak Patrol Song",
          refinement: 1,
          effect: "When this effect reaches 2 stacks or the 2nd stack's duration is refreshed, increase all nearby party members' All Elemental DMG Bonus by 8% for every 1,000 DEF the equipping character has, up to a maximum of 25.6%, for 15s.",
          wielder_def: 3500
        },
        artifacts: {
          scroll_of_hero: "When the equipping character triggers an Elemental Reaction involving their Elemental Type, all nearby party members gain 12% DMG Bonus of Elemental Types involved in that reaction for 15s. When the equipping character is in Nightsoul's Blessing when triggering this, an additional 28% DMG Bonus of Elemental Types involved in that reaction will be granted to all characters for 20s.",
          element_involved: "Geo",
          nightsouls_blessing: true
        }
      },
      {
        name: "Amber",
        constellation: 0,
        weapon: {
          name: "Hunters Bow",
          refinement: 1,
          effect: "No buffing"
        }
      },
      {
        name: "Barbara",
        constellation: 0,
        weapon: {
          name: "Apprentices Notes",
          refinement: 1,
          effect: "No buffing"
        }
      }
    ],
    active_weapons: {
      uraku_misugiri: {
        name: "Uraku Misugiri",
        refinement: 1,
        effect: "After a nearby active character deals Geo DMG, the wielder will gain another 16% Normal Attack DMG and 24% Elemental Skill DMG for 15s."
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