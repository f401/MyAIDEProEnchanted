.class public abstract Lcom/google/android/gms/internal/ads/Ab;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zb;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_f8

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0x1c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->qp()V

    goto/16 :goto_a4

    :pswitch_a  #0x1b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->n5()V

    goto/16 :goto_a4

    :pswitch_f  #0x1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/eI;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/dI;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zb;->j6(Lcom/google/android/gms/internal/ads/dI;)V

    goto/16 :goto_a4

    :pswitch_1c  #0x19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hI;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/gI;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zb;->j6(Lcom/google/android/gms/internal/ads/gI;)V

    goto/16 :goto_a4

    :pswitch_29  #0x18
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->ce()Z

    move-result p1

    goto :goto_88

    :pswitch_2e  #0x17
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->ba()Ljava/util/List;

    move-result-object p1

    goto/16 :goto_e5

    :pswitch_34  #0x16
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->Xa()V

    goto/16 :goto_a4

    :pswitch_39  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_41

    const/4 p1, 0x0

    goto :goto_55

    :cond_41
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/xb;

    if-eqz p4, :cond_4f

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/xb;

    goto :goto_55

    :cond_4f
    new-instance p2, Lcom/google/android/gms/internal/ads/yb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/yb;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_55
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zb;->j6(Lcom/google/android/gms/internal/ads/xb;)V

    goto :goto_a4

    :pswitch_59  #0x14
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->DW(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_f6

    :pswitch_65  #0x13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->BT()Labcd/ox;

    move-result-object p1

    goto/16 :goto_d5

    :pswitch_6b  #0x12
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->et()Labcd/ox;

    move-result-object p1

    goto :goto_d5

    :pswitch_70  #0x11
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zb;->DW(Landroid/os/Bundle;)V

    goto :goto_a4

    :pswitch_7c  #0x10
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zb;->j6(Landroid/os/Bundle;)Z

    move-result p1

    :goto_88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto/16 :goto_f6

    :pswitch_90  #0xf
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zb;->FH(Landroid/os/Bundle;)V

    goto :goto_a4

    :pswitch_9c  #0xe
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->rN()Lcom/google/android/gms/internal/ads/Ba;

    move-result-object p1

    goto :goto_d5

    :pswitch_a1  #0xd
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->destroy()V

    :goto_a4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f6

    :pswitch_a8  #0xc
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->cb()Ljava/lang/String;

    move-result-object p1

    goto :goto_f0

    :pswitch_ad  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object p1

    goto :goto_d5

    :pswitch_b2  #0xa
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->kQ()Ljava/lang/String;

    move-result-object p1

    goto :goto_f0

    :pswitch_b7  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->wc()Ljava/lang/String;

    move-result-object p1

    goto :goto_f0

    :pswitch_bc  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->yO()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_f6

    :pswitch_c7  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->jJ()Ljava/lang/String;

    move-result-object p1

    goto :goto_f0

    :pswitch_cc  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->gn()Ljava/lang/String;

    move-result-object p1

    goto :goto_f0

    :pswitch_d1  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object p1

    :goto_d5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_f6

    :pswitch_dc  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->ro()Ljava/lang/String;

    move-result-object p1

    goto :goto_f0

    :pswitch_e1  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->Hw()Ljava/util/List;

    move-result-object p1

    :goto_e5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_f6

    :pswitch_ec  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zb;->a8()Ljava/lang/String;

    move-result-object p1

    :goto_f0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_f6
    const/4 p1, 0x1

    return p1

    :pswitch_data_f8
    .packed-switch 0x2
        :pswitch_ec  #00000002
        :pswitch_e1  #00000003
        :pswitch_dc  #00000004
        :pswitch_d1  #00000005
        :pswitch_cc  #00000006
        :pswitch_c7  #00000007
        :pswitch_bc  #00000008
        :pswitch_b7  #00000009
        :pswitch_b2  #0000000a
        :pswitch_ad  #0000000b
        :pswitch_a8  #0000000c
        :pswitch_a1  #0000000d
        :pswitch_9c  #0000000e
        :pswitch_90  #0000000f
        :pswitch_7c  #00000010
        :pswitch_70  #00000011
        :pswitch_6b  #00000012
        :pswitch_65  #00000013
        :pswitch_59  #00000014
        :pswitch_39  #00000015
        :pswitch_34  #00000016
        :pswitch_2e  #00000017
        :pswitch_29  #00000018
        :pswitch_1c  #00000019
        :pswitch_f  #0000001a
        :pswitch_a  #0000001b
        :pswitch_5  #0000001c
    .end packed-switch
.end method
