import 'package:flutter/material.dart';
import '../models/worldcup.dart';

final List<WorldCupEdition> allEditions = [

  // ── 1930 乌拉圭 ─────────────────────────────────────────────
  WorldCupEdition(
    year: 1930, host: '乌拉圭', hostFlag: '🇺🇾',
    dates: '1930.07.13 – 07.30',
    champion: '乌拉圭', runnerUp: '阿根廷', third: '美国', fourth: '南斯拉夫',
    teams: 13, matches: 18, totalGoals: 70,
    topScorer: '吉列尔莫·斯塔比莱（阿根廷）', topScorerGoals: '8球',
    imageAsset: 'assets/images/wc_1930.jpg',
    primaryColor: Color(0xFF1565C0), accentColor: Color(0xFFFDD835),
    summary: '首届FIFA世界杯在乌拉圭举行，恰逢该国独立100周年。由于远渡重洋耗时耗力，仅13支球队参赛，欧洲只有4队出席。乌拉圭以东道主之力在决赛4:2击败劲敌阿根廷，捧得首座雷米特杯。',
    legendaryMoment: '决赛下半场乌拉圭3球落后后奋力追至4:2，东道主世纪大逆转成为足球史上的传奇。',
    topTeams: [
      TeamInfo(name: '乌拉圭', nameEn: 'Uruguay', flag: '🇺🇾', group: 'A组', groupResult: '全胜晋级', keyPlayers: ['赫克托尔·卡斯特罗', '佩德罗·塞亚', '安德拉达']),
      TeamInfo(name: '阿根廷', nameEn: 'Argentina', flag: '🇦🇷', group: 'B组', groupResult: '全胜晋级', keyPlayers: ['吉列尔莫·斯塔比莱', '费雷拉', '佩乌塞勒']),
    ],
    keyMatches: [
      MatchResult(round: '小组赛', team1: '法国', team2: '墨西哥', score: '4-1', date: '1930.07.13', venue: '蒙得维的亚', highlight: '世界杯历史第一场比赛'),
      MatchResult(round: '半决赛', team1: '乌拉圭', team2: '南斯拉夫', score: '6-1', date: '1930.07.27', venue: '世纪体育场'),
      MatchResult(round: '半决赛', team1: '阿根廷', team2: '美国', score: '6-1', date: '1930.07.26', venue: '蒙得维的亚'),
      MatchResult(round: '决赛', team1: '乌拉圭', team2: '阿根廷', score: '4-2', date: '1930.07.30', venue: '世纪体育场（蒙得维的亚）', highlight: '首届世界杯决赛，乌拉圭上半场1-2落后后完成大逆转'),
    ],
  ),

  // ── 1934 意大利 ─────────────────────────────────────────────
  WorldCupEdition(
    year: 1934, host: '意大利', hostFlag: '🇮🇹',
    dates: '1934.05.27 – 06.10',
    champion: '意大利', runnerUp: '捷克斯洛伐克', third: '德国', fourth: '奥地利',
    teams: 16, matches: 17, totalGoals: 70,
    topScorer: '奥尔多·内西（意大利）', topScorerGoals: '5球',
    imageAsset: 'assets/images/wc_1930.jpg',
    primaryColor: Color(0xFF1565C0), accentColor: Color(0xFFE53935),
    summary: '首次实行淘汰赛制，卫冕冠军乌拉圭因不满欧洲球队缺席1930年而拒绝参赛。墨索里尼政府将此届世界杯作为法西斯宣传工具，意大利最终在主场夺冠，但赛事笼罩在政治压力之下。',
    legendaryMoment: '决赛加时赛，意大利前锋安杰洛·斯基亚维奥打入制胜球，2:1击败捷克斯洛伐克。',
    topTeams: [
      TeamInfo(name: '意大利', nameEn: 'Italy', flag: '🇮🇹', group: '淘汰赛', groupResult: '五连胜夺冠', keyPlayers: ['朱塞佩·梅阿扎', '西尔维奥·皮奥拉', '安杰洛·斯基亚维奥']),
    ],
    keyMatches: [
      MatchResult(round: '半决赛', team1: '意大利', team2: '奥地利', score: '1-0', date: '1934.06.03', venue: '米兰'),
      MatchResult(round: '决赛', team1: '意大利', team2: '捷克斯洛伐克', score: '2-1(加时)', date: '1934.06.10', venue: '罗马奥林匹克球场', highlight: '加时赛决出胜负，意大利首次夺冠'),
    ],
  ),

  // ── 1938 法国 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 1938, host: '法国', hostFlag: '🇫🇷',
    dates: '1938.06.04 – 06.19',
    champion: '意大利', runnerUp: '匈牙利', third: '巴西', fourth: '瑞典',
    teams: 15, matches: 18, totalGoals: 84,
    topScorer: '莱奥尼达斯（巴西）', topScorerGoals: '8球',
    imageAsset: 'assets/images/wc_1930.jpg',
    primaryColor: Color(0xFF0D47A1), accentColor: Color(0xFFFFFFFF),
    summary: '二战爆发前的最后一届世界杯，意大利成功卫冕，成为首支蝉联冠军的球队。阿根廷和乌拉圭因争夺主办权失败而退赛。赛事结束仅14个月后，欧洲便陷入战火，世界杯随之中断12年。',
    legendaryMoment: '巴西前锋莱奥尼达斯首创倒挂金钩进球，惊艳世人，但巴西在半决赛负于意大利。',
    topTeams: [
      TeamInfo(name: '意大利', nameEn: 'Italy', flag: '🇮🇹', group: '淘汰赛', groupResult: '卫冕夺冠', keyPlayers: ['朱塞佩·梅阿扎', '西尔维奥·皮奥拉']),
      TeamInfo(name: '巴西', nameEn: 'Brazil', flag: '🇧🇷', group: '淘汰赛', groupResult: '半决赛出局', keyPlayers: ['莱奥尼达斯', '罗伯托']),
    ],
    keyMatches: [
      MatchResult(round: '决赛', team1: '意大利', team2: '匈牙利', score: '4-2', date: '1938.06.19', venue: '巴黎王子公园球场', highlight: '意大利蝉联冠军，成就连霸伟业'),
    ],
  ),

  // ── 1950 巴西 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 1950, host: '巴西', hostFlag: '🇧🇷',
    dates: '1950.06.24 – 07.16',
    champion: '乌拉圭', runnerUp: '巴西', third: '瑞典', fourth: '西班牙',
    teams: 13, matches: 22, totalGoals: 88,
    topScorer: '阿德米尔（巴西）', topScorerGoals: '9球',
    imageAsset: 'assets/images/wc_1950.jpg',
    primaryColor: Color(0xFF2E7D32), accentColor: Color(0xFFFDD835),
    summary: '二战后复办，采用独特的决赛循环赛制。巴西在马拉卡纳球场的"世纪大悲剧"（Maracanazo）：面对近20万球迷，在决赛只需平局即可夺冠的情况下，被乌拉圭2:1逆转，全国陷入哀恸。',
    legendaryMoment: '决赛圈末轮：巴西1:1被乌拉圭追平后，希盖塔独中两元完成逆转，马拉卡纳球场寂静如死，这场"世纪大悲剧"成为足球史上最震撼的结局之一。',
    topTeams: [
      TeamInfo(name: '乌拉圭', nameEn: 'Uruguay', flag: '🇺🇾', group: '决赛循环', groupResult: '终轮1胜夺冠', keyPlayers: ['胡安·斯基亚菲诺', '阿尔西德斯·希盖塔']),
      TeamInfo(name: '巴西', nameEn: 'Brazil', flag: '🇧🇷', group: '决赛循环', groupResult: '平局憾负', keyPlayers: ['阿德米尔', '西扎', '莱昂尼达斯']),
    ],
    keyMatches: [
      MatchResult(round: '决赛圈', team1: '巴西', team2: '西班牙', score: '6-1', date: '1950.07.13', venue: '马拉卡纳球场'),
      MatchResult(round: '决赛圈', team1: '乌拉圭', team2: '巴西', score: '2-1', date: '1950.07.16', venue: '马拉卡纳球场（里约热内卢）', highlight: 'Maracanazo 世纪大悲剧，近20万观众见证巴西梦碎'),
    ],
  ),

  // ── 1954 瑞士 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 1954, host: '瑞士', hostFlag: '🇨🇭',
    dates: '1954.06.16 – 07.04',
    champion: '西德', runnerUp: '匈牙利', third: '奥地利', fourth: '乌拉圭',
    teams: 16, matches: 26, totalGoals: 140,
    topScorer: '桑德尔·科奇什（匈牙利）', topScorerGoals: '11球',
    imageAsset: 'assets/images/wc_1930.jpg',
    primaryColor: Color(0xFFC62828), accentColor: Color(0xFFFFFFFF),
    summary: '进球率最高的一届（平均5.38球/场）。被誉为"世纪梦队"的匈牙利以32场不败之姿参赛，小组赛8:3大胜西德，却在决赛被西德3:2逆转——"伯尔尼奇迹"让战后西德重新燃起民族自信。',
    legendaryMoment: '"伯尔尼奇迹"：西德前锋赫尔穆特·拉恩在决赛补时前6分钟射入制胜球，以3:2逆转匈牙利，缔造足球史上最惊天的爆冷。',
    topTeams: [
      TeamInfo(name: '西德', nameEn: 'West Germany', flag: '🇩🇪', group: '淘汰赛', groupResult: '爆冷夺冠', keyPlayers: ['赫尔穆特·拉恩', '弗里茨·瓦尔特', '泰纳']),
      TeamInfo(name: '匈牙利', nameEn: 'Hungary', flag: '🇭🇺', group: '淘汰赛', groupResult: '决赛惜败', keyPlayers: ['费伦茨·普斯卡什', '桑德尔·科奇什', '南多尔·希德古提']),
    ],
    keyMatches: [
      MatchResult(round: '小组赛', team1: '匈牙利', team2: '西德', score: '8-3', date: '1954.06.17', venue: '巴塞尔'),
      MatchResult(round: '决赛', team1: '西德', team2: '匈牙利', score: '3-2', date: '1954.07.04', venue: '伯尔尼万斯多夫球场', highlight: '"伯尔尼奇迹"，西德逆转匈牙利，戴帽后闪耀全球'),
    ],
  ),

  // ── 1958 瑞典 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 1958, host: '瑞典', hostFlag: '🇸🇪',
    dates: '1958.06.08 – 06.29',
    champion: '巴西', runnerUp: '瑞典', third: '法国', fourth: '西德',
    teams: 16, matches: 35, totalGoals: 126,
    topScorer: '赛斯特（法国）', topScorerGoals: '13球',
    imageAsset: 'assets/images/wc_1958.jpg',
    primaryColor: Color(0xFF1B5E20), accentColor: Color(0xFFFDD835),
    summary: '17岁的贝利横空出世，成为世界杯历史上最年轻的进球者和最年轻的冠军成员。巴西以华丽的"桑巴足球"横扫欧洲，5:2大败东道主瑞典，首捧世界杯。',
    legendaryMoment: '贝利在半决赛对法国攻入帽子戏法，决赛对瑞典梅开二度，成为世界上最年轻的世界杯冠军成员（17岁零249天）。',
    topTeams: [
      TeamInfo(name: '巴西', nameEn: 'Brazil', flag: '🇧🇷', group: 'C组', groupResult: '不败夺冠', keyPlayers: ['贝利', '加林查', '瓦瓦', '贝利尼']),
      TeamInfo(name: '法国', nameEn: 'France', flag: '🇫🇷', group: 'B组', groupResult: '第三名', keyPlayers: ['赛斯特', '科帕', '约凡诺维奇']),
    ],
    keyMatches: [
      MatchResult(round: '半决赛', team1: '巴西', team2: '法国', score: '5-2', date: '1958.06.24', venue: '斯德哥尔摩', highlight: '17岁贝利打入帽子戏法'),
      MatchResult(round: '决赛', team1: '巴西', team2: '瑞典', score: '5-2', date: '1958.06.29', venue: '斯德哥尔摩拉松达球场', highlight: '贝利梅开二度，巴西首夺世界杯'),
    ],
  ),

  // ── 1962 智利 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 1962, host: '智利', hostFlag: '🇨🇱',
    dates: '1962.05.30 – 06.17',
    champion: '巴西', runnerUp: '捷克斯洛伐克', third: '智利', fourth: '南斯拉夫',
    teams: 16, matches: 32, totalGoals: 89,
    topScorer: '多人并列', topScorerGoals: '4球',
    imageAsset: 'assets/images/wc_1930.jpg',
    primaryColor: Color(0xFFB71C1C), accentColor: Color(0xFFFFFFFF),
    summary: '史上最混乱的一届，智利对意大利的"圣地亚哥之战"被称为史上最暴力比赛。贝利因伤仅打2场，加林查独挑大梁率巴西卫冕。东道主智利杀入半决赛，创造奇迹。',
    legendaryMoment: '"圣地亚哥之战"：智利vs意大利，仅开场13分钟就有球员被驱逐，随后爆发群殴，被誉为世界杯史上最暴力的比赛。',
    topTeams: [
      TeamInfo(name: '巴西', nameEn: 'Brazil', flag: '🇧🇷', group: 'A组', groupResult: '卫冕', keyPlayers: ['加林查', '瓦瓦', '扎加洛']),
    ],
    keyMatches: [
      MatchResult(round: '决赛', team1: '巴西', team2: '捷克斯洛伐克', score: '3-1', date: '1962.06.17', venue: '圣地亚哥国家体育场', highlight: '巴西成功卫冕，连续两届称霸'),
    ],
  ),

  // ── 1966 英格兰 ──────────────────────────────────────────────
  WorldCupEdition(
    year: 1966, host: '英格兰', hostFlag: '🏴󠁧󠁢󠁥󠁮󠁧󠁿',
    dates: '1966.07.11 – 07.30',
    champion: '英格兰', runnerUp: '西德', third: '葡萄牙', fourth: '苏联',
    teams: 16, matches: 32, totalGoals: 89,
    topScorer: '尤西比奥（葡萄牙）', topScorerGoals: '9球',
    imageAsset: 'assets/images/wc_1966.jpg',
    primaryColor: Color(0xFFC62828), accentColor: Color(0xFFFFFFFF),
    summary: '英格兰唯一一次世界杯冠军。决赛对西德，博比·摩尔率队3:2击败劲敌，并在温布利球场高举雷米特杯。赛前，雷米特杯竟遭盗窃，幸被一只名叫"拾穗"的小狗找回，成为历史趣谈。',
    legendaryMoment: '决赛加时赛中赫斯特的第三粒进球——皮球撞门框弹出，裁判组认定越过门线，争议至今未息，但英格兰因此夺冠。',
    topTeams: [
      TeamInfo(name: '英格兰', nameEn: 'England', flag: '🏴󠁧󠁢󠁥󠁮󠁧󠁿', group: 'A组', groupResult: '主场夺冠', keyPlayers: ['博比·查尔顿', '吉奥夫·赫斯特', '博比·摩尔']),
      TeamInfo(name: '葡萄牙', nameEn: 'Portugal', flag: '🇵🇹', group: 'C组', groupResult: '第三名', keyPlayers: ['尤西比奥', '托雷斯', '科洛纳']),
    ],
    keyMatches: [
      MatchResult(round: '小组赛', team1: '朝鲜', team2: '意大利', score: '1-0', date: '1966.07.19', venue: '米德尔斯堡', highlight: '最大冷门：朝鲜1-0淘汰意大利'),
      MatchResult(round: '四分之一决赛', team1: '葡萄牙', team2: '朝鲜', score: '5-3', date: '1966.07.23', venue: '埃弗顿', highlight: '朝鲜0:3落后后追至3:3，尤西比奥独造4球完成逆转'),
      MatchResult(round: '决赛', team1: '英格兰', team2: '西德', score: '4-2(加时)', date: '1966.07.30', venue: '温布利球场', highlight: '赫斯特成为决赛唯一帽子戏法完成者'),
    ],
  ),

  // ── 1970 墨西哥 ──────────────────────────────────────────────
  WorldCupEdition(
    year: 1970, host: '墨西哥', hostFlag: '🇲🇽',
    dates: '1970.05.31 – 06.21',
    champion: '巴西', runnerUp: '意大利', third: '西德', fourth: '乌拉圭',
    teams: 16, matches: 32, totalGoals: 95,
    topScorer: '格尔德·穆勒（西德）', topScorerGoals: '10球',
    imageAsset: 'assets/images/wc_1970.jpg',
    primaryColor: Color(0xFF1B5E20), accentColor: Color(0xFF4CAF50),
    summary: '史上公认最精彩的世界杯之一，首届彩色电视转播。贝利领衔的巴西以4:1大胜意大利夺冠，永久拥有雷米特杯。西德vs意大利半决赛5:4被称为"世纪之战"。',
    legendaryMoment: '"世纪之战"：西德与意大利半决赛，赛前各90+30分钟内5次交替领先，最终意大利4:3险胜，全场进5球史称世纪之战。',
    topTeams: [
      TeamInfo(name: '巴西', nameEn: 'Brazil', flag: '🇧🇷', group: 'C组', groupResult: '不败夺冠', keyPlayers: ['贝利', '托斯唐', '贾宙马·里维利诺', '克洛多阿尔多']),
      TeamInfo(name: '西德', nameEn: 'West Germany', flag: '🇩🇪', group: 'D组', groupResult: '第三名', keyPlayers: ['格尔德·穆勒', '弗朗茨·贝肯鲍尔', '泽普·迈尔']),
    ],
    keyMatches: [
      MatchResult(round: '半决赛', team1: '意大利', team2: '西德', score: '4-3(加时)', date: '1970.06.17', venue: '阿兹特克球场（墨西哥城）', highlight: '"世纪之战"，共7球5次换分，史上最精彩半决赛'),
      MatchResult(round: '决赛', team1: '巴西', team2: '意大利', score: '4-1', date: '1970.06.21', venue: '阿兹特克球场', highlight: '贝利打入第一粒进球，巴西第三次夺冠永久拥有雷米特杯'),
    ],
  ),

  // ── 1974 西德 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 1974, host: '西德', hostFlag: '🇩🇪',
    dates: '1974.06.13 – 07.07',
    champion: '西德', runnerUp: '荷兰', third: '波兰', fourth: '巴西',
    teams: 16, matches: 38, totalGoals: 97,
    topScorer: '格尔德·穆勒（西德）', topScorerGoals: '4球',
    imageAsset: 'assets/images/wc_1974.jpg',
    primaryColor: Color(0xFF212121), accentColor: Color(0xFFE53935),
    summary: '荷兰"全攻全守"足球横扫八方，克鲁伊夫大师创造"克鲁伊夫转身"。决赛首分钟荷兰获点球，未等西德触球已1:0领先，但最终西德2:1逆转捧杯。雷米特杯引退，大力神杯首次颁出。',
    legendaryMoment: '"克鲁伊夫转身"：荷兰灵魂球星约翰·克鲁伊夫在小组赛中一个神来之笔的假动作，骗过后卫后连同大名成为足球文化符号。',
    topTeams: [
      TeamInfo(name: '西德', nameEn: 'West Germany', flag: '🇩🇪', group: '第二组', groupResult: '主场夺冠', keyPlayers: ['弗朗茨·贝肯鲍尔', '格尔德·穆勒', '泽普·迈尔']),
      TeamInfo(name: '荷兰', nameEn: 'Netherlands', flag: '🇳🇱', group: '第三组', groupResult: '亚军', keyPlayers: ['约翰·克鲁伊夫', '内斯肯斯', '雷普']),
    ],
    keyMatches: [
      MatchResult(round: '小组赛', team1: '西德', team2: '东德', score: '0-1', date: '1974.06.22', venue: '汉堡', highlight: '东西德唯一一次交锋，东德爆冷胜出'),
      MatchResult(round: '决赛', team1: '西德', team2: '荷兰', score: '2-1', date: '1974.07.07', venue: '慕尼黑奥林匹克体育场', highlight: '首次颁出大力神杯，西德完成主场卫冕式夺冠'),
    ],
  ),

  // ── 1978 阿根廷 ──────────────────────────────────────────────
  WorldCupEdition(
    year: 1978, host: '阿根廷', hostFlag: '🇦🇷',
    dates: '1978.06.01 – 06.25',
    champion: '阿根廷', runnerUp: '荷兰', third: '巴西', fourth: '意大利',
    teams: 16, matches: 38, totalGoals: 102,
    topScorer: '马里奥·肯佩斯（阿根廷）', topScorerGoals: '6球',
    imageAsset: 'assets/images/wc_1930.jpg',
    primaryColor: Color(0xFF64B5F6), accentColor: Color(0xFFFFFFFF),
    summary: '军政独裁时期的阿根廷首夺世界杯，笼罩政治争议。马里奥·肯佩斯以6球成为最佳射手并在决赛梅开二度。荷兰再度闯入决赛但再次抱憾，克鲁伊夫拒绝参赛。',
    legendaryMoment: '比赛开幕时，阿根廷球迷向空中抛撒漫天纸屑，成为世界杯史上最壮观的开幕仪式之一，纸屑风暴永载史册。',
    topTeams: [
      TeamInfo(name: '阿根廷', nameEn: 'Argentina', flag: '🇦🇷', group: '第一组', groupResult: '主场夺冠', keyPlayers: ['马里奥·肯佩斯', '丹尼尔·帕萨雷利亚', '奥斯瓦尔多·阿迪莱斯']),
    ],
    keyMatches: [
      MatchResult(round: '决赛', team1: '阿根廷', team2: '荷兰', score: '3-1(加时)', date: '1978.06.25', venue: '布宜诺斯艾利斯', highlight: '肯佩斯梅开二度，阿根廷首次夺冠'),
    ],
  ),

  // ── 1982 西班牙 ──────────────────────────────────────────────
  WorldCupEdition(
    year: 1982, host: '西班牙', hostFlag: '🇪🇸',
    dates: '1982.06.13 – 07.11',
    champion: '意大利', runnerUp: '西德', third: '波兰', fourth: '法国',
    teams: 24, matches: 52, totalGoals: 146,
    topScorer: '保罗·罗西（意大利）', topScorerGoals: '6球',
    imageAsset: 'assets/images/wc_1930.jpg',
    primaryColor: Color(0xFFC62828), accentColor: Color(0xFFFDD835),
    summary: '球队扩至24支。保罗·罗西从禁赛中复出，在关键战役中大放异彩，对巴西单场帽子戏法，最终以6球荣膺金靴和金球双奖。意大利第三次夺冠。',
    legendaryMoment: '"苦涩的西维利亚"：西德vs法国半决赛，西德门将舒马赫飞铲法国球员巴捷特造成骨折却未被罚下，最终点球淘汰法国，全球媒体一致谴责。',
    topTeams: [
      TeamInfo(name: '意大利', nameEn: 'Italy', flag: '🇮🇹', group: 'A组', groupResult: '第三夺冠', keyPlayers: ['保罗·罗西', '迪诺·佐夫', '真蒂莱']),
      TeamInfo(name: '巴西', nameEn: 'Brazil', flag: '🇧🇷', group: 'F组', groupResult: '小组赛出局', keyPlayers: ['济科', '法尔考', '小鸟']),
    ],
    keyMatches: [
      MatchResult(round: '第二轮', team1: '意大利', team2: '巴西', score: '3-2', date: '1982.07.05', venue: '巴塞罗那', highlight: '罗西帽子戏法淘汰号称史上最强巴西'),
      MatchResult(round: '决赛', team1: '意大利', team2: '西德', score: '3-1', date: '1982.07.11', venue: '马德里圣地亚哥伯纳乌球场', highlight: '意大利第三次夺冠，门将佐夫40岁成最年长冠军'),
    ],
  ),

  // ── 1986 墨西哥 ──────────────────────────────────────────────
  WorldCupEdition(
    year: 1986, host: '墨西哥', hostFlag: '🇲🇽',
    dates: '1986.05.31 – 06.29',
    champion: '阿根廷', runnerUp: '西德', third: '法国', fourth: '比利时',
    teams: 24, matches: 52, totalGoals: 132,
    topScorer: '加里·利内克尔（英格兰）', topScorerGoals: '6球',
    imageAsset: 'assets/images/wc_1986.jpg',
    primaryColor: Color(0xFF1565C0), accentColor: Color(0xFFFDD835),
    summary: '迭戈·马拉多纳的个人秀场，被公认为世界杯史上个人表现最出色的球员。四分之一决赛，他先后打出"上帝之手"和"世纪最佳进球"两粒经典进球，成为永恒传奇。',
    legendaryMoment: '"世纪最佳进球"：马拉多纳在四分之一决赛对英格兰，独自从中场带球突破6名英格兰球员后射门得分，被FIFA评为史上最佳世界杯进球。',
    topTeams: [
      TeamInfo(name: '阿根廷', nameEn: 'Argentina', flag: '🇦🇷', group: 'A组', groupResult: '夺冠', keyPlayers: ['迭戈·马拉多纳', '豪尔赫·巴尔达诺', '豪尔赫·布鲁查加']),
      TeamInfo(name: '西德', nameEn: 'West Germany', flag: '🇩🇪', group: 'E组', groupResult: '亚军', keyPlayers: ['卡尔-海因茨·鲁梅尼格', '鲁迪·福勒', '马特乌斯']),
    ],
    keyMatches: [
      MatchResult(round: '四分之一决赛', team1: '阿根廷', team2: '英格兰', score: '2-1', date: '1986.06.22', venue: '阿兹特克球场', highlight: '"上帝之手"+世纪最佳进球，马拉多纳一人打穿英格兰'),
      MatchResult(round: '决赛', team1: '阿根廷', team2: '西德', score: '3-2', date: '1986.06.29', venue: '阿兹特克球场（墨西哥城）', highlight: '马拉多纳领衔阿根廷第二次夺冠'),
    ],
  ),

  // ── 1990 意大利 ──────────────────────────────────────────────
  WorldCupEdition(
    year: 1990, host: '意大利', hostFlag: '🇮🇹',
    dates: '1990.06.08 – 07.08',
    champion: '西德', runnerUp: '阿根廷', third: '意大利', fourth: '英格兰',
    teams: 24, matches: 52, totalGoals: 115,
    topScorer: '萨尔瓦托雷·斯基拉奇（意大利）', topScorerGoals: '6球',
    imageAsset: 'assets/images/wc_1990.jpg',
    primaryColor: Color(0xFF4527A0), accentColor: Color(0xFF7C4DFF),
    summary: '史上进球最少的一届，防守足球盛行。喀麦隆黑马冲入八强。决赛无精彩进球，西德以任意球险胜阿根廷。英格兰vs西德半决赛点球大战令加斯科因泪流满面。',
    legendaryMoment: '"加斯科因之泪"：英格兰与西德点球大战前，英格兰中场天才加斯科因因为将在决赛缺席而流泪，这张照片成为足球情感的最佳诠释之一。',
    topTeams: [
      TeamInfo(name: '西德', nameEn: 'West Germany', flag: '🇩🇪', group: 'D组', groupResult: '夺冠', keyPlayers: ['洛塔尔·马特乌斯', '尤尔根·克林斯曼', '鲁迪·福勒']),
      TeamInfo(name: '喀麦隆', nameEn: '喀麦隆', flag: '🇨🇲', group: 'B组', groupResult: '八强黑马', keyPlayers: ['罗杰·米拉', '奥马姆·比约克']),
    ],
    keyMatches: [
      MatchResult(round: '小组赛', team1: '阿根廷', team2: '喀麦隆', score: '0-1', date: '1990.06.08', venue: '米兰', highlight: '黑马喀麦隆1-0击败卫冕冠军阿根廷，世纪大冷门'),
      MatchResult(round: '决赛', team1: '西德', team2: '阿根廷', score: '1-0', date: '1990.07.08', venue: '罗马奥林匹克球场', highlight: '最乏善可陈的决赛，布雷默任意球定乾坤，两人被逐'),
    ],
  ),

  // ── 1994 美国 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 1994, host: '美国', hostFlag: '🇺🇸',
    dates: '1994.06.17 – 07.17',
    champion: '巴西', runnerUp: '意大利', third: '瑞典', fourth: '保加利亚',
    teams: 24, matches: 52, totalGoals: 141,
    topScorer: '赫里斯托·斯托伊奇科夫（保加利亚）', topScorerGoals: '6球',
    imageAsset: 'assets/images/wc_1994.jpg',
    primaryColor: Color(0xFF1B5E20), accentColor: Color(0xFFFDD835),
    summary: '史上观众最多的世界杯，马拉多纳兴奋剂事件震惊世界。决赛0:0成为唯一靠点球决出的世界杯冠军。巴贝托和罗马里奥组成"R2"组合，为巴西攻入15球夺得第四冠。',
    legendaryMoment: '马拉多纳药检阳性被逐出赛场，他含泪离场的画面成为世界杯史上最沉重的时刻之一。决赛巴雷西、马萨罗、巴贝托均踢飞点球后罗伯托·巴乔的一脚踢高成绝唱。',
    topTeams: [
      TeamInfo(name: '巴西', nameEn: 'Brazil', flag: '🇧🇷', group: 'B组', groupResult: '夺冠', keyPlayers: ['罗马里奥', '贝贝托', '莱昂纳多', '杜加']),
      TeamInfo(name: '保加利亚', nameEn: 'Bulgaria', flag: '🇧🇬', group: 'D组', groupResult: '四强黑马', keyPlayers: ['斯托伊奇科夫', '莱切科夫', '米哈伊洛夫']),
    ],
    keyMatches: [
      MatchResult(round: '四分之一决赛', team1: '保加利亚', team2: '德国', score: '2-1', date: '1994.07.10', venue: '纽约', highlight: '斯托伊奇科夫世界波+莱切科夫头球淘汰德国'),
      MatchResult(round: '决赛', team1: '巴西', team2: '意大利', score: '0-0(点球3-2)', date: '1994.07.17', venue: '玫瑰碗球场（洛杉矶）', highlight: '唯一靠点球决定冠军的决赛，巴乔踢飞决定性点球'),
    ],
  ),

  // ── 1998 法国 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 1998, host: '法国', hostFlag: '🇫🇷',
    dates: '1998.06.10 – 07.12',
    champion: '法国', runnerUp: '巴西', third: '克罗地亚', fourth: '荷兰',
    teams: 32, matches: 64, totalGoals: 171,
    topScorer: '达沃·苏克尔（克罗地亚）', topScorerGoals: '6球',
    imageAsset: 'assets/images/wc_1998.jpg',
    primaryColor: Color(0xFF0D47A1), accentColor: Color(0xFFE53935),
    summary: '32队时代开启，克罗地亚首届即打入四强。齐达内决赛两粒头球造就法国3:0大胜巴西。赛前罗纳尔多疑似癫痫发作，带病上场状态全失，成为千古谜团。',
    legendaryMoment: '"罗纳尔多之谜"：决赛前数小时，超级巨星罗纳尔多被急救车送医，据称癫痫发作。他最终上场，却毫无状态，留下足球史上最大悬案之一。',
    topTeams: [
      TeamInfo(name: '法国', nameEn: 'France', flag: '🇫🇷', group: 'C组', groupResult: '主场夺冠', keyPlayers: ['齐内丁·齐达内', '蒂埃里·亨利', '迪迪埃·德尚', '利扎拉祖']),
      TeamInfo(name: '克罗地亚', nameEn: 'Croatia', flag: '🇭🇷', group: 'H组', groupResult: '首届打入四强', keyPlayers: ['达沃·苏克尔', '博班', '普罗辛内斯基']),
    ],
    keyMatches: [
      MatchResult(round: '四分之一决赛', team1: '法国', team2: '意大利', score: '0-0(点球4-3)', date: '1998.07.03', venue: '圣-德尼', highlight: '点球淘汰意大利'),
      MatchResult(round: '决赛', team1: '法国', team2: '巴西', score: '3-0', date: '1998.07.12', venue: '法兰西体育场（圣-德尼）', highlight: '齐达内双响，法国首夺世界杯，罗纳尔多带病上场全程失魂'),
    ],
  ),

  // ── 2002 韩日 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 2002, host: '韩国/日本', hostFlag: '🇰🇷🇯🇵',
    dates: '2002.05.31 – 06.30',
    champion: '巴西', runnerUp: '德国', third: '土耳其', fourth: '韩国',
    teams: 32, matches: 64, totalGoals: 161,
    topScorer: '罗纳尔多（巴西）', topScorerGoals: '8球',
    imageAsset: 'assets/images/wc_2002.jpg',
    primaryColor: Color(0xFFC62828), accentColor: Color(0xFFFDD835),
    summary: '首次在亚洲举办，首次由两国联合主办。卫冕冠军法国首轮出局，阿根廷同遭淘汰。韩国凭借主场优势连斩葡萄牙、西班牙、德国打入四强，争议不断。罗纳尔多8球荣膺金靴，率巴西第五次夺冠。',
    legendaryMoment: '"罗纳尔多的龙虾头"：超级巨星罗纳尔多留着怪异发型亮相，全球媒体哗然，却豪取8球奖金靴；此届也宣告了罗纳尔多的巅峰。',
    topTeams: [
      TeamInfo(name: '巴西', nameEn: 'Brazil', flag: '🇧🇷', group: 'C组', groupResult: '不败夺冠', keyPlayers: ['罗纳尔多', '小罗纳尔多', '里瓦尔多', '卡卡']),
      TeamInfo(name: '韩国', nameEn: 'South Korea', flag: '🇰🇷', group: 'D组', groupResult: '四强（东道主之一）', keyPlayers: ['朴智星', '安贞焕', '洪明甫']),
    ],
    keyMatches: [
      MatchResult(round: '小组赛', team1: '法国', team2: '塞内加尔', score: '0-1', date: '2002.05.31', venue: '首尔', highlight: '卫冕冠军法国首战爆冷，最终小组出局'),
      MatchResult(round: '决赛', team1: '巴西', team2: '德国', score: '2-0', date: '2002.06.30', venue: '横滨国际综合竞技场', highlight: '罗纳尔多梅开二度，巴西第五冠，追平历史纪录'),
    ],
  ),

  // ── 2006 德国 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 2006, host: '德国', hostFlag: '🇩🇪',
    dates: '2006.06.09 – 07.09',
    champion: '意大利', runnerUp: '法国', third: '德国', fourth: '葡萄牙',
    teams: 32, matches: 64, totalGoals: 147,
    topScorer: '米罗斯拉夫·克洛泽（德国）', topScorerGoals: '5球',
    imageAsset: 'assets/images/wc_2006.jpg',
    primaryColor: Color(0xFF1B5E20), accentColor: Color(0xFFFFFFFF),
    summary: '"夏日童话"：德国全力以赴的精彩表现感染全球。决赛意大利靠点球击败法国，"美丽足球"的最后回响。齐达内用头球顶倒马特拉齐后被驱逐，告别之战留下争议。',
    legendaryMoment: '"齐达内头球事件"：决赛加时，即将退役的齐达内因被马特拉齐辱骂，一记头球顶翻对方，被红牌驱逐，以如此方式终结足球生涯。',
    topTeams: [
      TeamInfo(name: '意大利', nameEn: 'Italy', flag: '🇮🇹', group: 'E组', groupResult: '夺冠', keyPlayers: ['卡纳瓦罗', '托蒂', '皮尔洛', '因扎吉']),
      TeamInfo(name: '法国', nameEn: 'France', flag: '🇫🇷', group: 'G组', groupResult: '亚军', keyPlayers: ['齐内丁·齐达内', '蒂埃里·亨利', '里贝里']),
    ],
    keyMatches: [
      MatchResult(round: '决赛', team1: '意大利', team2: '法国', score: '1-1(点球5-3)', date: '2006.07.09', venue: '柏林奥林匹克球场', highlight: '齐达内头顶马特拉齐被逐，点球意大利夺冠'),
    ],
  ),

  // ── 2010 南非 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 2010, host: '南非', hostFlag: '🇿🇦',
    dates: '2010.06.11 – 07.11',
    champion: '西班牙', runnerUp: '荷兰', third: '德国', fourth: '乌拉圭',
    teams: 32, matches: 64, totalGoals: 145,
    topScorer: '托马斯·穆勒（德国）', topScorerGoals: '5球',
    imageAsset: 'assets/images/wc_2010.jpg',
    primaryColor: Color(0xFFC62828), accentColor: Color(0xFFFDD835),
    summary: '首届非洲世界杯，"呜呜祖拉"成为最大争议。章鱼保罗精准预测7场比赛成为全球明星。西班牙以传控足球横扫世界，伊涅斯塔加时绝杀荷兰，凭0:0以外从未输球完美夺冠。',
    legendaryMoment: '"章鱼保罗"：德国水族馆的章鱼保罗在历届预测中全部命中，预测西班牙夺冠，成为史上最神奇的"球迷"。',
    topTeams: [
      TeamInfo(name: '西班牙', nameEn: 'Spain', flag: '🇪🇸', group: 'H组', groupResult: '夺冠', keyPlayers: ['安德烈斯·伊涅斯塔', '哈维', '大卫·比利亚', '卡西利亚斯']),
      TeamInfo(name: '荷兰', nameEn: 'Netherlands', flag: '🇳🇱', group: 'E组', groupResult: '亚军', keyPlayers: ['罗本', '斯内德', '范佩西', '范博梅尔']),
    ],
    keyMatches: [
      MatchResult(round: '小组赛', team1: '西班牙', team2: '瑞士', score: '0-1', date: '2010.06.16', venue: '约翰内斯堡', highlight: '西班牙爆冷输给瑞士'),
      MatchResult(round: '决赛', team1: '西班牙', team2: '荷兰', score: '1-0(加时)', date: '2010.07.11', venue: '约翰内斯堡橄榄球城球场', highlight: '伊涅斯塔加时116分钟绝杀，西班牙首夺世界杯'),
    ],
  ),

  // ── 2014 巴西 ────────────────────────────────────────────────
  WorldCupEdition(
    year: 2014, host: '巴西', hostFlag: '🇧🇷',
    dates: '2014.06.12 – 07.13',
    champion: '德国', runnerUp: '阿根廷', third: '荷兰', fourth: '巴西',
    teams: 32, matches: 64, totalGoals: 171,
    topScorer: '詹姆斯·罗德里格斯（哥伦比亚）', topScorerGoals: '6球',
    imageAsset: 'assets/images/wc_2014.jpg',
    primaryColor: Color(0xFF212121), accentColor: Color(0xFFFDD835),
    summary: '"闵内罗惨案"震惊世界：东道主巴西在半决赛被德国1:7血虐，本土以外的"二次世纪大悲剧"令全国哭泣。德国以7:1大胜后在决赛加时头球击败阿根廷，第四次称霸。',
    legendaryMoment: '"闵内罗惨案（Mineirazo）"：7月8日，巴西1:7惨败德国，上半场29分钟连失5球，本土人民泪流满面，成为国耻级战败，与1950年并称两大"世纪大悲剧"。',
    topTeams: [
      TeamInfo(name: '德国', nameEn: 'Germany', flag: '🇩🇪', group: 'G组', groupResult: '夺冠', keyPlayers: ['托马斯·穆勒', '马里奥·格策', '舒尔勒', '诺伊尔']),
      TeamInfo(name: '阿根廷', nameEn: 'Argentina', flag: '🇦🇷', group: 'F组', groupResult: '亚军', keyPlayers: ['利昂内尔·梅西', '伊瓜因', '迪马里亚']),
    ],
    keyMatches: [
      MatchResult(round: '半决赛', team1: '德国', team2: '巴西', score: '7-1', date: '2014.07.08', venue: '贝洛奥里藏特闵内罗球场', highlight: '"闵内罗惨案"，28分钟内连入5球，是世界杯历史上最惨烈的一场半决赛'),
      MatchResult(round: '决赛', team1: '德国', team2: '阿根廷', score: '1-0(加时)', date: '2014.07.13', venue: '里约热内卢马拉卡纳球场', highlight: '格策加时113分钟胸停后射门绝杀，德国第四次夺冠'),
    ],
  ),

  // ── 2018 俄罗斯 ──────────────────────────────────────────────
  WorldCupEdition(
    year: 2018, host: '俄罗斯', hostFlag: '🇷🇺',
    dates: '2018.06.14 – 07.15',
    champion: '法国', runnerUp: '克罗地亚', third: '比利时', fourth: '英格兰',
    teams: 32, matches: 64, totalGoals: 169,
    topScorer: '哈里·凯恩（英格兰）', topScorerGoals: '6球',
    imageAsset: 'assets/images/wc_2018.jpg',
    primaryColor: Color(0xFF0D47A1), accentColor: Color(0xFFE53935),
    summary: '卫冕冠军德国小组赛出局，阿根廷和葡萄牙十六强落幕。克罗地亚以黑马之姿杀入决赛，上演了"小国大梦"。法国以4:2击败克罗地亚，姆巴佩19岁成为继贝利后首位在世界杯决赛进球的青少年。',
    legendaryMoment: '姆巴佩19岁175天在决赛打入进球，成为世界杯决赛第二位未满20岁的进球者，前一位是1958年的贝利。',
    topTeams: [
      TeamInfo(name: '法国', nameEn: 'France', flag: '🇫🇷', group: 'C组', groupResult: '夺冠', keyPlayers: ['基利安·姆巴佩', '安托万·格里兹曼', '拉斐尔·瓦拉内', '洛里斯']),
      TeamInfo(name: '克罗地亚', nameEn: 'Croatia', flag: '🇭🇷', group: 'D组', groupResult: '亚军', keyPlayers: ['卢卡·莫德里奇', '伊万·拉基蒂奇', '曼朱基奇']),
    ],
    keyMatches: [
      MatchResult(round: '小组赛', team1: '德国', team2: '韩国', score: '0-2', date: '2018.06.27', venue: '喀山', highlight: '卫冕冠军德国0-2负于韩国，小组垫底出局'),
      MatchResult(round: '决赛', team1: '法国', team2: '克罗地亚', score: '4-2', date: '2018.07.15', venue: '莫斯科卢日尼基体育场', highlight: '姆巴佩打入进球，法国第二次夺冠'),
    ],
  ),

  // ── 2022 卡塔尔 ──────────────────────────────────────────────
  WorldCupEdition(
    year: 2022, host: '卡塔尔', hostFlag: '🇶🇦',
    dates: '2022.11.20 – 12.18',
    champion: '阿根廷', runnerUp: '法国', third: '克罗地亚', fourth: '摩洛哥',
    teams: 32, matches: 64, totalGoals: 172,
    topScorer: '基利安·姆巴佩（法国）', topScorerGoals: '8球',
    imageAsset: 'assets/images/wc_2022.jpg',
    primaryColor: Color(0xFF4A148C), accentColor: Color(0xFF64B5F6),
    summary: '史上最具戏剧性的一届。首次在冬季和中东举办。摩洛哥创非洲球队最佳成绩打入四强。决赛梅西大战姆巴佩——阿根廷3:0领先后，姆巴佩上演帽子戏法3:3扳平，加时赛互交白卷，最终阿根廷点球夺冠。梅西圆梦，登顶球王。',
    legendaryMoment: '"梅西圆梦"：36岁的梅西在决赛打入两球，带领阿根廷点球击败法国，第三次夺得世界杯（2021年也曾获得美洲杯），终于拿到唯一缺少的世界杯奖杯，成为无可争议的GOAT。',
    topTeams: [
      TeamInfo(name: '阿根廷', nameEn: 'Argentina', flag: '🇦🇷', group: 'C组', groupResult: '夺冠（第三次）', keyPlayers: ['利昂内尔·梅西', '胡里安·阿尔瓦雷斯', '恩佐·费尔南德斯', '迪布']),
      TeamInfo(name: '法国', nameEn: 'France', flag: '🇫🇷', group: 'D组', groupResult: '亚军', keyPlayers: ['基利安·姆巴佩', '奥利维尔·吉鲁', '安托万·格里兹曼', '洛里斯']),
      TeamInfo(name: '摩洛哥', nameEn: 'Morocco', flag: '🇲🇦', group: 'F组', groupResult: '非洲历史最佳四强', keyPlayers: ['亚辛·波诺', '阿克拉夫·哈基米', '阿什拉夫·达利']),
    ],
    keyMatches: [
      MatchResult(round: '小组赛', team1: '阿根廷', team2: '沙特阿拉伯', score: '1-2', date: '2022.11.22', venue: '卢塞尔体育场', highlight: '梅西进球无效后阿根廷0-2落后，沙特完成史诗级大冷门'),
      MatchResult(round: '四分之一决赛', team1: '摩洛哥', team2: '葡萄牙', score: '1-0', date: '2022.12.10', venue: '卡塔尔', highlight: '摩洛哥创造历史，首支非洲球队进入半决赛'),
      MatchResult(round: '决赛', team1: '阿根廷', team2: '法国', score: '3-3(点球4-2)', date: '2022.12.18', venue: '卢塞尔体育场', highlight: '史上最精彩决赛，阿根廷3-0领先后被姆巴佩帽子戏法追平，点球决出，梅西圆梦'),
    ],
  ),

  // ── 2026 美加墨 ──────────────────────────────────────────────
  WorldCupEdition(
    year: 2026, host: '美国/加拿大/墨西哥', hostFlag: '🇺🇸🇨🇦🇲🇽',
    dates: '2026.06.11 – 07.19（预计）',
    champion: '待定', runnerUp: '待定', third: '待定', fourth: '待定',
    teams: 48, matches: 104, totalGoals: 0,
    topScorer: '待定', topScorerGoals: '-',
    imageAsset: 'assets/images/wc_2026.jpg',
    primaryColor: Color(0xFF1565C0), accentColor: Color(0xFFE53935),
    summary: '首届扩编至48队，104场比赛在美国、加拿大、墨西哥三国举办，美墨两国将第二次主办（1970/1994）。新增小组赛淘汰制，16支球队晋级32强赛。预计超过50亿人次观看。',
    legendaryMoment: '本届尚未开幕，举世瞩目，梅西、姆巴佩、哈兰德等超级巨星将同台竞技，书写新的传奇。',
    topTeams: [],
    keyMatches: [],
  ),
];

WorldCupEdition? findByYear(int year) {
  try {
    return allEditions.firstWhere((e) => e.year == year);
  } catch (_) {
    return null;
  }
}
