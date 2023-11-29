abstract class PaginationService<T> {

  late List<T> items ;
  bool isLoading = false;
  int pageNo = 0;

  /// 请求数据
  Future<List<T>> fetchData();

  /// 加载下一页
  loadMore() async {
    if (isLoading) {
      return;
    }
    isLoading = true;
    final List<T> newItems = await fetchData();
    items.addAll(newItems);
    pageNo++;
    isLoading = false;
  }

  /// 刷新数据
  refresh() async {
    if (isLoading) {
      return;
    }

    isLoading = true;
    pageNo = 0;
    final List<T> newItems = await fetchData();
    items = newItems;
    pageNo++;
    isLoading = false;
  }

  /// 重置筛选
  resetFilter() {}

}
