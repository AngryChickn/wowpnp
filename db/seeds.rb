puts 'Start Seeding...'

###
# spell_list:
#
# name | description | bound_attribute | klass_id
#
#
# enum bound_attribute: 
#
# strength | agility | intellect | cunning | willpower | presence
#
###

spells_list = [
  ['Blocken', 'Passiv', 0, 1], # Krieger # TODO: Passive enum skill_type and move to own list
  ['Parieren', 'Passiv', 0, 1],
  ['Schlachtruf', 'Zauber', 5, 1],
  ['Spott', 'Zauber', 5, 1],
  ['Sturmangriff', 'Zauber', 0, 1],
  ['Tiefe Wunden', 'Zauber', 0, 1],
  ['Blocken', 'Passiv', 0, 2], # Paladin
  ['Parieren', 'Passiv', 0, 2],
  ['Erlösung', 'Zauber', 2, 2],
  ['Gottesschild', 'Zauber', 2, 2],
  ['Grenzenloser Glaube', 'Zauber', 2, 2],
  ['Hand der Abrechnung', 'Zauber', 2, 2],
  ['Handauflegung', 'Zauber', 2, 2],
  ['Hammer der Gerechtigkeit', 'Zauber', 2, 2],
  ['Kreuzfahrerstoß', 'Zauber', 2, 2],
  ['Nachsinnen', 'Zauber', 2, 2],
  ['Segen der Freiheit', 'Zauber', 2, 2],
  ['Tyrs Errettung', 'Zauber', 2, 2],
  ['Arkane Intelligenz', 'Zauber', 2, 7], # Magier
  ['Erfrischungen herbeizaubern', 'Zauber', 2, 7],
  ['Fluch aufheben', 'Zauber', 2, 7],
  ['Verwandlung', 'Zauber', 2, 7],
  ['Blinzeln', 'Zauber', 2, 7],
  ['Arkane Geschosse', 'Zauber', 2, 7],
  ['Feuerball', 'Zauber', 2, 7],
  ['Pyroschlag', 'Zauber', 2, 7],
  ['Frotzblitz', 'Zauber', 2, 7],
  ['Frostrüstung', 'Zauber', 2, 7],
  ['Feuerschlag', 'Zauber', 2, 7],
  ['Frostnova', 'Zauber', 2, 7],
  ['Blizzard', 'Zauber', 2, 7],
  ['Teleport: Stormwind', 'Zauber', 2, 7],
  ['Teleport: Ogrimmar', 'Zauber', 2, 7],
  ['Auge von Kilrogg', 'Zauber', 2, 8], # Hexenmeister
  ['Dämonensklave', 'Zauber', 2, 8],
  ['Furcht', 'Zauber', 2, 8],
  ['Gesundheitsstein herstellen', 'Zauber', 2, 8],
  ['Lebenslinie', 'Zauber', 2, 8],
  ['Leerwandler beschwören', 'Zauber', 2, 8],
  ['Erbarmungslose Entschlossenheit', 'Zauber', 2, 8],
  ['Ritual der Beschwörung', 'Zauber', 2, 8],
  ['Seele entziehen', 'Zauber', 2, 8],
  ['Seelenstein', 'Zauber', 2, 8],
  ['Sukkubus beschwören', 'Zauber', 2, 8],
  ['Teufelsjäger beschwören', 'Zauber', 2, 8],
  ['Verbannen', 'Zauber', 2, 8],
  ['Wichtel beschwören', 'Zauber', 2, 8],
  ['Schattenblitz', 'Zauber', 2, 8],
  ['Feuerbrand', 'Zauber', 2, 8],
  ['Verderbnis', 'Zauber', 2, 8],
  ['Lebensraub', 'Zauber', 2, 8],
]

race_list = [
  'Mensch',
  'Zwerg',
  'Nachtelf',
  'Gnom',
  'Ork',
  'Troll',
  'Taure',
  'Untoter',
]

klass_list = [
  'Krieger',
  'Paladin', 
  'Jäger',
  'Schamane',
  'Druide',
  'Schurke',
  'Magier',
  'Hexenmeister',
  'Priester',
]

###
# skill_list: (common)
#
# name | description | bound_attribute 
#
#
# enum bound_attribute: 
#
# strength | agility | intellect | cunning | willpower | presence
#
###

skill_list = [
  ['Athletik', '#MISSING_FIELD#', 0],
  ['Sternenkunde', '#MISSING_FIELD#', 2],
  ['Charme', '#MISSING_FIELD#', 5],
  ['Mechanik', '#MISSING_FIELD#', 2],
  ['Disziplin', '#MISSING_FIELD#', 4],
  ['Einschüchterung', '#MISSING_FIELD#', 4],
  ['Führungsqualität', '#MISSING_FIELD#', 5],
  ['Heimlichkeit', '#MISSING_FIELD#', 3],
  ['Körperbeherrschung', '#MISSING_FIELD#', 1],
  ['Medizin', '#MISSING_FIELD#', 2],
  ['Pilot', '#MISSING_FIELD#', 1],
  ['Straßenwissen', '#MISSING_FIELD#', 3],
  ['Täuschung', '#MISSING_FIELD#', 3],
  ['Überleben', '#MISSING_FIELD#', 3],
  ['Verhandeln', '#MISSING_FIELD#', 5],
  ['Wachsamkeit', '#MISSING_FIELD#', 4],
  ['Wahrnehmung', '#MISSING_FIELD#', 3],
  ['Widerstandskraft', '#MISSING_FIELD#', 0],
  ['Wissen', '#MISSING_FIELD#', 2],
]

Race.all.each do |race|
  race.destroy!
end

Klass.all.each do |klass|
  klass.destroy!
end

Skill.all.each do |skill|
  skill.destroy!
end

# TODO: Make race and class enums
puts 'Create Races...'

race_list.each do |name|
  Race.create name: name
end

puts 'Create Classes...'

klass_list.each do |name|
  Klass.create name: name
end

puts 'Create Common Skills...'

# Takes params as array
def generate_skills(params)
  # 6 ranks for skills, since a characters max attribute can only be 6 ATM
  6.times do |i|
    Skill.create name: generate_skill_name(params[:name], i),
                 bound_attribute: params[:bound_attribute],
                 description: params[:descriptions][i],
                 klass_id: params[:klass_id],
                 skill_type: params[:skill_type]
  end
end

def generate_skill_name(name, level)
  "#{name} (Rang #{level})"
end

skill_list.each do |skill|
  generate_skills name: skill[0],
                  bound_attribute: skill[2],
                  descriptions: [skill[1], skill[1], skill[1], skill[1], skill[1], skill[1]],
                  skill_type: :common
end

puts 'Create Spells...'

spells_list.each do |spell|
  generate_skills name: spell[0],
                  bound_attribute: spell[2],
                  descriptions: [spell[1], spell[1], spell[1], spell[1], spell[1], spell[1]],
                  klass_id: spell[3],
                  skill_type: :common
end

=begin

Adlerauge
Arkan 
Jäger
    
Arkaner Linguist
Arkan 
Magier
    
Aspekt der Schildkröte
Physisch  
Jäger
    
Aspekt des Chamäleons
Natur 
Jäger
    
Aspekt des Geparden
Physisch  
Jäger
    
Astraler Rückruf
Natur 
Schamane
    
Astralverschiebung
Physisch  
Schamane
    
Aufdeckung
Physisch  
Schurke
    
Aufdeckung
Physisch  
Schurke
    
Auferstehung
Heilig  
Priester
    
Aufwachen
Physisch  
Jäger
        
Bärengestalt
Gestaltwandel
Physisch  
Druide
    
Begleiter 1 rufen
Physisch  
Jäger
    
Begleiter 2 rufen
Physisch  
Jäger
    
Begleiter 3 rufen
Physisch  
Jäger
    
Begleiter 4 rufen
Physisch  
Jäger
    
Begleiter 5 rufen
Physisch  
Jäger
    
Begleiter freigeben
Physisch  
Jäger
    
Begleiter kommandieren
Physisch  
Jäger
    
Begleiter kontrollieren
Passiv
Physisch  
Jäger
    
Begleiter kontrollieren
Passiv
Physisch  
Jäger
    

    
    

    
Blutrote Phiole
Natur 
Schurke
    
Dämonen aufspüren
Physisch  
Jäger
    
    
Drachkin aufspüren
Physisch  
Jäger
    
Draenei, Lichtgeschmiedeter DraeneiElekk des Exarchen beschwören
Beschwörung
Heilig  
    
Elementare aufspüren
Physisch  
Jäger
    
    
    
Fallen entdecken
Passiv
Physisch  
Schurke
    
Fernsicht
Natur 
Schamane
    
Feuerwerk
Physisch  
Jäger
    
Finte
Physisch  
Schurke
    
Flattern
Physisch  
Druide
    
Flinken Fußes
Passiv
Physisch  
Schurke
    

Arkan 
Magier
    
Fluggestalt
Natur 
Druide
    
Fluggestalt
Gestaltwandel
Physisch  
Druide
    
Freizaubern
Natur 
Druide
    
Freund des Waldes
Physisch  
Druide
    
Frostnova
Frost 
Magier
    
 
Gedankenkontrolle
Schatten  
Priester
    
Gegenzauber
Arkan 
Magier
    
Geist der Ahnen
Natur 
Schamane
    
Geisterwolf
Natur 
Schamane
    
    
Draenei, Lichtgeschmiedeter DraeneiGroßen Elekk des Exarchen beschwören
Beschwörung
Heilig  
    
TaurenGroßen Kodo der Sonnenläufer beschwören
Beschwörung
Heilig  
    
    
    
Hauen
Physisch  
Druide
    
Hauen
Physisch  
Druide
    
Heilige Pein
Heilig  
Priester
    
Heldenhafter Sprung
Physisch  
Krieger
    
Heldenhafter Wurf
Physisch  
Krieger
    
AllianzHeldentum
Natur 
Schamane
    
    
Hirschgestalt
Gestaltwandel
Physisch  
Druide
    
Hol' die Beute!
Physisch  
Jäger
    
Humanoide aufspüren
Physisch  
Jäger
    
Humanoide aufspüren
Physisch  
Druide
    
Hybridenbande
Natur 
Jäger
    
Illusion
Physisch  
Magier
    
Goblin, Hochbergtauren, Orc, Pandaren, Tauren, TrollKampfrausch
Natur 
Schamane
    
Katzengestalt
Gestaltwandel
Physisch  
Druide
    
Katzenhafte Anmut
Physisch  
Druide
    
Knurren
Physisch  
Druide
    
TaurenKodo der Sonnenläufer beschwören
Beschwörung
Heilig  
    
    
Kritische Treffer
Passiv
Physisch  
Jäger
    
Kritische Treffer
Passiv
Physisch  
Schurke
    
Langsamer Fall
Arkan 
Magier
    
   
    
Leuchtfeuer
Arkan 
Jäger
    
Machtwort: Barriere
Heilig  
Priester
    
Machtwort: Seelenstärke
Heilig  
Priester
    
Magiebannung
Heilig  
Priester
    
Mantel der Schatten
Physisch  
Schurke
    
Massenbannung
Heilig  
Priester
    
Mechanische Einheiten aufspüren
Physisch  
Jäger
    
Mechanische Prägungsmatrix
Natur 
Jäger
    
Mondfeuer
Lunar
Arkan 
Druide

Mondschwingengestalt des Erzdruiden
Gestaltwandel
Physisch  
Druide
    
Nachwachsen
Natur 
Druide
    
Parieren
Passiv
Physisch  
Schurke
    
Portal: Boralus
Arkan 
Magier
    
Portal: Dalaran - Nordend
Arkan 
Magier

    
Portal: Dazar'alor
Arkan 
Magier
    
TaurenPortal: Donnerfels
Arkan 
Magier
    
Gnom, ZwergPortal: Eisenschmiede
Arkan 
Magier
    
DraeneiPortal: Exodar
Arkan 
Magier
    
Portal: Kriegsspeer
Arkan 
Magier
    
Goblin, Nachtgeborener, Orc, Pandaren, TrollPortal: Orgrimmar
Arkan 
Magier
    
Portal: Shattrath
Arkan 
Magier
    
Portal: Shattrath
Arkan 
Magier
    
BlutelfPortal: Silbermond
Arkan 
Magier
    
Portal: Steinard
Arkan 
Magier
    
Portal: Sturmschild
Arkan 
Magier
    
Leerenelf, Lichtgeschmiedeter Draenei, Mensch, PandarenPortal: Sturmwind
Arkan 
Magier
    
Portal: Tal der Ewigen Blüten
Arkan 
Magier
    
Portal: Tal der Ewigen Blüten
Arkan 
Magier
    
Portal: Theramore
Arkan 
Magier
    
Portal: Tol Barad
Arkan 
Magier
    
Portal: Tol Barad
Arkan 
Magier

    
Reinigen
Natur 
Schamane
    
Reinkarnation
Passiv
Natur 
Schamane
    
Reisegestalt
Gestaltwandel
Physisch  
Druide
    
Riesen aufspüren
Physisch  
Jäger
    
    
Mensch, ZwergSchlachtross beschwören
Beschwörung
Heilig  

    
Schreckensross
Beschwörung
Physisch  
    
Schreddern
Physisch  
Druide
    
Schurkenhandel
Physisch  
Schurke

    

Sicheres Fallen
Passiv
Physisch  
Schurke
    
Sonnenfeuer
Solar
Natur 
Druide
    

    
Sprinten
Physisch  
Schurke
    
Spurt
Physisch  
Druide
    
Mensch, ZwergStreitross beschwören
Beschwörung
Heilig  
    

    
    
Teleport: Dalaran - Nordend
Arkan 
Magier
    
Teleport: Dalaran - Verheerte Inseln
Arkan 
Magier
    
Nachtelf, WorgenTeleport: Darnassus
Arkan 
Magier
    
Teleport: Dazar'alor
Arkan 
Magier
    
TaurenTeleport: Donnerfels
Arkan 
Magier
    
Gnom, ZwergTeleport: Eisenschmiede
Arkan 
Magier
    
DraeneiTeleport: Exodar
Arkan 
Magier
    
Teleport: Halle des Wächters
Arkan 
Magier
    
Teleport: Kriegsspeer
Arkan 
Magier
    
Teleport: Mondlichtung
Arkan 
Druide
    
Goblin, Nachtgeborener, Orc, Pandaren, TrollTeleport: Orgrimmar
Arkan 
Magier
    
Teleport: Shattrath
Arkan 
Magier
    
Teleport: Shattrath
Arkan 
Magier
    
BlutelfTeleport: Silbermond
Arkan 
Magier
    
Teleport: Steinard
Arkan 
Magier
    
Teleport: Sturmschild
Arkan 
Magier
    
Leerenelf, Lichtgeschmiedeter Draenei, Mensch, PandarenTeleport: Sturmwind
Arkan 
Magier
    
Teleport: Tal der Ewigen Blüten
Arkan 
Magier
    
Teleport: Tal der Ewigen Blüten
Arkan 
Magier
    
Teleport: Theramore
Arkan 
Magier
    
Teleport: Tol Barad
Arkan 
Magier
    
Teleport: Tol Barad
Arkan 
Magier
    
UntotTeleport: Unterstadt
Arkan 
Magier
    
Teufelsblitz
Einfacher Angriff
Feuer 
Teufelswichtel
    
    
Teufelsross
Beschwörung
Physisch  
    
BlutelfThalassisches Schlachtross beschwören
Beschwörung
Heilig  
    
BlutelfThalassisches Streitross beschwören
Beschwörung
Heilig  
    

    
Tier füttern
Physisch  
Jäger
    
Tier heilen
Natur 
Jäger
    
Tier wiederbeleben
Natur 
Jäger
    
Tot spielen
Physisch  
Jäger
    
Totem der Energiespeicherung
Natur 
Schamane
    
Totem der Erdbindung
Natur 
Schamane
    
Totem des Erdstoßes
Erdtotem
Natur 
Schamane
    
Totstellen
Physisch  
Jäger
    
Traumwanderung
Natur 
Druide
    
Tritt
Physisch  
Schurke
    

Überwintern
Natur 
Druide
    
Unendlicher Atem
Schatten  
Hexenmeister
    
Untote aufspüren
Physisch  
Jäger
    
Untote fesseln
Heilig  
Priester
    
Uraltes Wissen der Zandalari
Natur 
Jäger
    
    
Verblassen
Schatten  
Priester
    
Verborgenes aufspüren
Physisch  
Jäger

Verhexen
Natur 
Schamane
    
Verhexen
Natur 
Schamane
    
Verhexen
Natur 
Schamane
    
Verhexen
Natur 
Schamane
    
Verhexen
Natur 
Schamane
    
Verhexen
Natur 
Schamane
    
Verhexen
Natur 
Schamane
    
Verhexen
Natur 
Schamane
    
Verhüllender Nebel
Physisch  
Schurke
    

Truthahn
Arkan 
Magier
    
Verwandlung
Stachelschwein
Arkan 
Magier
    
Verwandlung
Schwein
Arkan 
Magier
    
Verwandlung
Schildkröte
Arkan 
Magier
    
Verwandlung
Hummel
Arkan 
Magier
    
Verwandlung
Bärenjunges
Arkan 
Magier
    
Verwandlung
Affe
Arkan 
Magier
    
Verwandlung
Pinguin
Arkan 
Magier
    
Verwandlung
Pfau
Arkan 
Magier
    
Verwandlung
Schaf
Arkan 
Magier
    
Verwandlung
Hase
Arkan 
Magier
    
Verwandlung
Schwarze Katze
Arkan 
Magier
    
Verwandlung
Terrorhorn
Arkan 
Magier
    
Wassergestalt
Natur 
Druide
    
Wasserwandeln
Natur 
Schamane
    
    

Wiederbeleben
Natur 
Druide
    
Wiedergeburt
Natur 
Druide
    
Wildtier zähmen
Natur 
Jäger
    
Wildtiere aufspüren
Physisch  
Jäger
    
Wildtiere aufspüren
Physisch  
Druide
    
Wildtierkunde
Natur 
Jäger
    
Wucherwurzeln
Natur 
Druide
    
Wutentbranntes Zermalmen
PvP-Talent
Physisch  
Druide
    
Zauberraub
Arkan 
Magier
    
Zeitkrümmung
Arkan 
Magier
    
Zerfleischen
Physisch  
Druide
    
Zorn des Adlers
Physisch  
Jäger
    
Zorn des Schläfers
Natur 
Druide
    
Zuschlagen
Physisch  
Krieger
    
Schloss knacken
24  
Physisch  
Schurke
=end
