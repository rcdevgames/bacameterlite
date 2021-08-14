// To parse this JSON data, do
//
//     final masterModel = masterModelFromMap(jsonString);

import 'dart:convert';

MasterModel masterModelFromMap(String str) => MasterModel.fromMap(json.decode(str));

String masterModelToMap(MasterModel data) => json.encode(data.toMap());

class MasterModel {
    MasterModel({
        this.golongan,
        this.zona,
        this.kelurahan,
        this.rw,
        this.rt,
        this.kelainan,
        this.tarif,
        this.tarifPemeliharaan,
    });

    final List<Master> golongan;
    final List<Master> zona;
    final List<Master> kelurahan;
    final List<Master> rw;
    final List<Master> rt;
    final List<Master> kelainan;
    final List<Tarif> tarif;
    final List<TarifPemeliharaan> tarifPemeliharaan;

    MasterModel copyWith({
        List<Master> golongan,
        List<Master> zona,
        List<Master> kelurahan,
        List<Master> rw,
        List<Master> rt,
        List<Master> kelainan,
        List<Tarif> tarif,
        List<TarifPemeliharaan> tarifPemeliharaan,
    }) => 
        MasterModel(
            golongan: golongan ?? this.golongan,
            zona: zona ?? this.zona,
            kelurahan: kelurahan ?? this.kelurahan,
            rw: rw ?? this.rw,
            rt: rt ?? this.rt,
            kelainan: kelainan ?? this.kelainan,
            tarif: tarif ?? this.tarif,
            tarifPemeliharaan: tarifPemeliharaan ?? this.tarifPemeliharaan,
        );

    factory MasterModel.fromMap(Map<String, dynamic> json) => MasterModel(
        golongan: json["golongan"] == null ? null : List<Master>.from(json["golongan"].map((x) => Master.fromMap(x))),
        zona: json["zona"] == null ? null : List<Master>.from(json["zona"].map((x) => Master.fromMap(x))),
        kelurahan: json["kelurahan"] == null ? null : List<Master>.from(json["kelurahan"].map((x) => Master.fromMap(x))),
        rw: json["rw"] == null ? null : List<Master>.from(json["rw"].map((x) => Master.fromMap(x))),
        rt: json["rt"] == null ? null : List<Master>.from(json["rt"].map((x) => Master.fromMap(x))),
        kelainan: json["kelainan"] == null ? null : List<Master>.from(json["kelainan"].map((x) => Master.fromMap(x))),
        tarif: json["tarif"] == null ? null : List<Tarif>.from(json["tarif"].map((x) => Tarif.fromMap(x))),
        tarifPemeliharaan: json["tarif_pemeliharaan"] == null ? null : List<TarifPemeliharaan>.from(json["tarif_pemeliharaan"].map((x) => TarifPemeliharaan.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "golongan": golongan == null ? null : List<dynamic>.from(golongan.map((x) => x.toMap())),
        "zona": zona == null ? null : List<dynamic>.from(zona.map((x) => x.toMap())),
        "kelurahan": kelurahan == null ? null : List<dynamic>.from(kelurahan.map((x) => x.toMap())),
        "rw": rw == null ? null : List<dynamic>.from(rw.map((x) => x.toMap())),
        "rt": rt == null ? null : List<dynamic>.from(rt.map((x) => x.toMap())),
        "kelainan": kelainan == null ? null : List<dynamic>.from(kelainan.map((x) => x.toMap())),
        "tarif": tarif == null ? null : List<dynamic>.from(tarif.map((x) => x.toMap())),
        "tarif_pemeliharaan": tarifPemeliharaan == null ? null : List<dynamic>.from(tarifPemeliharaan.map((x) => x.toMap())),
    };
}

class Master {
    Master({
        this.kode,
        this.name,
    });

    final String kode;
    final String name;

    Master copyWith({
        String kode,
        String name,
    }) => 
        Master(
            kode: kode ?? this.kode,
            name: name ?? this.name,
        );

    factory Master.fromMap(Map<String, dynamic> json) => Master(
        kode: json["kode"] == null ? null : json["kode"],
        name: json["name"] == null ? null : json["name"],
    );

    Map<String, dynamic> toMap() => {
        "kode": kode == null ? null : kode,
        "name": name == null ? null : name,
    };
}

class Tarif {
    Tarif({
        this.golongan,
        this.tarif1,
        this.tarif2,
        this.tarif3,
        this.tarif4,
        this.tarif5,
        this.denda,
        this.biayaMaterai,
        this.biayaAdmin,
    });

    final String golongan;
    final String tarif1;
    final String tarif2;
    final String tarif3;
    final String tarif4;
    final String tarif5;
    final String denda;
    final String biayaMaterai;
    final String biayaAdmin;

    Tarif copyWith({
        String golongan,
        String tarif1,
        String tarif2,
        String tarif3,
        String tarif4,
        String tarif5,
        String denda,
        String biayaMaterai,
        String biayaAdmin,
    }) => 
        Tarif(
            golongan: golongan ?? this.golongan,
            tarif1: tarif1 ?? this.tarif1,
            tarif2: tarif2 ?? this.tarif2,
            tarif3: tarif3 ?? this.tarif3,
            tarif4: tarif4 ?? this.tarif4,
            tarif5: tarif5 ?? this.tarif5,
            denda: denda ?? this.denda,
            biayaMaterai: biayaMaterai ?? this.biayaMaterai,
            biayaAdmin: biayaAdmin ?? this.biayaAdmin,
        );

    factory Tarif.fromMap(Map<String, dynamic> json) => Tarif(
        golongan: json["golongan"] == null ? null : json["golongan"],
        tarif1: json["tarif_1"] == null ? null : json["tarif_1"],
        tarif2: json["tarif_2"] == null ? null : json["tarif_2"],
        tarif3: json["tarif_3"] == null ? null : json["tarif_3"],
        tarif4: json["tarif_4"] == null ? null : json["tarif_4"],
        tarif5: json["tarif_5"] == null ? null : json["tarif_5"],
        denda: json["denda"] == null ? null : json["denda"],
        biayaMaterai: json["biaya_materai"] == null ? null : json["biaya_materai"],
        biayaAdmin: json["biaya_admin"] == null ? null : json["biaya_admin"],
    );

    Map<String, dynamic> toMap() => {
        "golongan": golongan == null ? null : golongan,
        "tarif_1": tarif1 == null ? null : tarif1,
        "tarif_2": tarif2 == null ? null : tarif2,
        "tarif_3": tarif3 == null ? null : tarif3,
        "tarif_4": tarif4 == null ? null : tarif4,
        "tarif_5": tarif5 == null ? null : tarif5,
        "denda": denda == null ? null : denda,
        "biaya_materai": biayaMaterai == null ? null : biayaMaterai,
        "biaya_admin": biayaAdmin == null ? null : biayaAdmin,
    };
}

class TarifPemeliharaan {
    TarifPemeliharaan({
        this.diameterPipa,
        this.tarif,
    });

    final String diameterPipa;
    final String tarif;

    TarifPemeliharaan copyWith({
        String diameterPipa,
        String tarif,
    }) => 
        TarifPemeliharaan(
            diameterPipa: diameterPipa ?? this.diameterPipa,
            tarif: tarif ?? this.tarif,
        );

    factory TarifPemeliharaan.fromMap(Map<String, dynamic> json) => TarifPemeliharaan(
        diameterPipa: json["diameter_pipa"] == null ? null : json["diameter_pipa"],
        tarif: json["tarif"] == null ? null : json["tarif"],
    );

    Map<String, dynamic> toMap() => {
        "diameter_pipa": diameterPipa == null ? null : diameterPipa,
        "tarif": tarif == null ? null : tarif,
    };
}
