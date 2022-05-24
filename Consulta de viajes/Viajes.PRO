code=2000
domains 
ciudad,caracteristica,respuesta = symbol 

predicates 
definir_viaje
quiero(caracteristica)
noquiero(caracteristica) 
chequear_si(caracteristica) 
registrar(caracteristica,respuesta) 
hoteles(ciudad) 
destino(ciudad) 
saberMas(ciudad)
 

database 
db_quiero(caracteristica) 
db_noquiero(caracteristica) 

goal 
definir_viaje. 

Clauses  

definir_viaje :- makewindow(2,0,0," ",0,0,25,80),nl,nl, 
makewindow(1,9,112,"¨Y a d¢nde viajar?",5,20,20,56),nl,nl, destino(X), clearwindow,nl, write("Destino recomendado:"),nl,
nl,nl, write("-",X),nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl, write("Presione Enter para conocer conocer los hoteles       recomendados"),nl, 
readln(_),hoteles(X), nl,nl,nl,nl,nl,nl,nl,nl,nl,nl, write("Presione Enter para conocer un poco m s del destino"),nl, 
readln(_),saberMas(X), nl,nl,nl,nl,nl, write("¨No es su destino y deseas conocer m s? (s/n)"), readln(Ch),nl,
Ch="n".

destino(bali_Indonesia) :- quiero(playa), quiero(selva), quiero(templos); quiero(playa), quiero(selva), 
quiero(volcanes); quiero(playa), quiero(selva), quiero(excursionismo); quiero(templos), quiero(selva), quiero(volcanes).

destino(londres_Inglaterra) :- quiero(historia), quiero(arquitectura), quiero(arte); quiero(historia), quiero(arquitectura), 
quiero(monumentos); quiero(arquitectura), quiero(clima_frio), quiero(historia).

destino(paris_Francia) :- quiero(historia), quiero(arquitectura), quiero(arqueologia); quiero(historia), quiero(arquitectura), 
quiero(gastronomia); quiero(arquitectura), quiero(gastronomia), quiero(arte).

destino(roma_Italia) :- quiero(historia), quiero(arquitectura), quiero(moda); quiero(historia), quiero(arquitectura), 
quiero(cultura); quiero(arquitectura), quiero(cultura), quiero(arte).

destino(newYork_USA) :- quiero(arte_Moderno), quiero(arquitectura), quiero(moda); quiero(arte_Moderno), quiero(arquitectura), 
quiero(monumentos); quiero(arte_Moderno), quiero(turismo), quiero(moda).

destino(creta_Grecia) :- quiero(historia), quiero(playa), quiero(isla); quiero(historia), quiero(playa), 
quiero(cultura_antigua); quiero(historia), quiero(playa), quiero(clima_tropical).

destino(barcelona_Espa¤a) :- quiero(cultura), quiero(arquitectura), quiero(historia); quiero(cultura), quiero(arquitectura), 
quiero(gastronomia).

destino(siemReap_Camboya) :- quiero(historia), quiero(cultura), quiero(templos); quiero(historia), quiero(selva), 
quiero(cultura_antigua); quiero(historia), quiero(cultura_antigua), quiero(clima_tropical).

destino(praga_RepublicaCheca) :- quiero(historia), quiero(playa), quiero(isla); quiero(historia), quiero(playa), 
quiero(cultura_antigua); quiero(historia), quiero(playa), quiero(clima_tropical).

destino(phuket_Tailandia) :- quiero(monumentos), quiero(playa), quiero(isla); quiero(historia), quiero(playa), 
quiero(clima_tropical).

destino(estambul_Turquia) :- quiero(historia), quiero(cultura_antigua), quiero(cultura); quiero(historia), quiero(cultura_antigua), 
quiero(arquitectura); quiero(historia), quiero(arquitectura), quiero(mar).

destino(jamaica) :- quiero(clima_tropical), quiero(playa), quiero(mar); quiero(cultura), quiero(playa), 
quiero(clima_tropical); quiero(cultura), quiero(playa), quiero(mar).

destino(hoiAn_Vietnam) :- quiero(clima_tropical), quiero(playa), quiero(costa); quiero(cultura), quiero(playa), 
quiero(arquitectura); quiero(cultura), quiero(costa), quiero(mar).

destino(sanPetersburgo_Rusia) :- quiero(arquitectura), quiero(arte), quiero(clima_frio); quiero(cultura), quiero(arquitectura), 
quiero(clima_frio); quiero(clima_frio), quiero(arquitectura), quiero(templos).

destino(roatan_Honduras) :- quiero(isla), quiero(playa), quiero(deporte_acuatico); quiero(isla), quiero(mar), 
quiero(deporte_acuatico); quiero(clima_tropical), quiero(deporte_acuatico), quiero(isla).

destino(marrakech_Marruecos) :- quiero(cultura), quiero(arquitectura), quiero(monumentos); quiero(monumentos), quiero(arquitectura), 
quiero(gastronomia).

destino(belice) :- quiero(isla), quiero(playa), quiero(paisaje_paradisiaco); quiero(isla), quiero(paisaje_paradisiaco), 
quiero(deporte_acuatico); quiero(clima_tropical), quiero(deporte_acuatico), quiero(mar).

destino(janeiro_Brasil) :- quiero(playa), quiero(monumentos), quiero(festivales); quiero(playa), quiero(mar), 
quiero(monumentos); quiero(clima_tropical), quiero(festivales), quiero(mar).

destino(isla_de_San_Martin) :- quiero(playa), quiero(isla), quiero(gastronomia); quiero(playa), quiero(mar), 
quiero(clima_tropical).

destino(playaDelCarmen_Mexico) :- quiero(playa), quiero(caribe), quiero(deporte_acuatico); quiero(playa), quiero(mar), 
quiero(caribe); quiero(clima_tropical), quiero(deporte_acuatico), quiero(caribe).

destino(sin_recomendaciones) :- clearwindow,nl,nl,nl,nl, write("Sin Recomendaciones"),nl,nl,nl, nl,nl,nl,nl, 
write("Presione Enter para salir"), readln(_),!. 

hoteles(bali_Indonesia) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Four Seasons Resort Bali at Jimbaran Bay"),nl,nl, write("-Jumana Bali Ungasan Resort manage by Hilton"),nl,
nl, write("-Padma Resort LegianSe abre en una ventana nueva"),!. 

hoteles(londres_Inglaterra) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Hilton Garden Inn London Heathrow Terminal"),nl,nl, write("-The Royal National Hotel"),nl,
nl, write("-ibis London Blackfriars"),!. 

hoteles(paris_Francia) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Hotel Brittany Op‚ra"),nl,nl, write("-Best Western Saint Louis"),nl,
nl, write("-Renaissance Paris La Defense Hotel"),!. 

hoteles(roma_Italia) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-The St. Regis Rome"),nl,nl, write("-Teichnersuite"),nl,
nl, write("-Hotel 55 Fifty five"),!. 

hoteles(newYork_USA) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Hilton Garden Inn New York Times Square North"),nl,nl, write("-The Knickerbocker Hotel"),nl,
nl, write("-San Carlos Hotel"),!. 

hoteles(creta_Grecia) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Veneto Boutique Hotel"),nl,nl, write("-La Maison Ottomane"),nl,
nl, write("-Creta Maris Beach Resort - All Inclusive"),!. 

hoteles(barcelona_Espa¤a) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Sonder DO Plaza Reial"),nl,nl, write("-Occidental Barcelona 1929"),nl,
nl, write("-Yurbban Ramblas Boutique Hotel"),!. 

hoteles(siemReap_Camboya) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Mane Hariharalaya"),nl,nl, write("-THE PRIVILEGE FLOOR"),nl,
nl, write("-G&Z Urban Hotel"),!. 

hoteles(praga_RepublicaCheca) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Augustine, a Luxury Collection Hotel, Prague"),nl,nl, write("-Duo"),nl,
nl, write("-The President"),!. 

hoteles(phuket_Tailandia) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Courtyard by Marriott Phuket Town - SHA Extra Plus"),nl,nl, write("-Novotel Phuket City Phokeethra Hotel"),nl,
nl, write("-Sugar Palm Residence"),!. 

hoteles(estambul_Turquia) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Four Doors Hotel"),nl,nl, write("-Sultanahmet Nu Hotel"),nl,
nl, write("-Arden City Hotel - Special Class"),!. 

hoteles(jamaica) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-AC Hotel by Marriott Kingston"),nl,nl, write("-R Hotel Kingston"),nl,
nl, write("-Sandy Haven Resort"),!. 

hoteles(hoiAn_Vietnam) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Mulberry Collection Silk Eco"),nl,nl, write("-Golden Holiday Hotel & Spa"),nl,
nl, write("-Mulberry Collection Silk Marina"),!. 

hoteles(sanPetersburgo_Rusia) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-The Vinoy Renaissance St. Petersburg Resort & Golf Club"),nl,nl, write("-The Birchwood"),nl,
nl, write("-Hyatt Place St. Petersburg / Downtown"),!. 

hoteles(roatan_Honduras) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Grand Roatan Caribbean Resort"),nl,nl, write("-Cocolobo"),nl,
nl, write("-Blue Bahia Resort"),!. 

hoteles(marrakech_Marruecos) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Hotel & Ryads Barriere Le Naoura"),nl,nl, write("-Riad Harmattan"),nl,
nl, write("-Le Riad Jardin Des Reves"),!. 

hoteles(belice) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Sweet Songs Jungle Lodge, a MuyïOno Resort"),nl,nl, write("-Brisa Oceano Resort"),nl,
nl, write("-Dream Valley Belize"),!. 

hoteles(janeiro_Brasil) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Grand Hyatt Rio De Janeiro"),nl,nl, write("-Sheraton Grand Rio Hotel & Resort"),nl,
nl, write("-Windsor Marapendi"),!. 

hoteles(isla_de_San_Martin) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Hotel Port Beach"),nl,nl, write("-Chƒteau le BouŒs"),nl,
nl, write("-Hotel de la Plage"),!. 

hoteles(playaDelCarmen_Mexico) :- removewindow, makewindow(1,9,112,"¨Y d¢nde hospedarme?",5,20,20,56),nl,nl, write("Los mejores hoteles disponibles son:"),nl,
nl,nl, write("-Residence Inn"),nl,nl, write("-Serenity Hotel Boutique"),nl,
nl, write("-Petit Lafitte Hotel"),!. 

saberMas(bali_Indonesia) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,
write("Es posible que sean las playas de arena blanca como Lovina Beach, el verde intenso de sus selvas en el Parque Nacional de Bali Occidental, los antiguos templos (mÃ¡s de 10.000)"),nl,
write("o los diferentes senderos para hacer excursionismo, pero Bali es sencillamente un paraiso natural."),nl,
write("Alquila una moto para moverte por la isla: no dejes de ir al templo Tanah Lot para ver atardecer, pi‚rdete por los arrozales de Jatiluwih o en Tegalalang, escoge playa o lago, visita alg£n volc n ­Bali es la isla de los dioses!"),nl,nl,!. 

saberMas(londres_Inglaterra) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,
write("Londres es la m s popular de las ciudades del mundo. Historia y car cter, monumentos que son verdaderos iconos como el Big Ben o los mism¡simos taxis tradicionales son ingredientes para una escapada perfecta."),nl,
write("Hay de todo para todos: el arte de la Tate Modern, las tendencias de moda de m s rabiosa actualidad por sus calles, los mercadillos como el de Camden, los diferentes parques por donde caminar."),nl,nl,!. 

saberMas(paris_Francia) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,
write("Es la £nica ciudad que tiene dos lugares entre los diez de mayor inter‚s tur¡stico de Europa: la Torre Eiffel y Notre Dame."),nl,
write("Pero, ¨qu‚ m s? Toda una clase de arte en el Museo del Louvre, callejear por sus barrios como Marais o el Barrio latino, disfrutar de la gastronom¡a en algunos de sus bistro,"),nl,
write("pasear por la rivera del Sena o visitar el mundo de Am‚lie Poulain, ­Par¡s no se acaba nunca!"),nl,nl,!. 

saberMas(roma_Italia) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,
write("La ciudad eterna es una lecci¢n de Historia para cualquier viajero. Adem s, ¨qui‚n no ha sentido la necesidad de viajar a Roma despu‚s de ver alguna pel¡cula cl sica de Fellini?"),nl,
write("¨O qui‚n no ha querido recorrer la ciudad en Vespa como en Vacaciones en Roma? Hay tanto que hacer en Roma: ir hasta el centro del Imperio Romano,"),nl,
write("ver el Coliseo y todas las ruinas arqueol¢gicas, el Pante¢n, cruzar El puente Sant'Angelo, Plaza Espa¤a, dejarse maravillar con las obras de arte de los Museos del Vaticano."),nl,nl,!.

saberMas(newYork_USA) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Si hay una idea universal de ciudad, esa es la que encarna Nueva York. La hemos visto tantas veces en pel¡culas, que cuando se visita por primera vez parece que andas de escena en escena."),nl,
write("Esta ciudad es inabarcable y tiene tantas caras que har¡an falta diferentes vidas para decir que se conoce bien. Pasear por Central Park en oto¤o o primavera, ir al MoMA, la cuna del arte moderno,"),nl,
write("ver la Estatua de la Libertad, los rascacielos m¡ticos como el Empire State Building, cruzar el Puente de Brooklyn, Little Italy, Coney Island, es solo una peque¤a parte de todo lo que puedes hacer en Nueva York."),nl,nl,!.

saberMas(creta_Grecia) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Historia y playas con encanto son las razones principales para que muchos viajeros consideren esta isla de Grecia, la quinta de mayor tama¤o en el Mar Mediterr neo, como uno de los destinos m s populares del mundo. "),nl,
write("Creta fue cuna del dios Zeus y origen de la civilizaci¢n minoica, la m s antigua que se conoce en Europa. En la antiguedad se llamaba isla de los olivos y hoy a£n mantiene un gran n£mero,"),nl,
write("lo cual hace de su paisaje una aut‚ntica belleza rematada por playas como las de Elafonisis y Kechodassos."),nl,nl,!.

saberMas(barcelona_Espa¤a) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("La ciudad del Mediterr neo da la bienvenida a viajeros de todo el mundo que llegan hechizados por las formas sorprendentes de la arquitectura de Gaud¡, por las calles animadas como las Ramblas,"),nl,
write("los museos variados, las tendencias m s urbanitas, exposiciones, bares y restaurantes a la £ltima. Barcelona es una ciudad cosmopolita pero a£n se puede pasear como si se tratara de un pueblo,"),nl,
write("con la personalidad diferente de cada uno de sus barrios. La Sagrada Familia, el ambiente popular del Mercado de la Boquer¡a, el G¢tic, el Raval, el ambiente cultural de Gr cia, son s¢lo algunos imprescindibles."),nl,nl,!.

saberMas(siemReap_Camboya) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Son muchos los viajeros que coinciden en decir que en esta ciudad de Camboya, en la provincia de Siem Riep, se ven algunos de los mejores amaneceres del mundo. Si a ello le sumamos las ancestrales"),nl,
write("ruinas de los templos de Angkor Wat, tendremos dos de las principales razones por las cuales Siem Reap est  entre los 25 destinos m s populares del mundo. El templo de Banteay Srei, junto a la selva,"),nl,
write("los palafitos del lago Tonl‚ Sap y el mercado nocturno de Siem Reap te va a transportar al origen de una cultura fabulosa que sigue dejando atr s las atrocidades del r‚gimen de Pol Pot y sus jemeres rojos."),nl,nl,!.

saberMas(praga_RepublicaCheca) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Esta ciudad es un cl sico de Europa. A la vez en ella se encuentra el ambiente bohemio de una ciudad moderna y el m gico de un cuento de hadas. "),nl,
write("Este es un destino en el que no te vas a quedar nunca sin hora, porque tiene el famoso reloj astron¢mico, toda una maravilla tanto art¡stica como tecnol¢gica, justo en el coraz¢n hist¢rico de la capital checa. "),nl,
write("Un plan imprescindible es pasear por las callejuelas de Star‚ Mesto, la Ciudad vieja y cruzar en el atardecer el Puente Carlos con sus treinta estatuas que parecen vigilar a los artistas, m£sicos y paseantes."),nl,nl,!.

saberMas(phuket_Tailandia) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Muchos viajeros coinciden: Tailandia es el mejor destino para comenzar a conocer Asia. La isla m s grande de Tailandia tiene playas de ensue¤o como las de Patong y Karon Beach, siempre muy visitadas,"),nl,
write("o las m s aisladas como Surin Beach. En la zona de Chalong y Kata, est  el s¡mbolo principal de la isla, un Gran Buda blanco de 25 metros de altura que nos da unas vistas asombrosas de Phuket. "),nl,
write("Otro entretenimiento es pasearse por el animado centro hist¢rico de la ciudad como contraste a las aguas color esmeralda que rodean a la isla."),nl,nl,!.

saberMas(estambul_Turquia) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Primero fue Bizancio, luego Constantinopla y ahora Estambul. La ciudad es un hist¢rico cruce de culturas: Estambul fue capital de cuatro imperios. Tal vez por ello, y por su ubicaci¢n en el B¢sforo,"),nl, 
write("se considera una de las ciudades m s bellas del mundo. Estambul es dos mundos a la vez: el de ayer y el de hoy, unidos por el Puente de G lata. Una visita a la ciudad nos llevar  a conocer tesoros como la Mezquita Azul,"),nl,
write("Santa Sof¡a, o la suntuosidad del Palacio de Topkapi. Todo ello sin olvidar curiosear por las miles de tiendas del Gran Bazar."),nl,nl,!.

saberMas(jamaica) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("En el Caribe m s turquesa encontramos Jamaica, crisol de culturas procedentes del µfrica, Asia y Europa. Si pens ramos los destinos en clave musical, con esta isla no hay confusi¢n: suena a reggae y Bob Marley fue su icono."),nl,
write("Jamaica es una superficie monta¤osa rodeada por playas ba¤adas por el mar Caribe. Un escenario de ensue¤o que recorrer con lugares como las cascadas de Dunnïs River o el famoso acantilado de Negril Cliffs.."),nl,nl,!.

saberMas(hoiAn_Vietnam) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Vietnam es un destino cada vez m s popular entre los viajeros de todo el mundo, y la ciudad costera de Hoi An es una de sus joyas, aunque no se parece en nada al resto de ciudades del pa¡s. Puestos a viajar a Hoi An,"),nl,
write("hazlo el d¡a 14 de cada mes lunar, porque esa noche el escenario cobra magia al ser iluminado por las tradicionales linternas de colores en lugar de por la luz el‚ctrica. El casco antiguo de la ciudad es"),nl,
write("Patrimonio de la Humanidad; para conocer algo de la historia del lugar hay que visitar la Capilla de la Familia Tran y para una foto, el Puente japon‚s es uno de los lugares favoritos por los viajeros."),nl,nl,!.

saberMas(sanPetersburgo_Rusia) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("La segunda ciudad de Rusia es una ventana a Occidente. San Petersburgo, a diferencia de Mosc£, es una ciudad amigable para ser paseada como por ejemplo por la Avenida Nevsky. Se construy¢ mirando a lo mejor de"),nl,
write("la arquitectura francesa, y como resultado encontramos el asombroso Palacio de invierno, que nos transporta a los tiempos de los zares. Otra joya arquitect¢nica, ‚sta de estilo ruso,"),nl,
write("es la Iglesia del Salvador sobre la sangre derramada, una belleza de templo ortodoxo que es icono de la ciudad. A los amantes del arte, les espera una de las pinacotecas m s importantes del mundo, el Museo del Hermitage."),nl,nl,!.

saberMas(roatan_Honduras) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("En Centroam‚rica se encuentra este para¡so en forma de archipi‚lago. Una de esas islas es Roat n; pero tambi‚n es famosa Utila y otros cayos habitados."),nl,
write("Las Islas de la Bahia, como se conocen a este conjunto de islas de Honduras, son un lugar popular entre los amantes de los deportes de agua; en especial entre los submarinistas."),nl,
write("Rodeadas por arrecifes, sus aguas son tranquilas y est n habitadas por una gran cantidad de vida mar¡tima por lo que son perfectas para el submarinismo. Los precios de las academias son muy competitivos."),nl,nl,!.

saberMas(marrakech_Marruecos) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("La ciudad roja, llamada as¡ por el color de sus edificaciones, sobre todo con la luz del atardecer, es una de las ciudades imperiales de Marruecos. A pesar de que Rabat es la capital del pa¡s,"),nl,
write("Marrakech se ha convertido en una urbe moderna y densamente poblada. A pesar de ellos, al pasear por su Medina o al ver un crep£sculo sobre la plaza de Yamaa el Fna, uno se transporta a un tiempo m gico."),nl,
write("La sonoridad del lugar, la hospitalidad tradicional marroqu¡, la artesan¡a y la bella arquitectura siguen siendo argumentos para visitar la ciudad."),nl,nl,!.

saberMas(belice) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Los cayos son islas peque¤as que se forman sobre la superficie de colares. Son ecosistemas delicados; pero bellos. Al estar rodeados de coral sus aguas son poco profundas y muy coloridas."),nl,
write("Belice es una joya para los submarinistas. La isla m s grande de Belice es el Cayo Ambergris. La meca del submarinismo es un pozo de agua en piedra caliza de m s de 120 metros de profundidad, el famoso Blue Hole."),nl,nl,!.

saberMas(janeiro_Brasil) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Cuando se sube a lo m s alto de la ciudad en la monta¤a de Corcovado, como por ejemplo hasta el mirador de la Estatua de Cristo el Redentor, se puede observar la fabulosa ubicaci¢n y la belleza de R¡o de Janeiro."),nl,
write("La ensenada de Botafogo es un paisaje espectacular. R¡o de Janeiro es lugar de playas m¡ticas, como Ipanema o Copacabana, un lugar donde el ritmo, la festividad y la alegr¡a brasile¤a, atraen a visitantes de todo el mundo."),nl,
write("No puedes irte sin subir al icono de la ciudad, el Pan de Az£car, el pe¤¢n de 338 metros de altura, al que se accede mediante un telef‚rico con vistas impresionantes."),nl,nl,!.

saberMas(isla_de_San_Martin) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Una joya caribe¤a que se reparten franceses y holandeses por parte igual. Cuenta la leyenda que el reparto lo hicieron mediante una prueba f¡sica: un elegido entre los franceses y otro entre los holandeses,"),nl,
write("correr¡an por la costa hasta volverse a encontrar. El punto de encuentro ser¡a la l¡nea divisoria. Corre el rumor de que los franceses regalaron al participante holand‚s una noche gastron¢mica cargada de buen vino."),nl,
write("El resultado es que el corredor holand‚s avanz¢ mucho menos que el franc‚s. Por ello, la parte francesa de la isla es mayor. Sea como sea, la isla cuenta con m s de 35 playas que son una delicia."),nl,nl,!.

saberMas(playaDelCarmen_Mexico) :- makewindow(1,9,112,"¨Y qu‚ tiene de espectacular?",5,20,20,56),nl,nl, 
write("Playa del Carmen fue una vez un peque¤o pueblo pescador ubicado en el estado de Quintana Roo, en M‚xico. Hoy es uno de los sitios m s visitados de la Riviera Maya."),nl,
write("Los cielos azules y las playas de arena blanca junto a un mar turquesa propias del Mar Caribe son constantes en su paisaje. Playa del Carmen es uno de los destinos principales del mundo del buceo."),nl,
write("Pero por si te cansas del agua del mar, tienes la opci¢n de ba¤arte en alguno de los cenotes que se encuentran en la zona. Y si te cansas de estar en remojo puedes explorar las ruinas de Coba, una antigua ciudad maya."),nl,nl,!.

quiero(Y) :- db_quiero(Y),!. 

quiero(Y) :- not(noquiero(Y)),!,chequear_si(Y),!. 

noquiero(Y) :- db_noquiero(Y),!. 

chequear_si(Y) :- clearwindow,nl,nl, write("¨En tu viaje te gustar¡a...? (s/n)"),nl,nl,nl, write("-",Y,"\n"), nl, nl, write(" "),
readln(Respuesta),registrar(Y,Respuesta),nl. registrar(Y,s):- asserta(db_quiero(Y)). 

registrar(Y,n):- asserta(db_noquiero(Y)),fail.