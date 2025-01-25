.class public abstract Lcom/google/android/gms/internal/ads/fj;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ej;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const/4 p4, 0x1

    if-eq p1, p4, :cond_e4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c2

    const/16 v0, 0x22

    if-eq p1, v0, :cond_ba

    packed-switch p1, :pswitch_data_f4

    const/4 p1, 0x0

    return p1

    :pswitch_13  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ej;->P8(Ljava/lang/String;)V

    goto/16 :goto_ef

    :pswitch_1c  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ej;->J0(Labcd/ox;)V

    goto/16 :goto_ef

    :pswitch_29  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ej;->gW(Ljava/lang/String;)V

    goto/16 :goto_ef

    :pswitch_32  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_39

    goto :goto_4c

    :cond_39
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/cj;

    if-eqz v0, :cond_47

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/cj;

    goto :goto_4c

    :cond_47
    new-instance v1, Lcom/google/android/gms/internal/ads/dj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/dj;-><init>(Landroid/os/IBinder;)V

    :goto_4c
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/ej;->j6(Lcom/google/android/gms/internal/ads/cj;)V

    goto/16 :goto_ef

    :pswitch_51  #0xf
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ej;->e9()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->DW(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_f2

    :pswitch_5d  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/OH;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/NH;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ej;->j6(Lcom/google/android/gms/internal/ads/NH;)V

    goto/16 :goto_ef

    :pswitch_6a  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ej;->j3(Ljava/lang/String;)V

    goto/16 :goto_ef

    :pswitch_73  #0xc
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ej;->cb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_f2

    :pswitch_7f  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ej;->er(Labcd/ox;)V

    goto :goto_ef

    :pswitch_8b  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ej;->XL(Labcd/ox;)V

    goto :goto_ef

    :pswitch_97  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ej;->j3(Labcd/ox;)V

    goto :goto_ef

    :pswitch_a3  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ej;->destroy()V

    goto :goto_ef

    :pswitch_a7  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ej;->er()V

    goto :goto_ef

    :pswitch_ab  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ej;->pause()V

    goto :goto_ef

    :pswitch_af  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ej;->N0()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto :goto_f2

    :cond_ba
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ej;->gn(Z)V

    goto :goto_ef

    :cond_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c9

    goto :goto_dc

    :cond_c9
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/jj;

    if-eqz v0, :cond_d7

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/jj;

    goto :goto_dc

    :cond_d7
    new-instance v1, Lcom/google/android/gms/internal/ads/lj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/lj;-><init>(Landroid/os/IBinder;)V

    :goto_dc
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/ej;->j6(Lcom/google/android/gms/internal/ads/jj;)V

    goto :goto_ef

    :cond_e0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ej;->zf()V

    goto :goto_ef

    :cond_e4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavh;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ej;->j6(Lcom/google/android/gms/internal/ads/zzavh;)V

    :goto_ef
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_f2
    return p4

    nop

    :pswitch_data_f4
    .packed-switch 0x5
        :pswitch_af  #00000005
        :pswitch_ab  #00000006
        :pswitch_a7  #00000007
        :pswitch_a3  #00000008
        :pswitch_97  #00000009
        :pswitch_8b  #0000000a
        :pswitch_7f  #0000000b
        :pswitch_73  #0000000c
        :pswitch_6a  #0000000d
        :pswitch_5d  #0000000e
        :pswitch_51  #0000000f
        :pswitch_32  #00000010
        :pswitch_29  #00000011
        :pswitch_1c  #00000012
        :pswitch_13  #00000013
    .end packed-switch
.end method
