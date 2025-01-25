.class public abstract Lcom/google/android/gms/internal/ads/Ze;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ye;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_bc

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ye;->FH(Labcd/ox;)V

    goto :goto_3c

    :pswitch_11  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/Ye;->j6(Labcd/ox;Labcd/ox;Labcd/ox;)V

    goto :goto_3c

    :pswitch_2d  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ye;->DW(Labcd/ox;)V

    goto :goto_3c

    :pswitch_39  #0x13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->EQ()V

    :goto_3c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_ba

    :pswitch_41  #0x12
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->eU()Z

    move-result p1

    goto :goto_4a

    :pswitch_46  #0x11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->q7()Z

    move-result p1

    :goto_4a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto/16 :goto_ba

    :pswitch_52  #0x10
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->DW(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_ba

    :pswitch_5d  #0xf
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->BT()Labcd/ox;

    move-result-object p1

    goto :goto_99

    :pswitch_62  #0xe
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->aq()Labcd/ox;

    move-result-object p1

    goto :goto_99

    :pswitch_67  #0xd
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->FN()Labcd/ox;

    move-result-object p1

    goto :goto_99

    :pswitch_6c  #0xc
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->rN()Lcom/google/android/gms/internal/ads/Ba;

    move-result-object p1

    goto :goto_99

    :pswitch_71  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object p1

    goto :goto_99

    :pswitch_76  #0xa
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->kQ()Ljava/lang/String;

    move-result-object p1

    goto :goto_b4

    :pswitch_7b  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->wc()Ljava/lang/String;

    move-result-object p1

    goto :goto_b4

    :pswitch_80  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->yO()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_ba

    :pswitch_8b  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->jJ()Ljava/lang/String;

    move-result-object p1

    goto :goto_b4

    :pswitch_90  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->gn()Ljava/lang/String;

    move-result-object p1

    goto :goto_b4

    :pswitch_95  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->CU()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object p1

    :goto_99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_ba

    :pswitch_a0  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->ro()Ljava/lang/String;

    move-result-object p1

    goto :goto_b4

    :pswitch_a5  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->Hw()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_ba

    :pswitch_b0  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ye;->a8()Ljava/lang/String;

    move-result-object p1

    :goto_b4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_ba
    const/4 p1, 0x1

    return p1

    :pswitch_data_bc
    .packed-switch 0x2
        :pswitch_b0  #00000002
        :pswitch_a5  #00000003
        :pswitch_a0  #00000004
        :pswitch_95  #00000005
        :pswitch_90  #00000006
        :pswitch_8b  #00000007
        :pswitch_80  #00000008
        :pswitch_7b  #00000009
        :pswitch_76  #0000000a
        :pswitch_71  #0000000b
        :pswitch_6c  #0000000c
        :pswitch_67  #0000000d
        :pswitch_62  #0000000e
        :pswitch_5d  #0000000f
        :pswitch_52  #00000010
        :pswitch_46  #00000011
        :pswitch_41  #00000012
        :pswitch_39  #00000013
        :pswitch_2d  #00000014
        :pswitch_11  #00000015
        :pswitch_5  #00000016
    .end packed-switch
.end method
