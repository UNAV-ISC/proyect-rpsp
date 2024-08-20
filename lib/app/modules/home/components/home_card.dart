part of '../views/home_view.dart';

class _HomeCard extends StatelessWidget {
  final Widget icon;
  final String title;
  final String rightText;
  final VoidCallback onPressed;

  const _HomeCard({
    required this.icon,
    required this.title,
    this.rightText = '',
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffF5F5F5),
      margin: const EdgeInsets.symmetric(vertical: 6),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: _ButtonCard(
        onTap: onPressed,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
          //visualDensity: VisualDensity.compact,
          // contentPadding: EdgeInsets.only(left: 15, right: 0),
          leading: icon,
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          trailing: Text(
            rightText,
            style: const TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
          ),
        ),
      ),
    );
  }
}

class _ButtonCard extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  const _ButtonCard({required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(0),
      onPressed: onTap,
      child: child,
    );
  }
}
