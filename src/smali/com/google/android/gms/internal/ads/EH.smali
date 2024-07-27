.class public abstract Lcom/google/android/gms/internal/ads/EH;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/DH;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dc;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/cc;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/cc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzafz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzafz;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/zzafz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ub;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/ub;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/rb;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/rb;Lcom/google/android/gms/internal/ads/zzwf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/DH;->DW(Lcom/google/android/gms/internal/ads/WH;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/WH;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/WH;

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ZH;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ZH;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzacp;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/zzacp;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/pb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ob;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/mb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/lb;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/DH;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ob;Lcom/google/android/gms/internal/ads/lb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ib;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/ib;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/fb;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/fb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_3
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/xH;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :cond_2
    const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/ads/xH;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/ads/xH;

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zH;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zH;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    :pswitch_c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/DH;->AE()Lcom/google/android/gms/internal/ads/AH;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
