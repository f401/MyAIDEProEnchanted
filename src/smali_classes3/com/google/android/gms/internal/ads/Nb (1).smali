.class public final Lcom/google/android/gms/internal/ads/Nb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/ads/zzafn;",
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
    .registers 18

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v8, v2

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-wide v14, v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_4f

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v3

    packed-switch v3, :pswitch_data_5a

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->P8(Landroid/os/Parcel;I)V

    goto :goto_12

    :pswitch_27  #0x8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->gW(Landroid/os/Parcel;I)J

    move-result-wide v14

    goto :goto_12

    :pswitch_2c  #0x7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_12

    :pswitch_31  #0x6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->QX(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v12

    goto :goto_12

    :pswitch_36  #0x5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->QX(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v11

    goto :goto_12

    :pswitch_3b  #0x4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->VH(Landroid/os/Parcel;I)[B

    move-result-object v10

    goto :goto_12

    :pswitch_40  #0x3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_12

    :pswitch_45  #0x2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_12

    :pswitch_4a  #0x1
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_12

    :cond_4f
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->aM(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafn;

    move-object v6, v0

    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/internal/ads/zzafn;-><init>(ZLjava/lang/String;I[B[Ljava/lang/String;[Ljava/lang/String;ZJ)V

    return-object v0

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4a  #00000001
        :pswitch_45  #00000002
        :pswitch_40  #00000003
        :pswitch_3b  #00000004
        :pswitch_36  #00000005
        :pswitch_31  #00000006
        :pswitch_2c  #00000007
        :pswitch_27  #00000008
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzafn;

    return-object p1
.end method
