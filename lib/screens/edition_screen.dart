import 'package:flutter/material.dart';
import '../models/worldcup.dart';
import '../theme/app_theme.dart';
import 'matches_screen.dart';

class EditionScreen extends StatelessWidget {
  final WorldCupEdition edition;
  const EditionScreen({super.key, required this.edition});

  @override
  Widget build(BuildContext context) {
    final isPending = edition.champion == '待定';

    return Scaffold(
      backgroundColor: AppTheme.bg,
      bottomNavigationBar: edition.keyMatches.isNotEmpty && !isPending
          ? SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>
                          MatchesScreen(edition: edition))),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          edition.primaryColor,
                          edition.primaryColor.withValues(alpha: 0.8),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.sports_soccer,
                            color: Colors.white, size: 18),
                        const SizedBox(width: 8),
                        Text(
                          '查看关键赛程 · ${edition.keyMatches.length} 场比赛',
                          style: AppTheme.body(size: 14, color: Colors.white),
                        ),
                        const SizedBox(width: 6),
                        const Icon(Icons.chevron_right_rounded,
                            color: Colors.white, size: 18),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : null,
      body: CustomScrollView(
        slivers: [
          // ── 大图 Header ──
          SliverAppBar(
            expandedHeight: 240,
            pinned: true,
            backgroundColor: AppTheme.bg,
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.4),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_back_ios_new_rounded,
                    size: 16, color: Colors.white),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    edition.imageAsset,
                    fit: BoxFit.cover,
                    errorBuilder: (ctx, e, st) => Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            edition.primaryColor.withValues(alpha: 0.6),
                            AppTheme.bg,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.8),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16, left: 20, right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(edition.hostFlag,
                            style: const TextStyle(fontSize: 28)),
                        const SizedBox(height: 4),
                        Text(
                          '${edition.year} FIFA世界杯',
                          style: AppTheme.title(size: 22),
                        ),
                        Text(edition.host,
                            style: AppTheme.body(size: 13,
                                color: AppTheme.textSecondary)),
                        const SizedBox(height: 4),
                        Text(edition.dates,
                            style: AppTheme.body(size: 11)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── 名次结果 ──
                  if (!isPending) _ResultCard(edition: edition),
                  if (!isPending) const SizedBox(height: 12),

                  // ── 统计数字 ──
                  if (!isPending) _StatsRow(edition: edition),
                  if (!isPending) const SizedBox(height: 16),

                  // ── 赛事简介 ──
                  _Section(
                    title: '赛事简介',
                    icon: Icons.article_rounded,
                    child: Text(edition.summary,
                        style: AppTheme.body(size: 13, height: 1.8)),
                  ),
                  const SizedBox(height: 12),

                  // ── 标志性时刻 ──
                  _Section(
                    title: '标志性时刻',
                    icon: Icons.bolt_rounded,
                    iconColor: AppTheme.gold,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppTheme.gold.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppTheme.gold.withValues(alpha: 0.25)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.format_quote_rounded,
                              color: AppTheme.gold, size: 20),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(edition.legendaryMoment,
                                style: AppTheme.body(
                                    size: 13,
                                    color: AppTheme.textPrimary,
                                    height: 1.7)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // ── 关键球队 ──
                  if (edition.topTeams.isNotEmpty) ...[
                    _Section(
                      title: '主要球队',
                      icon: Icons.groups_rounded,
                      child: Column(
                        children: edition.topTeams.map((t) =>
                          _TeamRow(team: t)).toList(),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],

                  // ── 关键赛程按钮 ──
                  if (edition.keyMatches.isNotEmpty)
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) =>
                              MatchesScreen(edition: edition))),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              edition.primaryColor,
                              edition.primaryColor.withValues(alpha: 0.7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.sports_soccer,
                                color: Colors.white, size: 18),
                            const SizedBox(width: 8),
                            Text(
                              '查看关键赛程与首发结果（${edition.keyMatches.length} 场）',
                              style: AppTheme.body(
                                  size: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── 名次结果卡 ───────────────────────────────────────────────

class _ResultCard extends StatelessWidget {
  final WorldCupEdition edition;
  const _ResultCard({required this.edition});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.card,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
            color: AppTheme.gold.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.emoji_events_rounded,
                  color: AppTheme.gold, size: 18),
              const SizedBox(width: 6),
              Text('最终名次', style: AppTheme.title(size: 14)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _PlaceItem(place: 1, team: edition.champion,
                  color: AppTheme.gold)),
              Expanded(child: _PlaceItem(place: 2, team: edition.runnerUp,
                  color: const Color(0xFFB0BEC5))),
              Expanded(child: _PlaceItem(place: 3, team: edition.third,
                  color: const Color(0xFFCD7F32))),
              Expanded(child: _PlaceItem(place: 4, team: edition.fourth,
                  color: AppTheme.textSecondary)),
            ],
          ),
        ],
      ),
    );
  }
}

class _PlaceItem extends StatelessWidget {
  final int place;
  final String team;
  final Color color;
  const _PlaceItem({required this.place, required this.team, required this.color});

  String get _medal => ['', '🥇', '🥈', '🥉', '4'][place];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          place == 1 ? Icons.emoji_events_rounded
              : place == 2 ? Icons.workspace_premium_rounded
              : Icons.military_tech_rounded,
          color: color, size: place == 1 ? 28 : 22,
        ),
        const SizedBox(height: 4),
        Text(place == 4 ? '第四' : _medal, style: TextStyle(fontSize: 10, color: color)),
        const SizedBox(height: 2),
        Text(team,
            textAlign: TextAlign.center,
            style: AppTheme.body(size: 11, color: color),
            maxLines: 2),
      ],
    );
  }
}

// ── 统计行 ───────────────────────────────────────────────────

class _StatsRow extends StatelessWidget {
  final WorldCupEdition edition;
  const _StatsRow({required this.edition});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _StatBox(label: '参赛队', value: '${edition.teams}', icon: Icons.groups_rounded)),
        const SizedBox(width: 8),
        Expanded(child: _StatBox(label: '总场次', value: '${edition.matches}', icon: Icons.sports_soccer)),
        const SizedBox(width: 8),
        Expanded(child: _StatBox(label: '总进球', value: '${edition.totalGoals}', icon: Icons.flag_rounded)),
        const SizedBox(width: 8),
        Expanded(child: _StatBox(
          label: '场均进球',
          value: edition.matches > 0
              ? (edition.totalGoals / edition.matches).toStringAsFixed(1)
              : '-',
          icon: Icons.bar_chart_rounded,
        )),
      ],
    );
  }
}

class _StatBox extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  const _StatBox({required this.label, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      decoration: BoxDecoration(
        color: AppTheme.card,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, color: AppTheme.gold, size: 16),
          const SizedBox(height: 4),
          Text(value, style: AppTheme.number(size: 16)),
          Text(label, style: AppTheme.body(size: 10), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

// ── 分节容器 ─────────────────────────────────────────────────

class _Section extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Widget child;
  const _Section({required this.title, required this.icon, required this.child,
      this.iconColor = AppTheme.textSecondary});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppTheme.card,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: iconColor),
              const SizedBox(width: 6),
              Text(title, style: AppTheme.title(size: 14)),
            ],
          ),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }
}

// ── 球队行 ───────────────────────────────────────────────────

class _TeamRow extends StatelessWidget {
  final TeamInfo team;
  const _TeamRow({required this.team});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(team.flag, style: const TextStyle(fontSize: 22)),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(team.name, style: AppTheme.title(size: 13)),
                  Text(team.groupResult,
                      style: AppTheme.body(size: 11)),
                ],
              ),
            ],
          ),
          if (team.keyPlayers.isNotEmpty) ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: team.keyPlayers.map((p) => Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: AppTheme.bg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(p, style: AppTheme.body(size: 11)),
              )).toList(),
            ),
          ],
        ],
      ),
    );
  }
}
