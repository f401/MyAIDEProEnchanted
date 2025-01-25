.class final Ltv/ouya/console/api/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/Purchasable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ltv/ouya/console/api/Purchasable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/m;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/Purchasable;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/Purchasable;
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_28

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    new-instance v1, Ltv/ouya/console/api/Purchasable;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Ltv/ouya/console/api/Purchasable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to rebuild purchasable. Encryption data state unknown"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    new-instance p1, Ltv/ouya/console/api/Purchasable;

    invoke-direct {p1, v0}, Ltv/ouya/console/api/Purchasable;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/m;->newArray(I)[Ltv/ouya/console/api/Purchasable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltv/ouya/console/api/Purchasable;
    .registers 2

    new-array p1, p1, [Ltv/ouya/console/api/Purchasable;

    return-object p1
.end method
