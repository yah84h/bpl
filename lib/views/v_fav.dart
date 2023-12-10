part of '../../utils/import/u_import.dart';

class ViewFavorite extends StatefulWidget {
  const ViewFavorite({super.key});

  @override
  State<ViewFavorite> createState() => _ViewFavoriteState();
}

class _ViewFavoriteState extends State<ViewFavorite> {
  @override
  Widget build(BuildContext context) {
    var progLangList = context.watch<ProviderProgLang>().myList;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorite List (${progLangList.length})'),
      ),
      body: WidgetListviewFavorite(progLangList: progLangList),
    );
  }
}
