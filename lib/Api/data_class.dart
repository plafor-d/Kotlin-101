class Promo {
  final int id;
  final String login;
  final List groups;

  const Promo({

    required this.id,
    required this.login,
    required this.groups,

  });

  factory Promo.fromJson(Map<String, dynamic> json) {

    return Promo(

      id: json['id'],
      login: json['login'],
      groups: json ['groups'],

    );
  }
}