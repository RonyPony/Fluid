class AllProducts {
  List<Products> products;

  AllProducts({this.products});

  AllProducts.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = new List<Products>();
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  bool visibleIndividually;
  String name;
  List<LocalizedNames> localizedNames;
  String shortDescription;
  String fullDescription;
  Null showOnHomePage;
  Null metaKeywords;
  Null metaDescription;
  Null metaTitle;
  bool allowCustomerReviews;
  int approvedRatingSum;
  int notApprovedRatingSum;
  int approvedTotalReviews;
  int notApprovedTotalReviews;
  String sku;
  Null manufacturerPartNumber;
  Null gtin;
  bool isGiftCard;
  bool requireOtherProducts;
  bool automaticallyAddRequiredProducts;
  bool isDownload;
  bool unlimitedDownloads;
  int maxNumberOfDownloads;
  Null downloadExpirationDays;
  bool hasSampleDownload;
  bool hasUserAgreement;
  bool isRecurring;
  int recurringCycleLength;
  int recurringTotalCycles;
  bool isRental;
  int rentalPriceLength;
  bool isShipEnabled;
  bool isFreeShipping;
  bool shipSeparately;
  double additionalShippingCharge;
  bool isTaxExempt;
  int taxCategoryId;
  int backorderModeId;
  bool isTelecommunicationsOrBroadcastingOrElectronicServices;
  bool useMultipleWarehouses;
  int manageInventoryMethodId;
  int stockQuantity;
  bool displayStockAvailability;
  bool displayStockQuantity;
  int minStockQuantity;
  int notifyAdminForQuantityBelow;
  bool allowBackInStockSubscriptions;
  int orderMinimumQuantity;
  int orderMaximumQuantity;
  Null allowedQuantities;
  bool allowAddingOnlyExistingAttributeCombinations;
  bool disableBuyButton;
  bool disableWishlistButton;
  bool availableForPreOrder;
  Null preOrderAvailabilityStartDateTimeUtc;
  bool callForPrice;
  double price;
  double oldPrice;
  double productCost;
  Null specialPrice;
  Null specialPriceStartDateTimeUtc;
  Null specialPriceEndDateTimeUtc;
  bool customerEntersPrice;
  double minimumCustomerEnteredPrice;
  double maximumCustomerEnteredPrice;
  bool basepriceEnabled;
  double basepriceAmount;
  double basepriceBaseAmount;
  bool hasTierPrices;
  bool hasDiscountsApplied;
  double weight;
  double length;
  double width;
  double height;
  Null availableStartDateTimeUtc;
  Null availableEndDateTimeUtc;
  int displayOrder;
  bool published;
  bool deleted;
  String createdOnUtc;
  String updatedOnUtc;
  String productType;
  int parentGroupedProductId;
  List<Null> roleIds;
  List<Null> discountIds;
  List<Null> storeIds;
  List<int> manufacturerIds;
  List<Images> images;
  Null attributes;
  Null productAttributeCombinations;
  Null productSpecificationAttributes;
  List<int> associatedProductIds;
  List<String> tags;
  int vendorId;
  String seName;
  int id;

  Products(
      {this.visibleIndividually,
      this.name,
      this.localizedNames,
      this.shortDescription,
      this.fullDescription,
      this.showOnHomePage,
      this.metaKeywords,
      this.metaDescription,
      this.metaTitle,
      this.allowCustomerReviews,
      this.approvedRatingSum,
      this.notApprovedRatingSum,
      this.approvedTotalReviews,
      this.notApprovedTotalReviews,
      this.sku,
      this.manufacturerPartNumber,
      this.gtin,
      this.isGiftCard,
      this.requireOtherProducts,
      this.automaticallyAddRequiredProducts,
      this.isDownload,
      this.unlimitedDownloads,
      this.maxNumberOfDownloads,
      this.downloadExpirationDays,
      this.hasSampleDownload,
      this.hasUserAgreement,
      this.isRecurring,
      this.recurringCycleLength,
      this.recurringTotalCycles,
      this.isRental,
      this.rentalPriceLength,
      this.isShipEnabled,
      this.isFreeShipping,
      this.shipSeparately,
      this.additionalShippingCharge,
      this.isTaxExempt,
      this.taxCategoryId,
      this.backorderModeId,
      this.isTelecommunicationsOrBroadcastingOrElectronicServices,
      this.useMultipleWarehouses,
      this.manageInventoryMethodId,
      this.stockQuantity,
      this.displayStockAvailability,
      this.displayStockQuantity,
      this.minStockQuantity,
      this.notifyAdminForQuantityBelow,
      this.allowBackInStockSubscriptions,
      this.orderMinimumQuantity,
      this.orderMaximumQuantity,
      this.allowedQuantities,
      this.allowAddingOnlyExistingAttributeCombinations,
      this.disableBuyButton,
      this.disableWishlistButton,
      this.availableForPreOrder,
      this.preOrderAvailabilityStartDateTimeUtc,
      this.callForPrice,
      this.price,
      this.oldPrice,
      this.productCost,
      this.specialPrice,
      this.specialPriceStartDateTimeUtc,
      this.specialPriceEndDateTimeUtc,
      this.customerEntersPrice,
      this.minimumCustomerEnteredPrice,
      this.maximumCustomerEnteredPrice,
      this.basepriceEnabled,
      this.basepriceAmount,
      this.basepriceBaseAmount,
      this.hasTierPrices,
      this.hasDiscountsApplied,
      this.weight,
      this.length,
      this.width,
      this.height,
      this.availableStartDateTimeUtc,
      this.availableEndDateTimeUtc,
      this.displayOrder,
      this.published,
      this.deleted,
      this.createdOnUtc,
      this.updatedOnUtc,
      this.productType,
      this.parentGroupedProductId,
      this.roleIds,
      this.discountIds,
      this.storeIds,
      this.manufacturerIds,
      this.images,
      this.attributes,
      this.productAttributeCombinations,
      this.productSpecificationAttributes,
      this.associatedProductIds,
      this.tags,
      this.vendorId,
      this.seName,
      this.id});

  Products.fromJson(Map<String, dynamic> json) {
    visibleIndividually = json['visible_individually'];
    name = json['name'];
    // if (json['localized_names'] != null) {
    //   localizedNames = new List<LocalizedNames>();
    //   json['localized_names'].forEach((v) {
    //     localizedNames.add(new LocalizedNames.fromJson(v));
    //   });
    // }
    shortDescription = json['short_description'];
    fullDescription = json['full_description'];
    showOnHomePage = json['show_on_home_page'];
    metaKeywords = json['meta_keywords'];
    metaDescription = json['meta_description'];
    metaTitle = json['meta_title'];
    allowCustomerReviews = json['allow_customer_reviews'];
    approvedRatingSum = json['approved_rating_sum'];
    notApprovedRatingSum = json['not_approved_rating_sum'];
    approvedTotalReviews = json['approved_total_reviews'];
    notApprovedTotalReviews = json['not_approved_total_reviews'];
    sku = json['sku'];
    manufacturerPartNumber = json['manufacturer_part_number'];
    gtin = json['gtin'];
    isGiftCard = json['is_gift_card'];
    requireOtherProducts = json['require_other_products'];
    automaticallyAddRequiredProducts =
        json['automatically_add_required_products'];
    isDownload = json['is_download'];
    unlimitedDownloads = json['unlimited_downloads'];
    maxNumberOfDownloads = json['max_number_of_downloads'];
    downloadExpirationDays = json['download_expiration_days'];
    hasSampleDownload = json['has_sample_download'];
    hasUserAgreement = json['has_user_agreement'];
    isRecurring = json['is_recurring'];
    recurringCycleLength = json['recurring_cycle_length'];
    recurringTotalCycles = json['recurring_total_cycles'];
    isRental = json['is_rental'];
    rentalPriceLength = json['rental_price_length'];
    isShipEnabled = json['is_ship_enabled'];
    isFreeShipping = json['is_free_shipping'];
    shipSeparately = json['ship_separately'];
    additionalShippingCharge = json['additional_shipping_charge'];
    isTaxExempt = json['is_tax_exempt'];
    taxCategoryId = json['tax_category_id'];
    backorderModeId = json['backorder_mode_id'];
    isTelecommunicationsOrBroadcastingOrElectronicServices =
        json['is_telecommunications_or_broadcasting_or_electronic_services'];
    useMultipleWarehouses = json['use_multiple_warehouses'];
    manageInventoryMethodId = json['manage_inventory_method_id'];
    stockQuantity = json['stock_quantity'];
    displayStockAvailability = json['display_stock_availability'];
    displayStockQuantity = json['display_stock_quantity'];
    minStockQuantity = json['min_stock_quantity'];
    notifyAdminForQuantityBelow = json['notify_admin_for_quantity_below'];
    allowBackInStockSubscriptions = json['allow_back_in_stock_subscriptions'];
    orderMinimumQuantity = json['order_minimum_quantity'];
    orderMaximumQuantity = json['order_maximum_quantity'];
    allowedQuantities = json['allowed_quantities'];
    allowAddingOnlyExistingAttributeCombinations =
        json['allow_adding_only_existing_attribute_combinations'];
    disableBuyButton = json['disable_buy_button'];
    disableWishlistButton = json['disable_wishlist_button'];
    availableForPreOrder = json['available_for_pre_order'];
    preOrderAvailabilityStartDateTimeUtc =
        json['pre_order_availability_start_date_time_utc'];
    callForPrice = json['call_for_price'];
    price = json['price'];
    oldPrice = json['old_price'];
    productCost = json['product_cost'];
    specialPrice = json['special_price'];
    specialPriceStartDateTimeUtc = json['special_price_start_date_time_utc'];
    specialPriceEndDateTimeUtc = json['special_price_end_date_time_utc'];
    customerEntersPrice = json['customer_enters_price'];
    minimumCustomerEnteredPrice = json['minimum_customer_entered_price'];
    maximumCustomerEnteredPrice = json['maximum_customer_entered_price'];
    basepriceEnabled = json['baseprice_enabled'];
    basepriceAmount = json['baseprice_amount'];
    basepriceBaseAmount = json['baseprice_base_amount'];
    hasTierPrices = json['has_tier_prices'];
    hasDiscountsApplied = json['has_discounts_applied'];
    weight = json['weight'];
    length = json['length'];
    width = json['width'];
    height = json['height'];
    availableStartDateTimeUtc = json['available_start_date_time_utc'];
    availableEndDateTimeUtc = json['available_end_date_time_utc'];
    displayOrder = json['display_order'];
    published = json['published'];
    deleted = json['deleted'];
    createdOnUtc = json['created_on_utc'];
    updatedOnUtc = json['updated_on_utc'];
    productType = json['product_type'];
    parentGroupedProductId = json['parent_grouped_product_id'];
    
    manufacturerIds = json['manufacturer_ids'].cast<int>();
    if (json['images'] != null) {
      images = new List<Images>();
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
    attributes = json['attributes'];
    productAttributeCombinations = json['product_attribute_combinations'];
    productSpecificationAttributes = json['product_specification_attributes'];
    associatedProductIds = json['associated_product_ids'].cast<int>();
    tags = json['tags'].cast<String>();
    vendorId = json['vendor_id'];
    seName = json['se_name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['visible_individually'] = this.visibleIndividually;
    data['name'] = this.name;
    if (this.localizedNames != null) {
      data['localized_names'] =
          this.localizedNames.map((v) => v.toJson()).toList();
    }
    data['short_description'] = this.shortDescription;
    data['full_description'] = this.fullDescription;
    data['show_on_home_page'] = this.showOnHomePage;
    data['meta_keywords'] = this.metaKeywords;
    data['meta_description'] = this.metaDescription;
    data['meta_title'] = this.metaTitle;
    data['allow_customer_reviews'] = this.allowCustomerReviews;
    data['approved_rating_sum'] = this.approvedRatingSum;
    data['not_approved_rating_sum'] = this.notApprovedRatingSum;
    data['approved_total_reviews'] = this.approvedTotalReviews;
    data['not_approved_total_reviews'] = this.notApprovedTotalReviews;
    data['sku'] = this.sku;
    data['manufacturer_part_number'] = this.manufacturerPartNumber;
    data['gtin'] = this.gtin;
    data['is_gift_card'] = this.isGiftCard;
    data['require_other_products'] = this.requireOtherProducts;
    data['automatically_add_required_products'] =
        this.automaticallyAddRequiredProducts;
    data['is_download'] = this.isDownload;
    data['unlimited_downloads'] = this.unlimitedDownloads;
    data['max_number_of_downloads'] = this.maxNumberOfDownloads;
    data['download_expiration_days'] = this.downloadExpirationDays;
    data['has_sample_download'] = this.hasSampleDownload;
    data['has_user_agreement'] = this.hasUserAgreement;
    data['is_recurring'] = this.isRecurring;
    data['recurring_cycle_length'] = this.recurringCycleLength;
    data['recurring_total_cycles'] = this.recurringTotalCycles;
    data['is_rental'] = this.isRental;
    data['rental_price_length'] = this.rentalPriceLength;
    data['is_ship_enabled'] = this.isShipEnabled;
    data['is_free_shipping'] = this.isFreeShipping;
    data['ship_separately'] = this.shipSeparately;
    data['additional_shipping_charge'] = this.additionalShippingCharge;
    data['is_tax_exempt'] = this.isTaxExempt;
    data['tax_category_id'] = this.taxCategoryId;
    data['backorder_mode_id'] = this.backorderModeId;
    data['is_telecommunications_or_broadcasting_or_electronic_services'] =
        this.isTelecommunicationsOrBroadcastingOrElectronicServices;
    data['use_multiple_warehouses'] = this.useMultipleWarehouses;
    data['manage_inventory_method_id'] = this.manageInventoryMethodId;
    data['stock_quantity'] = this.stockQuantity;
    data['display_stock_availability'] = this.displayStockAvailability;
    data['display_stock_quantity'] = this.displayStockQuantity;
    data['min_stock_quantity'] = this.minStockQuantity;
    data['notify_admin_for_quantity_below'] = this.notifyAdminForQuantityBelow;
    data['allow_back_in_stock_subscriptions'] =
        this.allowBackInStockSubscriptions;
    data['order_minimum_quantity'] = this.orderMinimumQuantity;
    data['order_maximum_quantity'] = this.orderMaximumQuantity;
    data['allowed_quantities'] = this.allowedQuantities;
    data['allow_adding_only_existing_attribute_combinations'] =
        this.allowAddingOnlyExistingAttributeCombinations;
    data['disable_buy_button'] = this.disableBuyButton;
    data['disable_wishlist_button'] = this.disableWishlistButton;
    data['available_for_pre_order'] = this.availableForPreOrder;
    data['pre_order_availability_start_date_time_utc'] =
        this.preOrderAvailabilityStartDateTimeUtc;
    data['call_for_price'] = this.callForPrice;
    data['price'] = this.price;
    data['old_price'] = this.oldPrice;
    data['product_cost'] = this.productCost;
    data['special_price'] = this.specialPrice;
    data['special_price_start_date_time_utc'] =
        this.specialPriceStartDateTimeUtc;
    data['special_price_end_date_time_utc'] = this.specialPriceEndDateTimeUtc;
    data['customer_enters_price'] = this.customerEntersPrice;
    data['minimum_customer_entered_price'] = this.minimumCustomerEnteredPrice;
    data['maximum_customer_entered_price'] = this.maximumCustomerEnteredPrice;
    data['baseprice_enabled'] = this.basepriceEnabled;
    data['baseprice_amount'] = this.basepriceAmount;
    data['baseprice_base_amount'] = this.basepriceBaseAmount;
    data['has_tier_prices'] = this.hasTierPrices;
    data['has_discounts_applied'] = this.hasDiscountsApplied;
    data['weight'] = this.weight;
    data['length'] = this.length;
    data['width'] = this.width;
    data['height'] = this.height;
    data['available_start_date_time_utc'] = this.availableStartDateTimeUtc;
    data['available_end_date_time_utc'] = this.availableEndDateTimeUtc;
    data['display_order'] = this.displayOrder;
    data['published'] = this.published;
    data['deleted'] = this.deleted;
    data['created_on_utc'] = this.createdOnUtc;
    data['updated_on_utc'] = this.updatedOnUtc;
    data['product_type'] = this.productType;
    data['parent_grouped_product_id'] = this.parentGroupedProductId;
    
    data['manufacturer_ids'] = this.manufacturerIds;
    if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
    data['attributes'] = this.attributes;
    data['product_attribute_combinations'] = this.productAttributeCombinations;
    data['product_specification_attributes'] =
        this.productSpecificationAttributes;
    data['associated_product_ids'] = this.associatedProductIds;
    data['tags'] = this.tags;
    data['vendor_id'] = this.vendorId;
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

class Images {
  int productId;
  int pictureId;
  int position;
  String src;
  Null attachment;
  Null seoFilename;
  int id;

  Images(
      {this.productId,
      this.pictureId,
      this.position,
      this.src,
      this.attachment,
      this.seoFilename,
      this.id});

  Images.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    pictureId = json['picture_id'];
    position = json['position'];
    src = json['src'];
    attachment = json['attachment'];
    seoFilename = json['seoFilename'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['picture_id'] = this.pictureId;
    data['position'] = this.position;
    data['src'] = this.src;
    data['attachment'] = this.attachment;
    data['seoFilename'] = this.seoFilename;
    data['id'] = this.id;
    return data;
  }
}