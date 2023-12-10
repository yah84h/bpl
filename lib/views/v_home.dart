part of '../../utils/import/u_import.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  @override
  Widget build(BuildContext context) {
    var progLang = context.watch<ProviderProgLang>().progLang;
    var progLangList = context.watch<ProviderProgLang>().myList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WidgetBtn(progLangList: progLangList),
            const SizedBox(height: 10),
            const Text(
              'Choose Your Favorite Programming Language:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: WidgetListviewHome(
                    progLang: progLang, progLangList: progLangList)),
          ],
        ),
      ),
    );
  }
}
