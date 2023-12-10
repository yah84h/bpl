part of '../../utils/import/u_import.dart';

class WidgetBtn extends StatelessWidget {
  const WidgetBtn({
    super.key,
    required this.progLangList,
  });

  final List<ModelProgLang> progLangList;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ViewFavorite(),
            ));
      },
      icon: Icon(
        Icons.favorite,
        color: progLangList.length == ControllerProgLang().dataProgLang.length
            ? Colors.amber
            : Colors.white,
      ),
      label: Text(
        'My Favorite (${progLangList.length})',
        style: const TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }
}
