import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Markers{
  String markerName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Markers(
        {
          this.markerName,
          this.address,
          this.description,
          this.thumbNail,
          this.locationCoords});
}
final List<Markers> laundryPlaces = [
  Markers(
      markerName: 'Oficina da Roupa - Sion',
      address: 'Av. Uruguai, 241',
      description:
      'Limpeza/Lavagem de Tapetes, Cortinas, Sofás, Edredons.',
      locationCoords: LatLng(-19.949446, -43.933288),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNik76s4h-6lndw76foYLezz-s0JjctE7TZT5n8=w408-h306-k-no'
  ),
  Markers(
      markerName: 'Lavanderia Oceano',
      address: 'R. Rio Grande do Norte, 1007',
      description:
      'Lavagem de roupas em geral.',
      locationCoords: LatLng(-19.934207, -43.931409),
      thumbNail: 'https://lh3.googleusercontent.com/proxy/MXarPwLB3yI3vZIMxROCCEf1foWvcJlG_SLmpyP1kaVXmziPokDQaFUxvTVWBqmPRKGmlcjZn2r_O_8EIVceQJD05P0MFTgSU8iSTFyDB8rDGXv2IB3kQEkKihk8-MoZQ3MYdDhf33R_ec18NSYVQ6ZXzKw=w408-h306-k-no'
  ),
  Markers(
      markerName: 'Lavanderia Bonasecco',
      address: 'R. Francisco Deslandes, 133',
      description:
      'Limpeza de roupas, Restauração de cores, Higienização, Remoção de manchas, Passadoria',
      locationCoords: LatLng(-19.944923, -43.929377),
      thumbNail: 'https://geo2.ggpht.com/cbk?panoid=eQOTXG8VWmc21Zgf8sGuWw&output=thumbnail&cb_client=search.gws-prod.gps&thumb=2&w=408&h=240&yaw=74.84899&pitch=0&thumbfov=100'
  ),
  Markers(
      markerName: ' Laundromat - Lourdes',
      address: ' Av. Bias Fortes, 843',
      description:
      'Lavagem por Kuilo de roupas, Cama, Mesa, Banho ',
      locationCoords: LatLng(-19.926266, -43.942790),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipMhq34nSoJ2tVc_SQI-YgdGz5Jtjs3hNyfL3BnR=w493-h240-k-no'
  ),
  Markers(
      markerName: 'Lavanderia Mineira',
      address: 'R. Alagoas, 777',
      description:
      'Lavagem por Kuilo de roupas, Cama, Mesa, Banho ',
      locationCoords: LatLng(-19.933808, -43.935745),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipN4drW4m8E8KMzQ6etVUZwhAfSBw7hUy4MGyqiF=w472-h240-k-no'
  ),
  Markers(
      markerName: 'Eureka Lavanderia',
      address: 'R. Rubim, 111',
      description:
      'Lavagem de roupas em geral',
      locationCoords: LatLng(-19.953807, -43.930810),
      thumbNail: 'https://lh3.googleusercontent.com/proxy/e5BwdjgtFE1EDZTN6-3wMcKTD2iEdoJiDLcGFIcyqNFOuuXyAue-uL-ioKeO2hxnTCxRp2dgjLISdfEt-lKPN2s9Qemz-EI-w4L5PWRF2ShEzfqjHPuZ90Eqvs0dR5gI998ym2cUhRsCslMu3vZ8NUEXflQ=w408-h306-k-no'
  ),
  Markers(
      markerName: 'Cleanpeace Ecológica',
      address: 'R. Francisco Deslandes, 1039',
      description:
      'Lavagem de Roupas em Geral',
      locationCoords: LatLng(-19.952250, -43.926832),
      thumbNail: 'https://lh5.googleusercontent.com/proxy/IwyDanv_F5I-64ucIiOGH3JyrCQHcH-JblwZYbA5IMX3XcjPqPlPGE5X5u4lhHMxObNG-4-XmJ3wKRmyX5CxoN6pLhB_L3Sdpl94kJw4gjzHnx9aOoMWxDa0acFoDdLpD_7VeH4_4sqlVVNGXkqA_oyaqhw=w408-h306-k-no'
  ),
  Markers(
      markerName: 'Água e Sabão - Sion',
      address: 'R. Venezuela, 646',
      description:
      'Lavagem a Água e a Seco, Tingimento, Lavagem de Tapetes, Cortinas e Corporativos',
      locationCoords: LatLng(-19.953730, -43.937066),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNgYtNY0YoVx6zFh47Y-PTD5mFP0DfqFoydMw7H=w456-h240-k-no'
  ),
  Markers(
      markerName: 'Dryclean USA',
      address: 'Rua Professor Moraes, 654',
      description:
      'Lavagens especiais, Tratamento de roupas em couro, Higienizações, Lavagem de tapetes',
      locationCoords: LatLng(-19.938739, -43.931652),
      thumbNail: 'https://geo3.ggpht.com/cbk?panoid=x6ET_Ogai3AlQw2q0O7e9g&output=thumbnail&cb_client=search.gws-prod.gps&thumb=2&w=408&h=240&yaw=282.9156&pitch=0&thumbfov=100'
  ),
  Markers(
      markerName: 'LavSec Rápido',
      address: 'Rua dos Timbiras, 1264',
      description:
      'Lavagem de roupas em geral',
      locationCoords: LatLng(-19.927704, -43.934801),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNViyITG91kUYvuuyVWMs1AwE5kTbaA4sQ_8ip3=w408-h544-k-no'
  ),
  Markers(
      markerName: 'Ecodry - Savassi',
      address: 'R. Rio Grande do Norte, 893',
      description:
      'Lavagem de roupas em geral',
      locationCoords: LatLng(-19.933148, -43.931027),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipMp8fij1Bg9dNRZk1gRKM3ESTarU2LOo77-KR_L=w426-h240-k-no'
  ),
  Markers(
      markerName: 'Ecodry - Centro',
      address: 'Av. Álvares Cabral, 725',
      description:
      'Lavagem de roupas em geral',
      locationCoords: LatLng(-19.928009, -43.941377),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipOuuXMzdpF4AgS1WhfHUw7MT17Xpf4AKLmOaAOb=w408-h306-k-no'
  ),
  Markers(
      markerName: 'CBC Lavanderia',
      address: 'R. Rio Verde, 569',
      description:
      'Lavagem de estofados, Tapetes, Cortinas, Cama e Mesa, Trussardis',
      locationCoords: LatLng(-19.946300, -43.933053),
      thumbNail: 'https://geo1.ggpht.com/cbk?panoid=h_YSPdzeF292s4xya_WrCw&output=thumbnail&cb_client=search.gws-prod.gps&thumb=2&w=408&h=240&yaw=12.462216&pitch=0&thumbfov=100'
  ),
  Markers(
      markerName: '5 à Sec - Lourdes',
      address: 'R. Espírito Santo, 2488',
      description:
      'Serviços de impermeabilização, desodorizantes, bactericidas e fungicidas',
      locationCoords: LatLng(-19.936384, -43.942017),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNKpFOPXkJ3RlAespS2qFrIS2alUlO5IvoJdtbX=w408-h544-k-no'
  ),
  Markers(
      markerName: 'Ecody Lavanderia',
      address: 'Rua dos Aimorés, 416',
      description:
      'Lavagem de roupas em geral',
      locationCoords: LatLng(-19.930701, -43.928149),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipMNNFHkphjhYWeeU7Vi75hTttwjOmEd8yReWzXS=w408-h272-k-no'
  ),
  Markers(
      markerName: '5 à Sec - Savassi',
      address: 'R. Rio Grande do Norte, 1289',
      description:
      'Serviços de impermeabilização, desodorizantes, bactericidas e fungicidas',
      locationCoords: LatLng(-19.936737, -43.932142),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipP5qV_QobSkpPQX0XSu78ZZ24fsADJwcIAKNnBU=w408-h306-k-no'
  ),
  Markers(
      markerName: 'Água e Sabão - Anchieta',
      address: 'R. Francisco Deslandes, 16',
      description:
      'Lavagem a Água e a Seco, Tingimento, Lavagem de Tapetes, Cortinas e Corporativos',
      locationCoords: LatLng(-19.944278, -43.930081),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNgYtNY0YoVx6zFh47Y-PTD5mFP0DfqFoydMw7H=w456-h240-k-no'
  ),
  Markers(
      markerName: 'Água e Sabão - São Pedro',
      address: 'R. Maj. Lopes, 7',
      description:
      'Lavagem a Água e a Seco, Tingimento, Lavagem de Tapetes, Cortinas e Corporativos',
      locationCoords: LatLng(-19.941159, -43.937559),
      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNgYtNY0YoVx6zFh47Y-PTD5mFP0DfqFoydMw7H=w456-h240-k-no'
  )
];