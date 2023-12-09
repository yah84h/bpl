part of '../import/u_import.dart';

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
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ViewFavorite(),
                    ));
              },
              icon: Icon(
                Icons.favorite,
                color: progLangList.length ==
                        ControllerProgLang().dataProgLang.length
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
            ),
            const SizedBox(height: 10),
            const Text(
              'Choose Your Favorite Programming Language:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: ListView.builder(
              itemCount: progLang.length,
              itemBuilder: (context, index) {
                final currProgLang = progLang[index];
                return Card(
                  key: ValueKey(currProgLang.title),
                  color: Colors.blue,
                  child: ListTile(
                    title: Text(currProgLang.title),
                    subtitle: Text(currProgLang.desc),
                    trailing: IconButton(
                        onPressed: () {
                          onPressed(progLangList, currProgLang, context);
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: progLangList.contains(currProgLang)
                              ? Colors.red
                              : Colors.white,
                        )),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }

  void onPressed(List<ModelProgLang> progLangList, ModelProgLang currProgLang,
      BuildContext context) {
    if (!progLangList.contains(currProgLang)) {
      context.read<ProviderProgLang>().addToList(currProgLang);
    } else {
      context.read<ProviderProgLang>().removeFromList(currProgLang);
    }
  }
}
