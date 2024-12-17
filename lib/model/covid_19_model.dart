class CountryName {
  List<DataModel>? dataModel;
  CountryName({this.dataModel});
  factory CountryName.maptomodel(Map m) {
    return CountryName(
        //  data:m["data"] != null ?
        // dataModel:   List<DataModel>.from(m["data"]).map((e) => DataModel.maptomodel(e),);
        dataModel: m["data"] != null
            ? List<DataModel>.from(
                m["data"].map((e) => DataModel.maptomodel(e)))
            : null);
  }
}

class DataModel {
  String? iso, name;
  DataModel({this.name, this.iso});
  factory DataModel.maptomodel(Map m) {
    return DataModel(
      iso: m["iso"],
      name: m["name"],
    );
  }
}

class ReportModel {
  List<DataListModel>? dataListModel;
  ReportModel({this.dataListModel});
  factory ReportModel.maptomodel(Map m) {
    return ReportModel(
        dataListModel: m["data"] != null
            ? List<DataListModel>.from(
                m["data"].map((e) => DataListModel.maptomodel(e)))
            : null);
  }
}

class DataListModel {
  int? date,
      confirmed,
      deaths,
      recovered,
      confirmed_diff,
      deaths_diff,
      recovered_diff,
      active,
      active_diff;
  String? last_update;
  double? fatality_rate;
  RegionModel? region;
  DataListModel(
      {this.date,
      this.active,
      this.active_diff,
      this.confirmed,
      this.confirmed_diff,
      this.deaths,
      this.deaths_diff,
      this.fatality_rate,
      this.last_update,
      this.recovered,
      this.recovered_diff,
      this.region});
  factory DataListModel.maptomodel(Map m) {
    return DataListModel(
      active: m["active"],
      active_diff: m["active_diff"],
      confirmed: m["confirmed"],
      confirmed_diff: m["confirmed_diff"],
      date: m["date"],
      deaths: m["deaths"],
      deaths_diff: m["deaths_diff"],
      fatality_rate: m["fatality_rate"],
      last_update: m["last_update"],
      recovered: m["recovered"],
      recovered_diff: m["recovered_diff"],
      region: RegionModel.maptomodel(m["region"]),
    );
  }
}

class RegionModel {
  String? iso, name, province, lat, long;
  List<CitiesModel>? citiesModel;
  RegionModel(
      {this.name,
      this.iso,
      this.lat,
      this.citiesModel,
      this.long,
      this.province});
  factory RegionModel.maptomodel(Map m) {
    return RegionModel(
        lat: m["lat"],
        iso: m["ios"],
        long: m["long"],
        name: m["name"],
        province: m["province"],
        citiesModel: m["cities"] != null
            ? List<CitiesModel>.from(
                m["data"].map((e) => CitiesModel.maptomodel(e)))
            : null);
  }
}

class CitiesModel {
  String? name, date, lat, long, last_update;
  int? confirmed, deaths, confirmed_diff, deaths_diff;
  CitiesModel(
      {this.long,
      this.lat,
      this.name,
      this.last_update,
      this.deaths_diff,
      this.deaths,
      this.confirmed_diff,
      this.confirmed,
      this.date});
  factory CitiesModel.maptomodel(Map m) {
    return CitiesModel(
      name: m["name"],
      long: m["long"],
      last_update: m["last_update"],
      deaths_diff: m["deaths_diff"],
      deaths: m["deaths"],
      confirmed_diff: m["confirmed_diff"],
      date: m["date"],
      confirmed: m["confirmed"],
      lat: m["lat"],
    );
  }
}
// List m = json['hits'];
// return HitsModel(
// imagemodel: m.map((e) => ImageModel.maptomodal(e)).toList(),
// total: json["total"],
// totalHits: json["totalHits"]);
