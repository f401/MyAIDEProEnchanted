.class public abstract Lcom/google/android/gms/internal/ads/Ya;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Xa;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeContentAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_90

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0x11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->cb()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_7c

    :pswitch_b  #0x10
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->BT()Labcd/ox;

    move-result-object p1

    goto/16 :goto_87

    :pswitch_11  #0xf
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->rN()Lcom/google/android/gms/internal/ads/Ba;

    move-result-object p1

    goto/16 :goto_87

    :pswitch_17  #0xe
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Xa;->DW(Landroid/os/Bundle;)V

    goto :goto_4a

    :pswitch_23  #0xd
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Xa;->j6(Landroid/os/Bundle;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto :goto_8d

    :pswitch_36  #0xc
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Xa;->FH(Landroid/os/Bundle;)V

    goto :goto_4a

    :pswitch_42  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object p1

    goto :goto_87

    :pswitch_47  #0xa
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->destroy()V

    :goto_4a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8d

    :pswitch_4e  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->DW(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_8d

    :pswitch_59  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->jJ()Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    :pswitch_5e  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->gn()Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    :pswitch_63  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object p1

    goto :goto_87

    :pswitch_68  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->ro()Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    :pswitch_6d  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->Hw()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_8d

    :pswitch_78  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->a8()Ljava/lang/String;

    move-result-object p1

    :goto_7c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8d

    :pswitch_83  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Xa;->et()Labcd/ox;

    move-result-object p1

    :goto_87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_8d
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_83  #00000002
        :pswitch_78  #00000003
        :pswitch_6d  #00000004
        :pswitch_68  #00000005
        :pswitch_63  #00000006
        :pswitch_5e  #00000007
        :pswitch_59  #00000008
        :pswitch_4e  #00000009
        :pswitch_47  #0000000a
        :pswitch_42  #0000000b
        :pswitch_36  #0000000c
        :pswitch_23  #0000000d
        :pswitch_17  #0000000e
        :pswitch_11  #0000000f
        :pswitch_b  #00000010
        :pswitch_5  #00000011
    .end packed-switch
.end method
