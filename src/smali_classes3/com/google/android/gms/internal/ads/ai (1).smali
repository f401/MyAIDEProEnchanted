.class public final Lcom/google/android/gms/internal/ads/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/ads/zzasm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 64

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v13, v2

    move-wide/from16 v16, v13

    move-wide/from16 v19, v16

    move-wide/from16 v23, v19

    move-object v8, v4

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    move-object/from16 v18, v12

    move-object/from16 v22, v18

    move-object/from16 v25, v22

    move-object/from16 v27, v25

    move-object/from16 v28, v27

    move-object/from16 v34, v28

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v39, v36

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v43, v41

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move-object/from16 v48, v46

    move-object/from16 v49, v48

    move-object/from16 v50, v49

    move-object/from16 v53, v50

    move-object/from16 v57, v53

    move-object/from16 v59, v57

    move-object/from16 v60, v59

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v47, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v61, 0x0

    :goto_68
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_1b4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v3

    packed-switch v3, :pswitch_data_1be

    :pswitch_79  #0x10, 0x11, 0x14, 0x1b, 0x29
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->P8(Landroid/os/Parcel;I)V

    goto :goto_68

    :pswitch_7d  #0x38
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v61

    goto :goto_68

    :pswitch_82  #0x37
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v60

    goto :goto_68

    :pswitch_87  #0x36
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v59

    goto :goto_68

    :pswitch_8c  #0x35
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v58

    goto :goto_68

    :pswitch_91  #0x34
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v57

    goto :goto_68

    :pswitch_96  #0x33
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v56

    goto :goto_68

    :pswitch_9b  #0x32
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v55

    goto :goto_68

    :pswitch_a0  #0x31
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v54

    goto :goto_68

    :pswitch_a5  #0x30
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v53

    goto :goto_68

    :pswitch_aa  #0x2f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v52

    goto :goto_68

    :pswitch_af  #0x2e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v51

    goto :goto_68

    :pswitch_b4  #0x2d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v50

    goto :goto_68

    :pswitch_b9  #0x2c
    sget-object v3, Lcom/google/android/gms/internal/ads/zzawo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v49, v2

    check-cast v49, Lcom/google/android/gms/internal/ads/zzawo;

    goto :goto_68

    :pswitch_c4  #0x2b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v48

    goto :goto_68

    :pswitch_c9  #0x2a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v47

    goto :goto_68

    :pswitch_ce  #0x28
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v46

    goto :goto_68

    :pswitch_d3  #0x27
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v45

    goto :goto_68

    :pswitch_d8  #0x26
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v44

    goto :goto_68

    :pswitch_dd  #0x25
    sget-object v3, Lcom/google/android/gms/internal/ads/zzaso;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Lcom/google/android/gms/internal/ads/zzaso;

    goto :goto_68

    :pswitch_e8  #0x24
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v42

    goto/16 :goto_68

    :pswitch_ee  #0x23
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v41

    goto/16 :goto_68

    :pswitch_f4  #0x22
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v40

    goto/16 :goto_68

    :pswitch_fa  #0x21
    sget-object v3, Lcom/google/android/gms/internal/ads/zzawd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Lcom/google/android/gms/internal/ads/zzawd;

    goto/16 :goto_68

    :pswitch_106  #0x20
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v38

    goto/16 :goto_68

    :pswitch_10c  #0x1f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v37

    goto/16 :goto_68

    :pswitch_112  #0x1e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_68

    :pswitch_118  #0x1d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_68

    :pswitch_11e  #0x1c
    sget-object v3, Lcom/google/android/gms/internal/ads/zzasy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Lcom/google/android/gms/internal/ads/zzasy;

    goto/16 :goto_68

    :pswitch_12a  #0x1a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v33

    goto/16 :goto_68

    :pswitch_130  #0x19
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v32

    goto/16 :goto_68

    :pswitch_136  #0x18
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v31

    goto/16 :goto_68

    :pswitch_13c  #0x17
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v30

    goto/16 :goto_68

    :pswitch_142  #0x16
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v29

    goto/16 :goto_68

    :pswitch_148  #0x15
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_68

    :pswitch_14e  #0x13
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_68

    :pswitch_154  #0x12
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v26

    goto/16 :goto_68

    :pswitch_15a  #0xf
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_68

    :pswitch_160  #0xe
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v23

    goto/16 :goto_68

    :pswitch_166  #0xd
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_68

    :pswitch_16c  #0xc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v21

    goto/16 :goto_68

    :pswitch_172  #0xb
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v19

    goto/16 :goto_68

    :pswitch_178  #0xa
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v18

    goto/16 :goto_68

    :pswitch_17e  #0x9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v16

    goto/16 :goto_68

    :pswitch_184  #0x8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v15

    goto/16 :goto_68

    :pswitch_18a  #0x7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v13

    goto/16 :goto_68

    :pswitch_190  #0x6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v12

    goto/16 :goto_68

    :pswitch_196  #0x5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v11

    goto/16 :goto_68

    :pswitch_19c  #0x4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v10

    goto/16 :goto_68

    :pswitch_1a2  #0x3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_68

    :pswitch_1a8  #0x2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_68

    :pswitch_1ae  #0x1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v7

    goto/16 :goto_68

    :cond_1b4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->aM(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    move-object v6, v0

    invoke-direct/range {v6 .. v61}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/internal/ads/zzasy;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzawo;Ljava/lang/String;ZZLandroid/os/Bundle;ZIZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_1ae  #00000001
        :pswitch_1a8  #00000002
        :pswitch_1a2  #00000003
        :pswitch_19c  #00000004
        :pswitch_196  #00000005
        :pswitch_190  #00000006
        :pswitch_18a  #00000007
        :pswitch_184  #00000008
        :pswitch_17e  #00000009
        :pswitch_178  #0000000a
        :pswitch_172  #0000000b
        :pswitch_16c  #0000000c
        :pswitch_166  #0000000d
        :pswitch_160  #0000000e
        :pswitch_15a  #0000000f
        :pswitch_79  #00000010
        :pswitch_79  #00000011
        :pswitch_154  #00000012
        :pswitch_14e  #00000013
        :pswitch_79  #00000014
        :pswitch_148  #00000015
        :pswitch_142  #00000016
        :pswitch_13c  #00000017
        :pswitch_136  #00000018
        :pswitch_130  #00000019
        :pswitch_12a  #0000001a
        :pswitch_79  #0000001b
        :pswitch_11e  #0000001c
        :pswitch_118  #0000001d
        :pswitch_112  #0000001e
        :pswitch_10c  #0000001f
        :pswitch_106  #00000020
        :pswitch_fa  #00000021
        :pswitch_f4  #00000022
        :pswitch_ee  #00000023
        :pswitch_e8  #00000024
        :pswitch_dd  #00000025
        :pswitch_d8  #00000026
        :pswitch_d3  #00000027
        :pswitch_ce  #00000028
        :pswitch_79  #00000029
        :pswitch_c9  #0000002a
        :pswitch_c4  #0000002b
        :pswitch_b9  #0000002c
        :pswitch_b4  #0000002d
        :pswitch_af  #0000002e
        :pswitch_aa  #0000002f
        :pswitch_a5  #00000030
        :pswitch_a0  #00000031
        :pswitch_9b  #00000032
        :pswitch_96  #00000033
        :pswitch_91  #00000034
        :pswitch_8c  #00000035
        :pswitch_87  #00000036
        :pswitch_82  #00000037
        :pswitch_7d  #00000038
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzasm;

    return-object p1
.end method
