.class public final Lcom/google/android/gms/internal/ads/Zh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/ads/zzasi;",
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
    .registers 71

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v28, v2

    move-wide/from16 v35, v28

    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v21, v19

    move-object/from16 v22, v21

    move-object/from16 v27, v22

    move-object/from16 v30, v27

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v37, v34

    move-object/from16 v44, v37

    move-object/from16 v45, v44

    move-object/from16 v48, v45

    move-object/from16 v49, v48

    move-object/from16 v50, v49

    move-object/from16 v52, v50

    move-object/from16 v53, v52

    move-object/from16 v54, v53

    move-object/from16 v55, v54

    move-object/from16 v57, v55

    move-object/from16 v58, v57

    move-object/from16 v59, v58

    move-object/from16 v64, v59

    move-object/from16 v65, v64

    move-object/from16 v66, v65

    move-object/from16 v67, v66

    move-object/from16 v68, v67

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v51, 0x0

    const/16 v56, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    :goto_79
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_209

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v3

    packed-switch v3, :pswitch_data_214

    :pswitch_8a  #0x11, 0x16, 0x17, 0x18, 0x20, 0x3e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->P8(Landroid/os/Parcel;I)V

    goto :goto_79

    :pswitch_8e  #0x41
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v68

    goto :goto_79

    :pswitch_93  #0x40
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v67

    goto :goto_79

    :pswitch_98  #0x3f
    sget-object v3, Lcom/google/android/gms/internal/ads/zzafz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v66, v2

    check-cast v66, Lcom/google/android/gms/internal/ads/zzafz;

    goto :goto_79

    :pswitch_a3  #0x3d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v65

    goto :goto_79

    :pswitch_a8  #0x3c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v64

    goto :goto_79

    :pswitch_ad  #0x3b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v63

    goto :goto_79

    :pswitch_b2  #0x3a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v62

    goto :goto_79

    :pswitch_b7  #0x39
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v61

    goto :goto_79

    :pswitch_bc  #0x38
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v60

    goto :goto_79

    :pswitch_c1  #0x37
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v59

    goto :goto_79

    :pswitch_c6  #0x36
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v58

    goto :goto_79

    :pswitch_cb  #0x35
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->EQ(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v57

    goto :goto_79

    :pswitch_d0  #0x34
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v56

    goto :goto_79

    :pswitch_d5  #0x33
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v55

    goto :goto_79

    :pswitch_da  #0x32
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v54

    goto :goto_79

    :pswitch_df  #0x31
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v53

    goto :goto_79

    :pswitch_e4  #0x30
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v52

    goto :goto_79

    :pswitch_e9  #0x2f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v51

    goto :goto_79

    :pswitch_ee  #0x2e
    sget-object v3, Lcom/google/android/gms/internal/ads/zzyv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v50, v2

    check-cast v50, Lcom/google/android/gms/internal/ads/zzyv;

    goto :goto_79

    :pswitch_f9  #0x2d
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v49

    goto/16 :goto_79

    :pswitch_ff  #0x2c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v48

    goto/16 :goto_79

    :pswitch_105  #0x2b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v47

    goto/16 :goto_79

    :pswitch_10b  #0x2a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v46

    goto/16 :goto_79

    :pswitch_111  #0x29
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_79

    :pswitch_117  #0x28
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v39

    goto/16 :goto_79

    :pswitch_11d  #0x27
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_79

    :pswitch_123  #0x26
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v43

    goto/16 :goto_79

    :pswitch_129  #0x25
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v42

    goto/16 :goto_79

    :pswitch_12f  #0x24
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v41

    goto/16 :goto_79

    :pswitch_135  #0x23
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v40

    goto/16 :goto_79

    :pswitch_13b  #0x22
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a8(Landroid/os/Parcel;I)F

    move-result v38

    goto/16 :goto_79

    :pswitch_141  #0x21
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_79

    :pswitch_147  #0x1f
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v35

    goto/16 :goto_79

    :pswitch_14d  #0x1e
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v34

    goto/16 :goto_79

    :pswitch_153  #0x1d
    sget-object v3, Lcom/google/android/gms/internal/ads/zzacp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lcom/google/android/gms/internal/ads/zzacp;

    goto/16 :goto_79

    :pswitch_15f  #0x1c
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_79

    :pswitch_165  #0x1b
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v31

    goto/16 :goto_79

    :pswitch_16b  #0x1a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_79

    :pswitch_171  #0x19
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v28

    goto/16 :goto_79

    :pswitch_177  #0x15
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_79

    :pswitch_17d  #0x14
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a8(Landroid/os/Parcel;I)F

    move-result v26

    goto/16 :goto_79

    :pswitch_183  #0x13
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v25

    goto/16 :goto_79

    :pswitch_189  #0x12
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v24

    goto/16 :goto_79

    :pswitch_18f  #0x10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v23

    goto/16 :goto_79

    :pswitch_195  #0xf
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v22

    goto/16 :goto_79

    :pswitch_19b  #0xe
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v21

    goto/16 :goto_79

    :pswitch_1a1  #0xd
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v20

    goto/16 :goto_79

    :pswitch_1a7  #0xc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v19

    goto/16 :goto_79

    :pswitch_1ad  #0xb
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/google/android/gms/internal/ads/zzbbi;

    goto/16 :goto_79

    :pswitch_1b9  #0xa
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_79

    :pswitch_1bf  #0x9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_79

    :pswitch_1c5  #0x8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_79

    :pswitch_1cb  #0x7
    sget-object v3, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/content/pm/PackageInfo;

    goto/16 :goto_79

    :pswitch_1d6  #0x6
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    goto/16 :goto_79

    :pswitch_1e1  #0x5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_79

    :pswitch_1e7  #0x4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzwf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/internal/ads/zzwf;

    goto/16 :goto_79

    :pswitch_1f2  #0x3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzwb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/internal/ads/zzwb;

    goto/16 :goto_79

    :pswitch_1fd  #0x2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v9

    goto/16 :goto_79

    :pswitch_203  #0x1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v8

    goto/16 :goto_79

    :cond_209
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->aM(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasi;

    move-object v7, v0

    invoke-direct/range {v7 .. v68}, Lcom/google/android/gms/internal/ads/zzasi;-><init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzacp;Ljava/util/List;JLjava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyv;ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafz;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_214
    .packed-switch 0x1
        :pswitch_203  #00000001
        :pswitch_1fd  #00000002
        :pswitch_1f2  #00000003
        :pswitch_1e7  #00000004
        :pswitch_1e1  #00000005
        :pswitch_1d6  #00000006
        :pswitch_1cb  #00000007
        :pswitch_1c5  #00000008
        :pswitch_1bf  #00000009
        :pswitch_1b9  #0000000a
        :pswitch_1ad  #0000000b
        :pswitch_1a7  #0000000c
        :pswitch_1a1  #0000000d
        :pswitch_19b  #0000000e
        :pswitch_195  #0000000f
        :pswitch_18f  #00000010
        :pswitch_8a  #00000011
        :pswitch_189  #00000012
        :pswitch_183  #00000013
        :pswitch_17d  #00000014
        :pswitch_177  #00000015
        :pswitch_8a  #00000016
        :pswitch_8a  #00000017
        :pswitch_8a  #00000018
        :pswitch_171  #00000019
        :pswitch_16b  #0000001a
        :pswitch_165  #0000001b
        :pswitch_15f  #0000001c
        :pswitch_153  #0000001d
        :pswitch_14d  #0000001e
        :pswitch_147  #0000001f
        :pswitch_8a  #00000020
        :pswitch_141  #00000021
        :pswitch_13b  #00000022
        :pswitch_135  #00000023
        :pswitch_12f  #00000024
        :pswitch_129  #00000025
        :pswitch_123  #00000026
        :pswitch_11d  #00000027
        :pswitch_117  #00000028
        :pswitch_111  #00000029
        :pswitch_10b  #0000002a
        :pswitch_105  #0000002b
        :pswitch_ff  #0000002c
        :pswitch_f9  #0000002d
        :pswitch_ee  #0000002e
        :pswitch_e9  #0000002f
        :pswitch_e4  #00000030
        :pswitch_df  #00000031
        :pswitch_da  #00000032
        :pswitch_d5  #00000033
        :pswitch_d0  #00000034
        :pswitch_cb  #00000035
        :pswitch_c6  #00000036
        :pswitch_c1  #00000037
        :pswitch_bc  #00000038
        :pswitch_b7  #00000039
        :pswitch_b2  #0000003a
        :pswitch_ad  #0000003b
        :pswitch_a8  #0000003c
        :pswitch_a3  #0000003d
        :pswitch_8a  #0000003e
        :pswitch_98  #0000003f
        :pswitch_93  #00000040
        :pswitch_8e  #00000041
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzasi;

    return-object p1
.end method
