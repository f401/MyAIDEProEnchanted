.class public final Landroid/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v4/media/session/MediaSessionCompat$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Landroid/support/v4/media/session/b;

.field private final j6:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v4/media/session/f;

    invoke-direct {v0}, Landroid/support/v4/media/session/f;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->DW:Landroid/support/v4/media/session/b;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6(Ljava/lang/Object;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/Object;Landroid/support/v4/media/session/b;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .registers 4

    if-eqz p0, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    invoke-static {p0}, Landroid/support/v4/media/session/g;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;)V

    return-object v0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6:Ljava/lang/Object;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6:Ljava/lang/Object;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6:Ljava/lang/Object;

    if-nez v1, :cond_17

    if-nez p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    if-nez p1, :cond_1a

    return v2

    :cond_1a
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6()Landroid/support/v4/media/session/b;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->DW:Landroid/support/v4/media/session/b;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_15

    :cond_e
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->j6:Ljava/lang/Object;

    check-cast p2, Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_15
    return-void
.end method
