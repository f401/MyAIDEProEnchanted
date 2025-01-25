.class public final Lcom/google/android/gms/ads/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/ads/internal/zzaq;",
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
    .registers 16

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_52

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v2

    packed-switch v2, :pswitch_data_5c

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->P8(Landroid/os/Parcel;I)V

    goto :goto_10

    :pswitch_25  #0xa
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v13

    goto :goto_10

    :pswitch_2a  #0x9
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v12

    goto :goto_10

    :pswitch_2f  #0x8
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_10

    :pswitch_34  #0x7
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->er(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_10

    :pswitch_39  #0x6
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a8(Landroid/os/Parcel;I)F

    move-result v9

    goto :goto_10

    :pswitch_3e  #0x5
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_10

    :pswitch_43  #0x4
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_10

    :pswitch_48  #0x3
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_10

    :pswitch_4d  #0x2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_10

    :cond_52
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->aM(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/ads/internal/zzaq;

    move-object v4, p1

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/ads/internal/zzaq;-><init>(ZZLjava/lang/String;ZFIZZZ)V

    return-object p1

    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_4d  #00000002
        :pswitch_48  #00000003
        :pswitch_43  #00000004
        :pswitch_3e  #00000005
        :pswitch_39  #00000006
        :pswitch_34  #00000007
        :pswitch_2f  #00000008
        :pswitch_2a  #00000009
        :pswitch_25  #0000000a
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/ads/internal/zzaq;

    return-object p1
.end method
