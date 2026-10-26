.class public abstract Lcom/baidu/mobstat/dz$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/dz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/dz$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/baidu/mobstat/dz;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/baidu/mobstat/dz;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/baidu/mobstat/dz;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/baidu/mobstat/dz$a$a;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/dz$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 38
    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :cond_0
    const-string v1, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    const-string v1, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/baidu/mobstat/dz$a;->b()Z

    move-result v1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/baidu/mobstat/dz$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
