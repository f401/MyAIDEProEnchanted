.class final Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final j6:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$b;->j6:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$b;->j6:Landroid/os/IBinder;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$b;->j6:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_37

    :catchall_22
    move-exception v2

    goto :goto_38

    :catch_24
    move-exception v2

    :try_start_25
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Could not get parcel from Google Play Service to capture AdvertisingId"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_22

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v2, 0x0

    :goto_37
    return-object v2

    :goto_38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public v5()Z
    .registers 7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_9
    const-string v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$b;->j6:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_25
    .catchall {:try_start_9 .. :try_end_1f} :catchall_23

    if-eqz v4, :cond_31

    const/4 v2, 0x1

    goto :goto_31

    :catchall_23
    move-exception v2

    goto :goto_38

    :catch_25
    move-exception v3

    :try_start_26
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Could not get parcel from Google Play Service to capture Advertising limitAdTracking"

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_23

    :cond_31
    :goto_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :goto_38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
