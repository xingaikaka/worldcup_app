import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// 将国旗 emoji 转换为双字母国家代码和颜色
const Map<String, _FlagMeta> _flagMap = {
  '🇺🇾': _FlagMeta('URY', Color(0xFF72B2E4), Colors.white),
  '🇮🇹': _FlagMeta('ITA', Color(0xFF009246), Colors.white),
  '🇫🇷': _FlagMeta('FRA', Color(0xFF002395), Colors.white),
  '🇧🇷': _FlagMeta('BRA', Color(0xFF009C3B), Color(0xFFFFDF00)),
  '🇨🇭': _FlagMeta('SUI', Color(0xFFFF0000), Colors.white),
  '🇸🇪': _FlagMeta('SWE', Color(0xFF006AA7), Color(0xFFFFCD00)),
  '🇨🇱': _FlagMeta('CHI', Color(0xFFD52B1E), Colors.white),
  '🏴󠁧󠁢󠁥󠁮󠁧󠁿': _FlagMeta('ENG', Color(0xFFCF142B), Colors.white),
  '🇬🇧': _FlagMeta('GBR', Color(0xFF012169), Colors.white),
  '🇲🇽': _FlagMeta('MEX', Color(0xFF006847), Colors.white),
  '🇩🇪': _FlagMeta('GER', Color(0xFF000000), Color(0xFFFFCC00)),
  '🇦🇷': _FlagMeta('ARG', Color(0xFF74ACDF), Colors.white),
  '🇪🇸': _FlagMeta('ESP', Color(0xFFAA151B), Color(0xFFF1BF00)),
  '🇺🇸': _FlagMeta('USA', Color(0xFF3C3B6E), Colors.white),
  '🇿🇦': _FlagMeta('RSA', Color(0xFF007A4D), Colors.white),
  '🇷🇺': _FlagMeta('RUS', Color(0xFF0039A6), Colors.white),
  '🇶🇦': _FlagMeta('QAT', Color(0xFF8D1B3D), Colors.white),
  '🇳🇱': _FlagMeta('NED', Color(0xFFAE1C28), Colors.white),
  '🇵🇹': _FlagMeta('POR', Color(0xFF006600), Colors.white),
  '🇭🇷': _FlagMeta('CRO', Color(0xFFFF0000), Colors.white),
  '🇧🇬': _FlagMeta('BUL', Color(0xFF009B77), Colors.white),
  '🇨🇲': _FlagMeta('CMR', Color(0xFF007A5E), Colors.white),
  '🇸🇳': _FlagMeta('SEN', Color(0xFF00853F), Colors.white),
  '🇰🇷': _FlagMeta('KOR', Color(0xFFCD2E3A), Colors.white),
  '🇲🇦': _FlagMeta('MAR', Color(0xFFC1272D), Colors.white),
  '🇭🇺': _FlagMeta('HUN', Color(0xFFCE2939), Colors.white),
  '🇵🇱': _FlagMeta('POL', Color(0xFFDC143C), Colors.white),
  '🇦🇹': _FlagMeta('AUT', Color(0xFFED2939), Colors.white),
  '🇹🇷': _FlagMeta('TUR', Color(0xFFE30A17), Colors.white),
  '🇧🇪': _FlagMeta('BEL', Color(0xFFEF3340), Colors.white),
  '🇯🇵': _FlagMeta('JPN', Color(0xFFBC002D), Colors.white),
  '🇨🇦': _FlagMeta('CAN', Color(0xFFFF0000), Colors.white),
  // 多国主办合并旗 → 取首个国家
  '🇺🇸🇨🇦🇲🇽': _FlagMeta('USA/CAN/MEX', Color(0xFF3C3B6E), Colors.white),
  '🇰🇷🇯🇵': _FlagMeta('KOR/JPN', Color(0xFFCD2E3A), Colors.white),
};

class _FlagMeta {
  final String code;
  final Color bg;
  final Color fg;
  const _FlagMeta(this.code, this.bg, this.fg);
}

_FlagMeta _resolve(String flag) =>
    _flagMap[flag] ?? _FlagMeta(flag.isEmpty ? '?' : '?', AppTheme.textSecondary, Colors.white);

/// 矩形国家代码徽章，用于列表卡片右上角
class CountryBadge extends StatelessWidget {
  final String flag;
  final double fontSize;
  final double? width;
  final double? height;

  const CountryBadge({
    super.key,
    required this.flag,
    this.fontSize = 11,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final meta = _resolve(flag);
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        color: meta.bg,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        meta.code,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          color: meta.fg,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

/// 圆形国家标识，用于球队行左侧
class CountryCircle extends StatelessWidget {
  final String flag;
  final double size;

  const CountryCircle({super.key, required this.flag, this.size = 36});

  @override
  Widget build(BuildContext context) {
    final meta = _resolve(flag);
    final abbr = meta.code.length > 3 ? meta.code.substring(0, 3) : meta.code;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: meta.bg,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        abbr.length > 2 ? abbr.substring(0, 2) : abbr,
        style: TextStyle(
          fontSize: size * 0.3,
          fontWeight: FontWeight.w800,
          color: meta.fg,
        ),
      ),
    );
  }
}
