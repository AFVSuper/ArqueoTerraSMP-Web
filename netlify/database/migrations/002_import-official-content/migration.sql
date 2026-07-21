-- AUTO-GENERATED FILE
-- Generated from minecraft-guide.db

BEGIN;

INSERT INTO "crafting_recipes" ("id", "item_id", "title", "station", "inputs", "output_name", "output_quantity", "notes", "image", "status", "created_at", "updated_at") VALUES
    (5, 293, 'Crafteo de Imán', 'Mesa de Crafteo', '[{"name":"Nothing","quantity":1}]', 'Imán', 1, '', '/images/arqueoterra/recipes/recipe_magnet.png', 'published', 1784235902609, 1784373915536),
    (6, 294, 'Crafteo de Ídolo del Vacío', 'Mesa de Crafteo', '[{"name":"Nothing","quantity":1}]', 'Ídolo del Vacío', 1, '', '/images/arqueoterra/recipes/recipe_void_idol.png', 'published', 1784235902612, 1784376103888),
    (7, 300, 'Crafteo de Recipiente de amuleto', 'Receta visual', '[]', 'Recipiente de amuleto', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/r2fmngmlpx4a.png', 'published', 1784235902613, 1784235902613),
    (8, 301, 'Crafteo de Amuleto del prospector', 'Receta visual', '[]', 'Amuleto del prospector', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/i4g6bqrzajdv.png', 'published', 1784235902614, 1784235902614),
    (9, 302, 'Crafteo de Amuleto de saqueador', 'Receta visual', '[]', 'Amuleto de saqueador', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/5x01u4uiuvcb.png', 'published', 1784235902615, 1784235902615),
    (10, 303, 'Crafteo de Amuleto de fundición', 'Receta visual', '[]', 'Amuleto de fundición', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/d2z38el4v5me.png', 'published', 1784235902615, 1784235902616),
    (11, 304, 'Crafteo de Amuleto de alquimista', 'Receta visual', '[]', 'Amuleto de alquimista', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/5nz6gxn6b752.png', 'published', 1784235902616, 1784235902616),
    (12, 305, 'Crafteo de Amuleto del forjador', 'Receta visual', '[]', 'Amuleto del forjador', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/nmspjf2did63.png', 'published', 1784235902617, 1784235902617),
    (13, 306, 'Crafteo de Diseño de armadura vacío', 'Receta visual', '[]', 'Diseño de armadura vacío', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/ruh0nyfm1zv6.png', 'published', 1784235902617, 1784235902618),
    (14, 307, 'Crafteo de Tinta invisible', 'Receta visual', '[]', 'Tinta invisible', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/ye4miae6cksu.png', 'published', 1784235902618, 1784235902618),
    (15, 308, 'Crafteo de Tarjeta de modelo', 'Receta visual', '[]', 'Tarjeta de modelo', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/q70fkojddqcv.png', 'published', 1784235902619, 1784235902619),
    (16, 310, 'Crafteo de Tridente vendaval', 'Receta visual', '[]', 'Tridente vendaval', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/df4ucsioslbx.png', 'published', 1784235902619, 1784235902619),
    (17, 312, 'Crafteo de Núcleo de luminis', 'Receta visual', '[]', 'Núcleo de luminis', 1, 'Crafteo mostrado en la guía oficial.', '/images/arqueoterra/docs/ueoh8j28iavg.png', 'published', 1784235902620, 1784235902620),
    (18, 368, 'Bolsa de Polvo', 'Mesa de Crafteo', '[{"name":"Nothing","quantity":1}]', 'Bolsa de Polvo', 1, 'Cualquier polvo es válido en la receta.', '/images/arqueoterra/recipes/recipe_ore_satchel.png', 'published', 1784374379957, 1784374379956)
ON CONFLICT DO NOTHING;

INSERT INTO "faq_entries" ("id", "question", "answer", "category", "status", "sort_order", "created_at", "updated_at") VALUES
    (6, '¿Puedo usar X mod?', 'Siempre puedes preguntar a administración sobre un mod que pienses que no rompe las normas, pero **__NUNCA__** añadas uno sin preguntar antes, por muy inocente que te parezca.

Una lista de mods que se pueden añadir son:

- • JEI (Just Enough Items)

- • Mouse Tweaks

- • Armor Hud

- • Essential', 'Mods / Resource Packs', 'published', 0, 1784295592428, 1784296657383),
    (7, '¿Puedo usar X resource pack?', 'Siempre puedes preguntar a administración sobre un resource pack, pero NUNCA añadas uno sin preguntar antes, por muy inocente que te parezca. El servidor se presta a una mejor experiencia si todos los jugadores ven la mayoría de cosas de la misma forma, tal que las construcciones se hagan así. No se pueden usar resource packs que cambien mucho la experiencia visual vanilla que cree otro jugador, como bloques de construcción.', 'Mods / Resource Packs', 'published', 1, 1784295729880, 1784295729879),
    (8, '¿Puedo usar Lunar, BadLion u otro cliente?', 'NO. No está permitido el uso de clientes de ese estilo en el servidor.', 'Mods / Resource Packs', 'published', 2, 1784295803404, 1784295803404),
    (9, 'Test pregunta', 'TEST **TEST**



- • T

- • E

- • S

- • T', 'Instalación', 'draft', 0, 1784296357660, 1784296623647)
ON CONFLICT DO NOTHING;

INSERT INTO "installation_sections" ("id", "title", "intro", "body", "steps", "icon", "status", "sort_order", "created_at", "updated_at") VALUES
    (5, 'Modrinth App', 'La aplicación oficial de Modrinth, launcher donde se hostea el modpack.', '', '["Entra en https://modrinth.com/app y descarga la aplicación para tu dispositivo.","Abre la aplicación y vincula tu cuenta de Minecraft."]', 'compass', 'published', 0, 1784279750555, 1784297293729),
    (6, 'Instala el Modpack', 'Crear un perfil con el modpack del servidor con los siguientes pasos:', '', '["Entra en https://modrinth.com/modpack/arqueoterrasmp-season-6","Haz click en \"Descargar\".","Haz click en Instalar con \"Modrinth App\".","Comprueba que se haya instalado en la aplicación, y podrás darle a jugar."]', 'download', 'published', 1, 1784297444668, 1784297671166),
    (7, 'Actualizar el Modpack', 'En un futuro, posiblemente se actualice con bug fixes, etc.', '', '["En la aplicación de Modrinth, entra en el perfil de ArqueoTerraSMP.","Haz click en \"Instance Settings\". (El engranaje arriba a la derecha)","Haz click en \"Instalación\".","Haz click en \"Cambiar versión\" y selecciona la última."]', 'package', 'published', 2, 1784297660992, 1784297710352)
ON CONFLICT DO NOTHING;

INSERT INTO "item_relations" ("item_id", "related_item_id") VALUES
    (297, 303),
    (295, 301),
    (296, 302)
ON CONFLICT DO NOTHING;

INSERT INTO "item_tags" ("item_id", "tag_id") VALUES
    (313, 23),
    (314, 23),
    (315, 23),
    (316, 23),
    (317, 23),
    (318, 23),
    (319, 24),
    (320, 24),
    (321, 24),
    (322, 24),
    (323, 24),
    (324, 24),
    (325, 24),
    (326, 24),
    (327, 24),
    (328, 24),
    (329, 24),
    (330, 24),
    (331, 24),
    (332, 24),
    (333, 24),
    (334, 24),
    (335, 24),
    (336, 24),
    (337, 24),
    (338, 24),
    (339, 24),
    (340, 24),
    (341, 24),
    (342, 24),
    (343, 24),
    (344, 24),
    (345, 24),
    (346, 24),
    (347, 24),
    (348, 24),
    (349, 24),
    (350, 24),
    (351, 24),
    (352, 25),
    (353, 25),
    (354, 25),
    (355, 25),
    (357, 25),
    (358, 25),
    (359, 25),
    (360, 25),
    (361, 25),
    (362, 25),
    (363, 25),
    (364, 25),
    (365, 25),
    (366, 25),
    (367, 25),
    (369, 26),
    (370, 26),
    (371, 26),
    (372, 26),
    (373, 26),
    (374, 26),
    (375, 26),
    (376, 26),
    (377, 26),
    (297, 23),
    (310, 23),
    (309, 23),
    (356, 41),
    (298, 23),
    (299, 23),
    (301, 23),
    (302, 23),
    (303, 23),
    (304, 23),
    (305, 23),
    (306, 23),
    (307, 23),
    (308, 23),
    (312, 23),
    (300, 23),
    (368, 58),
    (293, 23),
    (295, 23),
    (294, 23),
    (296, 23)
ON CONFLICT DO NOTHING;

INSERT INTO "items" ("id", "mod_id", "slug", "name", "summary", "description", "function_description", "durability", "stats", "how_to_obtain", "uses", "tips", "image", "gallery", "status", "sort_order", "created_at", "updated_at", "requirements") VALUES
    (293, 8, 'items-principales-01', 'Imán', 'Atrae a tu inventario los objetos de tu alrededor.', 'Un objeto que atrae los objetos cercanos a tu inventario, siempre que no esté lleno.

Para activarlo o desactivarlo, haz click derecho con el cursor sobre el objeto en el inventario.



El Imán se puede encantar con Mending, Unbreaking y dos nuevos encantamientos:

- Magnetic Field (I - III): Incrementa el rango de atracción del imán.

- Attraction (I - III): Incrementa la velocidad de atracción del imán.', '', 2031, '{"Magnet Power":"0.25","Magnet Radius":"4"}', 'Crafteo mostrado en la documentación oficial.', '', 'Asegúrate de tenerlo en su correspondiente slot en el inventario, encima del escudo. En otro caso, no funcionará.', '/images/arqueoterra/items/magnet.png', '[]', 'published', 1, 1784235902593, 1784375778848, ''),
    (294, 8, 'items-principales-02', 'Ídolo del Vacío', 'Un tótem que te salva de una caída al vacío del End.', 'Un tótem de inmortalidad que te ayuda a no morir al caer al vacío del End.', '', NULL, '{}', 'Crafteo mostrado en la documentación oficial.', 'Evitar muerte por vacío.', '', '/images/arqueoterra/items/void_idol.gif', '[]', 'published', 2, 1784235902593, 1784375950089, ''),
    (295, 8, 'items-principales-04', 'Jade Perfecto', 'Un material muy raro obtenido de la esmeralda profunda.', 'Un ítem muy difícil de encontrar que solo puede conseguirse al minar un bloque de esmeralda profunda. 

Se puede utilizar para crear el Amuleto del Prospector.', '', NULL, '{}', 'Minando esmeralda profunda sin Toque de Seda.', 'Fabricación del Amuleto del Prospector.', '', '/images/arqueoterra/items/perfect_jade.gif', '[]', 'published', 3, 1784235902593, 1784375914028, ''),
    (296, 8, 'items-principales-05', 'Tesoro de Bastión', 'Ingrediente que puede aparecer en cofres de bastiones.', 'Un ítem que puedes encontrar en bastiones. 

Es el ingrediente principal del Amuleto del Saqueador.', '', NULL, '{}', 'Tiene una probabilidad de aparecer en los cofres de bastiones.', 'Fabricación del Amuleto del Saqueador.', '', '/images/arqueoterra/items/bastion_treasure.png', '[]', 'published', 4, 1784235902593, 1784376381514, ''),
    (297, 8, 'items-principales-06', 'Corazón flamígero', 'Coleccionable que puede aparecer en fortalezas del Nether.', 'Un ítem coleccionable que puedes encontrar en fortalezas del Nether.', 'Objeto decorativo y componente para amuletos.', NULL, '{}', 'Tiene una probabilidad de aparecer en los cofres de fortalezas del Nether.', 'Decoración y fabricación de amuletos.', '', '/images/arqueoterra/items/blazing_heart.gif', '[]', 'published', 5, 1784235902593, 1784287705150, 'Encontrar una fortaleza del Nether.'),
    (298, 8, 'items-principales-07', 'Códice alquímico', 'Coleccionable que puede aparecer en ciudades del End.', 'Un ítem coleccionable que puedes encontrar en ciudades del End.', 'Objeto decorativo y componente para amuletos.', NULL, '{}', 'Tiene una probabilidad de aparecer en los cofres de ciudades del End.', 'Decoración y fabricación de amuletos.', '', '/images/arqueoterra/items/alchemist_tome.png', '["/images/arqueoterra/docs/aueh4cp61nr4.png"]', 'published', 6, 1784235902593, 1784369112538, 'Encontrar una ciudad del End.'),
    (299, 8, 'items-principales-08', 'Plata élfica', 'Coleccionable que puede aparecer en minas abandonadas.', 'Un ítem coleccionable que puedes encontrar en mineshafts.', 'Objeto decorativo y componente para amuletos.', NULL, '{}', 'Tiene una probabilidad de aparecer en los cofres de mineshafts.', 'Decoración y fabricación de amuletos.', '', '/images/arqueoterra/items/silver_plates.png', '["/images/arqueoterra/docs/k8nmgli9c81g.png"]', 'published', 7, 1784235902593, 1784369132259, 'Encontrar una mina abandonada.'),
    (300, 8, 'items-principales-09', 'Recipiente de amuleto', 'Base de fabricación para crear amuletos especiales.', 'Un recipiente que sirve como base para crear nuevos tipos de amuletos especiales.', 'Componente de crafteo para amuletos que potencian distintos aspectos del jugador.', NULL, '{}', 'Crafteo mostrado en la documentación oficial.', 'Solo sirve para crear amuletos nuevos.', '', '/images/arqueoterra/items/empty_amulet.png', '["/images/arqueoterra/items/empty_amulet.png"]', 'published', 8, 1784235902593, 1784369548881, 'Ninguno.'),
    (301, 8, 'items-principales-10', 'Amuleto del prospector', 'Amuleto que añade un nivel extra de Fortuna.', 'Uno de los cinco tipos de amuletos que potencian tu nivel de Fortuna.', 'Al ponerlo en la mano secundaria, aumenta en un nivel el encantamiento de Fortuna.', NULL, '{}', 'Se crea únicamente en yunques.', '', '', '/images/arqueoterra/items/fortune_amulet.png', '["/images/arqueoterra/docs/i4g6bqrzajdv.png"]', 'published', 9, 1784235902593, 1784369162138, 'Tenerlo en la mano secundaria.'),
    (302, 8, 'items-principales-11', 'Amuleto de saqueador', 'Amuleto que añade un nivel extra de Saqueo.', 'Uno de los cinco tipos de amuletos que potencian tu nivel de Saqueo.', 'Al ponerlo en la mano secundaria, aumenta en un nivel el encantamiento de Saqueo.', NULL, '{}', 'Se crea únicamente en yunques.', '', '', '/images/arqueoterra/items/looting_amulet.png', '["/images/arqueoterra/docs/5x01u4uiuvcb.png"]', 'published', 10, 1784235902593, 1784369174679, 'Tenerlo en la mano secundaria.'),
    (303, 8, 'items-principales-12', 'Amuleto de fundición', 'Amuleto que funde automáticamente materiales obtenidos.', 'Uno de los cinco tipos de amuletos que funde bloques minados y objetos de mobs.', 'Funde automáticamente los ítems obtenidos.', NULL, '{}', 'Se crea únicamente en yunques.', '', '', '/images/arqueoterra/items/smelt_amulet.png', '["/images/arqueoterra/docs/d2z38el4v5me.png"]', 'published', 11, 1784235902593, 1784369192510, 'Tenerlo en la mano secundaria.'),
    (304, 8, 'items-principales-13', 'Amuleto de alquimista', 'Amuleto que mejora la duración de los efectos.', 'Uno de los cinco tipos de amuletos que incrementa la duración de efectos positivos y reduce la de efectos negativos.', 'Aumenta los efectos positivos y reduce los negativos.', NULL, '{}', 'Se crea únicamente en yunques.', '', '', '/images/arqueoterra/items/potion_amulet.png', '["/images/arqueoterra/docs/5nz6gxn6b752.png"]', 'published', 12, 1784235902593, 1784369205379, 'Tenerlo en la mano secundaria.'),
    (305, 8, 'items-principales-14', 'Amuleto del forjador', 'Amuleto que reduce el desgaste de herramientas y armadura.', 'Uno de los cinco tipos de amuletos que hace que las herramientas y la armadura sufran menos daño de durabilidad.', 'Aumenta la durabilidad efectiva de herramientas y armaduras.', NULL, '{}', 'Se crea únicamente en yunques.', '', '', '/images/arqueoterra/items/forge_amulet.png', '["/images/arqueoterra/docs/nmspjf2did63.png"]', 'published', 13, 1784235902593, 1784369223483, 'Tenerlo en la mano secundaria.'),
    (306, 8, 'items-principales-15', 'Diseño de armadura vacío', 'Elimina diseños de armadura aplicados anteriormente.', 'Con este objeto puedes quitar diseños de armadura previos.', 'Elimina los diseños de armadura existentes.', NULL, '{}', '', '', '', '/images/arqueoterra/items/empty_trim_smithing_template.png', '["/images/arqueoterra/docs/xv9l1vm3ao9c.png"]', 'published', 14, 1784235902593, 1784369239824, 'Pedernal y mesa de herrería.'),
    (307, 8, 'items-principales-16', 'Tinta invisible', 'Tinta capaz de hacer invisibles las armaduras.', 'Una tinta capaz de hacer invisible las armaduras.', 'Aplica invisibilidad visual a las armaduras.', NULL, '{}', '', '', '', '/images/arqueoterra/items/invisible_ink.png', '["/images/arqueoterra/docs/cb993uben6nr.png"]', 'published', 15, 1784235902593, 1784369254094, 'Soporte para pociones.'),
    (308, 8, 'items-principales-17', 'Tarjeta de modelo', 'Objeto pendiente de documentación oficial.', 'Objeto pendiente de documentación oficial.', '', NULL, '{}', '', '', '', '/images/arqueoterra/items/model_card.png', '["/images/arqueoterra/docs/q70fkojddqcv.png"]', 'published', 16, 1784235902593, 1784369470737, ''),
    (309, 8, 'items-principales-18', 'Reliquia de viento', 'Material exclusivo de las Trial Chambers.', 'Un ítem exclusivo de las Trial Chambers.', 'Sirve para crear el Tridente vendaval.', NULL, '{}', 'Se obtiene en Trial Chambers.', 'Ingrediente del Tridente vendaval.', '', '/images/arqueoterra/items/wind_relic.gif', '["/images/arqueoterra/docs/l6gv9jy0p1fa.png"]', 'published', 17, 1784235902593, 1784315237962, 'Encontrar una Trial Chamber.'),
    (310, 8, 'items-principales-19', 'Tridente vendaval', 'Tridente con la habilidad de alejar a los enemigos.', 'Un tridente con la habilidad de empujar lejos a los enemigos.', 'Empuja lejos a los enemigos.', NULL, '{}', '', '', '', '/images/arqueoterra/items/wind_trident.gif', '["/images/arqueoterra/docs/df4ucsioslbx.png"]', 'published', 18, 1784235902593, 1784315224134, 'Reliquia de viento.'),
    (312, 8, 'items-principales-21', 'Núcleo de Luminis', 'Variante de netherita para fabricar armaduras Luminis.', 'Una variante de la netherita.', 'Se utiliza para crear armaduras de Luminis.', NULL, '{}', '', 'Cumple la misma función que una armadura de netherita.', '', '/images/arqueoterra/items/luminis_core.png', '["/images/arqueoterra/docs/ueoh8j28iavg.png"]', 'published', 20, 1784235902593, 1784369485194, 'Mejora de netherita.'),
    (313, 8, 'items-principales-22', 'Ítem principal 22', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/items-principales.png', '["/images/arqueoterra/items-principales.png"]', 'published', 21, 1784235902593, 1784235902593, ''),
    (314, 8, 'items-principales-23', 'Ítem principal 23', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/items-principales.png', '["/images/arqueoterra/items-principales.png"]', 'published', 22, 1784235902593, 1784235902593, ''),
    (315, 8, 'items-principales-24', 'Ítem principal 24', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/items-principales.png', '["/images/arqueoterra/items-principales.png"]', 'published', 23, 1784235902593, 1784235902593, ''),
    (316, 8, 'items-principales-25', 'Ítem principal 25', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/items-principales.png', '["/images/arqueoterra/items-principales.png"]', 'published', 24, 1784235902593, 1784235902593, ''),
    (317, 8, 'items-principales-26', 'Ítem principal 26', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/items-principales.png', '["/images/arqueoterra/items-principales.png"]', 'published', 25, 1784235902593, 1784235902593, ''),
    (318, 8, 'items-principales-27', 'Ítem principal 27', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/items-principales.png', '["/images/arqueoterra/items-principales.png"]', 'published', 26, 1784235902593, 1784235902593, ''),
    (319, 8, 'pergaminos-de-mejora-01', 'Pergamino desconocido', 'Contenedor que entrega pergaminos de mejora aleatorios.', 'Contenedor que entrega pergaminos de mejora aleatorios.', 'Puede encontrarse en cualquier estructura y entrega pergaminos de mejora aleatorios.', NULL, '{}', '', '', '', '/images/arqueoterra/docs/rdsya8vzhyam.png', '["/images/arqueoterra/docs/rdsya8vzhyam.png"]', 'published', 101, 1784235902622, 1784235902622, ''),
    (320, 8, 'pergaminos-de-mejora-02', 'Mejora de armadura', 'Pergamino que mejora tu armadura.', 'Pergamino que mejora tu armadura.', 'Mejora la armadura.', NULL, '{}', '', '', '', '/images/arqueoterra/docs/r7v49tlhrf1g.png', '["/images/arqueoterra/docs/r7v49tlhrf1g.png"]', 'published', 102, 1784235902622, 1784235902622, ''),
    (321, 8, 'pergaminos-de-mejora-03', 'Mejora de velocidad de ataque', 'Pergamino que mejora la velocidad de ataque.', 'Un pergamino que mejora la velocidad de ataque.', '', NULL, '{}', '', '', '', '/images/arqueoterra/docs/pdibi55snvah.png', '["/images/arqueoterra/docs/pdibi55snvah.png"]', 'published', 103, 1784235902623, 1784235902623, ''),
    (322, 8, 'pergaminos-de-mejora-04', 'Pergamino de Mejora 04', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 104, 1784235902623, 1784235902623, ''),
    (323, 8, 'pergaminos-de-mejora-05', 'Pergamino de Mejora 05', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 105, 1784235902623, 1784235902623, ''),
    (324, 8, 'pergaminos-de-mejora-06', 'Pergamino de Mejora 06', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 106, 1784235902623, 1784235902623, ''),
    (325, 8, 'pergaminos-de-mejora-07', 'Pergamino de Mejora 07', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 107, 1784235902623, 1784235902623, ''),
    (326, 8, 'pergaminos-de-mejora-08', 'Pergamino de Mejora 08', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 108, 1784235902623, 1784235902623, ''),
    (327, 8, 'pergaminos-de-mejora-09', 'Pergamino de Mejora 09', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 109, 1784235902623, 1784235902623, ''),
    (328, 8, 'pergaminos-de-mejora-10', 'Pergamino de Mejora 10', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 110, 1784235902623, 1784235902623, ''),
    (329, 8, 'pergaminos-de-mejora-11', 'Pergamino de Mejora 11', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 111, 1784235902623, 1784235902623, ''),
    (330, 8, 'pergaminos-de-mejora-12', 'Pergamino de Mejora 12', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 112, 1784235902623, 1784235902623, ''),
    (331, 8, 'pergaminos-de-mejora-13', 'Pergamino de Mejora 13', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 113, 1784235902623, 1784235902623, ''),
    (332, 8, 'pergaminos-de-mejora-14', 'Pergamino de Mejora 14', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 114, 1784235902623, 1784235902623, ''),
    (333, 8, 'pergaminos-de-mejora-15', 'Pergamino de Mejora 15', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 115, 1784235902623, 1784235902623, ''),
    (334, 8, 'pergaminos-de-mejora-16', 'Pergamino de Mejora 16', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 116, 1784235902623, 1784235902623, ''),
    (335, 8, 'pergaminos-de-mejora-17', 'Pergamino de Mejora 17', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 117, 1784235902623, 1784235902623, ''),
    (336, 8, 'pergaminos-de-mejora-18', 'Pergamino de Mejora 18', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 118, 1784235902623, 1784235902623, ''),
    (337, 8, 'pergaminos-de-mejora-19', 'Pergamino de Mejora 19', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 119, 1784235902623, 1784235902623, ''),
    (338, 8, 'pergaminos-de-mejora-20', 'Pergamino de Mejora 20', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 120, 1784235902623, 1784235902623, ''),
    (339, 8, 'pergaminos-de-mejora-21', 'Pergamino de Mejora 21', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 121, 1784235902623, 1784235902623, ''),
    (340, 8, 'pergaminos-de-mejora-22', 'Pergamino de Mejora 22', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 122, 1784235902623, 1784235902623, ''),
    (341, 8, 'pergaminos-de-mejora-23', 'Pergamino de Mejora 23', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 123, 1784235902623, 1784235902623, ''),
    (342, 8, 'pergaminos-de-mejora-24', 'Pergamino de Mejora 24', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 124, 1784235902623, 1784235902623, ''),
    (343, 8, 'pergaminos-de-mejora-25', 'Pergamino de Mejora 25', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 125, 1784235902623, 1784235902623, ''),
    (344, 8, 'pergaminos-de-mejora-26', 'Pergamino de Mejora 26', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 126, 1784235902623, 1784235902623, ''),
    (345, 8, 'pergaminos-de-mejora-27', 'Pergamino de Mejora 27', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 127, 1784235902623, 1784235902623, ''),
    (346, 8, 'pergaminos-de-mejora-28', 'Pergamino de Mejora 28', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 128, 1784235902623, 1784235902623, ''),
    (347, 8, 'pergaminos-de-mejora-29', 'Pergamino de Mejora 29', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 129, 1784235902623, 1784235902623, ''),
    (348, 8, 'pergaminos-de-mejora-30', 'Pergamino de Mejora 30', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 130, 1784235902623, 1784235902623, ''),
    (349, 8, 'pergaminos-de-mejora-31', 'Pergamino de Mejora 31', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 131, 1784235902623, 1784235902623, ''),
    (350, 8, 'pergaminos-de-mejora-32', 'Pergamino de Mejora 32', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 132, 1784235902623, 1784235902623, ''),
    (351, 8, 'pergaminos-de-mejora-33', 'Pergamino de Mejora 33', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/pergaminos-de-mejora.png', '["/images/arqueoterra/pergaminos-de-mejora.png"]', 'published', 133, 1784235902623, 1784235902623, ''),
    (352, 8, 'discos-extras-01', 'Disco Extra 01', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 201, 1784235902636, 1784235902636, ''),
    (353, 8, 'discos-extras-02', 'Disco Extra 02', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 202, 1784235902636, 1784235902636, ''),
    (354, 8, 'discos-extras-03', 'Disco Extra 03', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 203, 1784235902636, 1784235902636, ''),
    (355, 8, 'discos-extras-04', 'Disco Extra 04', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 204, 1784235902636, 1784235902636, ''),
    (356, 8, 'discos-extras-05', 'Disco Extra 05', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 205, 1784235902636, 1784315960887, ''),
    (357, 8, 'discos-extras-06', 'Disco Extra 06', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 206, 1784235902636, 1784235902636, ''),
    (358, 8, 'discos-extras-07', 'Disco Extra 07', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 207, 1784235902636, 1784235902636, ''),
    (359, 8, 'discos-extras-08', 'Disco Extra 08', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 208, 1784235902636, 1784235902636, ''),
    (360, 8, 'discos-extras-09', 'Disco Extra 09', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 209, 1784235902637, 1784235902637, ''),
    (361, 8, 'discos-extras-10', 'Disco Extra 10', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 210, 1784235902637, 1784235902637, ''),
    (362, 8, 'discos-extras-11', 'Disco Extra 11', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 211, 1784235902637, 1784235902637, ''),
    (363, 8, 'discos-extras-12', 'Disco Extra 12', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 212, 1784235902637, 1784235902637, ''),
    (364, 8, 'discos-extras-13', 'Disco Extra 13', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 213, 1784235902637, 1784235902637, ''),
    (365, 8, 'discos-extras-14', 'Disco Extra 14', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 214, 1784235902637, 1784235902637, ''),
    (366, 8, 'discos-extras-15', 'Disco Extra 15', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 215, 1784235902637, 1784235902637, ''),
    (367, 8, 'discos-extras-16', 'Disco Extra 16', 'Disco extra obtenible mediante comerciantes ambulantes.', 'Disco extra obtenible mediante comerciantes ambulantes.', '', NULL, '{}', 'Todos los discos extra se obtienen de comerciantes ambulantes.', '', '', '/images/arqueoterra/discos-extras.png', '["/images/arqueoterra/discos-extras.png"]', 'published', 216, 1784235902637, 1784235902637, ''),
    (368, 8, 'polvos-de-minerales-01', 'Bolsa de Polvo', 'Almacena los polvos de minerales que encuentres.', 'Almacena los polvos de minerales que encuentres.', 'Almacena polvos de minerales sin límite.', NULL, '{}', 'Crafteo mostrado en la documentación oficial.', 'Guardar los polvos de minerales encontrados.', '', '/images/arqueoterra/items/ore_powder_bag.png', '[]', 'published', 301, 1784235902643, 1784375388121, ''),
    (369, 8, 'polvos-de-minerales-02', 'Polvos de minerales', 'Los nueve tipos de minerales en forma de polvo.', 'Al minar una mena obtienes el polvo y el mineral.', 'La utilidad concreta está pendiente de documentación oficial.', NULL, '{}', 'Mina una mena: entrega el polvo y el mineral.', '', '', '/images/arqueoterra/polvos-de-minerales.png', '["/images/arqueoterra/polvos-de-minerales.png"]', 'published', 302, 1784235902643, 1784235902643, ''),
    (370, 8, 'polvos-de-minerales-03', 'Polvo de Mineral 03', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/polvos-de-minerales.png', '["/images/arqueoterra/polvos-de-minerales.png"]', 'published', 303, 1784235902643, 1784235902643, ''),
    (371, 8, 'polvos-de-minerales-04', 'Polvo de Mineral 04', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/polvos-de-minerales.png', '["/images/arqueoterra/polvos-de-minerales.png"]', 'published', 304, 1784235902643, 1784235902643, ''),
    (372, 8, 'polvos-de-minerales-05', 'Polvo de Mineral 05', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/polvos-de-minerales.png', '["/images/arqueoterra/polvos-de-minerales.png"]', 'published', 305, 1784235902643, 1784235902643, ''),
    (373, 8, 'polvos-de-minerales-06', 'Polvo de Mineral 06', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/polvos-de-minerales.png', '["/images/arqueoterra/polvos-de-minerales.png"]', 'published', 306, 1784235902643, 1784235902643, ''),
    (374, 8, 'polvos-de-minerales-07', 'Polvo de Mineral 07', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/polvos-de-minerales.png', '["/images/arqueoterra/polvos-de-minerales.png"]', 'published', 307, 1784235902643, 1784235902643, ''),
    (375, 8, 'polvos-de-minerales-08', 'Polvo de Mineral 08', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/polvos-de-minerales.png', '["/images/arqueoterra/polvos-de-minerales.png"]', 'published', 308, 1784235902643, 1784235902643, ''),
    (376, 8, 'polvos-de-minerales-09', 'Polvo de Mineral 09', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/polvos-de-minerales.png', '["/images/arqueoterra/polvos-de-minerales.png"]', 'published', 309, 1784235902644, 1784235902644, ''),
    (377, 8, 'polvos-de-minerales-10', 'Polvo de Mineral 10', 'Objeto detectado en la lámina oficial; sus datos están pendientes de documentar.', 'La información oficial de este objeto todavía no está completada en ARQUEO TERRA DOCS.', '', NULL, '{}', '', '', '', '/images/arqueoterra/polvos-de-minerales.png', '["/images/arqueoterra/polvos-de-minerales.png"]', 'published', 310, 1784235902644, 1784235902644, '')
ON CONFLICT DO NOTHING;

INSERT INTO "media_assets" ("id", "title", "url", "alt_text", "source_type", "mime_type", "created_by_id", "created_at") VALUES
    (1, 'test', '/uploads/2026-07/test-e44f4f69.jpg', 'exemple', 'upload', 'image/jpeg', 1, 1784053000163),
    (3, 'ArqueoTerraSMP 6 · Ítems principales', '/images/arqueoterra/items-principales.png', 'Inventario de Ítems principales de ArqueoTerraSMP 6', 'upload', 'image/png', NULL, 1784057548315),
    (4, 'ArqueoTerraSMP 6 · Pergaminos de Mejora', '/images/arqueoterra/pergaminos-de-mejora.png', 'Inventario de Pergaminos de Mejora de ArqueoTerraSMP 6', 'upload', 'image/png', NULL, 1784057548319),
    (5, 'ArqueoTerraSMP 6 · Discos Extras', '/images/arqueoterra/discos-extras.png', 'Inventario de Discos Extras de ArqueoTerraSMP 6', 'upload', 'image/png', NULL, 1784057548321),
    (6, 'ArqueoTerraSMP 6 · Polvos de Minerales', '/images/arqueoterra/polvos-de-minerales.png', 'Inventario de Polvos de Minerales de ArqueoTerraSMP 6', 'upload', 'image/png', NULL, 1784057548321)
ON CONFLICT DO NOTHING;

INSERT INTO "mods" ("id", "slug", "title", "short_description", "full_description", "server_purpose", "mechanics", "progression", "practical_notes", "category", "cover_image", "gallery", "featured", "status", "sort_order", "created_at", "updated_at") VALUES
    (8, 'arqueoterra-smp-6', 'ArqueoTerraSMP 6', 'Guía oficial de los cuatro catálogos de objetos propios de ArqueoTerraSMP 6.', 'ArqueoTerraSMP 6 reúne los objetos propios del servidor en cuatro secciones: ítems principales, pergaminos de mejora, discos extras y polvos de minerales.', 'Centralizar todos los objetos creados para ArqueoTerraSMP 6 en una guía clara para jugadores.', 'Los amuletos se usan en la mano secundaria. Algunos materiales se consiguen explorando estructuras específicas y otros se crean en estaciones como el yunque o la mesa de herrería.', 'Empieza por los ítems principales. Después consulta los pergaminos de mejora, descubre los discos extra con comerciantes ambulantes y guarda los materiales en polvo.', 'Solo se muestran recetas cuando están confirmadas en la documentación oficial del mod.', 'Mod principal', '/images/arqueoterra/main/items.png', '["/images/arqueoterra/items-principales.png","/images/arqueoterra/pergaminos-de-mejora.png","/images/arqueoterra/discos-extras.png","/images/arqueoterra/polvos-de-minerales.png"]', 1, 'published', 1, 1784235902587, 1784298659827)
ON CONFLICT DO NOTHING;

INSERT INTO "roles" ("id", "code", "name", "description") VALUES
    (1, 'SUPERADMIN', 'Superadmin', 'Control completo de contenido, publicación y usuarios.'),
    (2, 'EDITOR', 'Editor', 'Crea, edita y elimina contenido en borrador.'),
    (3, 'REVIEWER', 'Revisor', 'Revisa contenido y controla su publicación.')
ON CONFLICT DO NOTHING;

INSERT INTO "sessions" ("id", "token_hash", "user_id", "expires_at", "created_at") VALUES
    (1, '6f4e92749b58ba345fac90639e1deaf3c17ad211cb068872939bbf16ee881d8c', 1, 1784657737672, 1784052937674),
    (3, '83659bd85e5c83d252fbeeb43047965c770ab143ef763c1000f6c4acc52540c6', 1, 1784847201702, 1784242401702)
ON CONFLICT DO NOTHING;

INSERT INTO "tags" ("id", "slug", "name") VALUES
    (23, 'items-principales', 'Ítems principales'),
    (24, 'pergaminos-de-mejora', 'Pergaminos de Mejora'),
    (25, 'discos-extras', 'Discos Extras'),
    (26, 'polvos-de-minerales', 'Polvos de Minerales'),
    (41, 'otros-cambios', 'Otros Cambios'),
    (58, 'ore-hunters', 'Ore Hunters')
ON CONFLICT DO NOTHING;

INSERT INTO "users" ("id", "name", "username", "password_hash", "role_id", "created_at", "updated_at") VALUES
    (1, 'Administrador', 'admin', '$2b$12$xtodDhszTie2wckELZCJhupunkXdK.2c7EAhBrtCP5SXICspdWGY2', 1, 1784050430019, 1784293753558)
ON CONFLICT DO NOTHING;

COMMIT;
