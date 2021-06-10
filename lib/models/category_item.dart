class CategoryItem {
  String name;
  List<LocalizedNames> localizedNames;
  String description;
  int categoryTemplateId;
  String metaKeywords;
  String metaDescription;
  String metaTitle;
  int parentCategoryId;
  int pageSize;
  String pageSizeOptions;
  String priceRanges;
  bool showOnHomePage;
  bool includeInTopMenu;
  bool hasDiscountsApplied;
  bool published;
  bool deleted;
  int displayOrder;
  String createdOnUtc;
  bool allowCustomersToSelectPageSize;
  String updatedOnUtc;
  List<int> roleIds;
  List<int> discountIds;
  List<int> storeIds;
  Image image;
  String seName;
  int id;

  CategoryItem(
      {this.name,
      this.localizedNames,
      this.description,
      this.categoryTemplateId,
      this.metaKeywords,
      this.metaDescription,
      this.metaTitle,
      this.parentCategoryId,
      this.pageSize,
      this.pageSizeOptions,
      this.priceRanges,
      this.showOnHomePage,
      this.includeInTopMenu,
      this.hasDiscountsApplied,
      this.published,
      this.deleted,
      this.displayOrder,
      this.createdOnUtc,
      this.allowCustomersToSelectPageSize,
      this.updatedOnUtc,
      this.roleIds,
      this.discountIds,
      this.storeIds,
      this.image,
      this.seName,
      this.id});

  CategoryItem.fromJson(Map<String, dynamic> json) {
    name = json['categories'][0]['name'];
    if (json['localized_names'] != null) {
      localizedNames = new List<LocalizedNames>();
      json['localized_names'].forEach((v) {
        localizedNames.add(new LocalizedNames.fromJson(v));
      });
    }
    description = json['categories'][0]['description'];
    categoryTemplateId = json['categories'][0]['category_template_id'];
    metaKeywords = json['categories'][0]['meta_keywords'];
    metaDescription = json['categories'][0]['meta_description'];
    metaTitle = json['categories'][0]['meta_title'];
    parentCategoryId = json['categories'][0]['parent_category_id'];
    pageSize = json['categories'][0]['page_size'];
    pageSizeOptions = json['categories'][0]['page_size_options'];
    priceRanges = json['categories'][0]['price_ranges'];
    showOnHomePage = json['categories'][0]['show_on_home_page'];
    includeInTopMenu = json['categories'][0]['include_in_top_menu'];
    hasDiscountsApplied = json['categories'][0]['has_discounts_applied'];
    published = json['categories'][0]['published'];
    deleted = json['categories'][0]['deleted'];
    displayOrder = json['categories'][0]['display_order'];
    createdOnUtc = json['categories'][0]['created_on_utc'];
    allowCustomersToSelectPageSize =
        json['categories'][0]['allow_customers_to_select_page_size'];
    updatedOnUtc = json['categories'][0]['updated_on_utc'];
    roleIds = json['categories'][0]['role_ids'].cast<int>();
    discountIds = json['categories'][0]['discount_ids'].cast<int>();
    storeIds = json['categories'][0]['store_ids'].cast<int>();
    image = json['categories'][0]['image'] != null ? new Image.fromJson(json['categories'][0]['image']) : null;
    seName = json['categories'][0]['se_name'];
    id = json['categories'][0]['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.localizedNames != null) {
      data['localized_names'] =
          this.localizedNames.map((v) => v.toJson()).toList();
    }
    data['description'] = this.description;
    data['category_template_id'] = this.categoryTemplateId;
    data['meta_keywords'] = this.metaKeywords;
    data['meta_description'] = this.metaDescription;
    data['meta_title'] = this.metaTitle;
    data['parent_category_id'] = this.parentCategoryId;
    data['page_size'] = this.pageSize;
    data['page_size_options'] = this.pageSizeOptions;
    data['price_ranges'] = this.priceRanges;
    data['show_on_home_page'] = this.showOnHomePage;
    data['include_in_top_menu'] = this.includeInTopMenu;
    data['has_discounts_applied'] = this.hasDiscountsApplied;
    data['published'] = this.published;
    data['deleted'] = this.deleted;
    data['display_order'] = this.displayOrder;
    data['created_on_utc'] = this.createdOnUtc;
    data['allow_customers_to_select_page_size'] =
        this.allowCustomersToSelectPageSize;
    data['updated_on_utc'] = this.updatedOnUtc;
    data['role_ids'] = this.roleIds;
    data['discount_ids'] = this.discountIds;
    data['store_ids'] = this.storeIds;
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    data['se_name'] = this.seName;
    data['id'] = this.id;
    return data;
  }
}

class LocalizedNames {
  int languageId;
  String localizedName;

  LocalizedNames({this.languageId, this.localizedName});

  LocalizedNames.fromJson(Map<String, dynamic> json) {
    languageId = json['language_id'];
    localizedName = json['localized_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['language_id'] = this.languageId;
    data['localized_name'] = this.localizedName;
    return data;
  }
}

class Image {
  String src;
  String attachment;
  String seoFilename;
  int id;

  Image({this.src, this.attachment, this.seoFilename, this.id});

  Image.fromJson(Map<String, dynamic> json) {
    src = json['src'];
    attachment = json['attachment'];
    seoFilename = json['seoFilename'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['src'] = this.src;
    data['attachment'] = this.attachment;
    data['seoFilename'] = this.seoFilename;
    data['id'] = this.id;
    return data;
  }
}