.class final Landroidx/versionedparcelable/ParcelImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/ParcelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroidx/versionedparcelable/ParcelImpl;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/versionedparcelable/ParcelImpl;
    .registers 3

    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/ParcelImpl$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroidx/versionedparcelable/ParcelImpl;
    .registers 3

    new-array v0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/ParcelImpl$1;->newArray(I)[Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v0

    return-object v0
.end method
