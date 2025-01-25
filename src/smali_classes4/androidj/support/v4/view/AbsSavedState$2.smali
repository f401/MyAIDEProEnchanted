.class final Landroidj/support/v4/view/AbsSavedState$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/AbsSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidj/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Landroidj/support/v4/view/AbsSavedState;",
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
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidj/support/v4/view/AbsSavedState;
    .registers 5

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "superState must be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v0, Landroidj/support/v4/view/AbsSavedState;->EMPTY_STATE:Landroidj/support/v4/view/AbsSavedState;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/view/AbsSavedState$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidj/support/v4/view/AbsSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroidj/support/v4/view/AbsSavedState;
    .registers 3

    new-array v0, p1, [Landroidj/support/v4/view/AbsSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/view/AbsSavedState$2;->newArray(I)[Landroidj/support/v4/view/AbsSavedState;

    move-result-object v0

    return-object v0
.end method
