.class public abstract Lcom/google/android/gms/internal/ads/We;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ve;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_b2

    :pswitch_3  #0x11, 0x12
    const/4 p1, 0x0

    return p1

    :pswitch_5  #0x16
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

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/Ve;->j6(Labcd/ox;Labcd/ox;Labcd/ox;)V

    goto :goto_7d

    :pswitch_21  #0x15
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->BT()Labcd/ox;

    move-result-object p1

    goto/16 :goto_8f

    :pswitch_27  #0x14
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->aq()Labcd/ox;

    move-result-object p1

    goto :goto_8f

    :pswitch_2c  #0x13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->rN()Lcom/google/android/gms/internal/ads/Ba;

    move-result-object p1

    goto :goto_8f

    :pswitch_31  #0x10
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object p1

    goto :goto_8f

    :pswitch_36  #0xf
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->FN()Labcd/ox;

    move-result-object p1

    goto :goto_8f

    :pswitch_3b  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ve;->FH(Labcd/ox;)V

    goto :goto_7d

    :pswitch_47  #0xd
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->DW(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_b0

    :pswitch_52  #0xc
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->eU()Z

    move-result p1

    goto :goto_5b

    :pswitch_57  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->q7()Z

    move-result p1

    :goto_5b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto :goto_b0

    :pswitch_62  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ve;->Zo(Labcd/ox;)V

    goto :goto_7d

    :pswitch_6e  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ve;->DW(Labcd/ox;)V

    goto :goto_7d

    :pswitch_7a  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->EQ()V

    :goto_7d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b0

    :pswitch_81  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->jJ()Ljava/lang/String;

    move-result-object p1

    goto :goto_aa

    :pswitch_86  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->gn()Ljava/lang/String;

    move-result-object p1

    goto :goto_aa

    :pswitch_8b  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->gG()Lcom/google/android/gms/internal/ads/Ga;

    move-result-object p1

    :goto_8f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_b0

    :pswitch_96  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->ro()Ljava/lang/String;

    move-result-object p1

    goto :goto_aa

    :pswitch_9b  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->Hw()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_b0

    :pswitch_a6  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ve;->a8()Ljava/lang/String;

    move-result-object p1

    :goto_aa
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_b0
    const/4 p1, 0x1

    return p1

    :pswitch_data_b2
    .packed-switch 0x2
        :pswitch_a6  #00000002
        :pswitch_9b  #00000003
        :pswitch_96  #00000004
        :pswitch_8b  #00000005
        :pswitch_86  #00000006
        :pswitch_81  #00000007
        :pswitch_7a  #00000008
        :pswitch_6e  #00000009
        :pswitch_62  #0000000a
        :pswitch_57  #0000000b
        :pswitch_52  #0000000c
        :pswitch_47  #0000000d
        :pswitch_3b  #0000000e
        :pswitch_36  #0000000f
        :pswitch_31  #00000010
        :pswitch_3  #00000011
        :pswitch_3  #00000012
        :pswitch_2c  #00000013
        :pswitch_27  #00000014
        :pswitch_21  #00000015
        :pswitch_5  #00000016
    .end packed-switch
.end method
