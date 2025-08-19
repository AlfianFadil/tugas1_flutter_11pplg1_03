import 'package:flutter_application_1/models/football_model.dart';
import 'package:get/get.dart';

class FootballController extends GetxController {
  var players = <FootballPlayer>[
    FootballPlayer(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ15hk1DjoCxEruci6K6p_93KF8Xp83OKGTQ&s',
      namaOrang: 'modric',
      nomor: '10',
    ),
    FootballPlayer(
      image: 'https://hips.hearstapps.com/hmg-prod/images/cristiano-ronaldo-of-portugal-during-the-uefa-nations-news-photo-1748359673.pjpeg?crop=0.610xw:0.917xh;0.317xw,0.0829xh&resize=640:*',
      namaOrang: 'Cristiano Ronaldo',
      nomor: '7',
    ),
    FootballPlayer(
      image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.transfermarkt.co.id%2Fkylian-mbappe%2Fprofil%2Fspieler%2F342229&psig=AOvVaw0xfpo09YvM8Hrk6Kozd5DW&ust=1755700138090000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCMD5seqKl48DFQAAAAAdAAAAABAE',
      namaOrang: 'Kylian Mbappé',
      nomor: '7',
    ),
    FootballPlayer(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvI3M6gk4XcYneJDlRzT56Tj_wKyfPGFkXzg&s',
      namaOrang: 'lewandowski',
      nomor: '9',
    ),
    FootballPlayer(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnM5fh5TnPqMdAqDZQHwDwHSwHiMzzQCftNA&s',
      namaOrang: 'vinicius jr',
      nomor: '7',
    ),
  ].obs;
}