.class public final Landroidj/support/v4/os/ParcelableCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/os/ParcelableCompat$CompatCreator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCreator(Landroidj/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .registers 3
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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_b

    invoke-static {p0}, Landroidj/support/v4/os/ParcelableCompatCreatorHoneycombMR2Stub;->instantiate(Landroidj/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Landroidj/support/v4/os/ParcelableCompat$CompatCreator;

    invoke-direct {v0, p0}, Landroidj/support/v4/os/ParcelableCompat$CompatCreator;-><init>(Landroidj/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    goto :goto_a
.end method
