.class Landroidj/support/v4/os/ParcelableCompatCreatorHoneycombMR2Stub;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xd
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instantiate(Landroidj/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidj/support/v4/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Landroidj/support/v4/os/ParcelableCompatCreatorHoneycombMR2;

    invoke-direct {v0, p0}, Landroidj/support/v4/os/ParcelableCompatCreatorHoneycombMR2;-><init>(Landroidj/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
