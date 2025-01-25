.class final Ltv/ouya/console/api/store/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/store/StoreSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ltv/ouya/console/api/store/StoreSection;",
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

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/c;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/StoreSection;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/StoreSection;
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v2, :cond_1e

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/c;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/StoreSection;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_1e
    new-instance p1, Ltv/ouya/console/api/store/StoreSection;

    invoke-direct {p1, v0, v1, v3}, Ltv/ouya/console/api/store/StoreSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/c;->newArray(I)[Ltv/ouya/console/api/store/StoreSection;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltv/ouya/console/api/store/StoreSection;
    .registers 2

    new-array p1, p1, [Ltv/ouya/console/api/store/StoreSection;

    return-object p1
.end method
