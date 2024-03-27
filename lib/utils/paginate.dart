class Paginate {
  int page;
  int size;
  Paginate({required this.page, required this.size});

  bool reachEndPage(int length) => _endOfPage(length);

  bool _endOfPage(int length) {
    return length < size;
  }
}
