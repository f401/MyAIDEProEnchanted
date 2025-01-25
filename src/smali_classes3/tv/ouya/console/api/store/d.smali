.class final Ltv/ouya/console/api/store/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/store/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ltv/ouya/console/api/store/Tag;",
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

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/d;->createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/Tag;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltv/ouya/console/api/store/Tag;
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    new-instance v1, Ltv/ouya/console/api/store/Tag;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Ltv/ouya/console/api/store/Tag;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ltv/ouya/console/api/store/d;->newArray(I)[Ltv/ouya/console/api/store/Tag;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltv/ouya/console/api/store/Tag;
    .registers 2

    new-array p1, p1, [Ltv/ouya/console/api/store/Tag;

    return-object p1
.end method
