import 'package:flutter/material.dart';
import '../models/worldcup.dart';
import '../theme/app_theme.dart';

class MatchesScreen extends StatelessWidget {
  final WorldCupEdition edition;
  const MatchesScreen({super.key, required this.edition});

  @override
  Widget build(BuildContext context) {
    final grouped = <String, List<MatchResult>>{};
    for (final m in edition.keyMatches) {
      (grouped[m.round] ??= []).add(m);
    }

    return Scaffold(
      backgroundColor: AppTheme.bg,
      appBar: AppBar(
        backgroundColor: AppTheme.bg,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios_new_rounded,
              size: 18, color: AppTheme.textPrimary),
        ),
        title: Text('${edition.year} · 关键赛程',
            style: AppTheme.title(size: 16)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: grouped.keys.length,
        itemBuilder: (ctx, i) {
          final round = grouped.keys.elementAt(i);
          final matches = grouped[round]!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 轮次标题
              Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 4),
                child: Row(
                  children: [
                    Container(
                      width: 3, height: 16,
                      decoration: BoxDecoration(
                        color: edition.primaryColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(round, style: AppTheme.title(
                        size: 13, color: edition.primaryColor)),
                  ],
                ),
              ),
              ...matches.map((m) => _MatchCard(match: m, edition: edition)),
              const SizedBox(height: 8),
            ],
          );
        },
      ),
    );
  }
}

class _MatchCard extends StatelessWidget {
  final MatchResult match;
  final WorldCupEdition edition;
  const _MatchCard({required this.match, required this.edition});

  Color get _roundColor {
    if (match.round.contains('决赛') && !match.round.contains('四') &&
        !match.round.contains('八') && !match.round.contains('半')) {
      return AppTheme.gold;
    }
    if (match.round.contains('半决赛')) return const Color(0xFFB0BEC5);
    return edition.primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    final parts = match.score.split('-');
    final score1 = parts.isNotEmpty ? parts[0].trim() : '-';
    final score2 = parts.length > 1 ? parts[1].split('(')[0].trim() : '-';
    final isOT = match.score.contains('加时') || match.score.contains('点球');

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppTheme.card,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
            color: _roundColor.withValues(alpha: 0.25)),
      ),
      child: Column(
        children: [
          // 顶部色条
          Container(
            height: 3,
            decoration: BoxDecoration(
              color: _roundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 比分行
                Row(
                  children: [
                    Expanded(
                      child: Text(match.team1,
                          style: AppTheme.title(size: 14),
                          textAlign: TextAlign.right),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(score1,
                                style: AppTheme.number(
                                    size: 22, color: AppTheme.textPrimary)),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6),
                              child: Text(':',
                                  style: AppTheme.number(
                                      size: 18,
                                      color: AppTheme.textSecondary)),
                            ),
                            Text(score2,
                                style: AppTheme.number(
                                    size: 22, color: AppTheme.textPrimary)),
                          ],
                        ),
                        if (isOT)
                          Text(
                            match.score.contains('点球') ? '点球决定' : '加时赛',
                            style: AppTheme.body(size: 10,
                                color: AppTheme.gold),
                          ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(match.team2,
                          style: AppTheme.title(size: 14)),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // 日期 & 场地
                Row(
                  children: [
                    const Icon(Icons.calendar_today_rounded,
                        size: 11, color: AppTheme.textSecondary),
                    const SizedBox(width: 4),
                    Text(match.date, style: AppTheme.body(size: 11)),
                    const SizedBox(width: 12),
                    const Icon(Icons.location_on_rounded,
                        size: 11, color: AppTheme.textSecondary),
                    const SizedBox(width: 2),
                    Expanded(
                      child: Text(match.venue,
                          style: AppTheme.body(size: 11),
                          overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),

                // 亮点
                if (match.highlight != null) ...[
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppTheme.gold.withValues(alpha: 0.08),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.bolt_rounded,
                            size: 14, color: AppTheme.gold),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(match.highlight!,
                              style: AppTheme.body(
                                  size: 12,
                                  color: AppTheme.textPrimary,
                                  height: 1.5)),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
