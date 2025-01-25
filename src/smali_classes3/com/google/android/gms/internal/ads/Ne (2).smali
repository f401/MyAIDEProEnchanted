.class public abstract Lcom/google/android/gms/internal/ads/Ne;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Me;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Me;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Me;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/Me;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/Oe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Oe;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_88

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0xf
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Me;->fN()V

    goto/16 :goto_83

    :pswitch_a  #0xe
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawd;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Me;->j6(Lcom/google/android/gms/internal/ads/zzawd;)V

    goto/16 :goto_83

    :pswitch_17  #0xd
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Me;->pO()V

    goto/16 :goto_83

    :pswitch_1c  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Me;->sh(Ljava/lang/String;)V

    goto :goto_83

    :pswitch_24  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Me;->sM()V

    goto :goto_83

    :pswitch_28  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ab;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Me;->j6(Lcom/google/android/gms/internal/ads/ab;Ljava/lang/String;)V

    goto :goto_83

    :pswitch_38  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Me;->j6(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :pswitch_44  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Me;->pN()V

    goto :goto_83

    :pswitch_48  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_50

    const/4 p1, 0x0

    goto :goto_64

    :cond_50
    const-string p2, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/Pe;

    if-eqz p4, :cond_5e

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/Pe;

    goto :goto_64

    :cond_5e
    new-instance p2, Lcom/google/android/gms/internal/ads/Re;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/Re;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_64
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Me;->j6(Lcom/google/android/gms/internal/ads/Pe;)V

    goto :goto_83

    :pswitch_68  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Me;->QO()V

    goto :goto_83

    :pswitch_6c  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Me;->Gj()V

    goto :goto_83

    :pswitch_70  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Me;->Cz()V

    goto :goto_83

    :pswitch_74  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Me;->Zo(I)V

    goto :goto_83

    :pswitch_7c  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Me;->a5()V

    goto :goto_83

    :pswitch_80  #0x1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Me;->J0()V

    :goto_83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_80  #00000001
        :pswitch_7c  #00000002
        :pswitch_74  #00000003
        :pswitch_70  #00000004
        :pswitch_6c  #00000005
        :pswitch_68  #00000006
        :pswitch_48  #00000007
        :pswitch_44  #00000008
        :pswitch_38  #00000009
        :pswitch_28  #0000000a
        :pswitch_24  #0000000b
        :pswitch_1c  #0000000c
        :pswitch_17  #0000000d
        :pswitch_a  #0000000e
        :pswitch_5  #0000000f
    .end packed-switch
.end method
