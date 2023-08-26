import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';

final AppConstant appConstant =  AppConstant();
final MyCourseBloc myCourseBloc = MyCourseBloc();

// @injectable
class AppConstant {
  final appName = "Gnac Orientation";

  final MyCourseBloc myCourseBloc = MyCourseBloc();

  final List<String> classList = [
    "A1",
    "A2",
    "B",
    "C",
    "D",
    "E",
    "F1",
    "F2",
    "F3",
    "F4",
    "G1",
    "G2",
    "G3"
  ];

  final List<String> courseList = [
    "ALLEMAND",
    "ANGLAIS",
    "BETON ARME",
    "CONSTRUCTION MECANIQUE",
    "DROIT ADMIN ET DU TRAVAIL",
    "ECONIMIE",
    "ELECTROTECH",
    "ESPAGNOL",
    "EST",
    "ETUDE D'UN SYSTEME TECHNIQUE",
    "ETUDE DE CAS",
    "ETUDE DE FABRICATION",
    "FRANCAIS",
    "HIST-GEO",
    "MATHS",
    "PHILO",
    "PCT",
    "RDM",
    "SVT",
  ];

  final Map<String, dynamic> userData = {
    "Série": "C",
    "Matières": {
      "FRANCAIS": {"Note": 12, "Coefficient": 2},
      "MATHS": {"Note": 15, "Coefficient": 6},
      "HIST-GEO": {"Note": 12, "Coefficient": 2},
      "ANGLAIS": {"Note": 15, "Coefficient": 2},
      "PCT": {"Note": 11, "Coefficient": 5},
      "SVT": {"Note": 14, "Coefficient": 2},
      "PHILO": {"Note": 8, "Coefficient": 2}
    }
  };

  final Map<String, dynamic> data = {
    "A1": {
      "UAC": {
        "FLASH-Adjarra (Faculté des Lettres, Arts et Sciences Humaines-Adjarra)":
            {
          "Géographie et Aménagement du Territoire": {
            "Bourse": 74,
            "Aide": 446,
            "Matières": ["FRANCAIS", "HIST-GEO", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Laboratoires et institutions de recherche",
              "Assainissement"
            ]
          },
          "Socio-Anthropologie": {
            "Bourse": 74,
            "Aide": 446,
            "Matières": ["FRANCAIS", "HIST-GEO", "MATHS"],
            "Métiers": [
              "Agent dans les centres sociaux",
              "Ministères",
              "Recherche"
            ]
          },
          "Anglais": {
            "Bourse": 169,
            "Aide": 891,
            "Matières": ["FRANCAIS", "HIST-GEO", "ANGLAIS"],
            "Métiers": ["Interprétariat", "Tourisme", "Enseignements"]
          }
        },
        "FLLAC (Faculté des lettres, langues, Arts et Communication)": {
          "Allemand": {
            "Bourse": 14,
            "Aide": 90,
            "Matières": ["ALLEMAND", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Anglais": {
            "Bourse": 92,
            "Aide": 750,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Espagnol": {
            "Bourse": 14,
            "Aide": 90,
            "Matières": ["ESPAGNOL", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Lettres Modernes": {
            "Bourse": 100,
            "Aide": 75,
            "Matières": ["ANGLAIS", "FRANCAIS", "PHILO"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Sciences du Langage et de la Communication": {
            "Bourse": 92,
            "Aide": 375,
            "Matières": ["ANGLAIS", "FRANCAIS", "PHILO"],
            "Métiers": [
              "Didacticien de langues français et langues africaines",
              "Consultant en éducation bi-plurilingues et interculturelles"
            ]
          }
        },
        "INMAAC (Institut National des Métiers d'Arts, d'Archéologie et de la Culture)":
            {
          "Administration Culturelle": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Production ou assistance de production",
              "Difusion et communication",
              "Assistant programmateur",
              "Manager d'artistes, au sein de toutes structures culturelles de diffusion, de création"
            ]
          },
          "Arts dramatiques": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Comédien",
              "Metteur en scène",
              "Régisseur",
              "Voix off",
              "Doublage vocal"
            ]
          },
          "Arts Plastiques": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "PHILO", "MATHS"],
            "Métiers": [
              "Dessinateur",
              "Peintre",
              "Sculpteur",
              "Designer",
              "Illustrateur",
              "Maquettiste",
              "Critique d'art"
            ]
          },
          "Musique et Musicologie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Chanteur",
              "Chef de choeur",
              "Designer sonore",
              "Compositeur de musique et paroles",
              "Musicien"
            ]
          },
          "Cinéma et Audiovisuel": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "MATHS", "PHILO"],
            "Métiers": [
              "Scénariste",
              "Storyboardeur",
              "Scénographe",
              "Régisseur",
              "Monteur image",
              "Création, gestion et diffusion"
            ]
          }
        },
        "CIFRED (Centre Inter Facultaire de Formation et de Recherche en Environnement pour le Développement Durable)":
            {
          "Environnement, Hygiène et Santé publique": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["SVT", "LV1", "HIST-GEO"],
            "Métiers": ["Inspecteur d'action sanitaire"]
          }
        },
        "ICV (Institut de Cadre de Vie) Ex. IGATE (Institut de Géographie de l'Aménagement du Territoire et de l'Environnement)":
            {
          "Gestion du cadre de vie": {
            "Bourse": 55,
            "Aide": 13,
            "Matières": ["LV1", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Aménagenment, reboisement, sauvegarde environnemental et social",
              "Gestion et restairation de l'environnement"
            ]
          },
          "Planification et Gestion des espaces urbains et ruraux": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["LV1", "FRANCAIS", "HIST-GEO"],
            "Métiers": ["Spécialiste en géomatique"]
          }
        },
        "EPA (Ecole du Patrimoine Africain)": {
          "Gestion du patrimaire culturel": {
            "Bourse": 35,
            "Aide": 10,
            "Matières": ["HIST-GEO", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Droit du patrimoine",
              "Patrimoniteurs",
              "Gestionnaires de musées",
              "Communicateurs culturels"
            ]
          }
        },
        "FASHS (Faculté des Sciences Humaines et Sociales) Calavi": {
          "Géographie et Aménagement du Territoire": {
            "Bourse": 92,
            "Aide": 900,
            "Matières": ["ANGLAIS", "MATHS", "HIST-GEO"],
            "Métiers": [
              "Enseignants",
              "Laboratoires et Institutions de recherche",
              "Responsables d'assainissement"
            ]
          },
          "Psychologie": {
            "Bourse": 50,
            "Aide": 300,
            "Matières": ["FRANCAIS", "MATHS", "SVT"],
            "Métiers": [
              "Formation des enseignants",
              "Centres d'accueil et de formation des sourds et muets, amblyopes et non-voyants",
              "Centres d'accueil et de formation des adultes en psychiatrie"
            ]
          },
          "Sciences de l'Education et de la Formation": {
            "Bourse": 64,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Formation des enseignants",
              "Centres d'accueil et de formation des sourds et muets, amblyopes et non-voyants",
              "Centres d'accueil et de formation des adultes en psychiatrie"
            ]
          },
          "Philosophie": {
            "Bourse": 43,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": ["Enseignants dans les collèges et lycées"]
          },
          "Socio-Anthropologie": {
            "Bourse": 44,
            "Aide": 750,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": ["Centres sociaux", "Ministères", "Recherche"]
          },
          "Histoire et Archéologie": {
            "Bourse": 78,
            "Aide": 180,
            "Matières": ["FRANCAIS", "HIST-GEO", "ANGLAIS"],
            "Métiers": [
              "Enseignement",
              "Conservateur de musée",
              "Recherche documentaire",
              "Gestionnaire du patrimoine culturel"
            ]
          },
          "Psychologie du travail et des Organisations": {
            "Bourse": 34,
            "Aide": 60,
            "Matières": ["ANGLAIS", "MATHS", "SVT"],
            "Métiers": [
              "Psychologue du travail des Organisations dans les Sociétés"
            ]
          }
        },
        "ENA (Ecole Natoinale d'Administration) Ex. ENAM": {
          "Administration Générale": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Secrétariat de Gestion": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs (Secrétariat et assistant de Gestion)"
            ]
          },
          "Sciences et Techniques de l'Information Documentaire": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Technicien supérieur en archivistique",
              "Technicien supérieur Documentariste"
            ]
          }
        },
        "FSS (Faculté des Sciences de la Santé)": {
          "Assistance sociale": {
            "Bourse": 11,
            "Aide": 4,
            "Matières": ["PHILO", "HIST-GEO", "SVT"],
            "Métiers": ["Technicien supérieur de l'action sociale"]
          }
        },
        "INEPS (Institut National de l'Education Physique et Sportive) Ex. INJEPS":
            {
          "Développement communautaire": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Administrateur en programmes et projets de développement",
              "Coordonnateur en programmes et projets de développement",
              "Chef de projets",
              "Spécialiste en planification et développement local"
            ]
          },
          "Andragogie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Spécialiste en ingénieurie de formation",
              "Administrateur en programmes et projets d'éducation",
              "Educateur et formateur d'adultes"
            ]
          },
          "Récréologie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Administrateur en programmes et projets de loisir et tourisme",
              "Coordonnateur en programmes et projets de loisir et tourisme",
              "Chef de projets",
              "Spécialiste en gestion du patrimoine"
            ]
          },
          "Entrepreneuriat social": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Spécialiste en création et gestion d'entreprise"
            ]
          }
        },
        "FADESP (Faculté de Droit et de Science Politique)": {
          "Droit": {
            "Bourse": 120,
            "Aide": 1200,
            "Matières": ["FRANCAIS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juriste des affaires, d'entreprise",
              "Auxiliaire de justice (Avocat, Huissier, Notaire, etc)",
              "Magistrature"
            ]
          },
          "Sciences Politiques": {
            "Bourse": 42,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Diplomate",
              "Spéciaiste des relations internationales",
              "Spécialiste des politiques publiques",
              "Sociologue des comportements politiques",
              "Evaluateur des politiques publiques",
              "Gestionnaire des projets"
            ]
          }
        }
      },
      "UP": {
        "Faculté de Droit et Sciences Politiques": {
          "Droit Privé": {
            "Bourse": 111,
            "Aide": 750,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire"
            ]
          },
          "Droit Public": {
            "Bourse": 83,
            "Aide": 600,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire",
              "Attaché des services financiers",
              "Attaché des impôts",
              "Assistant Juridique"
            ]
          },
          "Sciences Politiques et Relations Internationales": {
            "Bourse": 46,
            "Aide": 165,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Publique et locale",
              "Diplomatie",
              "Agents des services extérieurs et diplomatique",
              "Attaché politique",
              "Attaché des services culturels",
              "Guides touristiques",
              "Conseillé politique",
              "Analyste de politique publique",
              "Lobbyiste",
              "Agents des services parlementaires",
              "Médiateur",
              "Député",
              "Agents de relation publiques",
              "Fonctionnaires"
            ]
          }
        },
        "Faculté des Lettres, Arts et Sciences Humaines (FLASH)": {
          "Allemand": {
            "Bourse": 42,
            "Aide": 300,
            "Matières": ["FRANCAIS", "PHILO", "ALLEMAND"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Anglais": {
            "Bourse": 167,
            "Aide": 675,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Espagnol": {
            "Bourse": 43,
            "Aide": 300,
            "Matières": ["FRANCAIS", "PHILO", "ESPAGNOL"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Géographie et Aménagement du Territoire": {
            "Bourse": 116,
            "Aide": 900,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Urbaniste, Climatologiste",
              "Géomorphologue, Hydrologue"
            ]
          },
          "Sociologie Anthropologie": {
            "Bourse": 128,
            "Aide": 1050,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Employé dans les centres Sociaux",
              "Centre de recherche",
              "Ministère",
              "ONG",
              "Projet",
              "Médiateur"
            ]
          },
          "Lettres Modernes": {
            "Bourse": 256,
            "Aide": 675,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": ["Enseignement", "Interprète, Traducteur"]
          }
        }
      }
    },
    "A2": {
      "UAC": {
        "FLASH-Adjarra (Faculté des Lettres, Arts et Sciences Humaines-Adjarra)":
            {
          "Géographie et Aménagement du Territoire": {
            "Bourse": 74,
            "Aide": 446,
            "Matières": ["FRANCAIS", "HIST-GEO", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Laboratoires et institutions de recherche",
              "Assainissement"
            ]
          },
          "Socio-Anthropologie": {
            "Bourse": 74,
            "Aide": 446,
            "Matières": ["FRANCAIS", "HIST-GEO", "MATHS"],
            "Métiers": [
              "Agent dans les centres sociaux",
              "Ministères",
              "Recherche"
            ]
          },
          "Anglais": {
            "Bourse": 169,
            "Aide": 891,
            "Matières": ["FRANCAIS", "HIST-GEO", "ANGLAIS"],
            "Métiers": ["Interprétariat", "Tourisme", "Enseignements"]
          }
        },
        "FLLAC (Faculté des lettres, langues, Arts et Communication)": {
          "Allemand": {
            "Bourse": 14,
            "Aide": 90,
            "Matières": ["ALLEMAND", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Anglais": {
            "Bourse": 92,
            "Aide": 750,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Espagnol": {
            "Bourse": 14,
            "Aide": 90,
            "Matières": ["ESPAGNOL", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Lettres Modernes": {
            "Bourse": 100,
            "Aide": 75,
            "Matières": ["ANGLAIS", "FRANCAIS", "PHILO"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Sciences du Langage et de la Communication": {
            "Bourse": 92,
            "Aide": 375,
            "Matières": ["ANGLAIS", "FRANCAIS", "PHILO"],
            "Métiers": [
              "Didacticien de langues français et langues africaines",
              "Consultant en éducation bi-plurilingues et interculturelles"
            ]
          }
        },
        "INMAAC (Institut National des Métiers d'Arts, d'Archéologie et de la Culture)":
            {
          "Administration Culturelle": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Production ou assistance de production",
              "Difusion et communication",
              "Assistant programmateur",
              "Manager d'artistes, au sein de toutes structures culturelles de diffusion, de création"
            ]
          },
          "Arts dramatiques": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Comédien",
              "Metteur en scène",
              "Régisseur",
              "Voix off",
              "Doublage vocal"
            ]
          },
          "Arts Plastiques": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "PHILO", "MATHS"],
            "Métiers": [
              "Dessinateur",
              "Peintre",
              "Sculpteur",
              "Designer",
              "Illustrateur",
              "Maquettiste",
              "Critique d'art"
            ]
          },
          "Musique et Musicologie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Chanteur",
              "Chef de choeur",
              "Designer sonore",
              "Compositeur de musique et paroles",
              "Musicien"
            ]
          },
          "Cinéma et Audiovisuel": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "MATHS", "PHILO"],
            "Métiers": [
              "Scénariste",
              "Storyboardeur",
              "Scénographe",
              "Régisseur",
              "Monteur image",
              "Création, gestion et diffusion"
            ]
          }
        },
        "CIFRED (Centre Inter Facultaire de Formation et de Recherche en Environnement pour le Développement Durable)":
            {
          "Environnement, Hygiène et Santé publique": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["SVT", "LV1", "HIST-GEO"],
            "Métiers": ["Inspecteur d'action sanitaire"]
          }
        },
        "ICV (Institut de Cadre de Vie) Ex. IGATE (Institut de Géographie de l'Aménagement du Territoire et de l'Environnement)":
            {
          "Gestion du cadre de vie": {
            "Bourse": 55,
            "Aide": 13,
            "Matières": ["LV1", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Aménagenment, reboisement, sauvegarde environnemental et social",
              "Gestion et restairation de l'environnement"
            ]
          },
          "Planification et Gestion des espaces urbains et ruraux": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["LV1", "FRANCAIS", "HIST-GEO"],
            "Métiers": ["Spécialiste en géomatique"]
          }
        },
        "EPA (Ecole du Patrimoine Africain)": {
          "Gestion du patrimaire culturel": {
            "Bourse": 35,
            "Aide": 10,
            "Matières": ["HIST-GEO", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Droit du patrimoine",
              "Patrimoniteurs",
              "Gestionnaires de musées",
              "Communicateurs culturels"
            ]
          }
        },
        "FASHS (Faculté des Sciences Humaines et Sociales) Calavi": {
          "Géographie et Aménagement du Territoire": {
            "Bourse": 92,
            "Aide": 900,
            "Matières": ["ANGLAIS", "MATHS", "HIST-GEO"],
            "Métiers": [
              "Enseignants",
              "Laboratoires et Institutions de recherche",
              "Responsables d'assainissement"
            ]
          },
          "Psychologie": {
            "Bourse": 50,
            "Aide": 300,
            "Matières": ["FRANCAIS", "MATHS", "SVT"],
            "Métiers": [
              "Formation des enseignants",
              "Centres d'accueil et de formation des sourds et muets, amblyopes et non-voyants",
              "Centres d'accueil et de formation des adultes en psychiatrie"
            ]
          },
          "Sciences de l'Education et de la Formation": {
            "Bourse": 64,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Formation des enseignants",
              "Centres d'accueil et de formation des sourds et muets, amblyopes et non-voyants",
              "Centres d'accueil et de formation des adultes en psychiatrie"
            ]
          },
          "Philosophie": {
            "Bourse": 43,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": ["Enseignants dans les collèges et lycées"]
          },
          "Socio-Anthropologie": {
            "Bourse": 44,
            "Aide": 750,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": ["Centres sociaux", "Ministères", "Recherche"]
          },
          "Histoire et Archéologie": {
            "Bourse": 78,
            "Aide": 180,
            "Matières": ["FRANCAIS", "HIST-GEO", "ANGLAIS"],
            "Métiers": [
              "Enseignement",
              "Conservateur de musée",
              "Recherche documentaire",
              "Gestionnaire du patrimoine culturel"
            ]
          },
          "Psychologie du travail et des Organisations": {
            "Bourse": 34,
            "Aide": 60,
            "Matières": ["ANGLAIS", "MATHS", "SVT"],
            "Métiers": [
              "Psychologue du travail des Organisations dans les Sociétés"
            ]
          }
        },
        "ENA (Ecole Natoinale d'Administration) Ex. ENAM": {
          "Administration Générale": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Secrétariat de Gestion": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs (Secrétariat et assistant de Gestion)"
            ]
          },
          "Sciences et Techniques de l'Information Documentaire": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Technicien supérieur en archivistique",
              "Technicien supérieur Documentariste"
            ]
          }
        },
        "FSS (Faculté des Sciences de la Santé)": {
          "Assistance sociale": {
            "Bourse": 11,
            "Aide": 4,
            "Matières": ["PHILO", "HIST-GEO", "SVT"],
            "Métiers": ["Technicien supérieur de l'action sociale"]
          }
        },
        "INEPS (Institut National de l'Education Physique et Sportive) Ex. INJEPS":
            {
          "Développement communautaire": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Administrateur en programmes et projets de développement",
              "Coordonnateur en programmes et projets de développement",
              "Chef de projets",
              "Spécialiste en planification et développement local"
            ]
          },
          "Andragogie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Spécialiste en ingénieurie de formation",
              "Administrateur en programmes et projets d'éducation",
              "Educateur et formateur d'adultes"
            ]
          },
          "Récréologie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Administrateur en programmes et projets de loisir et tourisme",
              "Coordonnateur en programmes et projets de loisir et tourisme",
              "Chef de projets",
              "Spécialiste en gestion du patrimoine"
            ]
          },
          "Entrepreneuriat social": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Spécialiste en création et gestion d'entreprise"
            ]
          }
        },
        "FADESP (Faculté de Droit et de Science Politique)": {
          "Droit": {
            "Bourse": 120,
            "Aide": 1200,
            "Matières": ["FRANCAIS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juriste des affaires, d'entreprise",
              "Auxiliaire de justice (Avocat, Huissier, Notaire, etc)",
              "Magistrature"
            ]
          },
          "Sciences Politiques": {
            "Bourse": 42,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Diplomate",
              "Spéciaiste des relations internationales",
              "Spécialiste des politiques publiques",
              "Sociologue des comportements politiques",
              "Evaluateur des politiques publiques",
              "Gestionnaire des projets"
            ]
          }
        }
      },
      "UP": {
        "Faculté de Droit et Sciences Politiques": {
          "Droit Privé": {
            "Bourse": 111,
            "Aide": 750,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire"
            ]
          },
          "Droit Public": {
            "Bourse": 83,
            "Aide": 600,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire",
              "Attaché des services financiers",
              "Attaché des impôts",
              "Assistant Juridique"
            ]
          },
          "Sciences Politiques et Relations Internationales": {
            "Bourse": 46,
            "Aide": 165,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Publique et locale",
              "Diplomatie",
              "Agents des services extérieurs et diplomatique",
              "Attaché politique",
              "Attaché des services culturels",
              "Guides touristiques",
              "Conseillé politique",
              "Analyste de politique publique",
              "Lobbyiste",
              "Agents des services parlementaires",
              "Médiateur",
              "Député",
              "Agents de relation publiques",
              "Fonctionnaires"
            ]
          }
        },
        "Faculté des Lettres, Arts et Sciences Humaines (FLASH)": {
          "Allemand": {
            "Bourse": 42,
            "Aide": 300,
            "Matières": ["FRANCAIS", "PHILO", "ALLEMAND"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Anglais": {
            "Bourse": 167,
            "Aide": 675,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Espagnol": {
            "Bourse": 43,
            "Aide": 300,
            "Matières": ["FRANCAIS", "PHILO", "ESPAGNOL"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Géographie et Aménagement du Territoire": {
            "Bourse": 116,
            "Aide": 900,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Urbaniste, Climatologiste",
              "Géomorphologue, Hydrologue"
            ]
          },
          "Sociologie Anthropologie": {
            "Bourse": 128,
            "Aide": 1050,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Employé dans les centres Sociaux",
              "Centre de recherche",
              "Ministère",
              "ONG",
              "Projet",
              "Médiateur"
            ]
          },
          "Lettres Modernes": {
            "Bourse": 256,
            "Aide": 675,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": ["Enseignement", "Interprète, Traducteur"]
          }
        }
      }
    },
    "B": {
      "UAC": {
        "FLASH-Adjarra (Faculté des Lettres, Arts et Sciences Humaines-Adjarra)":
            {
          "Géographie et Aménagement du Territoire": {
            "Bourse": 74,
            "Aide": 446,
            "Matières": ["FRANCAIS", "HIST-GEO", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Laboratoires et institutions de recherche",
              "Assainissement"
            ]
          },
          "Socio-Anthropologie": {
            "Bourse": 74,
            "Aide": 446,
            "Matières": ["FRANCAIS", "HIST-GEO", "MATHS"],
            "Métiers": [
              "Agent dans les centres sociaux",
              "Ministères",
              "Recherche"
            ]
          },
          "Anglais": {
            "Bourse": 169,
            "Aide": 891,
            "Matières": ["FRANCAIS", "HIST-GEO", "ANGLAIS"],
            "Métiers": ["Interprétariat", "Tourisme", "Enseignements"]
          }
        },
        "FLLAC (Faculté des lettres, langues, Arts et Communication)": {
          "Allemand": {
            "Bourse": 14,
            "Aide": 90,
            "Matières": ["ALLEMAND", "HIST-GEO", "FRANCAIS"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Anglais": {
            "Bourse": 92,
            "Aide": 750,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Espagnol": {
            "Bourse": 14,
            "Aide": 90,
            "Matières": ["ESPAGNOL", "HIST-GEO", "FRANCAIS"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Lettres Modernes": {
            "Bourse": 100,
            "Aide": 75,
            "Matières": ["ANGLAIS", "FRANCAIS", "PHILO"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Sciences du Langage et de la Communication": {
            "Bourse": 92,
            "Aide": 375,
            "Matières": ["ANGLAIS", "FRANCAIS", "PHILO"],
            "Métiers": [
              "Didacticien de langues français et langues africaines",
              "Consultant en éducation bi-plurilingues et interculturelles"
            ]
          }
        },
        "INMAAC (Institut National des Métiers d'Arts, d'Archéologie et de la Culture)":
            {
          "Administration Culturelle": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Production ou assistance de production",
              "Difusion et communication",
              "Assistant programmateur",
              "Manager d'artistes, au sein de toutes structures culturelles de diffusion, de création"
            ]
          },
          "Arts dramatiques": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Comédien",
              "Metteur en scène",
              "Régisseur",
              "Voix off",
              "Doublage vocal"
            ]
          },
          "Arts Plastiques": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "PHILO", "MATHS"],
            "Métiers": [
              "Dessinateur",
              "Peintre",
              "Sculpteur",
              "Designer",
              "Illustrateur",
              "Maquettiste",
              "Critique d'art"
            ]
          },
          "Musique et Musicologie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Chanteur",
              "Chef de choeur",
              "Designer sonore",
              "Compositeur de musique et paroles",
              "Musicien"
            ]
          },
          "Cinéma et Audiovisuel": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "MATHS", "PHILO"],
            "Métiers": [
              "Scénariste",
              "Storyboardeur",
              "Scénographe",
              "Régisseur",
              "Monteur image",
              "Création, gestion et diffusion"
            ]
          }
        },
        "CIFRED (Centre Inter Facultaire de Formation et de Recherche en Environnement pour le Développement Durable)":
            {
          "Environnement, Hygiène et Santé publique": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["SVT", "ECONIMIE", "HIST-GEO"],
            "Métiers": ["Inspecteur d'action sanitaire"]
          }
        },
        "ICV (Institut de Cadre de Vie) Ex. IGATE (Institut de Géographie de l'Aménagement du Territoire et de l'Environnement)":
            {
          "Gestion du cadre de vie": {
            "Bourse": 55,
            "Aide": 13,
            "Matières": ["ECONIMIE", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Aménagenment, reboisement, sauvegarde environnemental et social",
              "Gestion et restairation de l'environnement"
            ]
          },
          "Planification et Gestion des espaces urbains et ruraux": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["ECONIMIE", "FRANCAIS", "HIST-GEO"],
            "Métiers": ["Spécialiste en géomatique"]
          }
        },
        "ENEAM (Ecole Nationale d'Economie Appliquée et de Management)": {
          "Marketing": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Marketing et Communication Commerciale",
              "Responsable commercial",
              "Chef de produit",
              "Responsable du développement commercial",
              "Chargé d'affaires",
              "Chargé de clientèle",
              "Chargé d'étude marketing",
              "Responsable des ventes",
              "Chef de publicité",
              "Chargé des relations publiques",
              "Responsable des ventes",
              "Chef de publicité",
              "Chargé des relations publiques",
              "Média planner",
              "Chargé de communication",
              "Marketing Digital et Community Management",
              "Responsable Marketing Digital/Digital Marketing Manager",
              "Responsable de la stratégie mobile",
              "Chargé de communication Web digital / Digital brand manager",
              "Responsable marketing relationnel/CRM",
              "Marketing buisness analyst",
              "Data miner / Data analyst",
              "Chef de projet Web",
              "Responsable e-Commerce",
              "Digital planner",
              "Consultant search marketing (SEM/SEO)",
              "Community manager",
              "Chef de produit Web/Mobile",
              "Responsable de la marque en ligne",
              "Social media manager",
              "Content manager/Responsable contenu numérique",
              "Marketing et Management Commercial",
              "Chargé d'affaires",
              "Conseiller clientèle",
              "Chargé d'études commerciales",
              "Responsable d'agence commerciale",
              "Marchandiseur"
            ]
          },
          "Gestion des Ressources Humaines": {
            "Bourse": 4,
            "Aide": 2,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Gestion du personnel et des ressources humaines dans les entreprises privées et publiques"
            ]
          }
        },
        "EPA (Ecole du Patrimoine Africain)": {
          "Gestion du patrimaire culturel": {
            "Bourse": 35,
            "Aide": 10,
            "Matières": ["HIST-GEO", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Droit du patrimoine",
              "Patrimoniteurs",
              "Gestionnaires de musées",
              "Communicateurs culturels"
            ]
          }
        },
        "FASHS (Faculté des Sciences Humaines et Sociales) Calavi": {
          "Géographie et Aménagement du Territoire": {
            "Bourse": 92,
            "Aide": 900,
            "Matières": ["ANGLAIS", "MATHS", "HIST-GEO"],
            "Métiers": [
              "Enseignants",
              "Laboratoires et Institutions de recherche",
              "Responsables d'assainissement"
            ]
          },
          "Psychologie": {
            "Bourse": 50,
            "Aide": 300,
            "Matières": ["FRANCAIS", "MATHS", "SVT"],
            "Métiers": [
              "Formation des enseignants",
              "Centres d'accueil et de formation des sourds et muets, amblyopes et non-voyants",
              "Centres d'accueil et de formation des adultes en psychiatrie"
            ]
          },
          "Philosophie": {
            "Bourse": 43,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": ["Enseignants dans les collèges et lycées"]
          },
          "Socio-Anthropologie": {
            "Bourse": 44,
            "Aide": 750,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": ["Centres sociaux", "Ministères", "Recherche"]
          },
          "Histoire et Archéologie": {
            "Bourse": 78,
            "Aide": 180,
            "Matières": ["FRANCAIS", "HIST-GEO", "ANGLAIS"],
            "Métiers": [
              "Enseignement",
              "Conservateur de musée",
              "Recherche documentaire",
              "Gestionnaire du patrimoine culturel"
            ]
          },
          "Psychologie du travail et des Organisations": {
            "Bourse": 34,
            "Aide": 60,
            "Matières": ["ANGLAIS", "MATHS", "SVT"],
            "Métiers": [
              "Psychologue du travail et des Organisation dans les sociétés"
            ]
          }
        },
        "ENA (Ecole Natoinale d'Administration) Ex. ENAM": {
          "Administration Générale": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Secrétariat de Gestion": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "ECONIMIE"],
            "Métiers": [
              "Attaché des services administratifs (Secrétariat et assistant de Gestion)"
            ]
          },
          "Sciences et Techniques de l'Information Documentaire": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "ECONIMIE"],
            "Métiers": [
              "Technicien supérieur en archivistique",
              "Technicien supérieur Documentariste"
            ]
          }
        },
        "HERCI (Haute Ecole Réginale de Commerce International)": {
          "Négoce International": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "ECONIMIE"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          },
          "Gestion des Relations Maritimes Internationales": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "ECONIMIE"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          },
          "Commerce International": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "ECONIMIE"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          }
        },
        "INEPS (Institut National de l'Education Physique et Sportive) Ex. INJEPS":
            {
          "Développement communautaire": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Administrateur en programmes et projets de développement",
              "Coordonnateur en programmes et projets de développement",
              "Chef de projets",
              "Spécialiste en planification et développement local"
            ]
          },
          "Andragogie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Spécialiste en ingénieurie de formation",
              "Administrateur en programmes et projets d'éducation",
              "Educateur et formateur d'adultes"
            ]
          },
          "Récréologie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Administrateur en programmes et projets de loisir et tourisme",
              "Coordonnateur en programmes et projets de loisir et tourisme",
              "Chef de projets",
              "Spécialiste en gestion du patrimoine"
            ]
          },
          "Entrepreneuriat social": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Spécialiste en création et gestion d'entreprise"
            ]
          }
        },
        "FASEG (Faculté des Sciences Economiques et de Gestion)": {
          "Sciences Economiques et de Gestion (Tronc commun)": {
            "Bourse": 225,
            "Aide": 1740,
            "Matières": ["MATHS", "ECONIMIE", "FRANCAIS"],
            "Métiers": [
              "Services déconcentrés de l'Etat, Collectivités locales, associations et ONG",
              "Analystes, statisticiens, Comptable",
              "Planificateur et Gestion des Ressources financières",
              "Statistique agricole",
              "Analyse des projets agricoles",
              "Services financiers des collectivités locales",
              "Gestion des structures de microfinance",
              "Chargé des études et de la prospective économique des collectivités",
              "Economiste de marché",
              "Conseiller économique",
              "Conseiller en Microfinance",
              "Economiste/stratégiste bancaire",
              "Entrepreneur",
              "Gestioinnaire des PME",
              "Agent de banque",
              "Comptable dans les service financiers",
              "Assistant Auditeur",
              "Agent de banque, d'assurance"
            ]
          },
          "Sciences et Techiques Comptables et Financières (STCF)": {
            "Bourse": 9,
            "Aide": 30,
            "Matières": ["MATHS", "ECONIMIE", "FRANCAIS"],
            "Métiers": [
              "Audit comptable oyu financier",
              "Contrôleur interne en banque et entreprise",
              "Agent comptable"
            ]
          }
        }
      },
      "UP": {
        "IUT (Institut Universitaire de Technologie)": {
          "Gestion Commerciale": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises commerciales ou services commerciaux de tout type d'entreprise",
              "services de logistiques internationale",
              "Entreprise d'export",
              "Sociétés de transit et de manutention",
              "Banque",
              "Agence de communication",
              "Grandes entreprises de représentant commercial de chef de rayon dans le centre commercial (Supermarché)",
              "Attaché commercial de chef de produit",
              "Chargé des relations publiques",
              "Assistant de communication interne diffusant des informations à l'intérieur de l'entreprise"
            ]
          },
          "Gestion des Transports et Logistiques": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Banque",
              "Société d'assurance et administrations petites, moyennes et grandes entreprises",
              "Entreprises de transport et de Gestion ferroviaire",
              "Service chargé de la logistique au niveau des entreprises des administrations",
              "Poste d'agent comptable dans les compagnies aériennes",
              "D'agent de fret dans les aéroports de techniciens des études et l'exploitation de l'avion civile"
            ]
          },
          "Gestion des Ressources Humaines": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises",
              "Assurance",
              "Administrations",
              "Organisations",
              "ONG"
            ]
          }
        },
        "FASEG (Faculté de Sciences Economiques et de Gestion)": {
          "Analyse et Politique Economiques (APE)": {
            "Bourse": 26,
            "Aide": 60,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Economie Agricole (EA)": {
            "Bourse": 62,
            "Aide": 120,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Economie et Finance des Collectivités Locales (EFCL)": {
            "Bourse": 26,
            "Aide": 60,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Economie et Finance des Collectivités Locales",
              "Cabinets Conseils en Projets de Développement Local",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées à la Promotion de l'Economie, Commerciales et Financières",
              "Gestion Financière de Structures Chargées des Questions Liées aux Affaires Economiques et Financières des Collectivités Territoriales Décentralisées (Ministères, Administrations, Projets de Développement, Mairies)",
              "Collectivités Territoriales Décentralisées (Ministères, Administrations, Projets de Développement, Mairies)"
            ]
          },
          "Economie et Finance Internationales (EFI)": {
            "Bourse": 34,
            "Aide": 120,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques et Monétaires",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques, Commerciales et Financières (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Entrepreneuriat et Gestion des Entreprises (EGE)": {
            "Bourse": 26,
            "Aide": 75,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Création et Gestion d'Activités",
              "Appui Conseils en Gestion de la Qualité et des Innovations des produits",
              "Cabinets Conseils en Etudes de Faisabilité",
              "Cabinets Conseils en élaboration des plans d'affaires",
              "Cabinets d'Audit en Création, Gestion et Mise à niveau d'Entreprises",
              "Cabinets Conseils en Suivi et Evaluation du Développement des PME et PMI"
            ]
          },
          "Marketing et Management des Organisations (MMO)": {
            "Bourse": 15,
            "Aide": 54,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Management",
              "Cabinets Conseils en Marketing",
              "Cabinets Conseils en Communication",
              "Cabinets d'Audit en Gestion",
              "Administrations de tous Genres (Ministères, Administrations, Projets de Développement, Entreprises de tous Genres)"
            ]
          },
          "Finance et Comptabilité (FC)": {
            "Bourse": 85,
            "Aide": 300,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Finances",
              "Cabinets Conseils en Comptabilité",
              "Cabinets Conseils en Contrôle de Gestion",
              "Cabinets d'Audit en Gestion",
              "Structures Chargées des Questions Liées aux Finances (Ministères, Administrations, Projets de Développement, Entreprises de tous Genres)"
            ]
          }
        },
        "Faculté de Droit et Sciences Politiques": {
          "Droit Privé": {
            "Bourse": 111,
            "Aide": 750,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire"
            ]
          },
          "Droit Public": {
            "Bourse": 83,
            "Aide": 600,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire",
              "Attaché des services financiers",
              "Attaché des impôts",
              "Assistant Juridique"
            ]
          },
          "Sciences Politiques et Relations Internationales": {
            "Bourse": 46,
            "Aide": 165,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Publique et locale",
              "Diplomatie",
              "Agents des services extérieurs et diplomatique",
              "Attaché politique",
              "Attaché des services culturels",
              "Guides touristiques",
              "Conseillé politique",
              "Analyste de politique publique",
              "Lobbyiste",
              "Agents des services parlementaires",
              "Médiateur",
              "Député",
              "Agents de relation publiques",
              "Fonctionnaires"
            ]
          }
        },
        "Faculté des Lettres, Arts et Sciences Humaines (FLASH)": {
          "Allemand": {
            "Bourse": 42,
            "Aide": 300,
            "Matières": ["FRANCAIS", "PHILO", "ALLEMAND"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Anglais": {
            "Bourse": 167,
            "Aide": 675,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Espagnol": {
            "Bourse": 43,
            "Aide": 300,
            "Matières": ["FRANCAIS", "PHILO", "ESPAGNOL"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Géographie et Aménagement du Territoire": {
            "Bourse": 116,
            "Aide": 900,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Urbaniste, Climatologiste",
              "Géomorphologue, Hydrologue"
            ]
          },
          "Sociologie Anthropologie": {
            "Bourse": 128,
            "Aide": 1050,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Employé dans les centres Sociaux",
              "Centre de recherche",
              "Ministère",
              "ONG",
              "Projet",
              "Médiateur"
            ]
          }
        }
      }
    },
    "C": {
      "UAC": {
        "IRSP (Institut Régional de Santé Publique)": {
          "Santé publique polyvalente": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Agent de santé communautaire",
              "Responsable de surveillance épidémiologique",
              "Attaché de recherche en santé",
              "Assistance en planification, suivi et évaluation en santé",
              "Agent d'hygiène et d'assainissement du milieu"
            ]
          }
        },
        "FLASH-Adjarra (Faculté des Lettres, Arts et Sciences Humaines-Adjarra)":
            {
          "Géographie et Aménagement du Territoire": {
            "Bourse": 74,
            "Aide": 446,
            "Matières": ["FRANCAIS", "HIST-GEO", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Laboratoires et institutions de recherche",
              "Assainissement"
            ]
          },
          "Socio-Anthropologie": {
            "Bourse": 74,
            "Aide": 446,
            "Matières": ["FRANCAIS", "HIST-GEO", "MATHS"],
            "Métiers": [
              "Agent dans les centres sociaux",
              "Ministères",
              "Recherche"
            ]
          },
          "Anglais": {
            "Bourse": 169,
            "Aide": 891,
            "Matières": ["FRANCAIS", "HIST-GEO", "ANGLAIS"],
            "Métiers": ["Interprétariat", "Tourisme", "Enseignements"]
          }
        },
        "IMSP (Institut de Mathématiques et de Sciences Physiques)": {
          "Classes préparatoires Mathématiques, Physiques et Science de l'ingénieur (MPSI) et Physique-Chimie et Science de l'ingénieur (PCSI)":
              {
            "Bourse": 94,
            "Aide": 16,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entrée dans les grandes écoles d'ingénieurs",
              "Entrée dans les Masters de Mathématiques, de Physique et Informatique"
            ]
          }
        },
        "FLLAC (Faculté des lettres, langues, Arts et Communication)": {
          "Anglais": {
            "Bourse": 92,
            "Aide": 750,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Lettres Modernes": {
            "Bourse": 100,
            "Aide": 75,
            "Matières": ["ANGLAIS", "FRANCAIS", "PHILO"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Sciences du Langage et de la Communication": {
            "Bourse": 92,
            "Aide": 375,
            "Matières": ["ANGLAIS", "FRANCAIS", "PHILO"],
            "Métiers": [
              "Didacticien de langues français et langues africaines",
              "Consultant en éducation bi-plurilingues et interculturelles"
            ]
          }
        },
        "INMAAC (Institut National des Métiers d'Arts, d'Archéologie et de la Culture)":
            {
          "Administration Culturelle": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Production ou assistance de production",
              "Difusion et communication",
              "Assistant programmateur",
              "Manager d'artistes, au sein de toutes structures culturelles de diffusion, de création"
            ]
          },
          "Arts dramatiques": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Comédien",
              "Metteur en scène",
              "Régisseur",
              "Voix off",
              "Doublage vocal"
            ]
          },
          "Arts Plastiques": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "PHILO", "MATHS"],
            "Métiers": [
              "Dessinateur",
              "Peintre",
              "Sculpteur",
              "Designer",
              "Illustrateur",
              "Maquettiste",
              "Critique d'art"
            ]
          },
          "Musique et Musicologie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Chanteur",
              "Chef de choeur",
              "Designer sonore",
              "Compositeur de musique et paroles",
              "Musicien"
            ]
          },
          "Cinéma et Audiovisuel": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "PCT", "PHILO"],
            "Métiers": [
              "Scénariste",
              "Storyboardeur",
              "Scénographe",
              "Régisseur",
              "Monteur image",
              "Création, gestion et diffusion"
            ]
          }
        },
        "CIFRED (Centre Inter Facultaire de Formation et de Recherche en Environnement pour le Développement Durable)":
            {
          "Environnement, Hygiène et Santé publique": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["SVT", "PCT", "HIST-GEO"],
            "Métiers": ["Inspecteur d'action sanitaire"]
          }
        },
        "ICV (Institut de Cadre de Vie) Ex. IGATE (Institut de Géographie de l'Aménagement du Territoire et de l'Environnement)":
            {
          "Gestion du cadre de vie": {
            "Bourse": 55,
            "Aide": 13,
            "Matières": ["MATHS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Aménagenment, reboisement, sauvegarde environnemental et social",
              "Gestion et restairation de l'environnement"
            ]
          },
          "Planification et Gestion des espaces urbains et ruraux": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "FRANCAIS", "HIST-GEO"],
            "Métiers": ["Spécialiste en géomatique"]
          },
          "Gestion des changements climatiques et des écosystèmes": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Changement Climatique",
              "Aménagement et Gestion des Resources Naturelles"
            ]
          },
          "Géomatique et Environnement": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "HIST-GEO"],
            "Métiers": ["Spécialiste en géomantique"]
          }
        },
        "INE (Institut National de l'Eau)": {
          "Hydrologie quantitative et gestion intégrée des ressources": {
            "Bourse": 35,
            "Aide": 8,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Hydrogéologies et Gestion intégrée des Ressources": {
            "Bourse": 21,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Ecohydrologie et Gestion intégrée des Ressources": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Gestion des crises et risques liés à l'eau et au climat": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Génie rural et Maîtrise de l'Eau": {
            "Bourse": 18,
            "Aide": 4,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Hydraulique et Assainissement": {
            "Bourse": 55,
            "Aide": 13,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Eau Hygiène et Assainissement (EHA)": {
            "Bourse": 55,
            "Aide": 13,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          }
        },
        "ENEAM (Ecole Nationale d'Economie Appliquée et de Management)": {
          "Administration des Réseaux Informatiques": {
            "Bourse": 53,
            "Aide": 10,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Technicien en réseaux informatiques",
              "Technicien en maintenance informatique",
              "Développeur d'applications (Deskop, Web, Mobile)"
            ]
          },
          "Analyse Informatique et Programmation": {
            "Bourse": 35,
            "Aide": 7,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Technicien en réseaux informatiques",
              "Technicien en maintenance informatique",
              "Développeur d'applications (Deskop, Web, Mobile)"
            ]
          },
          "Assurance": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en négoce",
              "Gestionnaire de patrimoine"
            ]
          },
          "Banque et Finanace de Marché": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en marché",
              "Négoces",
              "Gestionnaire de patrimoine et des portefeuilles"
            ]
          },
          "Banque et Institutions des Micro finances": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en marché",
              "Négoces",
              "Gestionnaire de patrimoine et des portefeuilles"
            ]
          },
          "Marketing": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Marketing et Communication Commerciale",
              "Responsable commercial",
              "Chef de produit",
              "Responsable du développement commercial",
              "Chargé d'affaires",
              "Chargé de clientèle",
              "Chargé d'étude marketing",
              "Responsable des ventes",
              "Chef de publicité",
              "Chargé des relations publiques",
              "Responsable des ventes",
              "Chef de publicité",
              "Chargé des relations publiques",
              "Média planner",
              "Chargé de communication",
              "Marketing Digital et Community Management",
              "Responsable Marketing Digital/Digital Marketing Manager",
              "Responsable de la stratégie mobile",
              "Chargé de communication Web digital / Digital brand manager",
              "Responsable marketing relationnel/CRM",
              "Marketing buisness analyst",
              "Data miner / Data analyst",
              "Chef de projet Web",
              "Responsable e-Commerce",
              "Digital planner",
              "Consultant search marketing (SEM/SEO)",
              "Community manager",
              "Chef de produit Web/Mobile",
              "Responsable de la marque en ligne",
              "Social media manager",
              "Content manager/Responsable contenu numérique",
              "Marketing et Management Commercial",
              "Chargé d'affaires",
              "Conseiller clientèle",
              "Chargé d'études commerciales",
              "Responsable d'agence commerciale",
              "Marchandiseur"
            ]
          },
          "Gestion des Ressources Humaines": {
            "Bourse": 4,
            "Aide": 2,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Gestion du personnel et des ressources humaines dans les entreprises privées et publiques"
            ]
          },
          "Gestion des Transports": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises maritimes",
              "Logistiques, les administrations"
            ]
          },
          "Gestion de Logistique": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": ["Agences de voyage", "Approvisionnement"]
          },
          "Gestion Financière et Comptable": {
            "Bourse": 15,
            "Aide": 2,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Comptable",
              "Responsable financier",
              "Auditeur financier",
              "Auditeur interne"
            ]
          },
          "Planification et Gestion des Projets": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Planificateur",
              "Gestionnaire de projets",
              "Cabinets d'études et conseils"
            ]
          },
          "Planification et Economie du Développement Durable": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Planificateur",
              "Gestionnaire de projets",
              "Cabinets d'études et conseils"
            ]
          },
          "Développement Local et Régional": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Planificateur",
              "Gestionnaire de projets",
              "Cabinets d'études et conseils"
            ]
          }
        },
        "EPA (Ecole du Patrimoine Africain)": {
          "Gestion du patrimaire culturel": {
            "Bourse": 35,
            "Aide": 10,
            "Matières": ["HIST-GEO", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Droit du patrimoine",
              "Patrimoniteurs",
              "Gestionnaires de musées",
              "Communicateurs culturels"
            ]
          }
        },
        "FASHS (Faculté des Sciences Humaines et Sociales) Calavi": {
          "Géographie et Aménagement du Territoire": {
            "Bourse": 92,
            "Aide": 900,
            "Matières": ["ANGLAIS", "MATHS", "HIST-GEO"],
            "Métiers": [
              "Enseignants",
              "Laboratoires et Institutions de recherche",
              "Responsables d'assainissement"
            ]
          },
          "Sciences de l'Education et de la Formation": {
            "Bourse": 64,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "SVT"],
            "Métiers": [
              "Formation des enseignants",
              "Centres d'accueil et de formation des sourds et muets, amblyopes et non-voyants",
              "Centres d'accueil et de formation des adultes en psychiatrie"
            ]
          },
          "Philosophie": {
            "Bourse": 43,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": ["Enseignants dans les collèges et lycées"]
          },
          "Socio-Anthropologie": {
            "Bourse": 44,
            "Aide": 750,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": ["Centres sociaux", "Ministères", "Recherche"]
          },
          "Histoire et Archéologie": {
            "Bourse": 78,
            "Aide": 180,
            "Matières": ["FRANCAIS", "HIST-GEO", "ANGLAIS"],
            "Métiers": [
              "Enseignement",
              "Conservateur de musée",
              "Recherche documentaire",
              "Gestionnaire du patrimoine culturel"
            ]
          },
          "Psychologie du travail et des Organisations": {
            "Bourse": 34,
            "Aide": 60,
            "Matières": ["ANGLAIS", "MATHS", "SVT"],
            "Métiers": [
              "Psychologue du travail des Organisations dans les Sociétés"
            ]
          }
        },
        "ENA (Ecole Natoinale d'Administration) Ex. ENAM": {
          "Administration Générale": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Administration des Finances": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["MATHS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Secrétariat de Gestion": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs (Secrétariat et assistant de Gestion)"
            ]
          },
          "Sciences et Techniques de l'Information Documentaire": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Technicien supérieur en archivistique",
              "Technicien supérieur Documentariste"
            ]
          }
        },
        "IFRI (Institut de Formation et de Recherche en Informatique)": {
          "Génie Logiciel": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Analystes et concepteurs",
              "Architectes logiciels",
              "Administrateurs de bases de données",
              "Développeurs d'applications métiers",
              "Auto-Entreprenariat"
            ]
          },
          "Internet et Multimédia": {
            "Bourse": 16,
            "Aide": 7,
            "Matières": ["MATHS", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Concepteurs d'applications mobiles",
              "Designers",
              "Monteurs vidéo et multimédia",
              "Techniciens de web TV et web Radio"
            ]
          },
          "Intelligence Artificielle (IA)": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Développeurs des solutions intélligentes",
              "Analystes des données décisionnelles",
              "Architecte des données massives",
              "Auto-entreprenariat"
            ]
          },
          "Systèmes embarqués et Internet des Objets (SEIoT)": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Concepteurs de solutions embarquées",
              "Développeurs de solutions domotiques",
              "Concepteurs de solutions électroniques",
              "Auto-entreprenariat"
            ]
          },
          "Sécurité Informatique": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Réseaux et systèmes informatiques",
              "Sécurité Informatique",
              "Contrôle systèmes d'information"
            ]
          }
        },
        "FSA (Faculté des Sciences Agronomiques)": {
          "Sciecnes et Techniques de Production Végétale": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur agricole",
              "Contrôle de qualité des cultures",
              "Technicien en gestion et conversation"
            ]
          },
          "Sceinces et Techniques de Production Animale": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicien en gestion et conduite des élevages",
              "Technicien de laboratoire",
              "Technicien en conduite et gestion des élevages",
              "Technicien en Zootechnie"
            ]
          },
          "Aménagement et Gestion des Forêts et Parcours Naturels": {
            "Bourse": 19,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Gestionnaire des forêts et parcours naturels",
              "Gestion des travaux d'inventaire forestier",
              "Gestion des plans d'aménagement des forêts"
            ]
          },
          "Génie Rural, Mécanisation Agricole, Pêche et Aquaculture": {
            "Bourse": 33,
            "Aide": 8,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Périmètres irrigués",
              "Assainissement agricole",
              "Mécanisation agricole",
              "Aménagement des pêches en Aquaculture",
              "Concepteur des fermes piscicoles"
            ]
          },
          "Nutrition et Technologie Alimentaires": {
            "Bourse": 18,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technique de diététique",
              "Nutrition dans les hôpitaux, centres de santé et industries agroalimentaires"
            ]
          },
          "Agroéconomie, Sociologie et Vulgarisation Rurales": {
            "Bourse": 12,
            "Aide": 2,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entreprise et ferme agricole",
              "Structures de recherches et vulgarisation",
              "Enseignant des Lycées agricoles"
            ]
          },
          "Entreprenariat Agricole": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": ["Gestionnaire de ferme"]
          }
        },
        "FSS (Faculté des Sciences de la Santé)": {
          "Médécine Générale": {
            "Bourse": 150,
            "Aide": 10,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Médecin généraliste",
              "Possibilités de spécialisations dans un domaine spécifique en sciences de la santé"
            ]
          },
          "Pharmacie": {
            "Bourse": 18,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Pharmacien",
              "Spécialisations en sciences de la santé, option pharmacie"
            ]
          },
          "Kinésithérapie": {
            "Bourse": 18,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Kinésithérapie",
              "Spécialisations en sciences de la santé, option kinésithérapie"
            ]
          },
          "Nutrition et Diététique": {
            "Bourse": 14,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Nutrition clinique dans les hôpitaux et formations sanitaires",
              "Programme de nutrition",
              "Consultant en nutrition et diététique"
            ]
          }
        },
        "EPAC (Ecole Polytechnique d'Abomey-Calavi)": {
          "Analyse Biomédicale": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicien de laboratoire des centres de santé",
              "Assistant de recherche"
            ]
          },
          "Génie de Technologie Alimentaire": {
            "Bourse": 19,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Industries alimentaires",
              "Industrie de fabrication de farines infantiles (UBETA)",
              "Struture chargées des normes",
              "Audit et conseil en agroalimentaire"
            ]
          },
          "Production et Santé animales": {
            "Bourse": 37,
            "Aide": 9,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Cliniques et Pharmacie vétérinaires",
              "Abattoirs et de contrôle des produits halieutiques",
              "Contrôle vétérinaire",
              "Industries agro-alimentaires animales et halieutiques, fermes Agro-Pastorales et halieutiques",
              "Usines d'alimentation",
              "Enseignement dans les Lycées et Collèges Agricoles",
              "Recherche en production et santé animales et halieutiques"
            ]
          },
          "Génie de l'Environnement": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": ["Aménagement et protection de l'Environnement"]
          },
          "Génie d'Imagerie médiacale et de Radiologie": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Radilogie et Echographie dans les centres hospitaliers",
              "Recherche en radiobiologie"
            ]
          },
          "Génie Civil": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Chefs chantiers",
              "Techniciens d'étude en entreprise",
              "Conducteurs des travaux",
              "Laboratoires"
            ]
          },
          "Génie Electrique": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Société d'électricité, usines",
              "Cabinets d'experts (Suivi contrôle audit)"
            ]
          },
          "Génie Mécanique et Energétique": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Maintenance industrielle",
              "Designer, Production de pièces",
              "Gestionnaires de parcs machines",
              "Bureaux d'études et méthodes",
              "Contrôle de qualité"
            ]
          },
          "Génie Informatique et Télécom": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Réseaux télécoms",
              "Cabinets d'experts",
              "Technicien dans les usines"
            ]
          },
          "Génie Chimique procédés": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Unité de production",
              "Consultant en production et analyse",
              "Sécurité, hygiène et environnement",
              "Industrie agroalimentaire",
              "Industrie pharmaceutique",
              "Traitement des pollutions"
            ]
          },
          "Machinisme Agricole": {
            "Bourse": 29,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Fabrication mécanique",
              "Parcs machines",
              "Contrôle qualité",
              "Maintenance des engins agricoles",
              "Mécanisation agricole"
            ]
          },
          "Génie Biomédicale (Maintenance Biomédicale et Hospitalière)": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Technicien de laboratoire des centres de santé",
              "Maintenance hospitalière et contrôle des équipements de laboratoires médicaux et vétérinaires",
              "Maintenance des équipements électroniques"
            ]
          }
        },
        "CEFORP (Centre de Formation et de Recherche en matière de Population)":
            {
          "Dynamique de Population et Planification Régionale": {
            "Bourse": 18,
            "Aide": 7,
            "Matières": ["MATHS", "HIST-GEO", "ANGLAIS"],
            "Métiers": [
              "Spécialiste en développement local",
              "Spécialiste des questions de population",
              "Technicien supérieur en planification",
              "Gestionnaire de base de données",
              "Technicien en SIG et cartographie",
              "Assistant en gestion et suivi de projets et programmes"
            ]
          }
        },
        "HERCI (Haute Ecole Réginale de Commerce International)": {
          "Négoce International": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          },
          "Gestion des Relations Maritimes Internationales": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          },
          "Commerce International": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          }
        },
        "INEPS (Institut National de l'Education Physique et Sportive) Ex. INJEPS":
            {
          "Développement communautaire": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Administrateur en programmes et projets de développement",
              "Coordonnateur en programmes et projets de développement",
              "Chef de projets",
              "Spécialiste en planification et développement local"
            ]
          },
          "Andragogie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Spécialiste en ingénieurie de formation",
              "Administrateur en programmes et projets d'éducation",
              "Educateur et formateur d'adultes"
            ]
          },
          "Récréologie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Administrateur en programmes et projets de loisir et tourisme",
              "Coordonnateur en programmes et projets de loisir et tourisme",
              "Chef de projets",
              "Spécialiste en gestion du patrimoine"
            ]
          },
          "Entrepreneuriat social": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Spécialiste en création et gestion d'entreprise"
            ]
          }
        },
        "FADESP (Faculté de Droit et de Science Politique)": {
          "Droit": {
            "Bourse": 120,
            "Aide": 1200,
            "Matières": ["FRANCAIS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juriste des affaires, d'entreprise",
              "Auxiliaire de justice (Avocat, Huissier, Notaire, etc)",
              "Magistrature"
            ]
          },
          "Sciences Politiques": {
            "Bourse": 42,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Diplomate",
              "Spéciaiste des relations internationales",
              "Spécialiste des politiques publiques",
              "Sociologue des comportements politiques",
              "Evaluateur des politiques publiques",
              "Gestionnaire des projets"
            ]
          }
        },
        "FASEG (Faculté des Sciences Economiques et de Gestion)": {
          "Sciences Economiques et de Gestion (Tronc commun)": {
            "Bourse": 225,
            "Aide": 1740,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Services déconcentrés de l'Etat, Collectivités locales, associations et ONG",
              "Analystes, statisticiens, Comptable",
              "Planificateur et Gestion des Ressources financières",
              "Statistique agricole",
              "Analyse des projets agricoles",
              "Services financiers des collectivités locales",
              "Gestion des structures de microfinance",
              "Chargé des études et de la prospective économique des collectivités",
              "Economiste de marché",
              "Conseiller économique",
              "Conseiller en Microfinance",
              "Economiste/stratégiste bancaire",
              "Entrepreneur",
              "Gestioinnaire des PME",
              "Agent de banque",
              "Comptable dans les service financiers",
              "Assistant Auditeur",
              "Agent de banque, d'assurance"
            ]
          },
          "Econométrie et Statistiques Appliquées": {
            "Bourse": 20,
            "Aide": 30,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Statisticien, économètre, Analyste économiste",
              "Conseiller en stratégies et prise de décicsions"
            ]
          },
          "Sciences et Techiques Comptables et Financières (STCF)": {
            "Bourse": 9,
            "Aide": 30,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Audit comptable oyu financier",
              "Contrôleur interne en banque et entreprise",
              "Agent comptable"
            ]
          }
        },
        "FAST (Faculté des Sciences Techniques)": {
          "Sciences de la Vie et de la Terre": {
            "Bourse": 74,
            "Aide": 300,
            "Matières": ["SVT", "PCT", "FRANCAIS"],
            "Métiers": [
              "Enseignement des SVT",
              "Techniciens de laboratoires et dans les institutions de recherche",
              "Ecoles d'ingénieurs"
            ]
          },
          "Physique-Chimie": {
            "Bourse": 277,
            "Aide": 600,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Enseignement des PCT",
              "Techniciens de laboratoires et dans les institutions de recherche",
              "Ecoles d'ingénieurs"
            ]
          },
          "Mathématiques Informatique et Applications": {
            "Bourse": 277,
            "Aide": 600,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Enseignement des Maths",
              "Techniciens de laboratoires et dans les institutions de recherche",
              "Ecoles d'ingénieurs"
            ]
          },
          "Energies Renouvelables et Systèmes Energétiques": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Production et fourniture d'énergie électrique",
              "Fourniture de services"
            ]
          },
          "Génétique, Biotechnologies et Resources Biologiques": {
            "Bourse": 13,
            "Aide": 6,
            "Matières": ["SVT", "PCT", "FRANCAIS"],
            "Métiers": [
              "Recherche en Génétique et biotechnologies appliquées",
              "Gestion des ressources génétiques",
              "Entrepreneuriat en sélections végétales et animales"
            ]
          },
          "Microbiologie et Biotechnologie Alimentaire": {
            "Bourse": 19,
            "Aide": 6,
            "Matières": ["SVT", "PCT", "FRANCAIS"],
            "Métiers": [
              "Chef de production dans les industries",
              "Laboratoire en contrôle de qualité",
              "Transformations agroalimentaires",
              "Auditeur de qualité",
              "Formateurs agricoles"
            ]
          },
          "Hydrobiologie Appliquée": {
            "Bourse": 17,
            "Aide": 6,
            "Matières": ["SVT", "PCT", "FRANCAIS"],
            "Métiers": [
              "Techniciens de laboratoire de biologie",
              "Spécialiste en qualité de l'eau et surveillance des écosystèmes aquatiques",
              "Chef production en pisciculture, pêche et Aquaculture",
              "Technicien en Aménagement des zones humides",
              "Technicien en Aquariologie",
              "Technicien en Inspection des produits halieutiques"
            ]
          }
        }
      },
      "UP": {
        "FA (Faculté d'Agronomie)": {
          "Sciences et Techniques de Production Végétale": {
            "Bourse": 22,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur Agricole",
              "Conseiller Agricole",
              "Technicien/Encadreur en production végétale/protection des végétaux/ sélection variétale/gestion durable des terres",
              "Enseignant des Lycées agricoles"
            ]
          },
          "Sciences et Techniques de Production Animale et Halieutique": {
            "Bourse": 22,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicicen en gestion et conduite d'élevage/gestion des exploitations animales et aquacoles",
              "EntrepreneurAgricole",
              "Conseiller Agricole",
              "Enseignant des Lycées agricoles"
            ]
          },
          "Aménagement et Gestion des Ressources Naturelles": {
            "Bourse": 22,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicien en Aménagement et gestion des aires protégées",
              "Cadre des eaux et forêts",
              "Assistance dans les études de gestion et de conservation des aires protégées",
              "Entrepreneur Agricole",
              "Conseiller Agricole",
              "Enseignant des Lycées agricoles"
            ]
          },
          "Sociologie et Economie Rurales": {
            "Bourse": 22,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Assistance dans la création et la gestion d'entreprise/coopérative agricole",
              "Mise en place et gestion de cluster agricole",
              "Appui conseil au développement local",
              "Facilitation de la mise en place des innovations institutionnelles",
              "Assistance dans les études socio-économiques"
            ]
          },
          "Nutrition et Sciences Agroalimentaires": {
            "Bourse": 22,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur Agro-alimentaire",
              "Responsable système de qualité IAA",
              "Chef production IAA",
              "Technicien en nutrition et sciences agro-alimentaires",
              "Enseignant des lycées agricoles"
            ]
          }
        },
        "FM (Faculté de Médecine)": {
          "Médecine Humaine": {
            "Bourse": 120,
            "Aide": 33,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Médecin généraliste dans les hôpitaux et centre de santé"
            ]
          }
        },
        "ENATSE (Ecole Nationale de formation des Techniciens Supérieurs en Santé Publique et Surveillance Epidémiologique)":
            {
          "Santé publique et surveillance épidémiologique": {
            "Bourse": 40,
            "Aide": 13,
            "Matières": ["MATHS", "ANGLAIS", "SVT"],
            "Métiers": [
              "Biostatisticien dans les services de santé",
              "Agent de surveillance épidémiologique",
              "Attaché de Recherche dans les instituts de Recherche en santé",
              "Agent des collectivités locales"
            ]
          }
        },
        "IUT (Institut Universitaire de Technologie)": {
          "Gestion des Banques": {
            "Bourse": 17,
            "Aide": 6,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Orgabismes financiers ou de gestion (établissement de crédits, entreprises commerciales de banque)"
            ]
          },
          "Gestion Commerciale": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises commerciales ou services commerciaux de tout type d'entreprise",
              "services de logistiques internationale",
              "Entreprise d'export",
              "Sociétés de transit et de manutention",
              "Banque",
              "Agence de communication",
              "Grandes entreprises de représentant commercial de chef de rayon dans le centre commercial (Supermarché)",
              "Attaché commercial de chef de produit",
              "Chargé des relations publiques",
              "Assistant de communication interne diffusant des informations à l'intérieur de l'entreprise"
            ]
          },
          "Gestions des Entreprises": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Cabinets comptables",
              "Services de comptabilité des entreprises",
              "Banque",
              "Assurances",
              "Administration petites moyennes et grandes entreprises",
              "Auto emploi"
            ]
          },
          "Gestion des Transports et Logistiques": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Banque",
              "Société d'assurance et administrations petites, moyennes et grandes entreprises",
              "Entreprises de transport et de Gestion ferroviaire",
              "Service chargé de la logistique au niveau des entreprises des administrations",
              "Poste d'agent comptable dans les compagnies aériennes",
              "D'agent de fret dans les aéroports de techniciens des études et l'exploitation de l'avion civile"
            ]
          },
          "Informatique de Gestion": {
            "Bourse": 64,
            "Aide": 14,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Centre informatique",
              "Banque",
              "Entreprise de prestation de service",
              "Editeur de logiciels",
              "Grandes entreprises informatisées",
              "Poste d'analyse programmeur",
              "Chef de programme informatique",
              "Ingénieur logiciel",
              "Administrateur de réseau"
            ]
          },
          "Gestion des Ressources Humaines": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises",
              "Assurance",
              "Administrations",
              "Organisations",
              "ONG"
            ]
          }
        },
        "FASEG (Faculté de Sciences Economiques et de Gestion)": {
          "Analyse et Politique Economiques (APE)": {
            "Bourse": 26,
            "Aide": 60,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Economie Agricole (EA)": {
            "Bourse": 62,
            "Aide": 120,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Economie et Finance des Collectivités Locales (EFCL)": {
            "Bourse": 26,
            "Aide": 60,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Economie et Finance des Collectivités Locales",
              "Cabinets Conseils en Projets de Développement Local",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées à la Promotion de l'Economie, Commerciales et Financières",
              "Gestion Financière de Structures Chargées des Questions Liées aux Affaires Economiques et Financières des Collectivités Territoriales Décentralisées (Ministères, Administrations, Projets de Développement, Mairies)",
              "Collectivités Territoriales Décentralisées (Ministères, Administrations, Projets de Développement, Mairies)"
            ]
          },
          "Economie et Finance Internationales (EFI)": {
            "Bourse": 34,
            "Aide": 120,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques et Monétaires",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques, Commerciales et Financières (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Entrepreneuriat et Gestion des Entreprises (EGE)": {
            "Bourse": 26,
            "Aide": 75,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Création et Gestion d'Activités",
              "Appui Conseils en Gestion de la Qualité et des Innovations des produits",
              "Cabinets Conseils en Etudes de Faisabilité",
              "Cabinets Conseils en élaboration des plans d'affaires",
              "Cabinets d'Audit en Création, Gestion et Mise à niveau d'Entreprises",
              "Cabinets Conseils en Suivi et Evaluation du Développement des PME et PMI"
            ]
          },
          "Marketing et Management des Organisations (MMO)": {
            "Bourse": 15,
            "Aide": 54,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Management",
              "Cabinets Conseils en Marketing",
              "Cabinets Conseils en Communication",
              "Cabinets d'Audit en Gestion",
              "Administrations de tous Genres (Ministères, Administrations, Projets de Développement, Entreprises de tous Genres)"
            ]
          },
          "Finance et Comptabilité (FC)": {
            "Bourse": 85,
            "Aide": 300,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Finances",
              "Cabinets Conseils en Comptabilité",
              "Cabinets Conseils en Contrôle de Gestion",
              "Cabinets d'Audit en Gestion",
              "Structures Chargées des Questions Liées aux Finances (Ministères, Administrations, Projets de Développement, Entreprises de tous Genres)"
            ]
          }
        },
        "Faculté de Droit et Sciences Politiques": {
          "Droit Privé": {
            "Bourse": 111,
            "Aide": 750,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire"
            ]
          },
          "Droit Public": {
            "Bourse": 83,
            "Aide": 600,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire",
              "Attaché des services financiers",
              "Attaché des impôts",
              "Assistant Juridique"
            ]
          },
          "Sciences Politiques et Relations Internationales": {
            "Bourse": 46,
            "Aide": 165,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Publique et locale",
              "Diplomatie",
              "Agents des services extérieurs et diplomatique",
              "Attaché politique",
              "Attaché des services culturels",
              "Guides touristiques",
              "Conseillé politique",
              "Analyste de politique publique",
              "Lobbyiste",
              "Agents des services parlementaires",
              "Médiateur",
              "Député",
              "Agents de relation publiques",
              "Fonctionnaires"
            ]
          }
        },
        "Faculté des Lettres, Arts et Sciences Humaines (FLASH)": {
          "Anglais": {
            "Bourse": 167,
            "Aide": 675,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Géographie et Aménagement du Territoire": {
            "Bourse": 116,
            "Aide": 900,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Urbaniste, Climatologiste",
              "Géomorphologue, Hydrologue"
            ]
          },
          "Sociologie Anthropologie": {
            "Bourse": 128,
            "Aide": 1050,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Employé dans les centres Sociaux",
              "Centre de recherche",
              "Ministère",
              "ONG",
              "Projet",
              "Médiateur"
            ]
          }
        }
      },
      "UNSTIM": {
        "INSTI (Institut National Supérieur de Technologie Industrielle)": {
          "Génie Civil": {
            "Bourse": 76,
            "Aide": 12,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Techniciens de Travaux du Génie Civil",
              "Controleurs de chantiers",
              "Assistant des experts Géomètres, des cabinets d'architecture, des agences immobilières et des notaires"
            ]
          },
          "Génie Energétique (Energies Renouvelables et Systèmes Energétiques)":
              {
            "Bourse": 38,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Techniciens en Industrie électrique, électrotechniques et électroniques",
              "Métiers du bâtiment",
              "Appareillage, instrumentation",
              "Installations, équipements et systèmes pour énergies renouvelables",
              "Audit et Efficacité énergétique"
            ]
          },
          "Génie Energétique (Froid et climatisation)": {
            "Bourse": 38,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Techniciens en Froid et climatisation de bâtiment et automobile",
              "Métiers du bâtiment",
              "Appareillage, instrumentation"
            ]
          },
          "Génie Electrique et Informatique (Informatique et Télécommunications)":
              {
            "Bourse": 31,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Service informatique d'entreprise",
              "Cabinets d'audit ou ingénierie informatique",
              "Sociétés de maintenance informatique",
              "Agences de communication",
              "Agences de développement d'applications web et mobiles",
              "Sociétés de téléphonie mobile",
              "Fournisseurs d'accès internet",
              "Télésurveillance",
              "Systèmes embarqués"
            ]
          },
          "Génie Electrique et Informatique (Ellectronique et Electrotechnique)":
              {
            "Bourse": 30,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Electricité Industrielle et de bâtiments",
              "Contrôle de procéds dans le domaine électrique",
              "Energie électrique, sa production, son transport et son traitement",
              "Comande automatique de processus",
              "Système embarqués",
              "Télésurveillance",
              "Contrôle de Qualité dans le domaine électrique"
            ]
          },
          "Génie Mécanique et productique": {
            "Bourse": 46,
            "Aide": 9,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Parcs machines",
              "Maintenance industrielle",
              "Fabrication mécanique",
              "Méthodes et contrôle de la qualité",
              "Maintenance des engins agricoles",
              "Mécanisation agricole"
            ]
          }
        },
        "ENSBBA (Ecole Nationale Supérieur des Biosciences et Biotechnologies Appliquées)":
            {
          "Biotechnologie Médicale": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Techniciens supérieurs dans les Laboratoires de diagnostics biomédicaux et de contrôle de qualité des analyses",
              "Techniciens supérieurs dans les laboratoires de recherche universitaire ou privés",
              "Technicien supérieur dans les Laboratoires de production de bioproduits",
              "Auto-emploi"
            ]
          },
          "Biotechnologie Pharmaceutique": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Techniciens supérieurs de valorisation des ressources biologiques et de l'Environnement dans les industries pharmaceutiques et cosmétiques",
              "Techniciens supérieurs dans les laboratoires de substances naturelles et de fabrication des bioproduits",
              "Technicien supérieur dans les Laboratoires de contrôle de qualité des produits pharmaceutiques et cosmétiques",
              "Techniciens supérieurs dans les laboratoires de recherche",
              "Techniciens supérieurs dans les Laboratoires pédagogiques des universités",
              "Auto-emploi"
            ]
          },
          "Génétique Biotechnologies et Applications": {
            "Bourse": 10,
            "Aide": 4,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Techniciens supérieurs de recherche dans les Laboratoires de génétique humaine et de diagnostic dans les centres hospitaliers",
              "Techniciens supérieurs dans les laboratoires pédagogiques des universités",
              "Techniciens supérieurs dans les laboratoires de génétique et de selection des centres de recherche agricole"
            ]
          },
          "Génie Biologique et Bioprocédés (GBB)": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Techniciens supérieurs dans les laboratoires (analyse ou recherche)",
              "Techniciens supérieurs des centres de recherches en biologie appliquée",
              "Assistant de recherche dans les instituts de recherches biologiques",
              "Techniciens qualité"
            ]
          },
          "Diététique des aliments et Nutrition": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Technicien supérieur en diététique",
              "Techniciens supérieurs en contrôle de qualité des aliments",
              "Technicien dans des sociétés de restauration collective",
              "Techniciens supérieurs nutritionnistes des centres hospitaliers et des maisons de repos",
              "Conseillers en éducation nutritionnelle et alimentaire",
              "Auto-emploi"
            ]
          }
        },
        "FAST Natitingou (Faculté des Sciences et Techniques)": {
          "Mathématiques Informatiques": {
            "Bourse": 105,
            "Aide": 75,
            "Matières": ["ANGLAIS", "PCT", "MATHS"],
            "Métiers": [
              "Cadres de télécommunications optiques et des nouvelles technologies de l'information et de la communication",
              "Enseignants des lycées et collèges (BAPES et CAPES en MI) après complément de formation en sciences de l'éducation",
              "Accès aux écoles d'ingénieur",
              "Accès à un master recherche ou professionnel en mathématique ou en informatique pouvant déboucher sur une thèse de doctorat"
            ]
          },
          "Physique Chimie": {
            "Bourse": 80,
            "Aide": 54,
            "Matières": ["ANGLAIS", "PCT", "MATHS"],
            "Métiers": [
              "Cadres de télécommunications optiques et des nouvelles technologies de l'information et de ka communication",
              "Cadres en Météorologie, océanographie et balistique",
              "Enseignants des lycées et collèges (BAPES et CAPES en PCT) après complément de formation en sciences de l'éducation",
              "Accès aux écoles d'ingénieur",
              "Accès à un master professionnel de physique ou de technologie",
              "Accès à un master recherche en vue d'approfondir les connaissances théoriques en physique ou en chimie fondamentale et de réaliser une thèse de doctorat",
              "Cadres des industries chimiques (cosmétique, parfumerie et cimenterie), agro-alimentaires (brasseries, huileries...) et pharmaceutiques"
            ]
          }
        },
        "ENSGEP (Ecole Nationale Supérieure de Génie Energétique et Procédés)":
            {
          "Froid et Climatiation": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Technicien supérieur en Installation, mise en service et maintenance d'équipements de froid et climatisation"
            ]
          },
          "Equipement motorisés": {
            "Bourse": 29,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Technicien supérieur en installation et maintenance des équipements motorisés",
              "Technicien supérieur en electromécanique",
              "Technicien supérieur en mécanique automobile",
              "Technicien supérieur en installation et maintenance de matériels électroménagers",
              "Technicien supérieur en maintenance des systèmes hydrauliques et pneumatiques des gros engins des travaux publics"
            ]
          }
        },
        "ENSTP (Ecole Nationale Supérieure des Travaux Publics)": {
          "Génie Civil": {
            "Bourse": 24,
            "Aide": 4,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Assistants dans les bureaux d'études",
              "Techniciens contrôleurs de travaux du Génie Civil (routes, bâtiments, ouvrages d'art, assainissement, aménagements divers...)",
              "Techniciens métreur ou technicien assistant des ingénieurs études",
              "Techniciens dans les services déconcentrés et Mairies",
              "Techniciens de laboratoires géotechniques ou de recherche en génie civil",
              "Assistants des Experts Routiers, géotechniciens, ouvragistes",
              "Entrepreneur, chef de chantier",
              "Conducteur de travaux"
            ]
          },
          "Génie Géomatique Appliquée": {
            "Bourse": 21,
            "Aide": 4,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Assistants des Experts Géomètres, des architectes, agences immobilières et notaires",
              "Techniciens en Système d'Information Géographique (SIG)",
              "Technicien-Cartographes",
              "Technicien dans les Services déconcentrés et Mairies",
              "Assistants dans les  bureaux d'études"
            ]
          },
          "Architecture et Urbanisme": {
            "Bourse": 30,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Techniciens Architectes-Urbanistes",
              "Techniciens Contrôleurs de chantiers de bâtiments",
              "Techniciens Contrôleurs de travaux d'aménagements urbains",
              "Assistants des experts aménagistes urbanistes",
              "Techniciens dans les services déconcentrés et les Mairies",
              "Assistants dans les Cabinets d'Architecture, agence immobilières et notaires",
              "Assistants dans les bureaux d'études"
            ]
          },
          "Hydraulique et Assainissement": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Techniciens en Hydraulique et Assainissement",
              "Techniciens de Laboratoires d'analyse d'eau",
              "Techniciens Contrôleurs des travaux d'assainissement",
              "Techniciens Contrôleurs des travaux d'Adduction d'Eaux",
              "Techniciens Contrôleurs des travaux de constructions d'ouvrages hydrauliques ou hydro-agricoles (barrages, ponts, etc)",
              "Technicien de gestion des stations d'épuration des eaux usées",
              "Technicien de gestion des stations de traitements de l'eau pour boisson",
              "Technicien dans les services déconcentrés et Mairies",
              "Assistants des experts hydrauliciens, hydrologues et en gestion des eaux",
              "Assistants dans les bureaux d'études"
            ]
          }
        }
      },
      "UNA": {
        "EAq (Ecole d'Aquaculture)": {
          "Aquaculture": {
            "Bourse": 33,
            "Aide": 6,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Chargé des entreprises aquacoles",
              "Technicien en production de poissons",
              "Technicine en production de crevettes, crabes, huitres et de moules",
              "Technicien en conception et fabrication des aliments pour les espèces aquacoles d'élevage",
              "Technicien en conception, fabrication et entretien d'aquarium",
              "Technicien en conception et fabrication des aliments",
              "Technicien en aquariologie",
              "Technicien en production, gestion et certification de semences aquacoles",
              "Conseiller/Assistant en aquaculture"
            ]
          }
        },
        "EHAEV (Ecole d'Horticulture et d'Aménagement des Espaces Verts)": {
          "Horticulture et Aménagement des Espaces Verts": {
            "Bourse": 57,
            "Aide": 4,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Technicien en gestion des entreprises horticoles (cultures maraîchères, fruitières et ornementales)",
              "Conseiller des exploitations des secteurs horticoles (fruits, légumes et ornement)",
              "Technicien en production de semences et plants horticoles (maraîchères, fruitières et ornementales)",
              "Technicien en installation et gestion des systèmes d'irrigation en horticulture et espaces verts (privés et publics)",
              "Technicien en gestion ds ravageurs et nuisibles en horticulture et espaces verts (privés et publics)",
              "Technicien en conception, installation et réalisation des plans d'aménagement des Espaces Verts (Publics ou Privés)",
              "Technicien en production et distribution d'intrants et de produits horticoles (fruits, légumes et fleurs)",
              "Technicien en stockage et conditionnement des produits horticoles",
              "Technicien en cultures hydroponiques et Aquaponiques",
              "Technicien en biotechnologies horticoles et création variétales",
              "Conseiller technique en construction des infrastructures et équipements horticoles et en aménagement des espaces verts",
              "Agent des cabinets d'expertise",
              "Technicien de recherche en horticulture",
              "Fonctionnaire des organisations internationales de développement (Bioversity, ICRAF, World Vegetable, IRD, CIRAD, IITA, etc...)",
              "Enseignant dans les établissements de formation (Ecoles, Lycées Agricoles, Universités, Instituts de formation)"
            ]
          }
        },
        "EGPVS (Ecole de Gestion et de Production Végétale et Semencière)": {
          "Gestion et Production Végétale et Semencière": {
            "Bourse": 70,
            "Aide": 10,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Entrepreneur en production végétale",
              "Technicien en production végétale",
              "Technicien en production de semenes et gestionnaire des banques de semences",
              "Technicien en gestion de la fertilité des sols",
              "Assistants en élaboration des plans d'entreprise de production végétale et semencière",
              "Technicien en protection des végétaux",
              "Technicien en biotechnologie végétale",
              "Assistant de recherche agricole"
            ]
          }
        },
        "ESTCTPA (Ecole des Sciences et Techniques de Conservation et de Transformation des Produits Agricoles)":
            {
          "Industrie des Produits Agro-Alimentaires et Nutrition Humaines (IPA-NH)":
              {
            "Bourse": 25,
            "Aide": 4,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Technicien supérieur en industrie et entreprises agro-alimentaires (productions laitières, céréalières, de viande et produits carnés, de poissons et produits halieutiques, produits des fruits et légumes, etc)",
              "Producteur et conservateur de produits agro-alimentaires",
              "Concepteur et fabricant d'aliments à base des produits agricoles",
              "Contrôleur de la qualité des produits agricoles et agro-alimentaires",
              "Conseiller/Assistant/Encadreur en conservation, et transformation des produits agricoles",
              "Technicien en éducation nutritionnelle (ONG, entreprises, associations, autres)",
              "Technicien des projets de nutrition",
              "Enseignat dans les lycées techniques agricoles"
            ]
          },
          "Industrie des Bio-Ressources (IBR)": {
            "Bourse": 24,
            "Aide": 4,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Technicien supérieur en industrie des Bio-Ressources",
              "Technicien supérieur dans les industries cosmétiques et de phytothérapie : savons, lotion, huiles, essentielles, parfums",
              "Producteur de biogaz",
              "Fabricant d'huiles végétales et de corps gras",
              "Fabricant d'aliments pour bétail domestique",
              "Conseiller en gestion des procédés post récoltes",
              "Technicien en traitements chimiques et Organiques des produits agricoles en stock",
              "Enseignant dans les lycées techniques agricoles"
            ]
          },
          "Génie de Conditiionnement Enballage et Stockage des Produits Alimentaires (GCES)":
              {
            "Bourse": 25,
            "Aide": 4,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Technicien en génie du conditionnement emballage et stockage des produits agro-alimentaires",
              "Technicien en contrôle de qualité et normes des produits agro-alimentaires",
              "Concepteur d'étiquettes, d'emballages et conditionnements alimentaires",
              "Concepteur de structures de stockage et de conservation : greniers, cribs, silos, magasins/entrepôts",
              "Conseiller en emballages divers pour le conditionnement",
              "Enseignant dans les lycées techniques agricoles"
            ]
          }
        },
        "Ecole de Génie Rural (EGR)": {
          "Agroéquipement": {
            "Bourse": 18,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Entreprises de conception et de fabrication des machines",
              "Société de maintenance des engins et équipements agricoles",
              "Entreprise motorisée",
              "Gérant de parc d'engins ou de machines agricoles",
              "Entreprise d'Installation et maintenance d'équipements agro-industriels",
              "Entreprises et Fermes mécanisées agricoles",
              "Industries de transformation et Unités de production agro-alimentaire (usine d'égrnage, Brasseries, Huileries, ...)",
              "Sociétés de maintenance de Tracteurs et de machines agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Garage de réparation d'automobiles",
              "Administration publique",
              "Etablissements d'enseignement technique"
            ]
          },
          "Electrification Rurale et Energies Renouvelables (ERER)": {
            "Bourse": 19,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Industries de transformation et Unités de Production (agro-alimentaire, cimenterie, production de sucre, lait, brasserie, coton, huile de palme, etc...)",
              "Cabinets d'audit et de Conseils en énergies renouvelables",
              "Projets de construction de lignes électriques",
              "Projets d'électrification rurale",
              "Entreprises de BTP",
              "Garages automobiles",
              "Entreprises travaillant dans le secteur du biogaz et autres énergies vertes",
              "Fermes et entreprises agro-pastorales",
              "Administration publique",
              "Etablissements d'enseignement technique",
              "Entreprenariat sur les énergie vertes et le développement durable"
            ]
          },
          "Infrastructures Rurales et Assainissement": {
            "Bourse": 19,
            "Aide": 2,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entreprise de travaux de constructions d'Ouvrages/Réseaux hydrauliques ou hydro-agricoles",
              "Entreprise de travaux d'irrigation et de drainage",
              "Entreprise d'aménagement hydro-agricole",
              "Entreprise de travaux de voirie et réseaux d'adduction d'eau potable",
              "Sociétés d'eau et d'assainissement",
              "Stations d'épuration d'eaux usées",
              "Stations de traitements d'eau",
              "Services Techniques des Mairies",
              "Entreprises ou Sociétés de BTP",
              "Mission de contrôle",
              "Cabinets d'Architecture",
              "Laboratoires de Génie Civil",
              "Cabintes/Bureaux d'études et de conseils",
              "Etablissements d'enseilgnement technique"
            ]
          }
        },
        "Ecole de Gestion et d'Exploitation des Systèmes d'Elevage (EGESE)": {
          "Productions et santé animales": {
            "Bourse": 58,
            "Aide": 4,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicien des fermes d'embouche de bovins, ovins et caprins porcs, lapins et aulacodes",
              "Technicien des fermes de production de laits de vaches et chèvres",
              "Technicien en production des oeufs de consommation",
              "Technicien des centres d'accouvage pour la fourniture des poussins d'un jour",
              "Agent technique des Clinique et pharmacies vétérinaires",
              "Entrepreneur en fabrication des aliments bétail",
              "Gestionnaire des Fermes Agro-Vétérinaire",
              "Assistant des structures d'audites des systèmes de production animale",
              "Technicien des entreprises agro-alimentaires de transformation des produits animaux",
              "Assistant des strutures de contrôle de qualité des Denrées Alimentaires d'Origine Animale",
              "Enseignant des lycées techniques agricoles"
            ]
          }
        },
        "EAPA (Ecole d'Agrobuisness et de Politiques Agricoles)": {
          "Finance agricole (FA)": {
            "Bourse": 17,
            "Aide": 4,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur agricole",
              "Gestionnaire d'entreprises agricoles et agro-industrielles",
              "Gestionnaire de coopératives et associations de producteurs",
              "Analyste du marché des produits et intrants agricoles",
              "Mercaticien d'entreprises agricoles et agro-industrielles",
              "Agent commercial d'entreprise agricole et agro-industrielles",
              "Banquier agricole",
              "Assureur agricole",
              "Gestionnaire d'institutions de financement agricole",
              "Assistant de recherche et d'études socio-économiques",
              "Conseiller en gestion d'entreprises agricoles et agro-industrielles",
              "Assistant planificateur du développement agricole",
              "Analyste des politiques de développement agricole",
              "Eseignant de collèges et lycées agricoles",
              "Consultant"
            ]
          },
          "Gestion des Exploitations Agricoles et Entreprises Agroalimentaires (GEAEA)":
              {
            "Bourse": 35,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur agricole",
              "Gestionnaire d'entreprises agricoles et agro-industrielles",
              "Gestionnaire de coopératives et associations de producteurs",
              "Analyste du marché des produits et intrants agricoles",
              "Mercaticien d'entreprises agricoles et agro-industrielles",
              "Agent commercial d'entreprise agricole et agro-industrielles",
              "Banquier agricole",
              "Assureur agricole",
              "Gestionnaire d'institutions de financement agricole",
              "Assistant de recherche et d'études socio-économiques",
              "Conseiller en gestion d'entreprises agricoles et agro-industrielles",
              "Assistant planificateur du développement agricole",
              "Analyste des politiques de développement agricole",
              "Eseignant de collèges et lycées agricoles",
              "Consultant"
            ]
          },
          "Marketing des Intrants et Produits Agricoles (MIPA)": {
            "Bourse": 35,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur agricole",
              "Gestionnaire d'entreprises agricoles et agro-industrielles",
              "Gestionnaire de coopératives et associations de producteurs",
              "Analyste du marché des produits et intrants agricoles",
              "Mercaticien d'entreprises agricoles et agro-industrielles",
              "Agent commercial d'entreprise agricole et agro-industrielles",
              "Banquier agricole",
              "Assureur agricole",
              "Gestionnaire d'institutions de financement agricole",
              "Assistant de recherche et d'études socio-économiques",
              "Conseiller en gestion d'entreprises agricoles et agro-industrielles",
              "Assistant planificateur du développement agricole",
              "Analyste des politiques de développement agricole",
              "Eseignant de collèges et lycées agricoles",
              "Consultant"
            ]
          }
        },
        "ERSVA (Ecole de Sociologie rurale et de Vulgarisation Agricole)": {
          "Sociologie rurale et Vulgarisation Agricole": {
            "Bourse": 48,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicien supérieur des entreprises agricoles",
              "Technicien supérieur en Vulgarisateur/conseil agricole",
              "Technicien de recherche dans les institutions de recherche nationales et internationales dans le domaine de la sociologie rurale et de la vulgarisation agricole",
              "Conseiller technique de cabinet de conseil agricole et vulgarisation",
              "Conseiller technique de cabinet d'expertise agricole",
              "Conseiller technique aux affaires techniques et financières des banques",
              "Fonctionnaire d'Etat (ministères)",
              "Fonctionnaire des conllectivités décentralisées et faitières paysannes",
              "Technicien spécialisé en gestion des organisations paysannes et syndicats paysans",
              "Technicien spécialisé en gestion des parcs et aires protégées (problématiques des populations riveraines)",
              "Conseiller technique en nutrition humaine",
              "Enseignants des établissements et lycées agricoles",
              "Technicien en gouvernance des filières et chaines de valeur agricole",
              "Fonctionnaire des organisations de développement international (PNUD, Banque Mondiale, SNV, USAID, etc..)"
            ]
          }
        },
        "Ecole de Foresterie Tropicale": {
          "Foresterie Tropicale": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Forestier Gestionnaire des ressources naturelles (Forêts, Eaux et Chasse)",
              "Forestier Gestionnaire des réserves de faune et des aires protégées",
              "Sylviculteurs (Plantations des bois d'oeuvre, de service et des essences autochtones)",
              "Gestionnaire des Unités de productions sylvicoles",
              "Pilotage de drones (Véhicules aérein sans humain à bord) pour les opérations de collectes de données en forêt",
              "Spécialiste de la domestication et élevage des gibiers",
              "Spécialiste des transformations sommaires du bois",
              "Prodcucteur des produits forestiers non ligueux (PFNL y compris le miel et élevage non conventionnels)",
              "Travailleur/Chercheur ds cabinets d'étude d'impact environnemental et de recherche",
              "Enseignant des lycées techniques agricoles",
              "Travailleur dans les Ministères (MCVDD, MAEP), et des Organisations Non Gouvernementales (ONG)",
              "Spécialiste des transformations du bois (ébénisterie d'art, biocharbon, dendroénergie)"
            ]
          }
        }
      }
    },
    "D": {
      "UAC": {
        "IRSP (Institut Régional de Santé Publique)": {
          "Santé publique polyvalente": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Agent de santé communautaire",
              "Responsable de surveillance épidémiologique",
              "Attaché de recherche en santé",
              "Assistance en planification, suivi et évaluation en santé",
              "Agent d'hygiène et d'assainissement du milieu"
            ]
          }
        },
        "FLASH-Adjarra (Faculté des Lettres, Arts et Sciences Humaines-Adjarra)":
            {
          "Géographie et Aménagement du Territoire": {
            "Bourse": 74,
            "Aide": 446,
            "Matières": ["FRANCAIS", "HIST-GEO", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Laboratoires et institutions de recherche",
              "Assainissement"
            ]
          },
          "Socio-Anthropologie": {
            "Bourse": 74,
            "Aide": 446,
            "Matières": ["FRANCAIS", "HIST-GEO", "MATHS"],
            "Métiers": [
              "Agent dans les centres sociaux",
              "Ministères",
              "Recherche"
            ]
          },
          "Anglais": {
            "Bourse": 169,
            "Aide": 891,
            "Matières": ["FRANCAIS", "HIST-GEO", "ANGLAIS"],
            "Métiers": ["Interprétariat", "Tourisme", "Enseignements"]
          }
        },
        "IMSP (Institut de Mathématiques et de Sciences Physiques)": {
          "Classes préparatoires Mathématiques, Physiques et Science de l'ingénieur (MPSI) et Physique-Chimie et Science de l'ingénieur (PCSI)":
              {
            "Bourse": 94,
            "Aide": 16,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entrée dans les grandes écoles d'ingénieurs",
              "Entrée dans les Masters de Mathématiques, de Physique et Informatique"
            ]
          }
        },
        "FLLAC (Faculté des lettres, langues, Arts et Communication)": {
          "Anglais": {
            "Bourse": 92,
            "Aide": 750,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Lettres Modernes": {
            "Bourse": 100,
            "Aide": 75,
            "Matières": ["ANGLAIS", "FRANCAIS", "PHILO"],
            "Métiers": [
              "Interprétariat",
              "Tourisme",
              "Enseignants dans les collèges et lycées",
              "Lecteur correcteur des maisons d'édition"
            ]
          },
          "Sciences du Langage et de la Communication": {
            "Bourse": 92,
            "Aide": 375,
            "Matières": ["ANGLAIS", "FRANCAIS", "PHILO"],
            "Métiers": [
              "Didacticien de langues français et langues africaines",
              "Consultant en éducation bi-plurilingues et interculturelles"
            ]
          }
        },
        "INMAAC (Institut National des Métiers d'Arts, d'Archéologie et de la Culture)":
            {
          "Administration Culturelle": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Production ou assistance de production",
              "Difusion et communication",
              "Assistant programmateur",
              "Manager d'artistes, au sein de toutes structures culturelles de diffusion, de création"
            ]
          },
          "Arts dramatiques": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Comédien",
              "Metteur en scène",
              "Régisseur",
              "Voix off",
              "Doublage vocal"
            ]
          },
          "Arts Plastiques": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "PHILO", "MATHS"],
            "Métiers": [
              "Dessinateur",
              "Peintre",
              "Sculpteur",
              "Designer",
              "Illustrateur",
              "Maquettiste",
              "Critique d'art"
            ]
          },
          "Musique et Musicologie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Chanteur",
              "Chef de choeur",
              "Designer sonore",
              "Compositeur de musique et paroles",
              "Musicien"
            ]
          },
          "Cinéma et Audiovisuel": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "PCT", "PHILO"],
            "Métiers": [
              "Scénariste",
              "Storyboardeur",
              "Scénographe",
              "Régisseur",
              "Monteur image",
              "Création, gestion et diffusion"
            ]
          }
        },
        "CIFRED (Centre Inter Facultaire de Formation et de Recherche en Environnement pour le Développement Durable)":
            {
          "Environnement, Hygiène et Santé publique": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["SVT", "PCT", "HIST-GEO"],
            "Métiers": ["Inspecteur d'action sanitaire"]
          }
        },
        "ICV (Institut de Cadre de Vie) Ex. IGATE (Institut de Géographie de l'Aménagement du Territoire et de l'Environnement)":
            {
          "Gestion du cadre de vie": {
            "Bourse": 55,
            "Aide": 13,
            "Matières": ["MATHS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Aménagenment, reboisement, sauvegarde environnemental et social",
              "Gestion et restairation de l'environnement"
            ]
          },
          "Planification et Gestion des espaces urbains et ruraux": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "FRANCAIS", "HIST-GEO"],
            "Métiers": ["Spécialiste en géomatique"]
          },
          "Gestion des changements climatiques et des écosystèmes": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Changement Climatique",
              "Aménagement et Gestion des Resources Naturelles"
            ]
          },
          "Géomatique et Environnement": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "HIST-GEO"],
            "Métiers": ["Spécialiste en géomantique"]
          }
        },
        "INE (Institut National de l'Eau)": {
          "Hydrologie quantitative et gestion intégrée des ressources": {
            "Bourse": 35,
            "Aide": 8,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Hydrogéologies et Gestion intégrée des Ressources": {
            "Bourse": 21,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Ecohydrologie et Gestion intégrée des Ressources": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Gestion des crises et risques liés à l'eau et au climat": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Génie rural et Maîtrise de l'Eau": {
            "Bourse": 18,
            "Aide": 4,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Hydraulique et Assainissement": {
            "Bourse": 55,
            "Aide": 13,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          },
          "Eau Hygiène et Assainissement (EHA)": {
            "Bourse": 55,
            "Aide": 13,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Hydrologues, hydrogéologues",
              "Chimistes des eaux",
              "Analyse, contrôle de qualité",
              "Ecohydrologues, hydrogéophysiciens",
              "Contrôle de qualité hygiénique",
              "Contrôleur des travaux d'assainissement de base",
              "Action communautaire en génie sanitaire",
              "Auto-Emploi",
              "Contrôleur du Génie rural",
              "Contrôleur des travaux d'aménagement hydro agricoles"
            ]
          }
        },
        "ENEAM (Ecole Nationale d'Economie Appliquée et de Management)": {
          "Administration des Réseaux Informatiques": {
            "Bourse": 53,
            "Aide": 10,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Technicien en réseaux informatiques",
              "Technicien en maintenance informatique",
              "Développeur d'applications (Deskop, Web, Mobile)"
            ]
          },
          "Analyse Informatique et Programmation": {
            "Bourse": 35,
            "Aide": 7,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Technicien en réseaux informatiques",
              "Technicien en maintenance informatique",
              "Développeur d'applications (Deskop, Web, Mobile)"
            ]
          },
          "Assurance": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en négoce",
              "Gestionnaire de patrimoine"
            ]
          },
          "Banque et Finanace de Marché": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en marché",
              "Négoces",
              "Gestionnaire de patrimoine et des portefeuilles"
            ]
          },
          "Banque et Institutions des Micro finances": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en marché",
              "Négoces",
              "Gestionnaire de patrimoine et des portefeuilles"
            ]
          },
          "Marketing": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Marketing et Communication Commerciale",
              "Responsable commercial",
              "Chef de produit",
              "Responsable du développement commercial",
              "Chargé d'affaires",
              "Chargé de clientèle",
              "Chargé d'étude marketing",
              "Responsable des ventes",
              "Chef de publicité",
              "Chargé des relations publiques",
              "Responsable des ventes",
              "Chef de publicité",
              "Chargé des relations publiques",
              "Média planner",
              "Chargé de communication",
              "Marketing Digital et Community Management",
              "Responsable Marketing Digital/Digital Marketing Manager",
              "Responsable de la stratégie mobile",
              "Chargé de communication Web digital / Digital brand manager",
              "Responsable marketing relationnel/CRM",
              "Marketing buisness analyst",
              "Data miner / Data analyst",
              "Chef de projet Web",
              "Responsable e-Commerce",
              "Digital planner",
              "Consultant search marketing (SEM/SEO)",
              "Community manager",
              "Chef de produit Web/Mobile",
              "Responsable de la marque en ligne",
              "Social media manager",
              "Content manager/Responsable contenu numérique",
              "Marketing et Management Commercial",
              "Chargé d'affaires",
              "Conseiller clientèle",
              "Chargé d'études commerciales",
              "Responsable d'agence commerciale",
              "Marchandiseur"
            ]
          },
          "Gestion des Ressources Humaines": {
            "Bourse": 4,
            "Aide": 2,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Gestion du personnel et des ressources humaines dans les entreprises privées et publiques"
            ]
          },
          "Gestion des Transports": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises maritimes",
              "Logistiques, les administrations"
            ]
          },
          "Gestion de Logistique": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": ["Agences de voyage", "Approvisionnement"]
          },
          "Gestion Financière et Comptable": {
            "Bourse": 15,
            "Aide": 2,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Comptable",
              "Responsable financier",
              "Auditeur financier",
              "Auditeur interne"
            ]
          },
          "Planification et Gestion des Projets": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Planificateur",
              "Gestionnaire de projets",
              "Cabinets d'études et conseils"
            ]
          },
          "Planification et Economie du Développement Durable": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Planificateur",
              "Gestionnaire de projets",
              "Cabinets d'études et conseils"
            ]
          },
          "Développement Local et Régional": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Planificateur",
              "Gestionnaire de projets",
              "Cabinets d'études et conseils"
            ]
          }
        },
        "EPA (Ecole du Patrimoine Africain)": {
          "Gestion du patrimaire culturel": {
            "Bourse": 35,
            "Aide": 10,
            "Matières": ["HIST-GEO", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Droit du patrimoine",
              "Patrimoniteurs",
              "Gestionnaires de musées",
              "Communicateurs culturels"
            ]
          }
        },
        "FASHS (Faculté des Sciences Humaines et Sociales) Calavi": {
          "Géographie et Aménagement du Territoire": {
            "Bourse": 92,
            "Aide": 900,
            "Matières": ["ANGLAIS", "MATHS", "HIST-GEO"],
            "Métiers": [
              "Enseignants",
              "Laboratoires et Institutions de recherche",
              "Responsables d'assainissement"
            ]
          },
          "Psychologie": {
            "Bourse": 50,
            "Aide": 300,
            "Matières": ["FRANCAIS", "MATHS", "SVT"],
            "Métiers": [
              "Formation des enseignants",
              "Centres d'accueil et de formation des sourds et muets, amblyopes et non-voyants",
              "Centres d'accueil et de formation des adultes en psychiatrie"
            ]
          },
          "Sciences de l'Education et de la Formation": {
            "Bourse": 64,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "SVT"],
            "Métiers": [
              "Formation des enseignants",
              "Centres d'accueil et de formation des sourds et muets, amblyopes et non-voyants",
              "Centres d'accueil et de formation des adultes en psychiatrie"
            ]
          },
          "Philosophie": {
            "Bourse": 43,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": ["Enseignants dans les collèges et lycées"]
          },
          "Socio-Anthropologie": {
            "Bourse": 44,
            "Aide": 750,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": ["Centres sociaux", "Ministères", "Recherche"]
          },
          "Histoire et Archéologie": {
            "Bourse": 78,
            "Aide": 180,
            "Matières": ["FRANCAIS", "HIST-GEO", "ANGLAIS"],
            "Métiers": [
              "Enseignement",
              "Conservateur de musée",
              "Recherche documentaire",
              "Gestionnaire du patrimoine culturel"
            ]
          },
          "Psychologie du travail et des Organisations": {
            "Bourse": 34,
            "Aide": 60,
            "Matières": ["ANGLAIS", "MATHS", "SVT"],
            "Métiers": [
              "Psychologue du travail des Organisations dans les Sociétés"
            ]
          }
        },
        "ENA (Ecole Natoinale d'Administration) Ex. ENAM": {
          "Administration Générale": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["FRANCAIS", "HIST-GEO", "PHILO"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Administration des Finances": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["MATHS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Secrétariat de Gestion": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs (Secrétariat et assistant de Gestion)"
            ]
          },
          "Sciences et Techniques de l'Information Documentaire": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "HIST-GEO"],
            "Métiers": [
              "Technicien supérieur en archivistique",
              "Technicien supérieur Documentariste"
            ]
          }
        },
        "IFRI (Institut de Formation et de Recherche en Informatique)": {
          "Génie Logiciel": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Analystes et concepteurs",
              "Architectes logiciels",
              "Administrateurs de bases de données",
              "Développeurs d'applications métiers",
              "Auto-Entreprenariat"
            ]
          },
          "Internet et Multimédia": {
            "Bourse": 16,
            "Aide": 7,
            "Matières": ["MATHS", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Concepteurs d'applications mobiles",
              "Designers",
              "Monteurs vidéo et multimédia",
              "Techniciens de web TV et web Radio"
            ]
          },
          "Intelligence Artificielle (IA)": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Développeurs des solutions intélligentes",
              "Analystes des données décisionnelles",
              "Architecte des données massives",
              "Auto-entreprenariat"
            ]
          },
          "Systèmes embarqués et Internet des Objets (SEIoT)": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Concepteurs de solutions embarquées",
              "Développeurs de solutions domotiques",
              "Concepteurs de solutions électroniques",
              "Auto-entreprenariat"
            ]
          },
          "Sécurité Informatique": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ANGLAIS", "FRANCAIS"],
            "Métiers": [
              "Réseaux et systèmes informatiques",
              "Sécurité Informatique",
              "Contrôle systèmes d'information"
            ]
          }
        },
        "FSA (Faculté des Sciences Agronomiques)": {
          "Sciecnes et Techniques de Production Végétale": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur agricole",
              "Contrôle de qualité des cultures",
              "Technicien en gestion et conversation"
            ]
          },
          "Sceinces et Techniques de Production Animale": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicien en gestion et conduite des élevages",
              "Technicien de laboratoire",
              "Technicien en conduite et gestion des élevages",
              "Technicien en Zootechnie"
            ]
          },
          "Aménagement et Gestion des Forêts et Parcours Naturels": {
            "Bourse": 19,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Gestionnaire des forêts et parcours naturels",
              "Gestion des travaux d'inventaire forestier",
              "Gestion des plans d'aménagement des forêts"
            ]
          },
          "Génie Rural, Mécanisation Agricole, Pêche et Aquaculture": {
            "Bourse": 33,
            "Aide": 8,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Périmètres irrigués",
              "Assainissement agricole",
              "Mécanisation agricole",
              "Aménagement des pêches en Aquaculture",
              "Concepteur des fermes piscicoles"
            ]
          },
          "Nutrition et Technologie Alimentaires": {
            "Bourse": 18,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technique de diététique",
              "Nutrition dans les hôpitaux, centres de santé et industries agroalimentaires"
            ]
          },
          "Agroéconomie, Sociologie et Vulgarisation Rurales": {
            "Bourse": 12,
            "Aide": 2,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entreprise et ferme agricole",
              "Structures de recherches et vulgarisation",
              "Enseignant des Lycées agricoles"
            ]
          },
          "Entreprenariat Agricole": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": ["Gestionnaire de ferme"]
          }
        },
        "FSS (Faculté des Sciences de la Santé)": {
          "Médécine Générale": {
            "Bourse": 150,
            "Aide": 10,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Médecin généraliste",
              "Possibilités de spécialisations dans un domaine spécifique en sciences de la santé"
            ]
          },
          "Pharmacie": {
            "Bourse": 18,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Pharmacien",
              "Spécialisations en sciences de la santé, option pharmacie"
            ]
          },
          "Kinésithérapie": {
            "Bourse": 18,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Kinésithérapie",
              "Spécialisations en sciences de la santé, option kinésithérapie"
            ]
          },
          "Assistance sociale": {
            "Bourse": 11,
            "Aide": 4,
            "Matières": ["PHILO", "HIST-GEO", "SVT"],
            "Métiers": ["Technicien supérieur de l'action sociale"]
          },
          "Nutrition et Diététique": {
            "Bourse": 14,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Nutrition clinique dans les hôpitaux et formations sanitaires",
              "Programme de nutrition",
              "Consultant en nutrition et diététique"
            ]
          }
        },
        "EPAC (Ecole Polytechnique d'Abomey-Calavi)": {
          "Analyse Biomédicale": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicien de laboratoire des centres de santé",
              "Assistant de recherche"
            ]
          },
          "Génie de Technologie Alimentaire": {
            "Bourse": 19,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Industries alimentaires",
              "Industrie de fabrication de farines infantiles (UBETA)",
              "Struture chargées des normes",
              "Audit et conseil en agroalimentaire"
            ]
          },
          "Production et Santé animales": {
            "Bourse": 37,
            "Aide": 9,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Cliniques et Pharmacie vétérinaires",
              "Abattoirs et de contrôle des produits halieutiques",
              "Contrôle vétérinaire",
              "Industries agro-alimentaires animales et halieutiques, fermes Agro-Pastorales et halieutiques",
              "Usines d'alimentation",
              "Enseignement dans les Lycées et Collèges Agricoles",
              "Recherche en production et santé animales et halieutiques"
            ]
          },
          "Génie de l'Environnement": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": ["Aménagement et protection de l'Environnement"]
          },
          "Génie d'Imagerie médiacale et de Radiologie": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Radilogie et Echographie dans les centres hospitaliers",
              "Recherche en radiobiologie"
            ]
          },
          "Génie Civil": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Chefs chantiers",
              "Techniciens d'étude en entreprise",
              "Conducteurs des travaux",
              "Laboratoires"
            ]
          },
          "Génie Electrique": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Société d'électricité, usines",
              "Cabinets d'experts (Suivi contrôle audit)"
            ]
          },
          "Génie Mécanique et Energétique": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Maintenance industrielle",
              "Designer, Production de pièces",
              "Gestionnaires de parcs machines",
              "Bureaux d'études et méthodes",
              "Contrôle de qualité"
            ]
          },
          "Génie Informatique et Télécom": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Réseaux télécoms",
              "Cabinets d'experts",
              "Technicien dans les usines"
            ]
          },
          "Génie Chimique procédés": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Unité de production",
              "Consultant en production et analyse",
              "Sécurité, hygiène et environnement",
              "Industrie agroalimentaire",
              "Industrie pharmaceutique",
              "Traitement des pollutions"
            ]
          },
          "Machinisme Agricole": {
            "Bourse": 29,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Fabrication mécanique",
              "Parcs machines",
              "Contrôle qualité",
              "Maintenance des engins agricoles",
              "Mécanisation agricole"
            ]
          },
          "Génie Biomédicale (Maintenance Biomédicale et Hospitalière)": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Technicien de laboratoire des centres de santé",
              "Maintenance hospitalière et contrôle des équipements de laboratoires médicaux et vétérinaires",
              "Maintenance des équipements électroniques"
            ]
          }
        },
        "CEFORP (Centre de Formation et de Recherche en matière de Population)":
            {
          "Dynamique de Population et Planification Régionale": {
            "Bourse": 18,
            "Aide": 7,
            "Matières": ["MATHS", "HIST-GEO", "ANGLAIS"],
            "Métiers": [
              "Spécialiste en développement local",
              "Spécialiste des questions de population",
              "Technicien supérieur en planification",
              "Gestionnaire de base de données",
              "Technicien en SIG et cartographie",
              "Assistant en gestion et suivi de projets et programmes"
            ]
          }
        },
        "HERCI (Haute Ecole Réginale de Commerce International)": {
          "Négoce International": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          },
          "Gestion des Relations Maritimes Internationales": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          },
          "Commerce International": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          }
        },
        "INEPS (Institut National de l'Education Physique et Sportive) Ex. INJEPS":
            {
          "Développement communautaire": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Administrateur en programmes et projets de développement",
              "Coordonnateur en programmes et projets de développement",
              "Chef de projets",
              "Spécialiste en planification et développement local"
            ]
          },
          "Andragogie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Spécialiste en ingénieurie de formation",
              "Administrateur en programmes et projets d'éducation",
              "Educateur et formateur d'adultes"
            ]
          },
          "Récréologie": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Administrateur en programmes et projets de loisir et tourisme",
              "Coordonnateur en programmes et projets de loisir et tourisme",
              "Chef de projets",
              "Spécialiste en gestion du patrimoine"
            ]
          },
          "Entrepreneuriat social": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["FRANCAIS", "ANGLAIS", "PHILO"],
            "Métiers": [
              "Technicien Supérieur d'Action Socio-Educative",
              "Administrateur d'Action Socio-Educative",
              "Spécialiste en création et gestion d'entreprise"
            ]
          }
        },
        "FADESP (Faculté de Droit et de Science Politique)": {
          "Droit": {
            "Bourse": 120,
            "Aide": 1200,
            "Matières": ["FRANCAIS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juriste des affaires, d'entreprise",
              "Auxiliaire de justice (Avocat, Huissier, Notaire, etc)",
              "Magistrature"
            ]
          },
          "Sciences Politiques": {
            "Bourse": 42,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "HIST-GEO"],
            "Métiers": [
              "Diplomate",
              "Spéciaiste des relations internationales",
              "Spécialiste des politiques publiques",
              "Sociologue des comportements politiques",
              "Evaluateur des politiques publiques",
              "Gestionnaire des projets"
            ]
          }
        },
        "FASEG (Faculté des Sciences Economiques et de Gestion)": {
          "Sciences Economiques et de Gestion (Tronc commun)": {
            "Bourse": 225,
            "Aide": 1740,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Services déconcentrés de l'Etat, Collectivités locales, associations et ONG",
              "Analystes, statisticiens, Comptable",
              "Planificateur et Gestion des Ressources financières",
              "Statistique agricole",
              "Analyse des projets agricoles",
              "Services financiers des collectivités locales",
              "Gestion des structures de microfinance",
              "Chargé des études et de la prospective économique des collectivités",
              "Economiste de marché",
              "Conseiller économique",
              "Conseiller en Microfinance",
              "Economiste/stratégiste bancaire",
              "Entrepreneur",
              "Gestioinnaire des PME",
              "Agent de banque",
              "Comptable dans les service financiers",
              "Assistant Auditeur",
              "Agent de banque, d'assurance"
            ]
          },
          "Econométrie et Statistiques Appliquées": {
            "Bourse": 20,
            "Aide": 30,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Statisticien, économètre, Analyste économiste",
              "Conseiller en stratégies et prise de décicsions"
            ]
          },
          "Sciences et Techiques Comptables et Financières (STCF)": {
            "Bourse": 9,
            "Aide": 30,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Audit comptable oyu financier",
              "Contrôleur interne en banque et entreprise",
              "Agent comptable"
            ]
          }
        },
        "FAST (Faculté des Sciences Techniques)": {
          "Sciences de la Vie et de la Terre": {
            "Bourse": 74,
            "Aide": 300,
            "Matières": ["SVT", "PCT", "FRANCAIS"],
            "Métiers": [
              "Enseignement des SVT",
              "Techniciens de laboratoires et dans les institutions de recherche",
              "Ecoles d'ingénieurs"
            ]
          },
          "Physique-Chimie": {
            "Bourse": 277,
            "Aide": 600,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Enseignement des PCT",
              "Techniciens de laboratoires et dans les institutions de recherche",
              "Ecoles d'ingénieurs"
            ]
          },
          "Mathématiques Informatique et Applications": {
            "Bourse": 277,
            "Aide": 600,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Enseignement des Maths",
              "Techniciens de laboratoires et dans les institutions de recherche",
              "Ecoles d'ingénieurs"
            ]
          },
          "Energies Renouvelables et Systèmes Energétiques": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Production et fourniture d'énergie électrique",
              "Fourniture de services"
            ]
          },
          "Génétique, Biotechnologies et Resources Biologiques": {
            "Bourse": 13,
            "Aide": 6,
            "Matières": ["SVT", "PCT", "FRANCAIS"],
            "Métiers": [
              "Recherche en Génétique et biotechnologies appliquées",
              "Gestion des ressources génétiques",
              "Entrepreneuriat en sélections végétales et animales"
            ]
          },
          "Microbiologie et Biotechnologie Alimentaire": {
            "Bourse": 19,
            "Aide": 6,
            "Matières": ["SVT", "PCT", "FRANCAIS"],
            "Métiers": [
              "Chef de production dans les industries",
              "Laboratoire en contrôle de qualité",
              "Transformations agroalimentaires",
              "Auditeur de qualité",
              "Formateurs agricoles"
            ]
          },
          "Hydrobiologie Appliquée": {
            "Bourse": 17,
            "Aide": 6,
            "Matières": ["SVT", "PCT", "FRANCAIS"],
            "Métiers": [
              "Techniciens de laboratoire de biologie",
              "Spécialiste en qualité de l'eau et surveillance des écosystèmes aquatiques",
              "Chef production en pisciculture, pêche et Aquaculture",
              "Technicien en Aménagement des zones humides",
              "Technicien en Aquariologie",
              "Technicien en Inspection des produits halieutiques"
            ]
          }
        }
      },
      "UP": {
        "FA (Faculté d'Agronomie)": {
          "Sciences et Techniques de Production Végétale": {
            "Bourse": 22,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur Agricole",
              "Conseiller Agricole",
              "Technicien/Encadreur en production végétale/protection des végétaux/ sélection variétale/gestion durable des terres",
              "Enseignant des Lycées agricoles"
            ]
          },
          "Sciences et Techniques de Production Animale et Halieutique": {
            "Bourse": 22,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicicen en gestion et conduite d'élevage/gestion des exploitations animales et aquacoles",
              "EntrepreneurAgricole",
              "Conseiller Agricole",
              "Enseignant des Lycées agricoles"
            ]
          },
          "Aménagement et Gestion des Ressources Naturelles": {
            "Bourse": 22,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicien en Aménagement et gestion des aires protégées",
              "Cadre des eaux et forêts",
              "Assistance dans les études de gestion et de conservation des aires protégées",
              "Entrepreneur Agricole",
              "Conseiller Agricole",
              "Enseignant des Lycées agricoles"
            ]
          },
          "Sociologie et Economie Rurales": {
            "Bourse": 22,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Assistance dans la création et la gestion d'entreprise/coopérative agricole",
              "Mise en place et gestion de cluster agricole",
              "Appui conseil au développement local",
              "Facilitation de la mise en place des innovations institutionnelles",
              "Assistance dans les études socio-économiques"
            ]
          },
          "Nutrition et Sciences Agroalimentaires": {
            "Bourse": 22,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur Agro-alimentaire",
              "Responsable système de qualité IAA",
              "Chef production IAA",
              "Technicien en nutrition et sciences agro-alimentaires",
              "Enseignant des lycées agricoles"
            ]
          }
        },
        "FM (Faculté de Médecine)": {
          "Médecine Humaine": {
            "Bourse": 120,
            "Aide": 33,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Médecin généraliste dans les hôpitaux et centre de santé"
            ]
          }
        },
        "ENATSE (Ecole Nationale de formation des Techniciens Supérieurs en Santé Publique et Surveillance Epidémiologique)":
            {
          "Santé publique et surveillance épidémiologique": {
            "Bourse": 40,
            "Aide": 13,
            "Matières": ["MATHS", "ANGLAIS", "SVT"],
            "Métiers": [
              "Biostatisticien dans les services de santé",
              "Agent de surveillance épidémiologique",
              "Attaché de Recherche dans les instituts de Recherche en santé",
              "Agent des collectivités locales"
            ]
          }
        },
        "IUT (Institut Universitaire de Technologie)": {
          "Gestion des Banques": {
            "Bourse": 17,
            "Aide": 6,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Orgabismes financiers ou de gestion (établissement de crédits, entreprises commerciales de banque)"
            ]
          },
          "Gestion Commerciale": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises commerciales ou services commerciaux de tout type d'entreprise",
              "services de logistiques internationale",
              "Entreprise d'export",
              "Sociétés de transit et de manutention",
              "Banque",
              "Agence de communication",
              "Grandes entreprises de représentant commercial de chef de rayon dans le centre commercial (Supermarché)",
              "Attaché commercial de chef de produit",
              "Chargé des relations publiques",
              "Assistant de communication interne diffusant des informations à l'intérieur de l'entreprise"
            ]
          },
          "Gestions des Entreprises": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Cabinets comptables",
              "Services de comptabilité des entreprises",
              "Banque",
              "Assurances",
              "Administration petites moyennes et grandes entreprises",
              "Auto emploi"
            ]
          },
          "Gestion des Transports et Logistiques": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Banque",
              "Société d'assurance et administrations petites, moyennes et grandes entreprises",
              "Entreprises de transport et de Gestion ferroviaire",
              "Service chargé de la logistique au niveau des entreprises des administrations",
              "Poste d'agent comptable dans les compagnies aériennes",
              "D'agent de fret dans les aéroports de techniciens des études et l'exploitation de l'avion civile"
            ]
          },
          "Informatique de Gestion": {
            "Bourse": 64,
            "Aide": 14,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Centre informatique",
              "Banque",
              "Entreprise de prestation de service",
              "Editeur de logiciels",
              "Grandes entreprises informatisées",
              "Poste d'analyse programmeur",
              "Chef de programme informatique",
              "Ingénieur logiciel",
              "Administrateur de réseau"
            ]
          },
          "Gestion des Ressources Humaines": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises",
              "Assurance",
              "Administrations",
              "Organisations",
              "ONG"
            ]
          }
        },
        "FASEG (Faculté de Sciences Economiques et de Gestion)": {
          "Analyse et Politique Economiques (APE)": {
            "Bourse": 26,
            "Aide": 60,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Economie Agricole (EA)": {
            "Bourse": 62,
            "Aide": 120,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Economie et Finance des Collectivités Locales (EFCL)": {
            "Bourse": 26,
            "Aide": 60,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Economie et Finance des Collectivités Locales",
              "Cabinets Conseils en Projets de Développement Local",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées à la Promotion de l'Economie, Commerciales et Financières",
              "Gestion Financière de Structures Chargées des Questions Liées aux Affaires Economiques et Financières des Collectivités Territoriales Décentralisées (Ministères, Administrations, Projets de Développement, Mairies)",
              "Collectivités Territoriales Décentralisées (Ministères, Administrations, Projets de Développement, Mairies)"
            ]
          },
          "Economie et Finance Internationales (EFI)": {
            "Bourse": 34,
            "Aide": 120,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques et Monétaires",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques, Commerciales et Financières (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Entrepreneuriat et Gestion des Entreprises (EGE)": {
            "Bourse": 26,
            "Aide": 75,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Création et Gestion d'Activités",
              "Appui Conseils en Gestion de la Qualité et des Innovations des produits",
              "Cabinets Conseils en Etudes de Faisabilité",
              "Cabinets Conseils en élaboration des plans d'affaires",
              "Cabinets d'Audit en Création, Gestion et Mise à niveau d'Entreprises",
              "Cabinets Conseils en Suivi et Evaluation du Développement des PME et PMI"
            ]
          },
          "Marketing et Management des Organisations (MMO)": {
            "Bourse": 15,
            "Aide": 54,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Management",
              "Cabinets Conseils en Marketing",
              "Cabinets Conseils en Communication",
              "Cabinets d'Audit en Gestion",
              "Administrations de tous Genres (Ministères, Administrations, Projets de Développement, Entreprises de tous Genres)"
            ]
          },
          "Finance et Comptabilité (FC)": {
            "Bourse": 85,
            "Aide": 300,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Finances",
              "Cabinets Conseils en Comptabilité",
              "Cabinets Conseils en Contrôle de Gestion",
              "Cabinets d'Audit en Gestion",
              "Structures Chargées des Questions Liées aux Finances (Ministères, Administrations, Projets de Développement, Entreprises de tous Genres)"
            ]
          }
        },
        "Faculté de Droit et Sciences Politiques": {
          "Droit Privé": {
            "Bourse": 111,
            "Aide": 750,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire"
            ]
          },
          "Droit Public": {
            "Bourse": 83,
            "Aide": 600,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire",
              "Attaché des services financiers",
              "Attaché des impôts",
              "Assistant Juridique"
            ]
          },
          "Sciences Politiques et Relations Internationales": {
            "Bourse": 46,
            "Aide": 165,
            "Matières": ["FRANCAIS", "PHILO", "HIST-GEO"],
            "Métiers": [
              "Publique et locale",
              "Diplomatie",
              "Agents des services extérieurs et diplomatique",
              "Attaché politique",
              "Attaché des services culturels",
              "Guides touristiques",
              "Conseillé politique",
              "Analyste de politique publique",
              "Lobbyiste",
              "Agents des services parlementaires",
              "Médiateur",
              "Député",
              "Agents de relation publiques",
              "Fonctionnaires"
            ]
          }
        },
        "Faculté des Lettres, Arts et Sciences Humaines (FLASH)": {
          "Anglais": {
            "Bourse": 167,
            "Aide": 675,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Interprète, Traducteur",
              "Agent dans le tourisme"
            ]
          },
          "Géographie et Aménagement du Territoire": {
            "Bourse": 116,
            "Aide": 900,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Enseignement",
              "Urbaniste, Climatologiste",
              "Géomorphologue, Hydrologue"
            ]
          },
          "Sociologie Anthropologie": {
            "Bourse": 128,
            "Aide": 1050,
            "Matières": ["FRANCAIS", "ANGLAIS", "MATHS"],
            "Métiers": [
              "Employé dans les centres Sociaux",
              "Centre de recherche",
              "Ministère",
              "ONG",
              "Projet",
              "Médiateur"
            ]
          }
        }
      },
      "UNSTIM": {
        "INSTI (Institut National Supérieur de Technologie Industrielle)": {
          "Génie Civil": {
            "Bourse": 76,
            "Aide": 12,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Techniciens de Travaux du Génie Civil",
              "Controleurs de chantiers",
              "Assistant des experts Géomètres, des cabinets d'architecture, des agences immobilières et des notaires"
            ]
          },
          "Génie Energétique (Energies Renouvelables et Systèmes Energétiques)":
              {
            "Bourse": 38,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Techniciens en Industrie électrique, électrotechniques et électroniques",
              "Métiers du bâtiment",
              "Appareillage, instrumentation",
              "Installations, équipements et systèmes pour énergies renouvelables",
              "Audit et Efficacité énergétique"
            ]
          },
          "Génie Energétique (Froid et climatisation)": {
            "Bourse": 38,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Techniciens en Froid et climatisation de bâtiment et automobile",
              "Métiers du bâtiment",
              "Appareillage, instrumentation"
            ]
          },
          "Génie Electrique et Informatique (Informatique et Télécommunications)":
              {
            "Bourse": 31,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Service informatique d'entreprise",
              "Cabinets d'audit ou ingénierie informatique",
              "Sociétés de maintenance informatique",
              "Agences de communication",
              "Agences de développement d'applications web et mobiles",
              "Sociétés de téléphonie mobile",
              "Fournisseurs d'accès internet",
              "Télésurveillance",
              "Systèmes embarqués"
            ]
          },
          "Génie Electrique et Informatique (Ellectronique et Electrotechnique)":
              {
            "Bourse": 30,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Electricité Industrielle et de bâtiments",
              "Contrôle de procéds dans le domaine électrique",
              "Energie électrique, sa production, son transport et son traitement",
              "Comande automatique de processus",
              "Système embarqués",
              "Télésurveillance",
              "Contrôle de Qualité dans le domaine électrique"
            ]
          },
          "Génie Mécanique et productique": {
            "Bourse": 46,
            "Aide": 9,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Parcs machines",
              "Maintenance industrielle",
              "Fabrication mécanique",
              "Méthodes et contrôle de la qualité",
              "Maintenance des engins agricoles",
              "Mécanisation agricole"
            ]
          }
        },
        "ENSBBA (Ecole Nationale Supérieur des Biosciences et Biotechnologies Appliquées)":
            {
          "Biotechnologie Médicale": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Techniciens supérieurs dans les Laboratoires de diagnostics biomédicaux et de contrôle de qualité des analyses",
              "Techniciens supérieurs dans les laboratoires de recherche universitaire ou privés",
              "Technicien supérieur dans les Laboratoires de production de bioproduits",
              "Auto-emploi"
            ]
          },
          "Biotechnologie Pharmaceutique": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Techniciens supérieurs de valorisation des ressources biologiques et de l'Environnement dans les industries pharmaceutiques et cosmétiques",
              "Techniciens supérieurs dans les laboratoires de substances naturelles et de fabrication des bioproduits",
              "Technicien supérieur dans les Laboratoires de contrôle de qualité des produits pharmaceutiques et cosmétiques",
              "Techniciens supérieurs dans les laboratoires de recherche",
              "Techniciens supérieurs dans les Laboratoires pédagogiques des universités",
              "Auto-emploi"
            ]
          },
          "Génétique Biotechnologies et Applications": {
            "Bourse": 10,
            "Aide": 4,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Techniciens supérieurs de recherche dans les Laboratoires de génétique humaine et de diagnostic dans les centres hospitaliers",
              "Techniciens supérieurs dans les laboratoires pédagogiques des universités",
              "Techniciens supérieurs dans les laboratoires de génétique et de selection des centres de recherche agricole"
            ]
          },
          "Génie Biologique et Bioprocédés (GBB)": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Techniciens supérieurs dans les laboratoires (analyse ou recherche)",
              "Techniciens supérieurs des centres de recherches en biologie appliquée",
              "Assistant de recherche dans les instituts de recherches biologiques",
              "Techniciens qualité"
            ]
          },
          "Diététique des aliments et Nutrition": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["SVT", "PCT", "MATHS"],
            "Métiers": [
              "Technicien supérieur en diététique",
              "Techniciens supérieurs en contrôle de qualité des aliments",
              "Technicien dans des sociétés de restauration collective",
              "Techniciens supérieurs nutritionnistes des centres hospitaliers et des maisons de repos",
              "Conseillers en éducation nutritionnelle et alimentaire",
              "Auto-emploi"
            ]
          }
        },
        "FAST Natitingou (Faculté des Sciences et Techniques)": {
          "Mathématiques Informatiques": {
            "Bourse": 105,
            "Aide": 75,
            "Matières": ["ANGLAIS", "PCT", "MATHS"],
            "Métiers": [
              "Cadres de télécommunications optiques et des nouvelles technologies de l'information et de la communication",
              "Enseignants des lycées et collèges (BAPES et CAPES en MI) après complément de formation en sciences de l'éducation",
              "Accès aux écoles d'ingénieur",
              "Accès à un master recherche ou professionnel en mathématique ou en informatique pouvant déboucher sur une thèse de doctorat"
            ]
          },
          "Physique Chimie": {
            "Bourse": 80,
            "Aide": 54,
            "Matières": ["ANGLAIS", "PCT", "MATHS"],
            "Métiers": [
              "Cadres de télécommunications optiques et des nouvelles technologies de l'information et de ka communication",
              "Cadres en Météorologie, océanographie et balistique",
              "Enseignants des lycées et collèges (BAPES et CAPES en PCT) après complément de formation en sciences de l'éducation",
              "Accès aux écoles d'ingénieur",
              "Accès à un master professionnel de physique ou de technologie",
              "Accès à un master recherche en vue d'approfondir les connaissances théoriques en physique ou en chimie fondamentale et de réaliser une thèse de doctorat",
              "Cadres des industries chimiques (cosmétique, parfumerie et cimenterie), agro-alimentaires (brasseries, huileries...) et pharmaceutiques"
            ]
          }
        },
        "ENSGEP (Ecole Nationale Supérieure de Génie Energétique et Procédés)":
            {
          "Froid et Climatiation": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Technicien supérieur en Installation, mise en service et maintenance d'équipements de froid et climatisation"
            ]
          },
          "Equipement motorisés": {
            "Bourse": 29,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Technicien supérieur en installation et maintenance des équipements motorisés",
              "Technicien supérieur en electromécanique",
              "Technicien supérieur en mécanique automobile",
              "Technicien supérieur en installation et maintenance de matériels électroménagers",
              "Technicien supérieur en maintenance des systèmes hydrauliques et pneumatiques des gros engins des travaux publics"
            ]
          }
        },
        "ENSTP (Ecole Nationale Supérieure des Travaux Publics)": {
          "Génie Civil": {
            "Bourse": 24,
            "Aide": 4,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Assistants dans les bureaux d'études",
              "Techniciens contrôleurs de travaux du Génie Civil (routes, bâtiments, ouvrages d'art, assainissement, aménagements divers...)",
              "Techniciens métreur ou technicien assistant des ingénieurs études",
              "Techniciens dans les services déconcentrés et Mairies",
              "Techniciens de laboratoires géotechniques ou de recherche en génie civil",
              "Assistants des Experts Routiers, géotechniciens, ouvragistes",
              "Entrepreneur, chef de chantier",
              "Conducteur de travaux"
            ]
          },
          "Génie Géomatique Appliquée": {
            "Bourse": 21,
            "Aide": 4,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Assistants des Experts Géomètres, des architectes, agences immobilières et notaires",
              "Techniciens en Système d'Information Géographique (SIG)",
              "Technicien-Cartographes",
              "Technicien dans les Services déconcentrés et Mairies",
              "Assistants dans les  bureaux d'études"
            ]
          },
          "Architecture et Urbanisme": {
            "Bourse": 30,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Techniciens Architectes-Urbanistes",
              "Techniciens Contrôleurs de chantiers de bâtiments",
              "Techniciens Contrôleurs de travaux d'aménagements urbains",
              "Assistants des experts aménagistes urbanistes",
              "Techniciens dans les services déconcentrés et les Mairies",
              "Assistants dans les Cabinets d'Architecture, agence immobilières et notaires",
              "Assistants dans les bureaux d'études"
            ]
          },
          "Hydraulique et Assainissement": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "ANGLAIS", "PCT"],
            "Métiers": [
              "Techniciens en Hydraulique et Assainissement",
              "Techniciens de Laboratoires d'analyse d'eau",
              "Techniciens Contrôleurs des travaux d'assainissement",
              "Techniciens Contrôleurs des travaux d'Adduction d'Eaux",
              "Techniciens Contrôleurs des travaux de constructions d'ouvrages hydrauliques ou hydro-agricoles (barrages, ponts, etc)",
              "Technicien de gestion des stations d'épuration des eaux usées",
              "Technicien de gestion des stations de traitements de l'eau pour boisson",
              "Technicien dans les services déconcentrés et Mairies",
              "Assistants des experts hydrauliciens, hydrologues et en gestion des eaux",
              "Assistants dans les bureaux d'études"
            ]
          }
        }
      },
      "UNA": {
        "EAq (Ecole d'Aquaculture)": {
          "Aquaculture": {
            "Bourse": 33,
            "Aide": 6,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Chargé des entreprises aquacoles",
              "Technicien en production de poissons",
              "Technicine en production de crevettes, crabes, huitres et de moules",
              "Technicien en conception et fabrication des aliments pour les espèces aquacoles d'élevage",
              "Technicien en conception, fabrication et entretien d'aquarium",
              "Technicien en conception et fabrication des aliments",
              "Technicien en aquariologie",
              "Technicien en production, gestion et certification de semences aquacoles",
              "Conseiller/Assistant en aquaculture"
            ]
          }
        },
        "EHAEV (Ecole d'Horticulture et d'Aménagement des Espaces Verts)": {
          "Horticulture et Aménagement des Espaces Verts": {
            "Bourse": 57,
            "Aide": 4,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Technicien en gestion des entreprises horticoles (cultures maraîchères, fruitières et ornementales)",
              "Conseiller des exploitations des secteurs horticoles (fruits, légumes et ornement)",
              "Technicien en production de semences et plants horticoles (maraîchères, fruitières et ornementales)",
              "Technicien en installation et gestion des systèmes d'irrigation en horticulture et espaces verts (privés et publics)",
              "Technicien en gestion ds ravageurs et nuisibles en horticulture et espaces verts (privés et publics)",
              "Technicien en conception, installation et réalisation des plans d'aménagement des Espaces Verts (Publics ou Privés)",
              "Technicien en production et distribution d'intrants et de produits horticoles (fruits, légumes et fleurs)",
              "Technicien en stockage et conditionnement des produits horticoles",
              "Technicien en cultures hydroponiques et Aquaponiques",
              "Technicien en biotechnologies horticoles et création variétales",
              "Conseiller technique en construction des infrastructures et équipements horticoles et en aménagement des espaces verts",
              "Agent des cabinets d'expertise",
              "Technicien de recherche en horticulture",
              "Fonctionnaire des organisations internationales de développement (Bioversity, ICRAF, World Vegetable, IRD, CIRAD, IITA, etc...)",
              "Enseignant dans les établissements de formation (Ecoles, Lycées Agricoles, Universités, Instituts de formation)"
            ]
          }
        },
        "EGPVS (Ecole de Gestion et de Production Végétale et Semencière)": {
          "Gestion et Production Végétale et Semencière": {
            "Bourse": 70,
            "Aide": 10,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Entrepreneur en production végétale",
              "Technicien en production végétale",
              "Technicien en production de semenes et gestionnaire des banques de semences",
              "Technicien en gestion de la fertilité des sols",
              "Assistants en élaboration des plans d'entreprise de production végétale et semencière",
              "Technicien en protection des végétaux",
              "Technicien en biotechnologie végétale",
              "Assistant de recherche agricole"
            ]
          }
        },
        "ESTCTPA (Ecole des Sciences et Techniques de Conservation et de Transformation des Produits Agricoles)":
            {
          "Industrie des Produits Agro-Alimentaires et Nutrition Humaines (IPA-NH)":
              {
            "Bourse": 25,
            "Aide": 4,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Technicien supérieur en industrie et entreprises agro-alimentaires (productions laitières, céréalières, de viande et produits carnés, de poissons et produits halieutiques, produits des fruits et légumes, etc)",
              "Producteur et conservateur de produits agro-alimentaires",
              "Concepteur et fabricant d'aliments à base des produits agricoles",
              "Contrôleur de la qualité des produits agricoles et agro-alimentaires",
              "Conseiller/Assistant/Encadreur en conservation, et transformation des produits agricoles",
              "Technicien en éducation nutritionnelle (ONG, entreprises, associations, autres)",
              "Technicien des projets de nutrition",
              "Enseignat dans les lycées techniques agricoles"
            ]
          },
          "Industrie des Bio-Ressources (IBR)": {
            "Bourse": 24,
            "Aide": 4,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Technicien supérieur en industrie des Bio-Ressources",
              "Technicien supérieur dans les industries cosmétiques et de phytothérapie : savons, lotion, huiles, essentielles, parfums",
              "Producteur de biogaz",
              "Fabricant d'huiles végétales et de corps gras",
              "Fabricant d'aliments pour bétail domestique",
              "Conseiller en gestion des procédés post récoltes",
              "Technicien en traitements chimiques et Organiques des produits agricoles en stock",
              "Enseignant dans les lycées techniques agricoles"
            ]
          },
          "Génie de Conditiionnement Enballage et Stockage des Produits Alimentaires (GCES)":
              {
            "Bourse": 25,
            "Aide": 4,
            "Matières": ["SVT", "MATHS", "PCT"],
            "Métiers": [
              "Technicien en génie du conditionnement emballage et stockage des produits agro-alimentaires",
              "Technicien en contrôle de qualité et normes des produits agro-alimentaires",
              "Concepteur d'étiquettes, d'emballages et conditionnements alimentaires",
              "Concepteur de structures de stockage et de conservation : greniers, cribs, silos, magasins/entrepôts",
              "Conseiller en emballages divers pour le conditionnement",
              "Enseignant dans les lycées techniques agricoles"
            ]
          }
        },
        "Ecole de Génie Rural (EGR)": {
          "Agroéquipement": {
            "Bourse": 18,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Entreprises de conception et de fabrication des machines",
              "Société de maintenance des engins et équipements agricoles",
              "Entreprise motorisée",
              "Gérant de parc d'engins ou de machines agricoles",
              "Entreprise d'Installation et maintenance d'équipements agro-industriels",
              "Entreprises et Fermes mécanisées agricoles",
              "Industries de transformation et Unités de production agro-alimentaire (usine d'égrnage, Brasseries, Huileries, ...)",
              "Sociétés de maintenance de Tracteurs et de machines agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Garage de réparation d'automobiles",
              "Administration publique",
              "Etablissements d'enseignement technique"
            ]
          },
          "Electrification Rurale et Energies Renouvelables (ERER)": {
            "Bourse": 19,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Industries de transformation et Unités de Production (agro-alimentaire, cimenterie, production de sucre, lait, brasserie, coton, huile de palme, etc...)",
              "Cabinets d'audit et de Conseils en énergies renouvelables",
              "Projets de construction de lignes électriques",
              "Projets d'électrification rurale",
              "Entreprises de BTP",
              "Garages automobiles",
              "Entreprises travaillant dans le secteur du biogaz et autres énergies vertes",
              "Fermes et entreprises agro-pastorales",
              "Administration publique",
              "Etablissements d'enseignement technique",
              "Entreprenariat sur les énergie vertes et le développement durable"
            ]
          },
          "Infrastructures Rurales et Assainissement": {
            "Bourse": 19,
            "Aide": 2,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entreprise de travaux de constructions d'Ouvrages/Réseaux hydrauliques ou hydro-agricoles",
              "Entreprise de travaux d'irrigation et de drainage",
              "Entreprise d'aménagement hydro-agricole",
              "Entreprise de travaux de voirie et réseaux d'adduction d'eau potable",
              "Sociétés d'eau et d'assainissement",
              "Stations d'épuration d'eaux usées",
              "Stations de traitements d'eau",
              "Services Techniques des Mairies",
              "Entreprises ou Sociétés de BTP",
              "Mission de contrôle",
              "Cabinets d'Architecture",
              "Laboratoires de Génie Civil",
              "Cabintes/Bureaux d'études et de conseils",
              "Etablissements d'enseilgnement technique"
            ]
          }
        },
        "Ecole de Gestion et d'Exploitation des Systèmes d'Elevage (EGESE)": {
          "Productions et santé animales": {
            "Bourse": 58,
            "Aide": 4,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicien des fermes d'embouche de bovins, ovins et caprins porcs, lapins et aulacodes",
              "Technicien des fermes de production de laits de vaches et chèvres",
              "Technicien en production des oeufs de consommation",
              "Technicien des centres d'accouvage pour la fourniture des poussins d'un jour",
              "Agent technique des Clinique et pharmacies vétérinaires",
              "Entrepreneur en fabrication des aliments bétail",
              "Gestionnaire des Fermes Agro-Vétérinaire",
              "Assistant des structures d'audites des systèmes de production animale",
              "Technicien des entreprises agro-alimentaires de transformation des produits animaux",
              "Assistant des strutures de contrôle de qualité des Denrées Alimentaires d'Origine Animale",
              "Enseignant des lycées techniques agricoles"
            ]
          }
        },
        "EAPA (Ecole d'Agrobuisness et de Politiques Agricoles)": {
          "Finance agricole (FA)": {
            "Bourse": 17,
            "Aide": 4,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur agricole",
              "Gestionnaire d'entreprises agricoles et agro-industrielles",
              "Gestionnaire de coopératives et associations de producteurs",
              "Analyste du marché des produits et intrants agricoles",
              "Mercaticien d'entreprises agricoles et agro-industrielles",
              "Agent commercial d'entreprise agricole et agro-industrielles",
              "Banquier agricole",
              "Assureur agricole",
              "Gestionnaire d'institutions de financement agricole",
              "Assistant de recherche et d'études socio-économiques",
              "Conseiller en gestion d'entreprises agricoles et agro-industrielles",
              "Assistant planificateur du développement agricole",
              "Analyste des politiques de développement agricole",
              "Eseignant de collèges et lycées agricoles",
              "Consultant"
            ]
          },
          "Gestion des Exploitations Agricoles et Entreprises Agroalimentaires (GEAEA)":
              {
            "Bourse": 35,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur agricole",
              "Gestionnaire d'entreprises agricoles et agro-industrielles",
              "Gestionnaire de coopératives et associations de producteurs",
              "Analyste du marché des produits et intrants agricoles",
              "Mercaticien d'entreprises agricoles et agro-industrielles",
              "Agent commercial d'entreprise agricole et agro-industrielles",
              "Banquier agricole",
              "Assureur agricole",
              "Gestionnaire d'institutions de financement agricole",
              "Assistant de recherche et d'études socio-économiques",
              "Conseiller en gestion d'entreprises agricoles et agro-industrielles",
              "Assistant planificateur du développement agricole",
              "Analyste des politiques de développement agricole",
              "Eseignant de collèges et lycées agricoles",
              "Consultant"
            ]
          },
          "Marketing des Intrants et Produits Agricoles (MIPA)": {
            "Bourse": 35,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Entrepreneur agricole",
              "Gestionnaire d'entreprises agricoles et agro-industrielles",
              "Gestionnaire de coopératives et associations de producteurs",
              "Analyste du marché des produits et intrants agricoles",
              "Mercaticien d'entreprises agricoles et agro-industrielles",
              "Agent commercial d'entreprise agricole et agro-industrielles",
              "Banquier agricole",
              "Assureur agricole",
              "Gestionnaire d'institutions de financement agricole",
              "Assistant de recherche et d'études socio-économiques",
              "Conseiller en gestion d'entreprises agricoles et agro-industrielles",
              "Assistant planificateur du développement agricole",
              "Analyste des politiques de développement agricole",
              "Eseignant de collèges et lycées agricoles",
              "Consultant"
            ]
          }
        },
        "ERSVA (Ecole de Sociologie rurale et de Vulgarisation Agricole)": {
          "Sociologie rurale et Vulgarisation Agricole": {
            "Bourse": 48,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Technicien supérieur des entreprises agricoles",
              "Technicien supérieur en Vulgarisateur/conseil agricole",
              "Technicien de recherche dans les institutions de recherche nationales et internationales dans le domaine de la sociologie rurale et de la vulgarisation agricole",
              "Conseiller technique de cabinet de conseil agricole et vulgarisation",
              "Conseiller technique de cabinet d'expertise agricole",
              "Conseiller technique aux affaires techniques et financières des banques",
              "Fonctionnaire d'Etat (ministères)",
              "Fonctionnaire des conllectivités décentralisées et faitières paysannes",
              "Technicien spécialisé en gestion des organisations paysannes et syndicats paysans",
              "Technicien spécialisé en gestion des parcs et aires protégées (problématiques des populations riveraines)",
              "Conseiller technique en nutrition humaine",
              "Enseignants des établissements et lycées agricoles",
              "Technicien en gouvernance des filières et chaines de valeur agricole",
              "Fonctionnaire des organisations de développement international (PNUD, Banque Mondiale, SNV, USAID, etc..)"
            ]
          }
        },
        "Ecole de Foresterie Tropicale": {
          "Foresterie Tropicale": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "SVT"],
            "Métiers": [
              "Forestier Gestionnaire des ressources naturelles (Forêts, Eaux et Chasse)",
              "Forestier Gestionnaire des réserves de faune et des aires protégées",
              "Sylviculteurs (Plantations des bois d'oeuvre, de service et des essences autochtones)",
              "Gestionnaire des Unités de productions sylvicoles",
              "Pilotage de drones (Véhicules aérein sans humain à bord) pour les opérations de collectes de données en forêt",
              "Spécialiste de la domestication et élevage des gibiers",
              "Spécialiste des transformations sommaires du bois",
              "Prodcucteur des produits forestiers non ligueux (PFNL y compris le miel et élevage non conventionnels)",
              "Travailleur/Chercheur ds cabinets d'étude d'impact environnemental et de recherche",
              "Enseignant des lycées techniques agricoles",
              "Travailleur dans les Ministères (MCVDD, MAEP), et des Organisations Non Gouvernementales (ONG)",
              "Spécialiste des transformations du bois (ébénisterie d'art, biocharbon, dendroénergie)"
            ]
          }
        }
      }
    },
    "E": {
      "UAC": {
        "IMSP (Institut de Mathématiques et de Sciences Physiques)": {
          "Classes préparatoires Mathématiques, Physiques et Science de l'ingénieur (MPSI) et Physique-Chimie et Science de l'ingénieur (PCSI)":
              {
            "Bourse": 94,
            "Aide": 16,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entrée dans les grandes écoles d'ingénieurs",
              "Entrée dans les Masters de Mathématiques, de Physique et Informatique"
            ]
          }
        },
        "IFRI (Institut de Formation et de Recherche en Informatique)": {
          "Génie Logiciel": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ETUDE DE FABRICATION", "FRANCAIS"],
            "Métiers": [
              "Analystes et concepteurs",
              "Architectes logiciels",
              "Administrateurs de bases de données",
              "Développeurs d'applications métiers",
              "Auto-Entreprenariat"
            ]
          },
          "Internet et Multimédia": {
            "Bourse": 16,
            "Aide": 7,
            "Matières": ["MATHS", "ETUDE DE FABRICATION", "FRANCAIS"],
            "Métiers": [
              "Concepteurs d'applications mobiles",
              "Designers",
              "Monteurs vidéo et multimédia",
              "Techniciens de web TV et web Radio"
            ]
          },
          "Intelligence Artificielle (IA)": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ETUDE DE FABRICATION", "FRANCAIS"],
            "Métiers": [
              "Développeurs des solutions intélligentes",
              "Analystes des données décisionnelles",
              "Architecte des données massives",
              "Auto-entreprenariat"
            ]
          },
          "Systèmes embarqués et Internet des Objets (SEIoT)": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ETUDE DE FABRICATION", "FRANCAIS"],
            "Métiers": [
              "Concepteurs de solutions embarquées",
              "Développeurs de solutions domotiques",
              "Concepteurs de solutions électroniques",
              "Auto-entreprenariat"
            ]
          },
          "Sécurité Informatique": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["MATHS", "ETUDE DE FABRICATION", "FRANCAIS"],
            "Métiers": [
              "Réseaux et systèmes informatiques",
              "Sécurité Informatique",
              "Contrôle systèmes d'information"
            ]
          }
        },
        "EPAC (Ecole Polytechnique d'Abomey-Calavi)": {
          "Génie Civil": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Chefs chantiers",
              "Techniciens d'étude en entreprise",
              "Conducteurs des travaux",
              "Laboratoires"
            ]
          },
          "Génie Electrique": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Société d'électricité, usines",
              "Cabinets d'experts (Suivi contrôle audit)"
            ]
          },
          "Génie Mécanique et Energétique": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Maintenance industrielle",
              "Designer, Production de pièces",
              "Gestionnaires de parcs machines",
              "Bureaux d'études et méthodes",
              "Contrôle de qualité"
            ]
          },
          "Génie Informatique et Télécom": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Réseaux télécoms",
              "Cabinets d'experts",
              "Technicien dans les usines"
            ]
          },
          "Génie Chimique procédés": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Unité de production",
              "Consultant en production et analyse",
              "Sécurité, hygiène et environnement",
              "Industrie agroalimentaire",
              "Industrie pharmaceutique",
              "Traitement des pollutions"
            ]
          },
          "Machinisme Agricole": {
            "Bourse": 29,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Fabrication mécanique",
              "Parcs machines",
              "Contrôle qualité",
              "Maintenance des engins agricoles",
              "Mécanisation agricole"
            ]
          },
          "Génie Biomédicale (Maintenance Biomédicale et Hospitalière)": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Technicien de laboratoire des centres de santé",
              "Maintenance hospitalière et contrôle des équipements de laboratoires médicaux et vétérinaires",
              "Maintenance des équipements électroniques"
            ]
          }
        }
      },
      "UNSTIM": {
        "INSTI (Institut National Supérieur de Technologie Industrielle)": {
          "Génie Civil": {
            "Bourse": 76,
            "Aide": 12,
            "Matières": ["MATHS", "PCT", "CONSTRUCTION MECANIQUE"],
            "Métiers": [
              "Techniciens de Travaux du Génie Civil",
              "Controleurs de chantiers",
              "Assistant des experts Géomètres, des cabinets d'architecture, des agences immobilières et des notaires"
            ]
          },
          "Génie Energétique (Energies Renouvelables et Systèmes Energétiques)":
              {
            "Bourse": 38,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "CONSTRUCTION MECANIQUE"],
            "Métiers": [
              "Techniciens en Industrie électrique, électrotechniques et électroniques",
              "Métiers du bâtiment",
              "Appareillage, instrumentation",
              "Installations, équipements et systèmes pour énergies renouvelables",
              "Audit et Efficacité énergétique"
            ]
          },
          "Génie Energétique (Froid et climatisation)": {
            "Bourse": 38,
            "Aide": 6,
            "Matières": ["MATHS", "PCT"],
            "Métiers": [
              "Techniciens en Froid et climatisation de bâtiment et automobile",
              "Métiers du bâtiment",
              "Appareillage, instrumentation"
            ]
          },
          "Génie Electrique et Informatique (Informatique et Télécommunications)":
              {
            "Bourse": 31,
            "Aide": 6,
            "Matières": ["MATHS", "CONSTRUCTION MECANIQUE", "PCT"],
            "Métiers": [
              "Service informatique d'entreprise",
              "Cabinets d'audit ou ingénierie informatique",
              "Sociétés de maintenance informatique",
              "Agences de communication",
              "Agences de développement d'applications web et mobiles",
              "Sociétés de téléphonie mobile",
              "Fournisseurs d'accès internet",
              "Télésurveillance",
              "Systèmes embarqués"
            ]
          },
          "Génie Electrique et Informatique (Ellectronique et Electrotechnique)":
              {
            "Bourse": 30,
            "Aide": 6,
            "Matières": ["MATHS", "CONSTRUCTION MECANIQUE", "PCT"],
            "Métiers": [
              "Electricité Industrielle et de bâtiments",
              "Contrôle de procéds dans le domaine électrique",
              "Energie électrique, sa production, son transport et son traitement",
              "Comande automatique de processus",
              "Système embarqués",
              "Télésurveillance",
              "Contrôle de Qualité dans le domaine électrique"
            ]
          },
          "Génie Mécanique et productique": {
            "Bourse": 46,
            "Aide": 9,
            "Matières": ["MATHS", "PCT", "CONSTRUCTION MECANIQUE"],
            "Métiers": [
              "Parcs machines",
              "Maintenance industrielle",
              "Fabrication mécanique",
              "Méthodes et contrôle de la qualité",
              "Maintenance des engins agricoles",
              "Mécanisation agricole"
            ]
          }
        },
        "ENSGEP (Ecole Nationale Supérieure de Génie Energétique et Procédés)":
            {
          "Equipement motorisés": {
            "Bourse": 29,
            "Aide": 6,
            "Matières": ["MATHS", "FRANCAIS", "PCT"],
            "Métiers": [
              "Technicien supérieur en installation et maintenance des équipements motorisés",
              "Technicien supérieur en electromécanique",
              "Technicien supérieur en mécanique automobile",
              "Technicien supérieur en installation et maintenance de matériels électroménagers",
              "Technicien supérieur en maintenance des systèmes hydrauliques et pneumatiques des gros engins des travaux publics"
            ]
          }
        },
        "ENSTP (Ecole Nationale Supérieure des Travaux Publics)": {
          "Génie Civil": {
            "Bourse": 24,
            "Aide": 4,
            "Matières": ["MATHS", "FRANCAIS", "PCT"],
            "Métiers": [
              "Assistants dans les bureaux d'études",
              "Techniciens contrôleurs de travaux du Génie Civil (routes, bâtiments, ouvrages d'art, assainissement, aménagements divers...)",
              "Techniciens métreur ou technicien assistant des ingénieurs études",
              "Techniciens dans les services déconcentrés et Mairies",
              "Techniciens de laboratoires géotechniques ou de recherche en génie civil",
              "Assistants des Experts Routiers, géotechniciens, ouvragistes",
              "Entrepreneur, chef de chantier",
              "Conducteur de travaux"
            ]
          },
          "Hydraulique et Assainissement": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "FRANCAIS", "PCT"],
            "Métiers": [
              "Techniciens en Hydraulique et Assainissement",
              "Techniciens de Laboratoires d'analyse d'eau",
              "Techniciens Contrôleurs des travaux d'assainissement",
              "Techniciens Contrôleurs des travaux d'Adduction d'Eaux",
              "Techniciens Contrôleurs des travaux de constructions d'ouvrages hydrauliques ou hydro-agricoles (barrages, ponts, etc)",
              "Technicien de gestion des stations d'épuration des eaux usées",
              "Technicien de gestion des stations de traitements de l'eau pour boisson",
              "Technicien dans les services déconcentrés et Mairies",
              "Assistants des experts hydrauliciens, hydrologues et en gestion des eaux",
              "Assistants dans les bureaux d'études"
            ]
          }
        }
      },
      "UNA": {
        "Ecole de Génie Rural (EGR)": {
          "Agroéquipement": {
            "Bourse": 18,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "CONSTRUCTION MECANIQUE"],
            "Métiers": [
              "Entreprises de conception et de fabrication des machines",
              "Société de maintenance des engins et équipements agricoles",
              "Entreprise motorisée",
              "Gérant de parc d'engins ou de machines agricoles",
              "Entreprise d'Installation et maintenance d'équipements agro-industriels",
              "Entreprises et Fermes mécanisées agricoles",
              "Industries de transformation et Unités de production agro-alimentaire (usine d'égrnage, Brasseries, Huileries, ...)",
              "Sociétés de maintenance de Tracteurs et de machines agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Garage de réparation d'automobiles",
              "Administration publique",
              "Etablissements d'enseignement technique"
            ]
          },
          "Electrification Rurale et Energies Renouvelables (ERER)": {
            "Bourse": 19,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Industries de transformation et Unités de Production (agro-alimentaire, cimenterie, production de sucre, lait, brasserie, coton, huile de palme, etc...)",
              "Cabinets d'audit et de Conseils en énergies renouvelables",
              "Projets de construction de lignes électriques",
              "Projets d'électrification rurale",
              "Entreprises de BTP",
              "Garages automobiles",
              "Entreprises travaillant dans le secteur du biogaz et autres énergies vertes",
              "Fermes et entreprises agro-pastorales",
              "Administration publique",
              "Etablissements d'enseignement technique",
              "Entreprenariat sur les énergie vertes et le développement durable"
            ]
          },
          "Infrastructures Rurales et Assainissement": {
            "Bourse": 19,
            "Aide": 2,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entreprise de travaux de constructions d'Ouvrages/Réseaux hydrauliques ou hydro-agricoles",
              "Entreprise de travaux d'irrigation et de drainage",
              "Entreprise d'aménagement hydro-agricole",
              "Entreprise de travaux de voirie et réseaux d'adduction d'eau potable",
              "Sociétés d'eau et d'assainissement",
              "Stations d'épuration d'eaux usées",
              "Stations de traitements d'eau",
              "Services Techniques des Mairies",
              "Entreprises ou Sociétés de BTP",
              "Mission de contrôle",
              "Cabinets d'Architecture",
              "Laboratoires de Génie Civil",
              "Cabintes/Bureaux d'études et de conseils",
              "Etablissements d'enseilgnement technique"
            ]
          }
        }
      }
    },
    "F1": {
      "UAC": {
        "IMSP (Institut de Mathématiques et de Sciences Physiques)": {
          "Classes préparatoires Mathématiques, Physiques et Science de l'ingénieur (MPSI) et Physique-Chimie et Science de l'ingénieur (PCSI)":
              {
            "Bourse": 94,
            "Aide": 16,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entrée dans les grandes écoles d'ingénieurs",
              "Entrée dans les Masters de Mathématiques, de Physique et Informatique"
            ]
          }
        },
        "EPAC (Ecole Polytechnique d'Abomey-Calavi)": {
          "Génie Mécanique et Energétique": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Maintenance industrielle",
              "Designer, Production de pièces",
              "Gestionnaires de parcs machines",
              "Bureaux d'études et méthodes",
              "Contrôle de qualité"
            ]
          }
        }
      },
      "UNSTIM": {
        "INSTI (Institut National Supérieur de Technologie Industrielle)": {
          "Maintenance des Systèmes (Maintenance Industrielle)": {
            "Bourse": 23,
            "Aide": 5,
            "Matières": ["MATHS", "CONSTRUCTION MECANIQUE"],
            "Métiers": [
              "Techniciens des industries de transformation et Unités de production alimentaire",
              "Auditeurs/Conseis des Entreprises ou sociétés de TP",
              "Responsable service après-vente"
            ]
          },
          "Maintenance des Systèmes (Maintenance Automobile)": {
            "Bourse": 24,
            "Aide": 4,
            "Matières": ["MATHS", "PCT", "CONSTRUCTION MECANIQUE"],
            "Métiers": [
              "Parcs automobiles",
              "Concessionnaires automobiles",
              "Gestionnaires de parc d'engins agricoles ou de manutention",
              "Usines de production",
              "Cabinet d'expertise et de Conseils",
              "Entreprise et Sociétés de BTP",
              "Equipementiers automobiles"
            ]
          },
          "Génie Mécanique et productique": {
            "Bourse": 46,
            "Aide": 9,
            "Matières": ["MATHS", "PCT", "CONSTRUCTION MECANIQUE"],
            "Métiers": [
              "Parcs machines",
              "Maintenance industrielle",
              "Fabrication mécanique",
              "Méthodes et contrôle de la qualité",
              "Maintenance des engins agricoles",
              "Mécanisation agricole"
            ]
          }
        }
      },
      "UNA": {
        "Ecole de Génie Rural (EGR)": {
          "Agroéquipement": {
            "Bourse": 18,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "CONSTRUCTION MECANIQUE"],
            "Métiers": [
              "Entreprises de conception et de fabrication des machines",
              "Société de maintenance des engins et équipements agricoles",
              "Entreprise motorisée",
              "Gérant de parc d'engins ou de machines agricoles",
              "Entreprise d'Installation et maintenance d'équipements agro-industriels",
              "Entreprises et Fermes mécanisées agricoles",
              "Industries de transformation et Unités de production agro-alimentaire (usine d'égrnage, Brasseries, Huileries, ...)",
              "Sociétés de maintenance de Tracteurs et de machines agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Garage de réparation d'automobiles",
              "Administration publique",
              "Etablissements d'enseignement technique"
            ]
          },
          "Electrification Rurale et Energies Renouvelables (ERER)": {
            "Bourse": 19,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Industries de transformation et Unités de Production (agro-alimentaire, cimenterie, production de sucre, lait, brasserie, coton, huile de palme, etc...)",
              "Cabinets d'audit et de Conseils en énergies renouvelables",
              "Projets de construction de lignes électriques",
              "Projets d'électrification rurale",
              "Entreprises de BTP",
              "Garages automobiles",
              "Entreprises travaillant dans le secteur du biogaz et autres énergies vertes",
              "Fermes et entreprises agro-pastorales",
              "Administration publique",
              "Etablissements d'enseignement technique",
              "Entreprenariat sur les énergie vertes et le développement durable"
            ]
          },
          "Infrastructures Rurales et Assainissement": {
            "Bourse": 19,
            "Aide": 2,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entreprise de travaux de constructions d'Ouvrages/Réseaux hydrauliques ou hydro-agricoles",
              "Entreprise de travaux d'irrigation et de drainage",
              "Entreprise d'aménagement hydro-agricole",
              "Entreprise de travaux de voirie et réseaux d'adduction d'eau potable",
              "Sociétés d'eau et d'assainissement",
              "Stations d'épuration d'eaux usées",
              "Stations de traitements d'eau",
              "Services Techniques des Mairies",
              "Entreprises ou Sociétés de BTP",
              "Mission de contrôle",
              "Cabinets d'Architecture",
              "Laboratoires de Génie Civil",
              "Cabintes/Bureaux d'études et de conseils",
              "Etablissements d'enseilgnement technique"
            ]
          }
        }
      }
    },
    "F2": {
      "UAC": {
        "IMSP (Institut de Mathématiques et de Sciences Physiques)": {
          "Classes préparatoires Mathématiques, Physiques et Science de l'ingénieur (MPSI) et Physique-Chimie et Science de l'ingénieur (PCSI)":
              {
            "Bourse": 94,
            "Aide": 16,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entrée dans les grandes écoles d'ingénieurs",
              "Entrée dans les Masters de Mathématiques, de Physique et Informatique"
            ]
          }
        },
        "EPAC (Ecole Polytechnique d'Abomey-Calavi)": {
          "Génie Electrique": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Société d'électricité, usines",
              "Cabinets d'experts (Suivi contrôle audit)"
            ]
          },
          "Génie Informatique et Télécom": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Réseaux télécoms",
              "Cabinets d'experts",
              "Technicien dans les usines"
            ]
          },
          "Génie Biomédicale (Maintenance Biomédicale et Hospitalière)": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Technicien de laboratoire des centres de santé",
              "Maintenance hospitalière et contrôle des équipements de laboratoires médicaux et vétérinaires",
              "Maintenance des équipements électroniques"
            ]
          }
        },
        "FAST (Faculté des Sciences Techniques)": {
          "Energies Renouvelables et Systèmes Energétiques": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Production et fourniture d'énergie électrique",
              "Fourniture de services"
            ]
          }
        }
      },
      "UNSTIM": {
        "INSTI (Institut National Supérieur de Technologie Industrielle)": {
          "Génie Energétique (Energies Renouvelables et Systèmes Energétiques)":
              {
            "Bourse": 38,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "EST"],
            "Métiers": [
              "Techniciens en Industrie électrique, électrotechniques et électroniques",
              "Métiers du bâtiment",
              "Appareillage, instrumentation",
              "Installations, équipements et systèmes pour énergies renouvelables",
              "Audit et Efficacité énergétique"
            ]
          },
          "Maintenance des Systèmes (Maintenance Industrielle)": {
            "Bourse": 23,
            "Aide": 5,
            "Matières": ["MATHS", "CONSTRUCTION MECANIQUE"],
            "Métiers": [
              "Techniciens des industries de transformation et Unités de production alimentaire",
              "Auditeurs/Conseis des Entreprises ou sociétés de TP",
              "Responsable service après-vente"
            ]
          },
          "Maintenance des Systèmes (Maintenance Automobile)": {
            "Bourse": 24,
            "Aide": 4,
            "Matières": ["MATHS", "PCT", "CONSTRUCTION MECANIQUE"],
            "Métiers": [
              "Parcs automobiles",
              "Concessionnaires automobiles",
              "Gestionnaires de parc d'engins agricoles ou de manutention",
              "Usines de production",
              "Cabinet d'expertise et de Conseils",
              "Entreprise et Sociétés de BTP",
              "Equipementiers automobiles"
            ]
          }
        }
      },
      "UNA": {
        "Ecole de Génie Rural (EGR)": {
          "Agroéquipement": {
            "Bourse": 18,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "EST"],
            "Métiers": [
              "Entreprises de conception et de fabrication des machines",
              "Société de maintenance des engins et équipements agricoles",
              "Entreprise motorisée",
              "Gérant de parc d'engins ou de machines agricoles",
              "Entreprise d'Installation et maintenance d'équipements agro-industriels",
              "Entreprises et Fermes mécanisées agricoles",
              "Industries de transformation et Unités de production agro-alimentaire (usine d'égrnage, Brasseries, Huileries, ...)",
              "Sociétés de maintenance de Tracteurs et de machines agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Garage de réparation d'automobiles",
              "Administration publique",
              "Etablissements d'enseignement technique"
            ]
          },
          "Electrification Rurale et Energies Renouvelables (ERER)": {
            "Bourse": 19,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "EST"],
            "Métiers": [
              "Industries de transformation et Unités de Production (agro-alimentaire, cimenterie, production de sucre, lait, brasserie, coton, huile de palme, etc...)",
              "Cabinets d'audit et de Conseils en énergies renouvelables",
              "Projets de construction de lignes électriques",
              "Projets d'électrification rurale",
              "Entreprises de BTP",
              "Garages automobiles",
              "Entreprises travaillant dans le secteur du biogaz et autres énergies vertes",
              "Fermes et entreprises agro-pastorales",
              "Administration publique",
              "Etablissements d'enseignement technique",
              "Entreprenariat sur les énergie vertes et le développement durable"
            ]
          }
        }
      }
    },
    "F3": {
      "UAC": {
        "IMSP (Institut de Mathématiques et de Sciences Physiques)": {
          "Classes préparatoires Mathématiques, Physiques et Science de l'ingénieur (MPSI) et Physique-Chimie et Science de l'ingénieur (PCSI)":
              {
            "Bourse": 94,
            "Aide": 16,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entrée dans les grandes écoles d'ingénieurs",
              "Entrée dans les Masters de Mathématiques, de Physique et Informatique"
            ]
          }
        },
        "EPAC (Ecole Polytechnique d'Abomey-Calavi)": {
          "Génie Electrique": {
            "Bourse": 14,
            "Aide": 3,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Société d'électricité, usines",
              "Cabinets d'experts (Suivi contrôle audit)"
            ]
          },
          "Machinisme Agricole": {
            "Bourse": 29,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Fabrication mécanique",
              "Parcs machines",
              "Contrôle qualité",
              "Maintenance des engins agricoles",
              "Mécanisation agricole"
            ]
          },
          "Génie Biomédicale (Maintenance Biomédicale et Hospitalière)": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Technicien de laboratoire des centres de santé",
              "Maintenance hospitalière et contrôle des équipements de laboratoires médicaux et vétérinaires",
              "Maintenance des équipements électroniques"
            ]
          }
        },
        "FAST (Faculté des Sciences Techniques)": {
          "Energies Renouvelables et Systèmes Energétiques": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Production et fourniture d'énergie électrique",
              "Fourniture de services"
            ]
          }
        }
      },
      "UNSTIM": {
        "INSTI (Institut National Supérieur de Technologie Industrielle)": {
          "Génie Energétique (Energies Renouvelables et Systèmes Energétiques)":
              {
            "Bourse": 38,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "ELECTROTECH"],
            "Métiers": [
              "Techniciens en Industrie électrique, électrotechniques et électroniques",
              "Métiers du bâtiment",
              "Appareillage, instrumentation",
              "Installations, équipements et systèmes pour énergies renouvelables",
              "Audit et Efficacité énergétique"
            ]
          },
          "Génie Energétique (Froid et climatisation)": {
            "Bourse": 38,
            "Aide": 6,
            "Matières": ["MATHS", "PCT", "ANGLAIS"],
            "Métiers": [
              "Techniciens en Froid et climatisation de bâtiment et automobile",
              "Métiers du bâtiment",
              "Appareillage, instrumentation"
            ]
          },
          "Génie Electrique et Informatique (Informatique et Télécommunications)":
              {
            "Bourse": 31,
            "Aide": 6,
            "Matières": ["MATHS", "ELECTROTECH", "PCT"],
            "Métiers": [
              "Service informatique d'entreprise",
              "Cabinets d'audit ou ingénierie informatique",
              "Sociétés de maintenance informatique",
              "Agences de communication",
              "Agences de développement d'applications web et mobiles",
              "Sociétés de téléphonie mobile",
              "Fournisseurs d'accès internet",
              "Télésurveillance",
              "Systèmes embarqués"
            ]
          },
          "Génie Electrique et Informatique (Ellectronique et Electrotechnique)":
              {
            "Bourse": 30,
            "Aide": 6,
            "Matières": ["MATHS", "ELECTROTECH", "PCT"],
            "Métiers": [
              "Electricité Industrielle et de bâtiments",
              "Contrôle de procéds dans le domaine électrique",
              "Energie électrique, sa production, son transport et son traitement",
              "Comande automatique de processus",
              "Système embarqués",
              "Télésurveillance",
              "Contrôle de Qualité dans le domaine électrique"
            ]
          },
          "Maintenance des Systèmes (Maintenance Industrielle)": {
            "Bourse": 23,
            "Aide": 5,
            "Matières": ["MATHS", "PCT", "ETUDE D'UN SYSTEME TECHNIQUE"],
            "Métiers": [
              "Techniciens des industries de transformation et Unités de production alimentaire",
              "Auditeurs/Conseis des Entreprises ou sociétés de TP",
              "Responsable service après-vente"
            ]
          }
        }
      },
      "UNA": {
        "Ecole de Génie Rural (EGR)": {
          "Agroéquipement": {
            "Bourse": 18,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "ELECTROTECH"],
            "Métiers": [
              "Entreprises de conception et de fabrication des machines",
              "Société de maintenance des engins et équipements agricoles",
              "Entreprise motorisée",
              "Gérant de parc d'engins ou de machines agricoles",
              "Entreprise d'Installation et maintenance d'équipements agro-industriels",
              "Entreprises et Fermes mécanisées agricoles",
              "Industries de transformation et Unités de production agro-alimentaire (usine d'égrnage, Brasseries, Huileries, ...)",
              "Sociétés de maintenance de Tracteurs et de machines agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Cabinets d'audit et de Conseils agricoles",
              "Garage de réparation d'automobiles",
              "Administration publique",
              "Etablissements d'enseignement technique"
            ]
          },
          "Electrification Rurale et Energies Renouvelables (ERER)": {
            "Bourse": 19,
            "Aide": 1,
            "Matières": ["MATHS", "PCT", "ELECTROTECH"],
            "Métiers": [
              "Industries de transformation et Unités de Production (agro-alimentaire, cimenterie, production de sucre, lait, brasserie, coton, huile de palme, etc...)",
              "Cabinets d'audit et de Conseils en énergies renouvelables",
              "Projets de construction de lignes électriques",
              "Projets d'électrification rurale",
              "Entreprises de BTP",
              "Garages automobiles",
              "Entreprises travaillant dans le secteur du biogaz et autres énergies vertes",
              "Fermes et entreprises agro-pastorales",
              "Administration publique",
              "Etablissements d'enseignement technique",
              "Entreprenariat sur les énergie vertes et le développement durable"
            ]
          }
        }
      }
    },
    "F4": {
      "UAC": {
        "IMSP (Institut de Mathématiques et de Sciences Physiques)": {
          "Classes préparatoires Mathématiques, Physiques et Science de l'ingénieur (MPSI) et Physique-Chimie et Science de l'ingénieur (PCSI)":
              {
            "Bourse": 94,
            "Aide": 16,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Entrée dans les grandes écoles d'ingénieurs",
              "Entrée dans les Masters de Mathématiques, de Physique et Informatique"
            ]
          }
        },
        "EPAC (Ecole Polytechnique d'Abomey-Calavi)": {
          "Génie Civil": {
            "Bourse": 28,
            "Aide": 7,
            "Matières": ["MATHS", "PCT", "FRANCAIS"],
            "Métiers": [
              "Chefs chantiers",
              "Techniciens d'étude en entreprise",
              "Conducteurs des travaux",
              "Laboratoires"
            ]
          }
        }
      },
      "UNSTIM": {
        "INSTI (Institut National Supérieur de Technologie Industrielle)": {
          "Génie Civil": {
            "Bourse": 76,
            "Aide": 12,
            "Matières": ["MATHS", "PCT", "BETON ARME"],
            "Métiers": [
              "Techniciens de Travaux du Génie Civil",
              "Controleurs de chantiers",
              "Assistant des experts Géomètres, des cabinets d'architecture, des agences immobilières et des notaires"
            ]
          }
        },
        "ENSTP (Ecole Nationale Supérieure des Travaux Publics)": {
          "Génie Civil": {
            "Bourse": 24,
            "Aide": 4,
            "Matières": ["MATHS", "FRANCAIS", "RDM"],
            "Métiers": [
              "Assistants dans les bureaux d'études",
              "Techniciens contrôleurs de travaux du Génie Civil (routes, bâtiments, ouvrages d'art, assainissement, aménagements divers...)",
              "Techniciens métreur ou technicien assistant des ingénieurs études",
              "Techniciens dans les services déconcentrés et Mairies",
              "Techniciens de laboratoires géotechniques ou de recherche en génie civil",
              "Assistants des Experts Routiers, géotechniciens, ouvragistes",
              "Entrepreneur, chef de chantier",
              "Conducteur de travaux"
            ]
          },
          "Génie Géomatique Appliquée": {
            "Bourse": 21,
            "Aide": 4,
            "Matières": ["MATHS", "FRANCAIS", "RDM"],
            "Métiers": [
              "Assistants des Experts Géomètres, des architectes, agences immobilières et notaires",
              "Techniciens en Système d'Information Géographique (SIG)",
              "Technicien-Cartographes",
              "Technicien dans les Services déconcentrés et Mairies",
              "Assistants dans les  bureaux d'études"
            ]
          },
          "Architecture et Urbanisme": {
            "Bourse": 30,
            "Aide": 6,
            "Matières": ["MATHS", "FRANCAIS", "RDM"],
            "Métiers": [
              "Techniciens Architectes-Urbanistes",
              "Techniciens Contrôleurs de chantiers de bâtiments",
              "Techniciens Contrôleurs de travaux d'aménagements urbains",
              "Assistants des experts aménagistes urbanistes",
              "Techniciens dans les services déconcentrés et les Mairies",
              "Assistants dans les Cabinets d'Architecture, agence immobilières et notaires",
              "Assistants dans les bureaux d'études"
            ]
          },
          "Hydraulique et Assainissement": {
            "Bourse": 28,
            "Aide": 6,
            "Matières": ["MATHS", "FRANCAIS", "RDM"],
            "Métiers": [
              "Techniciens en Hydraulique et Assainissement",
              "Techniciens de Laboratoires d'analyse d'eau",
              "Techniciens Contrôleurs des travaux d'assainissement",
              "Techniciens Contrôleurs des travaux d'Adduction d'Eaux",
              "Techniciens Contrôleurs des travaux de constructions d'ouvrages hydrauliques ou hydro-agricoles (barrages, ponts, etc)",
              "Technicien de gestion des stations d'épuration des eaux usées",
              "Technicien de gestion des stations de traitements de l'eau pour boisson",
              "Technicien dans les services déconcentrés et Mairies",
              "Assistants des experts hydrauliciens, hydrologues et en gestion des eaux",
              "Assistants dans les bureaux d'études"
            ]
          }
        }
      },
      "UNA": {
        "Ecole de Génie Rural (EGR)": {
          "Infrastructures Rurales et Assainissement": {
            "Bourse": 19,
            "Aide": 2,
            "Matières": ["MATHS", "PCT", "RDM"],
            "Métiers": [
              "Entreprise de travaux de constructions d'Ouvrages/Réseaux hydrauliques ou hydro-agricoles",
              "Entreprise de travaux d'irrigation et de drainage",
              "Entreprise d'aménagement hydro-agricole",
              "Entreprise de travaux de voirie et réseaux d'adduction d'eau potable",
              "Sociétés d'eau et d'assainissement",
              "Stations d'épuration d'eaux usées",
              "Stations de traitements d'eau",
              "Services Techniques des Mairies",
              "Entreprises ou Sociétés de BTP",
              "Mission de contrôle",
              "Cabinets d'Architecture",
              "Laboratoires de Génie Civil",
              "Cabintes/Bureaux d'études et de conseils",
              "Etablissements d'enseilgnement technique"
            ]
          }
        }
      }
    },
    "G1": {
      "UAC": {
        "FLLAC (Faculté des lettres, langues, Arts et Communication)": {
          "Sciences du Langage et de la Communication": {
            "Bourse": 92,
            "Aide": 375,
            "Matières": ["ANGLAIS", "FRANCAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Didacticien de langues français et langues africaines",
              "Consultant en éducation bi-plurilingues et interculturelles"
            ]
          }
        },
        "EPA (Ecole du Patrimoine Africain)": {
          "Gestion du patrimaire culturel": {
            "Bourse": 35,
            "Aide": 10,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Droit du patrimoine",
              "Patrimoniteurs",
              "Gestionnaires de musées",
              "Communicateurs culturels"
            ]
          }
        },
        "FASHS (Faculté des Sciences Humaines et Sociales) Calavi": {
          "Socio-Anthropologie": {
            "Bourse": 44,
            "Aide": 750,
            "Matières": ["FRANCAIS", "DROIT ADMIN ET DU TRAVAIL", "ANGLAIS"],
            "Métiers": ["Centres sociaux", "Ministères", "Recherche"]
          }
        },
        "ENA (Ecole Natoinale d'Administration) Ex. ENAM": {
          "Administration Générale": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ECONIMIE"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Secrétariat de Gestion": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Attaché des services administratifs (Secrétariat et assistant de Gestion)"
            ]
          },
          "Sciences et Techniques de l'Information Documentaire": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "ECONIMIE"],
            "Métiers": [
              "Technicien supérieur en archivistique",
              "Technicien supérieur Documentariste"
            ]
          }
        }
      },
      "UP": {
        "IUT (Institut Universitaire de Technologie)": {
          "Gestion des Ressources Humaines": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ECONIMIE", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises",
              "Assurance",
              "Administrations",
              "Organisations",
              "ONG"
            ]
          }
        },
        "Faculté de Droit et Sciences Politiques": {
          "Droit Privé": {
            "Bourse": 111,
            "Aide": 750,
            "Matières": ["FRANCAIS", "ETUDE DE CAS", "ANGLAIS"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire"
            ]
          },
          "Droit Public": {
            "Bourse": 83,
            "Aide": 600,
            "Matières": ["FRANCAIS", "ETUDE DE CAS", "ANGLAIS"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire",
              "Attaché des services financiers",
              "Attaché des impôts",
              "Assistant Juridique"
            ]
          },
          "Sciences Politiques et Relations Internationales": {
            "Bourse": 46,
            "Aide": 165,
            "Matières": ["FRANCAIS", "ETUDE DE CAS", "ANGLAIS"],
            "Métiers": [
              "Publique et locale",
              "Diplomatie",
              "Agents des services extérieurs et diplomatique",
              "Attaché politique",
              "Attaché des services culturels",
              "Guides touristiques",
              "Conseillé politique",
              "Analyste de politique publique",
              "Lobbyiste",
              "Agents des services parlementaires",
              "Médiateur",
              "Député",
              "Agents de relation publiques",
              "Fonctionnaires"
            ]
          }
        }
      }
    },
    "G2": {
      "UAC": {
        "ENEAM (Ecole Nationale d'Economie Appliquée et de Management)": {
          "Assurance": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en négoce",
              "Gestionnaire de patrimoine"
            ]
          },
          "Banque et Finanace de Marché": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en marché",
              "Négoces",
              "Gestionnaire de patrimoine et des portefeuilles"
            ]
          },
          "Banque et Institutions des Micro finances": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en marché",
              "Négoces",
              "Gestionnaire de patrimoine et des portefeuilles"
            ]
          },
          "Marketing": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Marketing et Communication Commerciale",
              "Responsable commercial",
              "Chef de produit",
              "Responsable du développement commercial",
              "Chargé d'affaires",
              "Chargé de clientèle",
              "Chargé d'étude marketing",
              "Responsable des ventes",
              "Chef de publicité",
              "Chargé des relations publiques",
              "Responsable des ventes",
              "Chef de publicité",
              "Chargé des relations publiques",
              "Média planner",
              "Chargé de communication",
              "Marketing Digital et Community Management",
              "Responsable Marketing Digital/Digital Marketing Manager",
              "Responsable de la stratégie mobile",
              "Chargé de communication Web digital / Digital brand manager",
              "Responsable marketing relationnel/CRM",
              "Marketing buisness analyst",
              "Data miner / Data analyst",
              "Chef de projet Web",
              "Responsable e-Commerce",
              "Digital planner",
              "Consultant search marketing (SEM/SEO)",
              "Community manager",
              "Chef de produit Web/Mobile",
              "Responsable de la marque en ligne",
              "Social media manager",
              "Content manager/Responsable contenu numérique",
              "Marketing et Management Commercial",
              "Chargé d'affaires",
              "Conseiller clientèle",
              "Chargé d'études commerciales",
              "Responsable d'agence commerciale",
              "Marchandiseur"
            ]
          },
          "Gestion des Ressources Humaines": {
            "Bourse": 4,
            "Aide": 2,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Gestion du personnel et des ressources humaines dans les entreprises privées et publiques"
            ]
          },
          "Gestion des Transports": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises maritimes",
              "Logistiques, les administrations"
            ]
          },
          "Gestion de Logistique": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": ["Agences de voyage", "Approvisionnement"]
          },
          "Gestion Financière et Comptable": {
            "Bourse": 15,
            "Aide": 2,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Comptable",
              "Responsable financier",
              "Auditeur financier",
              "Auditeur interne"
            ]
          }
        },
        "EPA (Ecole du Patrimoine Africain)": {
          "Gestion du patrimaire culturel": {
            "Bourse": 35,
            "Aide": 10,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Droit du patrimoine",
              "Patrimoniteurs",
              "Gestionnaires de musées",
              "Communicateurs culturels"
            ]
          }
        },
        "FASHS (Faculté des Sciences Humaines et Sociales) Calavi": {
          "Socio-Anthropologie": {
            "Bourse": 44,
            "Aide": 750,
            "Matières": ["FRANCAIS", "MATHS", "ANGLAIS"],
            "Métiers": ["Centres sociaux", "Ministères", "Recherche"]
          }
        },
        "ENA (Ecole Natoinale d'Administration) Ex. ENAM": {
          "Administration Générale": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ECONIMIE"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Administration des Finances": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ECONIMIE"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Secrétariat de Gestion": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Attaché des services administratifs (Secrétariat et assistant de Gestion)"
            ]
          },
          "Sciences et Techniques de l'Information Documentaire": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "ECONIMIE"],
            "Métiers": [
              "Technicien supérieur en archivistique",
              "Technicien supérieur Documentariste"
            ]
          }
        },
        "HERCI (Haute Ecole Réginale de Commerce International)": {
          "Négoce International": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          },
          "Gestion des Relations Maritimes Internationales": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          },
          "Commerce International": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          }
        },
        "FADESP (Faculté de Droit et de Science Politique)": {
          "Droit": {
            "Bourse": 120,
            "Aide": 1200,
            "Matières": ["FRANCAIS", "ANGLAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juriste des affaires, d'entreprise",
              "Auxiliaire de justice (Avocat, Huissier, Notaire, etc)",
              "Magistrature"
            ]
          },
          "Sciences Politiques": {
            "Bourse": 42,
            "Aide": 225,
            "Matières": ["FRANCAIS", "ANGLAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Diplomate",
              "Spéciaiste des relations internationales",
              "Spécialiste des politiques publiques",
              "Sociologue des comportements politiques",
              "Evaluateur des politiques publiques",
              "Gestionnaire des projets"
            ]
          }
        },
        "FASEG (Faculté des Sciences Economiques et de Gestion)": {
          "Sciences Economiques et de Gestion (Tronc commun)": {
            "Bourse": 225,
            "Aide": 1740,
            "Matières": ["ETUDE DE CAS", "ECONIMIE", "FRANCAIS"],
            "Métiers": [
              "Services déconcentrés de l'Etat, Collectivités locales, associations et ONG",
              "Analystes, statisticiens, Comptable",
              "Planificateur et Gestion des Ressources financières",
              "Statistique agricole",
              "Analyse des projets agricoles",
              "Services financiers des collectivités locales",
              "Gestion des structures de microfinance",
              "Chargé des études et de la prospective économique des collectivités",
              "Economiste de marché",
              "Conseiller économique",
              "Conseiller en Microfinance",
              "Economiste/stratégiste bancaire",
              "Entrepreneur",
              "Gestioinnaire des PME",
              "Agent de banque",
              "Comptable dans les service financiers",
              "Assistant Auditeur",
              "Agent de banque, d'assurance"
            ]
          },
          "Sciences et Techiques Comptables et Financières (STCF)": {
            "Bourse": 9,
            "Aide": 30,
            "Matières": ["ETUDE DE CAS", "ECONIMIE", "FRANCAIS"],
            "Métiers": [
              "Audit comptable oyu financier",
              "Contrôleur interne en banque et entreprise",
              "Agent comptable"
            ]
          }
        }
      },
      "UP": {
        "IUT (Institut Universitaire de Technologie)": {
          "Gestion des Banques": {
            "Bourse": 17,
            "Aide": 6,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Orgabismes financiers ou de gestion (établissement de crédits, entreprises commerciales de banque)"
            ]
          },
          "Gestions des Entreprises": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Cabinets comptables",
              "Services de comptabilité des entreprises",
              "Banque",
              "Assurances",
              "Administration petites moyennes et grandes entreprises",
              "Auto emploi"
            ]
          },
          "Gestion des Transports et Logistiques": {
            "Bourse": 17,
            "Aide": 7,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Banque",
              "Société d'assurance et administrations petites, moyennes et grandes entreprises",
              "Entreprises de transport et de Gestion ferroviaire",
              "Service chargé de la logistique au niveau des entreprises des administrations",
              "Poste d'agent comptable dans les compagnies aériennes",
              "D'agent de fret dans les aéroports de techniciens des études et l'exploitation de l'avion civile"
            ]
          },
          "Informatique de Gestion": {
            "Bourse": 64,
            "Aide": 14,
            "Matières": ["MATHS", "ECONIMIE", "ETUDE DE CAS"],
            "Métiers": [
              "Centre informatique",
              "Banque",
              "Entreprise de prestation de service",
              "Editeur de logiciels",
              "Grandes entreprises informatisées",
              "Poste d'analyse programmeur",
              "Chef de programme informatique",
              "Ingénieur logiciel",
              "Administrateur de réseau"
            ]
          },
          "Gestion des Ressources Humaines": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises",
              "Assurance",
              "Administrations",
              "Organisations",
              "ONG"
            ]
          }
        },
        "FASEG (Faculté de Sciences Economiques et de Gestion)": {
          "Analyse et Politique Economiques (APE)": {
            "Bourse": 26,
            "Aide": 60,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Economie Agricole (EA)": {
            "Bourse": 62,
            "Aide": 120,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Economie et Finance des Collectivités Locales (EFCL)": {
            "Bourse": 26,
            "Aide": 60,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Economie et Finance des Collectivités Locales",
              "Cabinets Conseils en Projets de Développement Local",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées à la Promotion de l'Economie, Commerciales et Financières",
              "Gestion Financière de Structures Chargées des Questions Liées aux Affaires Economiques et Financières des Collectivités Territoriales Décentralisées (Ministères, Administrations, Projets de Développement, Mairies)",
              "Collectivités Territoriales Décentralisées (Ministères, Administrations, Projets de Développement, Mairies)"
            ]
          },
          "Economie et Finance Internationales (EFI)": {
            "Bourse": 34,
            "Aide": 120,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques et Monétaires",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques, Commerciales et Financières (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Entrepreneuriat et Gestion des Entreprises (EGE)": {
            "Bourse": 26,
            "Aide": 75,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Création et Gestion d'Activités",
              "Appui Conseils en Gestion de la Qualité et des Innovations des produits",
              "Cabinets Conseils en Etudes de Faisabilité",
              "Cabinets Conseils en élaboration des plans d'affaires",
              "Cabinets d'Audit en Création, Gestion et Mise à niveau d'Entreprises",
              "Cabinets Conseils en Suivi et Evaluation du Développement des PME et PMI"
            ]
          },
          "Marketing et Management des Organisations (MMO)": {
            "Bourse": 15,
            "Aide": 54,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Management",
              "Cabinets Conseils en Marketing",
              "Cabinets Conseils en Communication",
              "Cabinets d'Audit en Gestion",
              "Administrations de tous Genres (Ministères, Administrations, Projets de Développement, Entreprises de tous Genres)"
            ]
          },
          "Finance et Comptabilité (FC)": {
            "Bourse": 85,
            "Aide": 300,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Finances",
              "Cabinets Conseils en Comptabilité",
              "Cabinets Conseils en Contrôle de Gestion",
              "Cabinets d'Audit en Gestion",
              "Structures Chargées des Questions Liées aux Finances (Ministères, Administrations, Projets de Développement, Entreprises de tous Genres)"
            ]
          }
        },
        "Faculté de Droit et Sciences Politiques": {
          "Droit Privé": {
            "Bourse": 111,
            "Aide": 750,
            "Matières": ["FRANCAIS", "ETUDE DE CAS", "ANGLAIS"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire"
            ]
          },
          "Droit Public": {
            "Bourse": 83,
            "Aide": 600,
            "Matières": ["FRANCAIS", "ETUDE DE CAS", "ANGLAIS"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire",
              "Attaché des services financiers",
              "Attaché des impôts",
              "Assistant Juridique"
            ]
          },
          "Sciences Politiques et Relations Internationales": {
            "Bourse": 46,
            "Aide": 165,
            "Matières": ["FRANCAIS", "ETUDE DE CAS", "ANGLAIS"],
            "Métiers": [
              "Publique et locale",
              "Diplomatie",
              "Agents des services extérieurs et diplomatique",
              "Attaché politique",
              "Attaché des services culturels",
              "Guides touristiques",
              "Conseillé politique",
              "Analyste de politique publique",
              "Lobbyiste",
              "Agents des services parlementaires",
              "Médiateur",
              "Député",
              "Agents de relation publiques",
              "Fonctionnaires"
            ]
          }
        }
      }
    },
    "G3": {
      "UAC": {
        "FLLAC (Faculté des lettres, langues, Arts et Communication)": {
          "Sciences du Langage et de la Communication": {
            "Bourse": 92,
            "Aide": 375,
            "Matières": ["ANGLAIS", "FRANCAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Didacticien de langues français et langues africaines",
              "Consultant en éducation bi-plurilingues et interculturelles"
            ]
          }
        },
        "ENEAM (Ecole Nationale d'Economie Appliquée et de Management)": {
          "Assurance": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en négoce",
              "Gestionnaire de patrimoine"
            ]
          },
          "Banque et Finanace de Marché": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en marché",
              "Négoces",
              "Gestionnaire de patrimoine et des portefeuilles"
            ]
          },
          "Banque et Institutions des Micro finances": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["MATHS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Chargés de clientèle",
              "Conseillers en marché",
              "Négoces",
              "Gestionnaire de patrimoine et des portefeuilles"
            ]
          },
          "Marketing": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Marketing et Communication Commerciale",
              "Responsable commercial",
              "Chef de produit",
              "Responsable du développement commercial",
              "Chargé d'affaires",
              "Chargé de clientèle",
              "Chargé d'étude marketing",
              "Responsable des ventes",
              "Chef de publicité",
              "Chargé des relations publiques",
              "Responsable des ventes",
              "Chef de publicité",
              "Chargé des relations publiques",
              "Média planner",
              "Chargé de communication",
              "Marketing Digital et Community Management",
              "Responsable Marketing Digital/Digital Marketing Manager",
              "Responsable de la stratégie mobile",
              "Chargé de communication Web digital / Digital brand manager",
              "Responsable marketing relationnel/CRM",
              "Marketing buisness analyst",
              "Data miner / Data analyst",
              "Chef de projet Web",
              "Responsable e-Commerce",
              "Digital planner",
              "Consultant search marketing (SEM/SEO)",
              "Community manager",
              "Chef de produit Web/Mobile",
              "Responsable de la marque en ligne",
              "Social media manager",
              "Content manager/Responsable contenu numérique",
              "Marketing et Management Commercial",
              "Chargé d'affaires",
              "Conseiller clientèle",
              "Chargé d'études commerciales",
              "Responsable d'agence commerciale",
              "Marchandiseur"
            ]
          },
          "Gestion des Ressources Humaines": {
            "Bourse": 4,
            "Aide": 2,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Gestion du personnel et des ressources humaines dans les entreprises privées et publiques"
            ]
          },
          "Gestion des Transports": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises maritimes",
              "Logistiques, les administrations"
            ]
          },
          "Gestion de Logistique": {
            "Bourse": 13,
            "Aide": 5,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": ["Agences de voyage", "Approvisionnement"]
          }
        },
        "EPA (Ecole du Patrimoine Africain)": {
          "Gestion du patrimaire culturel": {
            "Bourse": 35,
            "Aide": 10,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Droit du patrimoine",
              "Patrimoniteurs",
              "Gestionnaires de musées",
              "Communicateurs culturels"
            ]
          }
        },
        "FASHS (Faculté des Sciences Humaines et Sociales) Calavi": {
          "Socio-Anthropologie": {
            "Bourse": 44,
            "Aide": 750,
            "Matières": ["FRANCAIS", "MATHS", "ANGLAIS"],
            "Métiers": ["Centres sociaux", "Ministères", "Recherche"]
          }
        },
        "ENA (Ecole Natoinale d'Administration) Ex. ENAM": {
          "Administration Générale": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ECONIMIE"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Administration des Finances": {
            "Bourse": 77,
            "Aide": 30,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ECONIMIE"],
            "Métiers": [
              "Attaché des affaires étrangères",
              "Attaché des services administratifs",
              "Inspecteur du Travail et de la Sécurité Sociale"
            ]
          },
          "Secrétariat de Gestion": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Attaché des services administratifs (Secrétariat et assistant de Gestion)"
            ]
          },
          "Sciences et Techniques de l'Information Documentaire": {
            "Bourse": 43,
            "Aide": 17,
            "Matières": ["ANGLAIS", "FRANCAIS", "ECONIMIE"],
            "Métiers": [
              "Technicien supérieur en archivistique",
              "Technicien supérieur Documentariste"
            ]
          }
        },
        "HERCI (Haute Ecole Réginale de Commerce International)": {
          "Négoce International": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          },
          "Gestion des Relations Maritimes Internationales": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          },
          "Commerce International": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["MATHS", "ANGLAIS", "ETUDE DE CAS"],
            "Métiers": [
              "Technicien en négoce international",
              "Gestionnaire des relations",
              "Maritimes internationales",
              "Agent commercial import-export",
              "Technicien commercial",
              "Chef de produits import-export",
              "Acheteurs International",
              "Chef de zone import-export",
              "Responsable de force de vente international",
              "Courtier international"
            ]
          }
        },
        "FASEG (Faculté des Sciences Economiques et de Gestion)": {
          "Sciences Economiques et de Gestion (Tronc commun)": {
            "Bourse": 225,
            "Aide": 1740,
            "Matières": ["ETUDE DE CAS", "ECONIMIE", "FRANCAIS"],
            "Métiers": [
              "Services déconcentrés de l'Etat, Collectivités locales, associations et ONG",
              "Analystes, statisticiens, Comptable",
              "Planificateur et Gestion des Ressources financières",
              "Statistique agricole",
              "Analyse des projets agricoles",
              "Services financiers des collectivités locales",
              "Gestion des structures de microfinance",
              "Chargé des études et de la prospective économique des collectivités",
              "Economiste de marché",
              "Conseiller économique",
              "Conseiller en Microfinance",
              "Economiste/stratégiste bancaire",
              "Entrepreneur",
              "Gestioinnaire des PME",
              "Agent de banque",
              "Comptable dans les service financiers",
              "Assistant Auditeur",
              "Agent de banque, d'assurance"
            ]
          },
          "Sciences et Techiques Comptables et Financières (STCF)": {
            "Bourse": 9,
            "Aide": 30,
            "Matières": ["ETUDE DE CAS", "ECONIMIE", "FRANCAIS"],
            "Métiers": [
              "Audit comptable oyu financier",
              "Contrôleur interne en banque et entreprise",
              "Agent comptable"
            ]
          }
        }
      },
      "UP": {
        "IUT (Institut Universitaire de Technologie)": {
          "Gestion Commerciale": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises commerciales ou services commerciaux de tout type d'entreprise",
              "services de logistiques internationale",
              "Entreprise d'export",
              "Sociétés de transit et de manutention",
              "Banque",
              "Agence de communication",
              "Grandes entreprises de représentant commercial de chef de rayon dans le centre commercial (Supermarché)",
              "Attaché commercial de chef de produit",
              "Chargé des relations publiques",
              "Assistant de communication interne diffusant des informations à l'intérieur de l'entreprise"
            ]
          },
          "Gestion des Ressources Humaines": {
            "Bourse": 9,
            "Aide": 3,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Entreprises",
              "Assurance",
              "Administrations",
              "Organisations",
              "ONG"
            ]
          }
        },
        "FASEG (Faculté de Sciences Economiques et de Gestion)": {
          "Analyse et Politique Economiques (APE)": {
            "Bourse": 26,
            "Aide": 60,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Economie Agricole (EA)": {
            "Bourse": 62,
            "Aide": 120,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Economie et Finance des Collectivités Locales (EFCL)": {
            "Bourse": 26,
            "Aide": 60,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Economie et Finance des Collectivités Locales",
              "Cabinets Conseils en Projets de Développement Local",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées à la Promotion de l'Economie, Commerciales et Financières",
              "Gestion Financière de Structures Chargées des Questions Liées aux Affaires Economiques et Financières des Collectivités Territoriales Décentralisées (Ministères, Administrations, Projets de Développement, Mairies)",
              "Collectivités Territoriales Décentralisées (Ministères, Administrations, Projets de Développement, Mairies)"
            ]
          },
          "Economie et Finance Internationales (EFI)": {
            "Bourse": 34,
            "Aide": 120,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Politiques Economiques et Monétaires",
              "Cabinets Conseils en Projets de Développement",
              "Cabinets de Suivi et Evaluation de Projets de Développement",
              "Structures Chargées des Questions Liées aux Affaires Economiques, Commerciales et Financières (ONG, Ministère, Administrations, Projets de Développement, Entreprises de tous genres)"
            ]
          },
          "Entrepreneuriat et Gestion des Entreprises (EGE)": {
            "Bourse": 26,
            "Aide": 75,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Création et Gestion d'Activités",
              "Appui Conseils en Gestion de la Qualité et des Innovations des produits",
              "Cabinets Conseils en Etudes de Faisabilité",
              "Cabinets Conseils en élaboration des plans d'affaires",
              "Cabinets d'Audit en Création, Gestion et Mise à niveau d'Entreprises",
              "Cabinets Conseils en Suivi et Evaluation du Développement des PME et PMI"
            ]
          },
          "Marketing et Management des Organisations (MMO)": {
            "Bourse": 15,
            "Aide": 54,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Management",
              "Cabinets Conseils en Marketing",
              "Cabinets Conseils en Communication",
              "Cabinets d'Audit en Gestion",
              "Administrations de tous Genres (Ministères, Administrations, Projets de Développement, Entreprises de tous Genres)"
            ]
          },
          "Finance et Comptabilité (FC)": {
            "Bourse": 85,
            "Aide": 300,
            "Matières": ["ETUDE DE CAS", "FRANCAIS", "ANGLAIS"],
            "Métiers": [
              "Auto emploi",
              "Cabinets Conseils en Finances",
              "Cabinets Conseils en Comptabilité",
              "Cabinets Conseils en Contrôle de Gestion",
              "Cabinets d'Audit en Gestion",
              "Structures Chargées des Questions Liées aux Finances (Ministères, Administrations, Projets de Développement, Entreprises de tous Genres)"
            ]
          }
        },
        "Faculté de Droit et Sciences Politiques": {
          "Droit Privé": {
            "Bourse": 111,
            "Aide": 750,
            "Matières": ["FRANCAIS", "ETUDE DE CAS", "ANGLAIS"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire"
            ]
          },
          "Droit Public": {
            "Bourse": 83,
            "Aide": 600,
            "Matières": ["FRANCAIS", "ETUDE DE CAS", "ANGLAIS"],
            "Métiers": [
              "Attaché des services administratifs",
              "Juristes des affaires",
              "Greffier",
              "Collaborateurs de profession judiciaire (avocats, hussiers, notaires, commissaires-priseurs",
              "Magistrature (à condition de compléter le cycle de master)",
              "Consultant",
              "Policier",
              "Militaire",
              "Attaché des services financiers",
              "Attaché des impôts",
              "Assistant Juridique"
            ]
          },
          "Sciences Politiques et Relations Internationales": {
            "Bourse": 46,
            "Aide": 165,
            "Matières": ["FRANCAIS", "ETUDE DE CAS", "ANGLAIS"],
            "Métiers": [
              "Publique et locale",
              "Diplomatie",
              "Agents des services extérieurs et diplomatique",
              "Attaché politique",
              "Attaché des services culturels",
              "Guides touristiques",
              "Conseillé politique",
              "Analyste de politique publique",
              "Lobbyiste",
              "Agents des services parlementaires",
              "Médiateur",
              "Député",
              "Agents de relation publiques",
              "Fonctionnaires"
            ]
          }
        }
      }
    },
    "DEAT": {},
    "DT/STI": {}
  };

}
