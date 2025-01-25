.class public abstract Lcom/google/android/gms/internal/ads/Ua;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ta;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_a0

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0x13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->cb()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8d

    :pswitch_b  #0x12
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->BT()Labcd/ox;

    move-result-object p1

    goto/16 :goto_98

    :pswitch_11  #0x11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->rN()Lcom/google/android/gms/internal/ads/Ba;

    move-result-object p1

    goto/16 :goto_98

    :pswitch_17  #0x10
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ta;->DW(Landroid/os/Bundle;)V

    goto :goto_4b

    :pswitch_23  #0xf
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ta;->j6(Landroid/os/Bundle;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto/16 :goto_9e

    :pswitch_37  #0xe
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ta;->FH(Landroid/os/Bundle;)V

    goto :goto_4b

    :pswitch_43  #0xd
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object p1

    goto :goto_98

    :pswitch_48  #0xc
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->destroy()V

    :goto_4b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9e

    :pswitch_4f  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->DW(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_9e

    :pswitch_5a  #0xa
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->kQ()Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_5f  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->wc()Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_64  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->yO()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_9e

    :pswitch_6f  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->gn()Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_74  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object p1

    goto :goto_98

    :pswitch_79  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->ro()Ljava/lang/String;

    move-result-object p1

    goto :goto_8d

    :pswitch_7e  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->Hw()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_9e

    :pswitch_89  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->a8()Ljava/lang/String;

    move-result-object p1

    :goto_8d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9e

    :pswitch_94  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ta;->et()Labcd/ox;

    move-result-object p1

    :goto_98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_9e
    const/4 p1, 0x1

    return p1

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_94  #00000002
        :pswitch_89  #00000003
        :pswitch_7e  #00000004
        :pswitch_79  #00000005
        :pswitch_74  #00000006
        :pswitch_6f  #00000007
        :pswitch_64  #00000008
        :pswitch_5f  #00000009
        :pswitch_5a  #0000000a
        :pswitch_4f  #0000000b
        :pswitch_48  #0000000c
        :pswitch_43  #0000000d
        :pswitch_37  #0000000e
        :pswitch_23  #0000000f
        :pswitch_17  #00000010
        :pswitch_11  #00000011
        :pswitch_b  #00000012
        :pswitch_5  #00000013
    .end packed-switch
.end method
