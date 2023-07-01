class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Kang Dong_joo",
    lastMessage: "Hope you are doing well...",
    image: 'assets/images/doctor7.jpg',
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "Woo Yeon_hwa",
    lastMessage: "Hello Abdullah! I am...",
    image: 'assets/images/docc.jpg',
    time: "8m ago",
    isActive: true,
  ),
  // Chat(
  //   name: "Lee Young_jo",
  //   lastMessage: 'assets/images/docc.jpg',
  //   image: "assets/images/user_3.png",
  //   time: "5d ago",
  //   isActive: false,
  // ),
  // Chat(
  //   name: "Jacob Jones",
  //   lastMessage: "You’re welcome :)",
  //   image: 'assets/images/docc.jpg',
  //   time: "5d ago",
  //   isActive: true,
  // ),
  // Chat(
  //   name: "Albert Flores",
  //   lastMessage: "Thanks",
  //   image: 'assets/images/docc.jpg',
  //   time: "6d ago",
  //   isActive: false,
  // ),
  // Chat(
  //   name: "Jenny Wilson",
  //   lastMessage: "Hope you are doing well...",
  //   image: 'assets/images/docc.jpg',
  //   time: "3m ago",
  //   isActive: false,
  // ),
  // Chat(
  //   name: "Esther Howard",
  //   lastMessage: "Hello Abdullah! I am...",
  //   image: 'assets/images/docc.jpg',
  //   time: "8m ago",
  //   isActive: true,
  // ),
  // Chat(
  //   name: "Ralph Edwards",
  //   lastMessage: "Do you have update...",
  //   image: 'assets/images/docc.jpg',
  //   time: "5d ago",
  //   isActive: false,
  // ),
];
