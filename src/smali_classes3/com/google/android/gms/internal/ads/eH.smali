.class public final Lcom/google/android/gms/internal/ads/eH;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/ads/zzwb;",
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
    .registers 31

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v10, v2

    move-object v12, v10

    move-object/from16 v16, v12

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v26, v24

    move-object/from16 v28, v26

    move-wide v8, v3

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    :goto_2c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_c0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v3

    packed-switch v3, :pswitch_data_ca

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->P8(Landroid/os/Parcel;I)V

    goto :goto_2c

    :pswitch_41  #0x15
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v28

    goto :goto_2c

    :pswitch_46  #0x14
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v27

    goto :goto_2c

    :pswitch_4b  #0x13
    sget-object v3, Lcom/google/android/gms/internal/ads/zzvv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/google/android/gms/internal/ads/zzvv;

    goto :goto_2c

    :pswitch_56  #0x12
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v25

    goto :goto_2c

    :pswitch_5b  #0x11
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v24

    goto :goto_2c

    :pswitch_60  #0x10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v23

    goto :goto_2c

    :pswitch_65  #0xf
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v22

    goto :goto_2c

    :pswitch_6a  #0xe
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v21

    goto :goto_2c

    :pswitch_6f  #0xd
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v20

    goto :goto_2c

    :pswitch_74  #0xc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto :goto_2c

    :pswitch_79  #0xb
    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/location/Location;

    goto :goto_2c

    :pswitch_84  #0xa
    sget-object v3, Lcom/google/android/gms/internal/ads/zzzs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/gms/internal/ads/zzzs;

    goto :goto_2c

    :pswitch_8f  #0x9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_2c

    :pswitch_94  #0x8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_2c

    :pswitch_99  #0x7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v14

    goto :goto_2c

    :pswitch_9e  #0x6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_2c

    :pswitch_a3  #0x5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_2c

    :pswitch_a8  #0x4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v11

    goto/16 :goto_2c

    :pswitch_ae  #0x3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Zo(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_2c

    :pswitch_b4  #0x2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v8

    goto/16 :goto_2c

    :pswitch_ba  #0x1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v7

    goto/16 :goto_2c

    :cond_c0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->aM(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwb;

    move-object v6, v0

    invoke-direct/range {v6 .. v28}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzs;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvv;ILjava/lang/String;)V

    return-object v0

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_ba  #00000001
        :pswitch_b4  #00000002
        :pswitch_ae  #00000003
        :pswitch_a8  #00000004
        :pswitch_a3  #00000005
        :pswitch_9e  #00000006
        :pswitch_99  #00000007
        :pswitch_94  #00000008
        :pswitch_8f  #00000009
        :pswitch_84  #0000000a
        :pswitch_79  #0000000b
        :pswitch_74  #0000000c
        :pswitch_6f  #0000000d
        :pswitch_6a  #0000000e
        :pswitch_65  #0000000f
        :pswitch_60  #00000010
        :pswitch_5b  #00000011
        :pswitch_56  #00000012
        :pswitch_4b  #00000013
        :pswitch_46  #00000014
        :pswitch_41  #00000015
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzwb;

    return-object p1
.end method
