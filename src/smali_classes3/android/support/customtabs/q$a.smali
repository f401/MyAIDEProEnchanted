.class public abstract Landroid/support/customtabs/q$a;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/support/customtabs/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/q$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.customtabs.ICustomTabsCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Landroid/support/customtabs/q;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.support.customtabs.ICustomTabsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/customtabs/q;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/support/customtabs/q;

    return-object v0

    :cond_13
    new-instance v0, Landroid/support/customtabs/q$a$a;

    invoke-direct {v0, p0}, Landroid/support/customtabs/q$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "android.support.customtabs.ICustomTabsCallback"

    const/4 v3, 0x0

    if-eq p1, v0, :cond_6b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_51

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3b

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1e

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_1a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_1a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_34

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    :cond_34
    invoke-interface {p0, p1, v3}, Landroid/support/customtabs/q;->FH(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4d

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    :cond_4d
    invoke-interface {p0, v3}, Landroid/support/customtabs/q;->VH(Landroid/os/Bundle;)V

    goto :goto_37

    :cond_51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_67

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    :cond_67
    invoke-interface {p0, p1, v3}, Landroid/support/customtabs/q;->DW(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_37

    :cond_6b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_81

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    :cond_81
    invoke-interface {p0, p1, v3}, Landroid/support/customtabs/q;->DW(ILandroid/os/Bundle;)V

    goto :goto_37
.end method
