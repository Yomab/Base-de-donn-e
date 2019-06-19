//Afficher les biens par ordre de prix//
use base Immo
select prix_du_bien from bien_immobilier order by prix_du_bien ASC;
+--------------+
| prix_du_bien |
+--------------+
|    32000.000 |
|    33000.000 |
|    43000.000 |
|    76430.000 |
|   120000.000 |
|   160000.000 |
|   165000.000 |
|   220000.000 |
|   250000.000 |
|   260000.000 |
|   300000.000 |
|   310000.000 |
|   340000.000 |
|   450000.000 |
|   450000.000 |
|   450600.000 |
|   570000.000 |
|   653000.000 |
|   670000.000 |
|   780000.000 |
|   800000.000 |
|   920000.000 |
|   980000.000 |
|  1000000.000 |
|  1200000.000 |
|  1420000.000 |
|  1700000.000 |
|  1800000.000 |
+--------------+
28 rows in set (0.00 sec)

//Afficher les rendez-vous par ordre chronologique (date et créneau horaire du rendez-vous, nom du bien, son type, son code postal, son prix, nom et prénom du client)//

SELECT agenda_des_visites.date_visite , agenda_des_visites.heure_visite ,agenda_des_visites.prenom_du_client , agenda_des_visites.nom_du_client ,bien_immobilier.nom_du_bien , bien_immobilier.type_de_bien ,bien_immobilier.code_postal , bien_immobilier.prix_du_bien FROM agenda_des_visites LEFT JOIN bien_immobilier ON bien_immobilier.id = id_bien_immobilier ORDER BY agenda_des_visites.date_visite ASC;
+-------------+--------------+------------------+---------------+---------------------------+--------------+-------------+--------------+
| date_visite | heure_visite | prenom_du_client | nom_du_client | nom_du_bien               | type_de_bien | code_postal | prix_du_bien |
+-------------+--------------+------------------+---------------+---------------------------+--------------+-------------+--------------+
| 2019-06-12  | 08:30:00     | yoyo             | mama          | bouiboui                  | terrain      |       76600 |    33000.000 |
| 2019-06-12  | 18:30:00     | kim              | lariche       | residences du sable blanc | appartement  |       13000 |  1800000.000 |
| 2019-06-24  | 14:30:00     | edward           | cullen        | la charmante              | maison       |       76133 |   653000.000 |
| 2019-06-24  | 08:30:00     | brandon          | wash          | la grande cour            | terrain      |       76210 |   120000.000 |
| 2019-06-26  | 16:30:00     | loic             | ubuntu        | forêt du sentier          | terrain      |       76930 |    76430.000 |
| 2019-07-10  | 08:30:00     | patrick          | mortier       | villa la cigale           | maison       |       76480 |   670000.000 |
| 2019-07-18  | 10:30:00     | martine          | lagoulue      | la grande prairie         | terrain      |       76430 |   800000.000 |
| 2019-07-18  | 16:30:00     | kim              | lariche       | les bois dorées           | maison       |       43000 |  1200000.000 |
| 2019-07-29  | 16:30:00     | pierre           | quiroule      | F4 avenue des goéland     | appartement  |       76600 |   980000.000 |
| 2019-08-07  | 12:30:00     | miguel           | burritos      | la gargouille             | maison       |       76310 |    43000.000 |
+-------------+--------------+------------------+---------------+---------------------------+--------------+-------------+--------------+
10 rows in set (0.00 sec)

//Il faudra pouvoir afficher les clients par type de bien qu ils recherchent (nom et prénom du client, type de bien, budget).//
SELECT  `nom` , `prenom` ,`type_de_bien` , `budget` FROM `clients` ;
+----------+-----------+--------------+-------------+
| nom      | prenom    | type_de_bien | budget      |
+----------+-----------+--------------+-------------+
| yoyo     | mama      | maison       |   33000.000 |
| martin   | jacques   | maison       |  150000.000 |
| lbol     | laura     | appartement  |  300000.000 |
| rabbit   | roger     | terrain      |   70000.000 |
| ubuntu   | loic      | appartement  |   90000.000 |
| quiroule | pierre    | terrain      | 1000000.000 |
| palfaire | josé      | appartement  |   65000.000 |
| cullen   | edward    | maison       |  750000.000 |
| wash     | brandon   | appartement  |     120.000 |
| lariche  | kim       | terrain      | 2000000.000 |
| dagan    | leo       | appartement  |  450000.000 |
| leroy    | phillippe | maison       |  132000.000 |
| larnaque | polo      | maison       |  154000.000 |
| lagoulue | martine   | terrain      |  800000.000 |
| burritos | miguel    | appartement  |   68000.000 |
| mortier  | patrick   | maison       |  740000.000 |
| lafoire  | henry     | appartement  |   56000.000 |
+----------+-----------+--------------+-------------+
17 rows in set (0.00 sec)
