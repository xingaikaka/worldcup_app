import 'package:flutter/material.dart';

class MatchResult {
  final String round;       // 组别/轮次 e.g. "小组赛A组" / "决赛"
  final String team1;
  final String team2;
  final String score;       // e.g. "3-1"
  final String date;
  final String venue;
  final String? highlight;  // 进球/备注

  const MatchResult({
    required this.round,
    required this.team1,
    required this.team2,
    required this.score,
    required this.date,
    required this.venue,
    this.highlight,
  });
}

class TeamInfo {
  final String name;
  final String nameEn;
  final String flag;        // assets/flags/xxx.png 或 emoji
  final String group;
  final String groupResult; // "第一 2W1D0L 7分"
  final List<String> keyPlayers;

  const TeamInfo({
    required this.name,
    required this.nameEn,
    required this.flag,
    required this.group,
    required this.groupResult,
    required this.keyPlayers,
  });
}

class WorldCupEdition {
  final int year;
  final String host;
  final String hostFlag;
  final String dates;
  final String champion;
  final String runnerUp;
  final String third;
  final String fourth;
  final int teams;
  final int matches;
  final int totalGoals;
  final String topScorer;
  final String topScorerGoals;
  final String imageAsset;
  final Color primaryColor;
  final Color accentColor;
  final String summary;            // 总结一段话
  final String legendaryMoment;    // 标志性时刻
  final List<TeamInfo> topTeams;   // 强队信息
  final List<MatchResult> keyMatches; // 关键场次

  const WorldCupEdition({
    required this.year,
    required this.host,
    required this.hostFlag,
    required this.dates,
    required this.champion,
    required this.runnerUp,
    required this.third,
    required this.fourth,
    required this.teams,
    required this.matches,
    required this.totalGoals,
    required this.topScorer,
    required this.topScorerGoals,
    required this.imageAsset,
    required this.primaryColor,
    required this.accentColor,
    required this.summary,
    required this.legendaryMoment,
    this.topTeams = const [],
    this.keyMatches = const [],
  });
}
