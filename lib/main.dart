import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("Bandeiras"),
          backgroundColor: Colors.red,
        ),
        body: const DadoPagina(),
      ),
    ),
  );
}

class DadoPagina extends StatefulWidget {
  const DadoPagina({Key? key}) : super(key: key);

  @override
  State<DadoPagina> createState() => _DadoPaginaState();
}

class _DadoPaginaState extends State<DadoPagina> {
  static var pais = Random().nextInt(254) + 1;
  static var paises = <String>[
    'Andorra',//1
    'Emirados Árabes Unidos',//2
    'Afeganistão',//3
    'Antígua e Barbuda',//4
    'Anguila',//5
    'Albânia',//6
    'Armênia',//7
    'Angola',//8
    'Antártida',//9
    'Argentina',//10
    'Samoa Americana',//11
    'Áustria',//12
    'Austrália',//13
    'Aruba',//14
    'Ilhas Åland',//15
    'Azerbaijão',//16
    'Bósnia e Herzegovina',//17
    'Barbados',//18
    'Bangladesh',//19
    'Bélgica',//20
    'Burquina Fasso',//21
    'Bulgária',//22
    'Bahrein',//23
    'Burundi',//24
    'Benim',//25
    'São Bartolomeu',//26
    'Bermudas',//27
    'Brunei',//28
    'Bolívia',//29
    'Bonaire',//30
    'Brasil',//31
    'Bahamas',//32
    'Butão',//33
    'Noruega',//34
    'Botswana',//35
    'Bielorrússia',//36
    'Belize',//37
    'Canadá',//38
    'Ilhas Cocos',//39
    'República Democrática do Congo',//40
    'República Centro-Africana',//41
    'Republica do Congo',//42
    'Suíça',//43
    'Costa do Marfim',//44
    'Ilhas Cook',//45
    'Chile',//46
    'Camarões',//47
    'China',//48
    'Colômbia',//49
    'Costa Rica',//50
    'Cuba',//51
    'Cabo Verde',//52
    'Curaçau',//53
    'Ilha Christmas',//54
    'Chipre',//55
    'República Checa',//56
    'Alemanha',//57
    'Djibouti',//58
    'Dinamarca',//59
    'Dominica',//60
    'República Dominicana',//61
    'Argélia',//62
    'Equador',//63
    'Estónia',//64
    'Egito',//65
    'República Árabe Saaraui Democrática',//66
    'Eritreia',//67
    'Espanha',//68
    'Etiópia',//69
    'Finlândia',//70
    'Fiji',//71
    'Ilhas Malvinas',//72
    'Somália',//73
    'Ilhas Faroé',//74
    'França',//75
    'Gabão',//76
    'Inglaterra',//77
    'Irlanda do Norte',//78
    'Escócia',//79
    'País de Gales',//80
    'Reino Unido',//81
    'Granada',//82
    'Geórgia',//83
    'Guiana Francesa',//84
    'Guernsey',//85
    'Gana',//86
    'Gibraltar',//87
    'Gronelândia',//88
    'Gâmbia',//89
    'Guiné',//90
    'Guadalupe',//91
    'Guiné Equatorial',//92
    'Grécia',//93
    'Ilhas Geórgia do Sul e Sandwich do Sul',//94
    'Guatemala',//95
    'Guam',//96
    'Guiné-Bissau',//97
    'Guiana',//98
    'Hong Kong',//99
    'Austrália',//100
    'Honduras',//101
    'Croácia',//102
    'Haiti',//103
    'Hungria',//104
    'Indonésia',//105
    'República da Irlanda',//106
    'Israel',//107
    'Ilha de Man',//108
    'Índia',//109
    'Território Britânico do Oceano Indico',//110
    'Iraque',//111
    'Irã',//112
    'Islândia',//113
    'Itália',//114
    'Jérsei',//115
    'Jamaica',//116
    'Jordânia',//117
    'Japão',//118
    'Quênia',//119
    'Quirguistão',//120
    'Camboja',//121
    'Kiribati',//122
    'Comores',//123
    'São Cristóvão e Nevis',//124
    'Coreia do Norte',//125
    'Coreia do Sul',//126
    'Kuwait',//127
    'Ilhas Cayman',//128
    'Cazaquistão',//129
    'Laos',//130
    'Libano',//131
    'Santa Lúcia',//132
    'Liechtenstein',//133
    'Sri Lanka',//134
    'Libéria',//135
    'Lesoto',//136
    'Lituânia',//137
    'Luxemburgo',//138
    'Letônia',//139
    'Líbia',//140
    'Marrocos',//141
    'Mônaco',//142
    'Moldávia',//143
    'Montenegro',//144
    'São Martinho',//145
    'Madagascar',//146
    'Ilhas Marshall',//147
    'Macedônia do Norte',//148
    'Mali',//149
    'Mianmar',//150
    'Mongólia',//151
    'Macau',//152
    'Ilhas Marianas Setentrionais',//153
    'Martinica',//154
    'Mauritânia',//155
    'Montserrat',//156
    'Malta',//157
    'Maurício',//158
    'Maldivas',//159
    'Malawí',//160
    'México',//161
    'Malásia',//162
    'Moçambique',//163
    'Namíbia',//164
    'Nova Caledônia',//165
    'Niger',//166
    'Ilha Norfolk',//167
    'Nigéria',//168
    'Nicarágua',//169
    'Países Baixos',//170
    'Noruega',//171
    'Nepal',//172
    'Nauru',//173
    'Niue',//174
    'Nova Zelândia',//175
    'Omã',//176
    'Panamá',//177
    'Peru',//178
    'Polinésia Francesa',//179
    'Papua Nova Guiné',//180
    'Filipinas',//181
    'Paquistão',//182
    'Polônia',//183
    'São Pedro e Miquelão',//184
    'Ilhas Pitcairn',//185
    'Porto Rico',//186
    'Palestina',//187
    'Portugal',//188
    'Palau',//189
    'Paraguai',//190
    'Catar',//191
    'Reunião',//192
    'Romênia',//193
    'Sérvia',//194
    'Rússia',//195
    'Ruanda',//196
    'Arábia Saudita',//197
    'Ilhas Salomão',//198
    'Seichelles',//199
    'Sudão',//200
    'Suécia',//201
    'Singapura',//202
    'Santa Helena',//203
    'Eslovênia',//204
    'Noruega',//205
    'Eslováquia',//206
    'Serra Leoa',//207
    'San Marino',//208
    'Senegal',//209
    'Somália',//210
    'Suriname',//211
    'Sudão do Sul',//212
    'São Tomé e Príncipe',//213
    'El Salvador',//214
    'São Martinho',//215
    'Síria',//216
    'Essuatíni',//217
    'Ilhas Turcas e Caicos',//218
    'Chade',//219
    'Terras Austrais e Antárticas Francesas',//220
    'Togo',//221
    'Tailândia',//222
    'Tajiquistão',//223
    'Toquelau',//224
    'Timor-Leste',//225
    'Turcomenistão',//226
    'Tunísia',//227
    'Tonga',//228
    'Turquia',//229
    'Trinidad e Tobago',//230
    'Tuvalu',//231
    'Taiwan',//232
    'Tanzânia',//233
    'Ucrânia',//234
    'Uganda',//235
    'Ilhas Menores Distantes dos Estados Unidos',//236
    'Estados Unidos',//237
    'Uruguai',//238
    'Uzbequistão',//239
    'Vaticano',//240
    'São Vicente e Granadinas',//241
    'Venezuela',//242
    'Ilhas Virgens',//243
    'Ilhas Virgens Americanas',//244
    'Vietnã',//245
    'Vanuatu',//246
    'Wallis e Futuna',//247
    'Samoa',//248
    'Kosovo',//249
    'Iêmen',//250
    'Maiote',//251
    'África do Sul',//252
    'Zâmbia',//253
    'Zimbábue',//254
  ];
  var atual = paises[pais-1];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Image.asset("images/$pais.png"),
        ),
        Text(
          "$atual",
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // background
              foregroundColor: Colors.white, // foreground
            ),
            onPressed: () {
              setState(() {
                pais = Random().nextInt(254) + 1;
                atual = paises[pais-1];
              });
            },
            child: const Text("Trocar País"))
      ],
    );
  }
}
