.class final Landroidj/support/v4/app/FragmentState$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/FragmentState;
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
        "Landroidj/support/v4/app/FragmentState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroidj/support/v4/app/FragmentState;
    .registers 3

    new-instance v0, Landroidj/support/v4/app/FragmentState;

    invoke-direct {v0, p1}, Landroidj/support/v4/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/FragmentState$1;->createFromParcel(Landroid/os/Parcel;)Landroidj/support/v4/app/FragmentState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroidj/support/v4/app/FragmentState;
    .registers 3

    new-array v0, p1, [Landroidj/support/v4/app/FragmentState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/FragmentState$1;->newArray(I)[Landroidj/support/v4/app/FragmentState;

    move-result-object v0

    return-object v0
.end method
