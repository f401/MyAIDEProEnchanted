.class public final Lcom/google/android/gms/internal/ads/Uj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/ads/zzawo;",
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
    .registers 14

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->DW(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    move-object v8, v5

    move-object v11, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_4b

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j6(I)I

    move-result v2

    packed-switch v2, :pswitch_data_56

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->P8(Landroid/os/Parcel;I)V

    goto :goto_e

    :pswitch_23  #0x9
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_e

    :pswitch_28  #0x8
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_e

    :pswitch_2d  #0x7
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_e

    :pswitch_32  #0x6
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->XL(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_e

    :pswitch_37  #0x5
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_e

    :pswitch_3c  #0x4
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->j3(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_e

    :pswitch_41  #0x3
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :pswitch_46  #0x2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->Ws(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_4b
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->aM(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzawo;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzawo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ZZLjava/util/List;)V

    return-object p1

    nop

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_46  #00000002
        :pswitch_41  #00000003
        :pswitch_3c  #00000004
        :pswitch_37  #00000005
        :pswitch_32  #00000006
        :pswitch_2d  #00000007
        :pswitch_28  #00000008
        :pswitch_23  #00000009
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzawo;

    return-object p1
.end method
