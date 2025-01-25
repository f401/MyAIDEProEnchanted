.class public abstract Lcom/google/android/gms/internal/ads/zf;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/yf;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1b4

    const/4 v0, 0x0

    return v0

    :pswitch_6  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_26

    :goto_24
    move-object v6, v1

    goto :goto_39

    :cond_26
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback"

    invoke-interface {v6, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v7, v1, Lcom/google/android/gms/internal/ads/uf;

    if-eqz v7, :cond_33

    check-cast v1, Lcom/google/android/gms/internal/ads/uf;

    goto :goto_24

    :cond_33
    new-instance v1, Lcom/google/android/gms/internal/ads/vf;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/vf;-><init>(Landroid/os/IBinder;)V

    goto :goto_24

    :goto_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ne;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Me;

    move-result-object v7

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/yf;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/uf;Lcom/google/android/gms/internal/ads/Me;)V

    goto/16 :goto_b6

    :pswitch_4d  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/yf;->j6([Ljava/lang/String;[Landroid/os/Bundle;)V

    goto :goto_b6

    :pswitch_5d  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/yf;->gn(Labcd/ox;)V

    goto :goto_b6

    :pswitch_69  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/yf;->om()V

    goto :goto_b6

    :pswitch_6d  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_8d

    :goto_8b
    move-object v6, v1

    goto :goto_a0

    :cond_8d
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback"

    invoke-interface {v6, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v7, v1, Lcom/google/android/gms/internal/ads/wf;

    if-eqz v7, :cond_9a

    check-cast v1, Lcom/google/android/gms/internal/ads/wf;

    goto :goto_8b

    :cond_9a
    new-instance v1, Lcom/google/android/gms/internal/ads/xf;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/xf;-><init>(Landroid/os/IBinder;)V

    goto :goto_8b

    :goto_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ne;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Me;

    move-result-object v7

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/yf;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/wf;Lcom/google/android/gms/internal/ads/Me;)V

    goto :goto_b6

    :pswitch_b3  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/yf;->showInterstitial()V

    :goto_b6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1b1

    :pswitch_bb  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_db

    :goto_d9
    move-object v6, v1

    goto :goto_ee

    :cond_db
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback"

    invoke-interface {v6, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v7, v1, Lcom/google/android/gms/internal/ads/sf;

    if-eqz v7, :cond_e8

    check-cast v1, Lcom/google/android/gms/internal/ads/sf;

    goto :goto_d9

    :cond_e8
    new-instance v1, Lcom/google/android/gms/internal/ads/tf;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/tf;-><init>(Landroid/os/IBinder;)V

    goto :goto_d9

    :goto_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ne;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Me;

    move-result-object v7

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/yf;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/sf;Lcom/google/android/gms/internal/ads/Me;)V

    goto :goto_b6

    :pswitch_101  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/yf;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1b1

    :pswitch_10d  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_12d

    :goto_12b
    move-object v6, v1

    goto :goto_140

    :cond_12d
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback"

    invoke-interface {v6, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v7, v1, Lcom/google/android/gms/internal/ads/pf;

    if-eqz v7, :cond_13a

    check-cast v1, Lcom/google/android/gms/internal/ads/pf;

    goto :goto_12b

    :cond_13a
    new-instance v1, Lcom/google/android/gms/internal/ads/qf;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/qf;-><init>(Landroid/os/IBinder;)V

    goto :goto_12b

    :goto_140
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ne;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Me;

    move-result-object v7

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzwf;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/yf;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Labcd/ox;Lcom/google/android/gms/internal/ads/pf;Lcom/google/android/gms/internal/ads/Me;Lcom/google/android/gms/internal/ads/zzwf;)V

    goto/16 :goto_b6

    :pswitch_15e  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/yf;->b1()Lcom/google/android/gms/internal/ads/zzans;

    throw v1

    :pswitch_162  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/yf;->Ev()Lcom/google/android/gms/internal/ads/zzans;

    throw v1

    :pswitch_166  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzwf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v6}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_192

    :goto_190
    move-object v7, v1

    goto :goto_1a5

    :cond_192
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v7, v1, Lcom/google/android/gms/internal/ads/Af;

    if-eqz v7, :cond_19f

    check-cast v1, Lcom/google/android/gms/internal/ads/Af;

    goto :goto_190

    :cond_19f
    new-instance v1, Lcom/google/android/gms/internal/ads/Bf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Bf;-><init>(Landroid/os/IBinder;)V

    goto :goto_190

    :goto_1a5
    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/yf;->j6(Labcd/ox;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/Af;)V

    goto/16 :goto_b6

    :goto_1b1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_1b4
    .packed-switch 0x1
        :pswitch_166  #00000001
        :pswitch_162  #00000002
        :pswitch_15e  #00000003
        :pswitch_10d  #00000004
        :pswitch_101  #00000005
        :pswitch_bb  #00000006
        :pswitch_b3  #00000007
        :pswitch_6d  #00000008
        :pswitch_69  #00000009
        :pswitch_5d  #0000000a
        :pswitch_4d  #0000000b
        :pswitch_6  #0000000c
    .end packed-switch
.end method
