.class public final Lcom/google/android/gms/ads/internal/overlay/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;",
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
    .registers 23

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_93

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v3

    packed-switch v3, :pswitch_data_9e

    :pswitch_2e  #0xf
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->P8(Landroid/os/Parcel;I)V

    goto :goto_1d

    :pswitch_32  #0x12
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->rN(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v20

    goto :goto_1d

    :pswitch_37  #0x11
    sget-object v3, Lcom/google/android/gms/ads/internal/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/google/android/gms/ads/internal/zzaq;

    goto :goto_1d

    :pswitch_42  #0x10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_1d

    :pswitch_47  #0xe
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/gms/internal/ads/zzbbi;

    goto :goto_1d

    :pswitch_52  #0xd
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_1d

    :pswitch_57  #0xc
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v15

    goto :goto_1d

    :pswitch_5c  #0xb
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v14

    goto :goto_1d

    :pswitch_61  #0xa
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->rN(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v13

    goto :goto_1d

    :pswitch_66  #0x9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1d

    :pswitch_6b  #0x8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_1d

    :pswitch_70  #0x7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1d

    :pswitch_75  #0x6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->rN(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v9

    goto :goto_1d

    :pswitch_7a  #0x5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->rN(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v8

    goto :goto_1d

    :pswitch_7f  #0x4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->rN(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v7

    goto :goto_1d

    :pswitch_84  #0x3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->rN(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v6

    goto :goto_1d

    :pswitch_89  #0x2
    sget-object v3, Lcom/google/android/gms/ads/internal/overlay/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/ads/internal/overlay/zzc;

    goto :goto_1d

    :cond_93
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->aM(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-object v4, v0

    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzaq;Landroid/os/IBinder;)V

    return-object v0

    nop

    :pswitch_data_9e
    .packed-switch 0x2
        :pswitch_89  #00000002
        :pswitch_84  #00000003
        :pswitch_7f  #00000004
        :pswitch_7a  #00000005
        :pswitch_75  #00000006
        :pswitch_70  #00000007
        :pswitch_6b  #00000008
        :pswitch_66  #00000009
        :pswitch_61  #0000000a
        :pswitch_5c  #0000000b
        :pswitch_57  #0000000c
        :pswitch_52  #0000000d
        :pswitch_47  #0000000e
        :pswitch_2e  #0000000f
        :pswitch_42  #00000010
        :pswitch_37  #00000011
        :pswitch_32  #00000012
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    return-object p1
.end method
