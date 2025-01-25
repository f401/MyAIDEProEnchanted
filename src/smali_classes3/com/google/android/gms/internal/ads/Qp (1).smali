.class public abstract Lcom/google/android/gms/internal/ads/Qp;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Pp;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.measurement.IAppMeasurementProxy"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    packed-switch p1, :pswitch_data_fe

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0x12
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Pp;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :pswitch_a  #0x11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Pp;->Ak()Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :pswitch_f  #0x10
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Pp;->Jm()Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :pswitch_14  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/Pp;->DW(Labcd/ox;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f9

    :pswitch_29  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Pp;->ei(Ljava/lang/String;)V

    goto/16 :goto_f9

    :pswitch_32  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Pp;->BT(Ljava/lang/String;)V

    goto/16 :goto_f9

    :pswitch_3b  #0xc
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Pp;->Hl()J

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_fc

    :pswitch_47  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Pp;->MP()Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :pswitch_4c  #0xa
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Pp;->Pa()Ljava/lang/String;

    move-result-object p1

    :goto_50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_fc

    :pswitch_58  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Pp;->Zo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_fc

    :pswitch_6c  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/Pp;->DW(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_f9

    :pswitch_81  #0x7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Pp;->u7(Landroid/os/Bundle;)V

    goto :goto_f9

    :pswitch_8d  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Pp;->ro(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fc

    :pswitch_9c  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;)Z

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/Pp;->j6(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_fc

    :pswitch_b3  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/Pp;->j6(Ljava/lang/String;Ljava/lang/String;Labcd/ox;)V

    goto :goto_f9

    :pswitch_c7  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/Pp;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f9

    :pswitch_db  #0x2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Pp;->EQ(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->DW(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_fc

    :pswitch_ee  #0x1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Pp;->gn(Landroid/os/Bundle;)V

    :goto_f9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_fc
    const/4 p1, 0x1

    return p1

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_ee  #00000001
        :pswitch_db  #00000002
        :pswitch_c7  #00000003
        :pswitch_b3  #00000004
        :pswitch_9c  #00000005
        :pswitch_8d  #00000006
        :pswitch_81  #00000007
        :pswitch_6c  #00000008
        :pswitch_58  #00000009
        :pswitch_4c  #0000000a
        :pswitch_47  #0000000b
        :pswitch_3b  #0000000c
        :pswitch_32  #0000000d
        :pswitch_29  #0000000e
        :pswitch_14  #0000000f
        :pswitch_f  #00000010
        :pswitch_a  #00000011
        :pswitch_5  #00000012
    .end packed-switch
.end method
