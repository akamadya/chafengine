// ignore_for_file: public_member_api_docs, sort_constructors_first
class CommonRequest {
  int? page;
  int? view;
  String? search;
  String code;

  CommonRequest({
    required this.code,
    this.page,
    this.view = 10,
    this.search,
  });

}
