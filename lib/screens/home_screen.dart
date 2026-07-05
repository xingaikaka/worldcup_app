import 'package:flutter/material.dart';
import '../data/worldcup_data.dart';
import '../models/worldcup.dart';
import '../theme/app_theme.dart';
import 'edition_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedDecade = 0; // 0=全部 1=1930s 2=1950s ...

  static const decades = ['全部', '1930s', '1950s', '1970s', '1990s', '2000s', '2010s+'];

  List<WorldCupEdition> get _filtered {
    if (_selectedDecade == 0) return allEditions;
    final ranges = {1:[1930,1939], 2:[1950,1959], 3:[1970,1979], 4:[1990,1999], 5:[2000,2009], 6:[2010,2030]};
    final r = ranges[_selectedDecade]!;
    return allEditions.where((e) => e.year >= r[0] && e.year <= r[1]).toList();
  }

  Map<String, int> get _champCounts {
    final counts = <String, int>{};
    for (final e in allEditions) {
      if (e.champion == '待定') continue;
      counts[e.champion] = (counts[e.champion] ?? 0) + 1;
    }
    return counts;
  }

  @override
  Widget build(BuildContext context) {
    final champions = _champCounts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return Scaffold(
      backgroundColor: AppTheme.bg,
      body: CustomScrollView(
        slivers: [
          // ── 顶部 ──
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF0D1F3C), Color(0xFF0A1628)],
                ),
              ),
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: AppTheme.gold.withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.emoji_events_rounded,
                                color: AppTheme.gold, size: 24),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('世界杯志', style: AppTheme.title(size: 22)),
                              Text('FIFA World Cup · 1930–2026',
                                  style: AppTheme.body(size: 11)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // 冠军榜
                      Text('冠军次数排行', style: AppTheme.body(size: 12, color: AppTheme.textSecondary)),
                      const SizedBox(height: 8),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: champions.take(6).map((e) =>
                            Container(
                              margin: const EdgeInsets.only(right: 8),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              decoration: BoxDecoration(
                                color: AppTheme.card,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: AppTheme.gold.withValues(alpha: 0.3)),
                              ),
                              child: Row(
                                children: [
                                  const Icon(Icons.emoji_events_rounded,
                                      size: 14, color: AppTheme.gold),
                                  const SizedBox(width: 4),
                                  Text('${e.value}',
                                      style: AppTheme.number(size: 14)),
                                  const SizedBox(width: 4),
                                  Text(e.key,
                                      style: AppTheme.body(
                                          size: 12,
                                          color: AppTheme.textPrimary)),
                                ],
                              ),
                            ),
                          ).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ── 年代筛选 ──
          SliverToBoxAdapter(
            child: SizedBox(
              height: 44,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: decades.length,
                itemBuilder: (ctx, i) {
                  final selected = _selectedDecade == i;
                  return GestureDetector(
                    onTap: () => setState(() => _selectedDecade = i),
                    child: Container(
                      margin: const EdgeInsets.only(right: 8, top: 6, bottom: 6),
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: selected
                            ? AppTheme.gold
                            : AppTheme.card,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text(decades[i],
                          style: AppTheme.body(
                              size: 13,
                              color: selected
                                  ? AppTheme.bg
                                  : AppTheme.textSecondary)),
                    ),
                  );
                },
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 8)),

          // ── 届次列表 ──
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, i) => _EditionCard(edition: _filtered[i]),
              childCount: _filtered.length,
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}

class _EditionCard extends StatelessWidget {
  final WorldCupEdition edition;
  const _EditionCard({required this.edition});

  @override
  Widget build(BuildContext context) {
    final isPending = edition.champion == '待定';

    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (_) => EditionScreen(edition: edition))),
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        decoration: BoxDecoration(
          color: AppTheme.card,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: edition.primaryColor.withValues(alpha: 0.3), width: 1),
          boxShadow: [
            BoxShadow(
              color: edition.primaryColor.withValues(alpha: 0.08),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            // 图片区
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: SizedBox(
                width: 110,
                height: 110,
                child: Stack(
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
                              edition.primaryColor.withValues(alpha: 0.7),
                              edition.primaryColor,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(edition.hostFlag,
                              style: const TextStyle(fontSize: 36)),
                        ),
                      ),
                    ),
                    // 年份遮罩
                    Positioned(
                      bottom: 0, left: 0, right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        color: Colors.black.withValues(alpha: 0.5),
                        child: Text(
                          '${edition.year}',
                          textAlign: TextAlign.center,
                          style: AppTheme.number(size: 18, color: AppTheme.gold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 文字区
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(edition.host,
                            style: AppTheme.title(size: 14)),
                        const Spacer(),
                        Text(edition.hostFlag,
                            style: const TextStyle(fontSize: 18)),
                      ],
                    ),
                    const SizedBox(height: 6),
                    if (!isPending) ...[
                      Row(
                        children: [
                          const Icon(Icons.emoji_events_rounded,
                              size: 14, color: AppTheme.gold),
                          const SizedBox(width: 4),
                          Text(edition.champion,
                              style: AppTheme.body(
                                  size: 13, color: AppTheme.gold)),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.sports_soccer,
                              size: 12, color: AppTheme.textSecondary),
                          const SizedBox(width: 4),
                          Text('${edition.totalGoals} 球 · ${edition.teams} 队 · ${edition.matches} 场',
                              style: AppTheme.body(size: 11)),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.star_rounded,
                              size: 12, color: AppTheme.textSecondary),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              '金靴：${edition.topScorer} ${edition.topScorerGoals}',
                              style: AppTheme.body(size: 11),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ] else ...[
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppTheme.gold.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text('48队 · 104场 · 敬请期待',
                            style: AppTheme.body(
                                size: 11, color: AppTheme.gold)),
                      ),
                    ],
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 3,
                          decoration: BoxDecoration(
                            color: edition.primaryColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(edition.dates,
                              style: AppTheme.body(size: 10)),
                        ),
                        const Icon(Icons.chevron_right_rounded,
                            color: AppTheme.textSecondary, size: 16),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
