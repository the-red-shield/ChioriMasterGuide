# Chiori Character Statistics
class ChioriStatistics
  # Basic character information
  def self.basic_info
    {
      name: "Chiori",
      title: "The Thundering Seamstress",
      occupation: "Court of Fontaine",
      association: "INAZUMA",
      rarity: 5,
      weapon: "Sword",
      element: "Geo",
      birth_day: 17,
      birth_month: 8,
      vision: "Geo",
      constellation: "Cisoria",
      voice_actors: {
        chinese: "陈阳",
        japanese: "竹達彩奈",
        english: "Brittany Lauda",
        korean: "Lee Da-eun"
      },
      description: "The owner of Chioriya Boutique. A tailor renowned throughout Fontaine."
    }
  end
  
  # Character Ascension Materials
  def self.ascension_materials
    {
      gems: ["Prithiva Topaz Sliver", "Prithiva Topaz Fragment", "Prithiva Topaz Chunk", "Prithiva Topaz Gemstone"],
      boss_material: "Artificed Spare Clockwork Component — Coppelia",
      local_specialty: "Dendrobium",
      common_materials: ["Spectral Husk", "Spectral Heart", "Spectral Nucleus"]
    }
  end
  
  # Skill Ascension Materials
  def self.skill_materials
    {
      talent_books: ["Teachings of Light", "Guide to Light", "Philosophies of Light"],
      weekly_boss_material: "Lightless Silk String",
      crown: "Crown of Insight"
    }
  end


  # Character Stats at different levels
  def self.stats
    [
      { level: 1, hp: 890, atk: 25.14, def: 74.19, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "0%" },
      { level: 20, hp: 2310, atk: 65.21, def: 192.45, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "0%",
        materials: "Prithiva Topaz Sliver×10, Dendrobium×3, Spectral Husk×3, Mora×20000" },
      { level: "20+", hp: 3073, atk: 86.76, def: 256.06, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "0%" },
      { level: 40, hp: 4598, atk: 129.82, def: 383.14, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "0%",
        materials: "Prithiva Topaz Fragment×3, Artificed Spare Clockwork Component — Coppelia×2, Dendrobium×10, Spectral Husk×15, Mora×40000" },
      { level: "40+", hp: 5141, atk: 145.13, def: 428.34, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "4.8%" },
      { level: 50, hp: 5915, atk: 166.97, def: 492.81, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "4.8%",
        materials: "Prithiva Topaz Fragment×6, Artificed Spare Clockwork Component — Coppelia×4, Dendrobium×20, Spectral Heart×12, Mora×60000" },
      { level: "50+", hp: 6638, atk: 187.39, def: 553.08, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "9.6%" },
      { level: 60, hp: 7420, atk: 209.46, def: 618.22, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "9.6%",
        materials: "Prithiva Topaz Chunk×3, Artificed Spare Clockwork Component — Coppelia×8, Dendrobium×30, Spectral Heart×18, Mora×80000" },
      { level: "60+", hp: 7962, atk: 224.77, def: 663.41, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "9.6%" },
      { level: 70, hp: 8751, atk: 247.04, def: 729.15, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "9.6%",
        materials: "Prithiva Topaz Chunk×6, Artificed Spare Clockwork Component — Coppelia×12, Dendrobium×45, Spectral Nucleus×12, Mora×100000" },
      { level: "70+", hp: 9293, atk: 262.36, def: 774.34, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "14.4%" },
      { level: 80, hp: 10091, atk: 284.88, def: 840.82, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "14.4%",
        materials: "Prithiva Topaz Gemstone×6, Artificed Spare Clockwork Component — Coppelia×20, Dendrobium×60, Spectral Nucleus×24, Mora×120000" },
      { level: "80+", hp: 10634, atk: 300.19, def: 886.01, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "19.2%" },
      { level: 90, hp: 11438, atk: 322.89, def: 953.01, crit_rate: "5.0%", crit_dmg: "50.0%", bonus_crit_rate: "19.2%" }
    ]
  end


  # Normal Attack: Weaving Blade
  def self.normal_attack_talent
    {
      name: "Weaving Blade",
      description: {
        normal: "Performs up to 4 rapid strikes.",
        charged: "Consumes a certain amount of Stamina to unleash 2 rapid sword strikes.",
        plunging: "Plunges from mid-air to strike the ground below, damaging opponents along the path and dealing AoE DMG upon impact."
      },
      scaling: {
        hit_1: ["49.41%", "53.43%", "57.45%", "63.2%", "67.22%", "71.82%", "78.14%", "84.46%", "90.78%", "97.67%", "104.57%", "111.46%", "118.36%", "125.25%", "132.14%"],
        hit_2: ["46.83%", "50.65%", "54.46%", "59.9%", "63.72%", "68.07%", "74.06%", "80.05%", "86.04%", "92.58%", "99.11%", "105.65%", "112.18%", "118.72%", "125.25%"],
        hit_3: ["30.42% + 30.42%", "32.89% + 32.89%", "35.37% + 35.37%", "38.9% + 38.9%", "41.38% + 41.38%", "44.21% + 44.21%", "48.1% + 48.1%", "51.99% + 51.99%", "55.88% + 55.88%", "60.13% + 60.13%", "64.37% + 64.37%", "68.61% + 68.61%", "72.86% + 72.86%", "77.1% + 77.1%", "81.35% + 81.35%"],
        hit_4: ["75.12%", "81.24%", "87.35%", "96.09%", "102.2%", "109.19%", "118.8%", "128.41%", "138.02%", "148.5%", "158.98%", "169.46%", "179.95%", "190.43%", "200.91%"],
        charged: ["54.31% + 54.31%", "58.73% + 58.73%", "63.15% + 63.15%", "69.47% + 69.47%", "73.89% + 73.89%", "78.94% + 78.94%", "85.88% + 85.88%", "92.83% + 92.83%", "99.78% + 99.78%", "107.36% + 107.36%", "114.93% + 114.93%", "122.51% + 122.51%", "130.09% + 130.09%", "137.67% + 137.67%", "145.25% + 145.25%"],
        charged_stamina: Array.new(15, "20"),
        plunge: ["63.93%", "69.14%", "74.34%", "81.77%", "86.98%", "92.93%", "101.1%", "109.28%", "117.46%", "126.38%", "135.3%", "144.22%", "153.14%", "162.06%", "170.98%"],
        low_plunge: ["127.84%", "138.24%", "148.65%", "163.51%", "173.92%", "185.81%", "202.16%", "218.51%", "234.86%", "252.7%", "270.54%", "288.38%", "306.22%", "324.05%", "341.89%"],
        high_plunge: ["159.68%", "172.67%", "185.67%", "204.24%", "217.23%", "232.09%", "252.51%", "272.93%", "293.36%", "315.64%", "337.92%", "360.2%", "382.48%", "404.76%", "427.04%"]
      }
    }
  end
  # Elemental Skill: Fluttering Hasode
  def self.elemental_skill_talent
    {
      name: "Fluttering Hasode",
      description: "Dashes nimbly forward with silken steps. Once this dash ends, Chiori will summon the automaton doll \"Tamoto\" beside her and sweep her blade upward, dealing AoE Geo DMG to nearby opponents based on her ATK and DEF.
Holding the Skill will cause it to behave differently.

Hold
Enter Aiming Mode to adjust the dash direction.

Tamoto
· Will slash at nearby opponents at intervals, dealing AoE Geo DMG based on Chiori's ATK and DEF.
· While active, if there are nearby Geo Construct(s) or Geo Construct(s) are created nearby, an additional Tamoto will be summoned next to your active character. Only 1 additional Tamoto can be summoned in this manner, and its duration is independently counted.

\"Sakura red dyes the brocade, the fragrance suffuses the sleeves, the orioles intoxicated.\"",
      scaling: {
        tamoto_dmg: [
          "82.08% ATK + 102.6% DEF", "88.24% ATK + 110.3% DEF", "94.39% ATK + 117.99% DEF", 
          "102.6% ATK + 128.25% DEF", "108.76% ATK + 135.95% DEF", "114.91% ATK + 143.64% DEF", 
          "123.12% ATK + 153.9% DEF", "131.33% ATK + 164.16% DEF", "139.54% ATK + 174.42% DEF", 
          "147.74% ATK + 184.68% DEF", "155.95% ATK + 194.94% DEF", "164.16% ATK + 205.2% DEF", 
          "174.42% ATK + 218.03% DEF", "184.68% ATK + 230.85% DEF", "194.94% ATK + 243.68% DEF"
        ],
        tamoto_duration: Array.new(15, "17s"),
        tamoto_attack_interval: Array.new(15, "3.6s"),
        upward_sweep_dmg: [
          "149.28% ATK + 186.6% DEF", "160.48% ATK + 200.6% DEF", "171.67% ATK + 214.59% DEF", 
          "186.6% ATK + 233.25% DEF", "197.8% ATK + 247.25% DEF", "208.99% ATK + 261.24% DEF", 
          "223.92% ATK + 279.9% DEF", "238.85% ATK + 298.56% DEF", "253.78% ATK + 317.22% DEF", 
          "268.7% ATK + 335.88% DEF", "283.63% ATK + 354.54% DEF", "298.56% ATK + 373.2% DEF", 
          "317.22% ATK + 396.53% DEF", "335.88% ATK + 419.85% DEF", "354.54% ATK + 443.18% DEF"
        ],
        cooldown: Array.new(15, "16s")
      }
    }
  end
  # Elemental Burst: Hiyoku: Twin Blades
  def self.elemental_burst_talent
    {
      name: "Hiyoku: Twin Blades",
      description: "Twin blades leave their sheaths as Chiori slices with the clean cuts of a master tailor, dealing AoE Geo DMG based on her ATK and DEF.

\"Master one principle, and the path to all others shall open to you.\"",
      scaling: {
        skill_dmg: [
          "256.32% ATK + 320.4% DEF", "275.54% ATK + 344.43% DEF", "294.77% ATK + 368.46% DEF", 
          "320.4% ATK + 400.5% DEF", "339.62% ATK + 424.53% DEF", "358.85% ATK + 448.56% DEF", 
          "384.48% ATK + 480.6% DEF", "410.11% ATK + 512.64% DEF", "435.74% ATK + 544.68% DEF", 
          "461.38% ATK + 576.72% DEF", "487.01% ATK + 608.76% DEF", "512.64% ATK + 640.8% DEF", 
          "544.68% ATK + 680.85% DEF", "576.72% ATK + 720.9% DEF", "608.76% ATK + 760.95% DEF"
        ],
        cooldown: Array.new(15, "13.5s"),
        energy_cost: Array.new(15, "50")
      }
    }
  end
  # Passive Talents
  def self.passive_talents
    [
      {
        name: "Brocaded Collar's Beauteous Silhouette",
        description: "When any party member is wearing an outfit apart from their default outfit, or is wearing a wind glider other than the Wings of First Flight, your party members will obtain the Swift Stride effect: Movement SPD is increased by 10%.
This effect does not take effect in Domains, Trounce Domains, and the Spiral Abyss. Swift Stride does not stack."
      },
      {
        name: "Tailor-Made",
        description: "Gain different effects depending on the next action you take within a short duration after using Fluttering Hasode's upward sweep. If you Press the Elemental Skill, you will trigger the Tapestry effect. If you Press your Normal Attack, the Tailoring effect will be triggered instead.

Tapestry
· Switches to the next character in your roster.
· Grants all your party members \"Seize the Moment\": When your active party member's Normal Attacks, Charged Attacks, and Plunging Attacks hit a nearby opponent, \"Tamoto\" will execute a coordinated attack, dealing 100% of Fluttering Hasode's upward sweep DMG as AoE Geo DMG at the opponent's location. DMG dealt this way is considered Elemental Skill DMG.
· \"Seize the Moment\" lasts 8s, and 1 of \"Tamoto\"'s coordinated attack can be unleashed every 2s. 2 such coordinated attacks can occur per \"Seize the Moment\" effect duration.

Tailoring
· Chiori gains Geo infusion for 5s.

When on the field, if Chiori does not either Press her Elemental Skill or use a Normal Attack within a short time after using Fluttering Hasode's upward sweep, the Tailoring effect will be triggered by default."
      },
      {
        name: "The Finishing Touch",
        description: "When a nearby party member creates a Geo Construct, Chiori will gain 20% Geo DMG Bonus for 20s."
      }
    ]
  end

  # Constellations
  def self.constellations
    [
      {
        level: 1,
        name: "Six Paths of Sage Silkcraft",
        description: "The AoE of the automaton doll \"Tamoto\" summoned by Fluttering Hasode is increased by 50%.
Additionally, if there is a Geo party member other than Chiori, Fluttering Hasode will trigger the following after the dash is completed:
· Summon an additional Tamoto. Only one additional Tamoto can exist at the same time, whether summoned by Chiori this way or through the presence of a Geo Construct.
· Triggers the Passive Talent \"The Finishing Touch.\" This effect requires you to first unlock the Passive Talent \"The Finishing Touch.\""
      },
      {
        level: 2,
        name: "In Five Colors Dyed",
        description: "For 10s after using Hiyoku: Twin Blades, a simplified automaton doll, \"Kinu,\" will be summoned next to your active character every 3s. Kinu will attack nearby opponents, dealing AoE Geo DMG equivalent to 170% of Tamoto's DMG. DMG dealt this way is considered Elemental Skill DMG.
Kinu will leave the field after 1 attack or after lasting 3s."
      },
      {
        level: 3,
        name: "Four Brocade Embellishments",
        description: "Increases the Level of Fluttering Hasode by 3.
Maximum upgrade level is 15."
      },
      {
        level: 4,
        name: "A Tailor's Three Courtesies",
        description: "For 8s after triggering either follow-up effect of the Passive Talent \"Tailor-Made,\" when your current active character's Normal, Charged, or Plunging Attacks hit a nearby opponent, a simplified automaton doll, \"Kinu,\" will be summoned near this opponent. You can summon 1 Kinu every 1s in this way, and up to 3 Kinu may be summoned this way during each instance of \"Tailor-Made\"'s Seize the Moment or Tailoring effect. The above effect can be triggered up to once every 15s.
Must unlock the Passive Talent \"Tailor-Made\" first."
      },
      {
        level: 5,
        name: "Two Silken Plumules",
        description: "Increases the Level of Hiyoku: Twin Blades by 3.
Maximum upgrade level is 15."
      },
      {
        level: 6,
        name: "Sole Principle Pursuit",
        description: "After triggering a follow-up effect of the Passive Talent \"Tailor-Made,\" Chiori's own Fluttering Hasode's CD is decreased by 12s. Must unlock the Passive \"Tailor-Made\" first.
In addition, the DMG dealt by Chiori's own Normal Attacks is increased by an amount equal to 235% of her own DEF."
      }
    ]
  end
  # Talent Ascension Materials
  def self.talent_ascension_materials
    {
      normal_attack: [
        { level: 2, materials: "Teachings of Light×3, Spectral Husk×6, Mora×12500" },
        { level: 3, materials: "Guide to Light×2, Spectral Heart×3, Mora×17500" },
        { level: 4, materials: "Guide to Light×4, Spectral Heart×4, Mora×25000" },
        { level: 5, materials: "Guide to Light×6, Spectral Heart×6, Mora×30000" },
        { level: 6, materials: "Guide to Light×9, Spectral Heart×9, Mora×37500" },
        { level: 7, materials: "Philosophies of Light×4, Spectral Nucleus×4, Lightless Silk String×1, Mora×120000" },
        { level: 8, materials: "Philosophies of Light×6, Spectral Nucleus×6, Lightless Silk String×1, Mora×260000" },
        { level: 9, materials: "Philosophies of Light×12, Spectral Nucleus×9, Lightless Silk String×2, Mora×450000" },
        { level: 10, materials: "Philosophies of Light×16, Spectral Nucleus×12, Lightless Silk String×2, Crown of Insight×1, Mora×700000" }
      ]
    }
  end
  
  # Helper method to get total materials for a specific ascension level
  def self.get_total_materials(level)
    case level
    when 90
      "Prithiva Topaz Sliver×10, Dendrobium×168, Spectral Husk×18, Mora×420000, Prithiva Topaz Fragment×9, Artificed Spare Clockwork Component — Coppelia×46, Spectral Heart×30, Prithiva Topaz Chunk×9, Spectral Nucleus×36, Prithiva Topaz Gemstone×6"
    when 80
      "Prithiva Topaz Sliver×10, Dendrobium×108, Spectral Husk×18, Mora×300000, Prithiva Topaz Fragment×9, Artificed Spare Clockwork Component — Coppelia×26, Spectral Heart×30, Prithiva Topaz Chunk×9, Spectral Nucleus×12"
    when 70
      "Prithiva Topaz Sliver×10, Dendrobium×63, Spectral Husk×18, Mora×200000, Prithiva Topaz Fragment×9, Artificed Spare Clockwork Component — Coppelia×14, Spectral Heart×30, Prithiva Topaz Chunk×3"
    when 60
      "Prithiva Topaz Sliver×10, Dendrobium×33, Spectral Husk×18, Mora×120000, Prithiva Topaz Fragment×9, Artificed Spare Clockwork Component — Coppelia×6, Spectral Heart×12"
    when 50
      "Prithiva Topaz Sliver×10, Dendrobium×13, Spectral Husk×18, Mora×60000, Prithiva Topaz Fragment×3, Artificed Spare Clockwork Component — Coppelia×2"
    when 40
      "Prithiva Topaz Sliver×10, Dendrobium×3, Spectral Husk×3, Mora×20000"
    else
      "Invalid level"
    end
  end
  
  # Method to get talent materials for a specific level
  def self.get_talent_materials(talent_type, level)
    case talent_type
    when :normal_attack, :elemental_skill, :elemental_burst
      materials = talent_ascension_materials[:normal_attack].find { |item| item[:level] == level }
      materials ? materials[:materials] : "Invalid level"
    else
      "Invalid talent type"
    end
  end
end