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
    .registers 5

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_d6

    :pswitch_4  #0xb, 0xc
    const/4 p1, 0x0

    return p1

    :pswitch_6  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dc;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/cc;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/cc;)V

    goto/16 :goto_a7

    :pswitch_13  #0xd
    sget-object p1, Lcom/google/android/gms/internal/ads/zzafz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzafz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/zzafz;)V

    goto/16 :goto_a7

    :pswitch_20  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ub;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/ub;)V

    goto/16 :goto_a7

    :pswitch_2d  #0x9
    sget-object p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    goto/16 :goto_a7

    :pswitch_3a  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/rb;

    move-result-object p1

    sget-object p4, Lcom/google/android/gms/internal/ads/zzwf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/rb;Lcom/google/android/gms/internal/ads/zzwf;)V

    goto :goto_a7

    :pswitch_4e  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_55

    goto :goto_68

    :cond_55
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/WH;

    if-eqz p4, :cond_63

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/WH;

    goto :goto_68

    :cond_63
    new-instance p4, Lcom/google/android/gms/internal/ads/ZH;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/ZH;-><init>(Landroid/os/IBinder;)V

    :goto_68
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/DH;->DW(Lcom/google/android/gms/internal/ads/WH;)V

    goto :goto_a7

    :pswitch_6c  #0x6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacp;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/zzacp;)V

    goto :goto_a7

    :pswitch_78  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/pb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ob;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/mb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/lb;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/DH;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ob;Lcom/google/android/gms/internal/ads/lb;)V

    goto :goto_a7

    :pswitch_90  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ib;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/ib;)V

    goto :goto_a7

    :pswitch_9c  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/fb;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/fb;)V

    :goto_a7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d3

    :pswitch_ab  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_b2

    goto :goto_c5

    :cond_b2
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/xH;

    if-eqz p4, :cond_c0

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/xH;

    goto :goto_c5

    :cond_c0
    new-instance p4, Lcom/google/android/gms/internal/ads/zH;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zH;-><init>(Landroid/os/IBinder;)V

    :goto_c5
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/DH;->j6(Lcom/google/android/gms/internal/ads/xH;)V

    goto :goto_a7

    :pswitch_c9  #0x1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/DH;->AE()Lcom/google/android/gms/internal/ads/AH;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_d3
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_c9  #00000001
        :pswitch_ab  #00000002
        :pswitch_9c  #00000003
        :pswitch_90  #00000004
        :pswitch_78  #00000005
        :pswitch_6c  #00000006
        :pswitch_4e  #00000007
        :pswitch_3a  #00000008
        :pswitch_2d  #00000009
        :pswitch_20  #0000000a
        :pswitch_4  #0000000b
        :pswitch_4  #0000000c
        :pswitch_13  #0000000d
        :pswitch_6  #0000000e
    .end packed-switch
.end method
