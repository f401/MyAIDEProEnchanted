.class final Landroidj/support/v4/media/session/MediaSessionCompat$Token$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompat$Token;
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
        "Landroidj/support/v4/media/session/MediaSessionCompat$Token;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_b
    new-instance v1, Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_b
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$Token$1;->createFromParcel(Landroid/os/Parcel;)Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 3

    new-array v0, p1, [Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$Token$1;->newArray(I)[Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method
