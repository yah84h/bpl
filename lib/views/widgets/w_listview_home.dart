part of '../../utils/import/u_import.dart';

class WidgetListviewHome extends StatelessWidget {
  const WidgetListviewHome({
    super.key,
    required this.progLang,
    required this.myList,
  });

  final List<ModelProgLang> progLang;
  final List<ModelProgLang> myList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                  if (!myList.contains(currProgLang)) {
                    context.read<ProviderProgLang>().addToList(currProgLang);
                  } else {
                    context
                        .read<ProviderProgLang>()
                        .removeFromList(currProgLang);
                  }
                },
                icon: Icon(
                  Icons.favorite,
                  color:
                      myList.contains(currProgLang) ? Colors.red : Colors.white,
                )),
          ),
        );
      },
    );
  }
}
