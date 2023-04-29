class AllSectionModel {
  final String? status;
  final String? copyright;
  final int? numResults;
  final List<Results>? results;

  AllSectionModel({
    this.status,
    this.copyright,
    this.numResults,
    this.results,
  });

  AllSectionModel.fromJson(Map<String, dynamic> json)
    : status = json['status'] as String?,
      copyright = json['copyright'] as String?,
      numResults = json['num_results'] as int?,
      results = (json['results'] as List?)?.map((dynamic e) => Results.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'status' : status,
    'copyright' : copyright,
    'num_results' : numResults,
    'results' : results?.map((e) => e.toJson()).toList()
  };
}

class Results {
  final String? uri;
  final String? url;
  final int? id;
  final int? assetId;
  final String? source;
  final String? publishedDate;
  final String? updated;
  final String? section;
  final String? subsection;
  final String? nytdsection;
  final String? adxKeywords;
  final dynamic column;
  final String? byline;
  final String? type;
  final String? title;
  final String? abstract;
  final List<String>? desFacet;
  final List<String>? orgFacet;
  final List<String>? perFacet;
  final List<dynamic>? geoFacet;
  final List<Media>? media;
  final int? etaId;

  Results({
    this.uri,
    this.url,
    this.id,
    this.assetId,
    this.source,
    this.publishedDate,
    this.updated,
    this.section,
    this.subsection,
    this.nytdsection,
    this.adxKeywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.abstract,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.media,
    this.etaId,
  });

  Results.fromJson(Map<String, dynamic> json)
    : uri = json['uri'] as String?,
      url = json['url'] as String?,
      id = json['id'] as int?,
      assetId = json['asset_id'] as int?,
      source = json['source'] as String?,
      publishedDate = json['published_date'] as String?,
      updated = json['updated'] as String?,
      section = json['section'] as String?,
      subsection = json['subsection'] as String?,
      nytdsection = json['nytdsection'] as String?,
      adxKeywords = json['adx_keywords'] as String?,
      column = json['column'],
      byline = json['byline'] as String?,
      type = json['type'] as String?,
      title = json['title'] as String?,
      abstract = json['abstract'] as String?,
      desFacet = (json['des_facet'] as List?)?.map((dynamic e) => e as String).toList(),
      orgFacet = (json['org_facet'] as List?)?.map((dynamic e) => e as String).toList(),
      perFacet = (json['per_facet'] as List?)?.map((dynamic e) => e as String).toList(),
      geoFacet = json['geo_facet'] as List?,
      media = (json['media'] as List?)?.map((dynamic e) => Media.fromJson(e as Map<String,dynamic>)).toList(),
      etaId = json['eta_id'] as int?;

  Map<String, dynamic> toJson() => {
    'uri' : uri,
    'url' : url,
    'id' : id,
    'asset_id' : assetId,
    'source' : source,
    'published_date' : publishedDate,
    'updated' : updated,
    'section' : section,
    'subsection' : subsection,
    'nytdsection' : nytdsection,
    'adx_keywords' : adxKeywords,
    'column' : column,
    'byline' : byline,
    'type' : type,
    'title' : title,
    'abstract' : abstract,
    'des_facet' : desFacet,
    'org_facet' : orgFacet,
    'per_facet' : perFacet,
    'geo_facet' : geoFacet,
    'media' : media?.map((e) => e.toJson()).toList(),
    'eta_id' : etaId
  };
}

class Media {
  final String? type;
  final String? subtype;
  final String? caption;
  final String? copyright;
  final int? approvedForSyndication;
  final List<Mediametadata>? mediametadata;

  Media({
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
    this.approvedForSyndication,
    this.mediametadata,
  });

  Media.fromJson(Map<String, dynamic> json)
    : type = json['type'] as String?,
      subtype = json['subtype'] as String?,
      caption = json['caption'] as String?,
      copyright = json['copyright'] as String?,
      approvedForSyndication = json['approved_for_syndication'] as int?,
      mediametadata = (json['media-metadata'] as List?)?.map((dynamic e) => Mediametadata.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'type' : type,
    'subtype' : subtype,
    'caption' : caption,
    'copyright' : copyright,
    'approved_for_syndication' : approvedForSyndication,
    'media-metadata' : mediametadata?.map((e) => e.toJson()).toList()
  };
}

class Mediametadata {
  final String? url;
  final String? format;
  final int? height;
  final int? width;

  Mediametadata({
    this.url,
    this.format,
    this.height,
    this.width,
  });

  Mediametadata.fromJson(Map<String, dynamic> json)
    : url = json['url'] as String?,
      format = json['format'] as String?,
      height = json['height'] as int?,
      width = json['width'] as int?;

  Map<String, dynamic> toJson() => {
    'url' : url,
    'format' : format,
    'height' : height,
    'width' : width
  };
}