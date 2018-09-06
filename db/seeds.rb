# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spells_list = [
  ['Blocken', 'Passiv', 0, 2], # Krieger # TODO: Passive enum skill_type
  ['Parieren', 'Passiv', 0, 2],
  ['Schlachtruf', 'Zauber', 0, 2],
  ['Spott', 'Zauber', 0, 2],
  ['Sturmangriff', 'Zauber', 0, 2],
  ['Tiefe Wunden', 'Zauber', 0, 2],
  ['Blocken', 'Passiv', 1, 2], # Paladin
  ['Parieren', 'Passiv', 1, 2],
  ['Erlösung', 'Zauber', 1, 2],
  ['Gottesschild', 'Zauber', 1, 2],
  ['Grenzenloser Glaube', 'Zauber', 1, 2],
  ['Hand der Abrechnung', 'Zauber', 1, 2],
  ['Handauflegung', 'Zauber', 1, 2],
  ['Herz des Kreuzfahrers', 'Zauber', 1, 2],
  ['Kreuzfahrerstoß', 'Zauber', 1, 2],
  ['Nachsinnen', 'Zauber', 1, 2],
  ['Segen der Freiheit', 'Zauber', 1, 2],
  ['Tyrs Errettung', 'Zauber', 1, 2],
  ['Arkane Intelligenz', 'Zauber', 6, 2], # Magier
  ['Blinzeln', 'Zauber', 6, 2],
  ['Blinzeln', 'Zauber', 6, 2],
  ['Blinzeln', 'Zauber', 6, 2],
  ['Blinzeln', 'Zauber', 6, 2],
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
# skill_list:
#
# name | description | bound_attribute | skill_type
#
#
# enum bound_attribute: 
#
# strength | agility | intellect | cunning | willpower | presence
#
#
# enum skill_type
#
# common | weapon | spell | ultimate | profession
#
###

skill_list = [
  ['Athletik', 'Description', 0, 0],
  ['Sternenkunde', 'Description', 2, 0],
  ['Charme', 'Description', 5, 0],
  ['Mechanik', 'Description', 2, 0],
  ['Disziplin', 'Description', 4, 0],
  ['Einschüchterung', 'Description', 4, 0],
  ['Führungsqualität', 'Description', 5, 0],
  ['Heimlichkeit', 'Description', 3, 0],
  ['Körperbeherrschung', 'Description', 1, 0],
  ['Medizin', 'Description', 2, 0],
  ['Pilot', 'Description', 1, 0],
  ['Straßenwissen', 'Description', 3, 0],
  ['Täuschung', 'Description', 3, 0],
  ['Überleben', 'Description', 3, 0],
  ['Verhandeln', 'Description', 5, 0],
  ['Wachsamkeit', 'Description', 4, 0],
  ['Wahrnehmung', 'Description', 3, 0],
  ['Widerstandskraft', 'Description', 0, 0],
  ['Wissen', 'Description', 2, 0],
]

Race.all.each do |race|
  race.destroy!
end

race_list.each do |name|
  Race.create name: name
end

Klass.all.each do |klass|
  klass.destroy!
end

klass_list.each do |name|
  Klass.create name: name
end

Skill.all.each do |skill|
  skill.destroy!
end

skill_list.each do |skill|
  Skill.create name: skill[0], description: skill[1], bound_attribute: skill[2], skill_type: skill[3]
end



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
    
Auge von Kilrogg
Schatten  
Hexenmeister
    
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
    
Dämon kommandieren
Physisch  
Hexenmeister
    
Dämon kontrollieren
Passiv
Physisch  
Hexenmeister
    
Dämonen aufspüren
Physisch  
Jäger
    
Dämonensklave
Schatten  
Hexenmeister
    
Dämonisches Tor
Schatten  
Hexenmeister
    
Drachkin aufspüren
Physisch  
Jäger
    
Eisblock
Frost 
Magier
    
Draenei, Lichtgeschmiedeter DraeneiElekk des Exarchen beschwören
Beschwörung
Heilig  
    
Elementare aufspüren
Physisch  
Jäger
    
Erbarmungslose Entschlossenheit
Schatten  
Hexenmeister
    
Erfrischungen herbeizaubern
Arkan 
Magier
    

    
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
    
Fluch aufheben
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
    
Furcht
Schatten  
Hexenmeister
    
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
    
Gesundheitsstein herstellen
Schatten  
Hexenmeister
    
    
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
    
Lebenslinie
Schatten  
Hexenmeister
    
Leerwandler beschwören
Beschwörung
Schatten  
Hexenmeister
    
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
    
Nachtelf, WorgenPortal: Darnassus
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
    
UntotPortal: Unterstadt
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
    
Ritual der Beschwörung
Schatten  
Hexenmeister
    
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
    
Seele entziehen
Physisch  
Hexenmeister
    
Seelenbrunnen erschaffen
Schatten  
Hexenmeister
    
Seelensplitter
Physisch  
Hexenmeister
    
Seelensplitter
Physisch  
Hexenmeister
    
Seelenstein
Schatten  
Hexenmeister
    

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
    

    
Sukkubus beschwören
Beschwörung
Schatten  
Hexenmeister
    
Teleport: Boralus
Arkan 
Magier
    
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
    
Teufelsjäger beschwören
Beschwörung
Schatten  
Hexenmeister
    
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
    
Verbannen
Schatten  
Hexenmeister
    
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
    
Verwandlung
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
    
Wichtel beschwören
Beschwörung
Schatten  
Hexenmeister
    

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
