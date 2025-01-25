.class Lcom/baidu/mobstat/dz$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/dz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/dz$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/baidu/mobstat/dz$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 85
    :try_start_8
    const-string v2, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/baidu/mobstat/dz$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 88
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_22
    move-exception v2

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/baidu/mobstat/dz$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    :try_start_8
    const-string v2, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/baidu/mobstat/dz$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_25

    if-eqz v2, :cond_1e

    const/4 v4, 0x1

    .line 109
    :cond_1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_25
    move-exception v2

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
