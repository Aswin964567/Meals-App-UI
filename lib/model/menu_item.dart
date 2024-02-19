class MenuItems {
  const MenuItems({required this.title, required this.imagePath});

  final String title;
  final String imagePath;
}

List<MenuItems> menuItems = [
  const MenuItems(title: 'Soups', imagePath: 'assets/menu6.png'),
  const MenuItems(title: 'Starters', imagePath: 'assets/menu6.png'),
  const MenuItems(title: 'Combo Meals', imagePath: 'assets/menu6.png'),
  const MenuItems(title: 'Jumbo Meals', imagePath: 'assets/menu6.png'),
  const MenuItems(title: 'Bread Items', imagePath: 'assets/menu1.png'),
  const MenuItems(title: 'Rice & Noodles', imagePath: 'assets/menu2.png'),
  const MenuItems(title: 'Curry Items', imagePath: 'assets/menu3.png'),
  const MenuItems(title: 'Salads', imagePath: 'assets/menu4.png'),
  const MenuItems(title: 'Continental', imagePath: 'assets/menu5.png'),
  const MenuItems(title: 'Traditional', imagePath: 'assets/menu5.png'),
];
