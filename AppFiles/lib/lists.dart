import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Lists
{
  late Widget t;
  late Color bb,bg;
  List<String> play_anger = ['https://cdn.pixabay.com/audio/2020/11/10/audio_547ebbf828.mp3',
    'https://cdn.pixabay.com/audio/2021/06/07/audio_ee87570f18.mp3',
    'https://cdn.pixabay.com/audio/2021/02/16/audio_b2b558e546.mp3',
    'https://cdn.pixabay.com/audio/2021/04/17/audio_80cb5c8dbb.mp3',
    'https://cdn.pixabay.com/audio/2020/09/19/audio_d21d10f337.mp3',
    'https://cdn.pixabay.com/audio/2020/10/16/audio_c2b0a4e9f0.mp3'];
  List<String> play_bored = ['https://cdn.pixabay.com/audio/2021/04/06/audio_e2c7bd1665.mp3',
    'https://cdn.pixabay.com/audio/2020/12/24/audio_daf04da20f.mp3',
    'https://cdn.pixabay.com/audio/2021/04/01/audio_60b109ce45.mp3',
    'https://cdn.pixabay.com/audio/2021/01/12/audio_9cf5467b75.mp3',
    'https://cdn.pixabay.com/audio/2021/01/26/audio_55b8e78a58.mp3'];
  List<String> play_sad = ['https://cdn.pixabay.com/audio/2021/04/03/audio_dd7c2d159a.mp3',
    'https://cdn.pixabay.com/audio/2021/06/07/audio_cdfb955189.mp3',
    'https://cdn.pixabay.com/audio/2021/05/27/audio_79b99b216e.mp3',
    'https://cdn.pixabay.com/audio/2021/04/07/audio_60a6b1f99c.mp3',
    'https://cdn.pixabay.com/audio/2021/04/03/audio_fdf057c3e4.mp3'];
  List<String> play_happy = ['https://cdn.pixabay.com/audio/2021/04/07/audio_8ed06844ef.mp3',
    'https://cdn.pixabay.com/audio/2020/10/11/audio_fe4d3bcac9.mp3',
    'https://cdn.pixabay.com/audio/2020/10/11/audio_fe4d3bcac9.mp3',
    'https://cdn.pixabay.com/audio/2021/06/28/audio_98187d6424.mp3',
    'https://cdn.pixabay.com/audio/2021/06/09/audio_28eed94504.mp3'];
  List<String> play_anx = ['https://cdn.pixabay.com/audio/2021/04/21/audio_1897ccbea1.mp3',
    'https://cdn.pixabay.com/audio/2021/06/09/audio_9f2343ccd2.mp3',
    'https://cdn.pixabay.com/audio/2021/01/15/audio_699647c007.mp3',
    'https://cdn.pixabay.com/audio/2021/05/21/audio_df17eff95a.mp3',
    'https://cdn.pixabay.com/audio/2021/04/07/audio_33250ce068.mp3'];
  List<String> img_anger = ['https://i.pinimg.com/originals/9e/29/12/9e2912a9a9e0d94eaa8eb94688a22aa3.jpg',
    'https://www.rd.com/wp-content/uploads/2015/12/CalmQuotes-5.jpg',
    'https://i.pinimg.com/originals/8b/31/87/8b318733991760302fa38cb758489e2d.png',
    'https://www.success.com/wp-content/uploads/legacy/sites/default/files/2_10.jpg',
    'https://www.success.com/wp-content/uploads/legacy/sites/default/files/7_9.jpg',
    'https://1.bp.blogspot.com/-djfKL85JDY0/Xv9J5xDGV4I/AAAAAAAAwoI/1MKzufzR9r4GRoyTMmKz8lGVBwhTtUVLwCLcBGAsYHQ/s1600/Comforting-quotes-that-will-inspire-you-in-life-hard-times%2B%25282%2529-min.jpg'];
  List<String> img_bored = ['https://images.hindustantimes.com/rf/image_size_630x354/HT/p2/2020/07/02/Pictures/_3e51bfa4-bc40-11ea-8289-eb9e57c07d2f.jpg',
    'https://www.rd.com/wp-content/uploads/2020/11/What-am-i-riddle-1.jpg',
    'https://www.greetingcardpoet.com/wp-content/uploads/2020/11/adult-riddles-vertical-2.jpg',
    'https://funandlames.com/wp-content/uploads/2021/05/What-is-as-big-as-Eiffel-Tower-but-weighs-nothing-at-all-Fun-and-Lames.png',
    'https://1.bp.blogspot.com/--6MSf7hkqxQ/WfHKM7gT5fI/AAAAAAABV2o/bOVgH224ZXkI9MNolNHtS5MmnpWjxZkHQCLcBGAs/s1600/easy-riddle-for-kids.jpg'];
  List<String> img_sad = ['https://i.pinimg.com/736x/03/0f/d9/030fd940ee74ccf5062abc27a25bcfd5.jpg',
    'https://thumbs.dreamstime.com/b/inspirational-quotes-best-view-comes-hardest-climb-inspirational-quotes-life-quote-130362922.jpg',
    'https://www.success.com/wp-content/uploads/legacy/sites/default/files/new2.jpg',
    'https://www.thehealthy.com/wp-content/uploads/2020/08/Inspirational-Quotes_00.jpg?fit=700,700',
    'https://www.success.com/wp-content/uploads/legacy/sites/default/files/15_15.jpg'];
  List<String> img_happy = ['http://img.picturequotes.com/2/607/606916/thought-provoking-quote-9-picture-quote-1.jpg',
    'https://cdn.quotesgram.com/img/30/54/1711881311-Philosophical-Quotes-Thought-Provoking-Sayings-sometimes-its-necessary-.jpg',
    'https://addicted2success.com/wp-content/uploads/2014/02/Life-True-How-Picture-Quote.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT89hdhXWr0iYVCbuW8R_TS5sCwkj2JnbMBbA&usqp=CAU',
    'https://cdn.wealthygorilla.com/wp-content/uploads/2016/11/Thought-Provoking-Picture-Quotes-8.jpg'];
  List<String> img_anx = ['http://messages.365greetings.com/wp-content/uploads/2018/06/comforting-quotes-02.jpg',
    'https://www.wisefamousquotes.com/images/consoling-death-quotes-by-maya-angelou-2127582.jpg',
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/comforting-quotes-charlotte-bronte-1585685250.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB-R_ELX5dVW7ERj_gsmTuyweMY7RYoEOEgw&usqp=CAU',
    'https://i.pinimg.com/236x/1b/6d/64/1b6d64584af23c77239b6763d9ec409c.jpg'];
  Random random = new Random();
  String aud='';
  String img='';
  Lists(int n)
  {
    Map<int, Color> white = {500:Color.fromARGB(255,255, 255, 255)};
    Map<int, Color> black = {500:Color.fromARGB(255,0, 0, 0)};
    switch(n)
    {
      case 1: aud = play_anger[random.nextInt(play_anger.length)];
      img = img_anger[random.nextInt(img_anger.length)];
      t = Text(
          "Feel The Calm",
          style: TextStyle(color: Colors.white));
      bg = Colors.blue;
      bb = Colors.white;
      break;
      case 2: aud = play_bored[random.nextInt(play_bored.length)];
      img = img_bored[random.nextInt(img_bored.length)];
      t = Text(
          "Solve This",
          style: TextStyle(color: Colors.yellow));
      bg = Colors.red;
      bb = Colors.yellow;
      break;
      case 3: aud = play_sad[random.nextInt(play_sad.length)];
      img = img_sad[random.nextInt(img_sad.length)];
      t = Text(
          "It's Okay",
          style: TextStyle(color: Colors.black));
      bg = Colors.yellow;
      bb = Colors.black;
      break;
      case 4: aud = play_happy[random.nextInt(play_happy.length)];
      img = img_happy[random.nextInt(img_happy.length)];
      t = Text(
          "Reflect On It",
          style: TextStyle(color: Colors.yellow));
      bg = Colors.green;
      bb = Colors.yellow;
      break;
      case 5: aud = play_anx[random.nextInt(play_anx.length)];
      img = img_anx[random.nextInt(img_anx.length )];
      t = Text(
          "This Feeling Will Pass",
          style: TextStyle(color: Colors.black));
      bb = Colors.black;
      bg = Colors.white;
      break;
    }
  }
}