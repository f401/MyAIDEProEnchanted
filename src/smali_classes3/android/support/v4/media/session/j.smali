.class final Landroid/support/v4/media/session/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .registers 3

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    invoke-direct {v0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/j;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .registers 2

    new-array p1, p1, [Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/j;->newArray(I)[Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object p1

    return-object p1
.end method
