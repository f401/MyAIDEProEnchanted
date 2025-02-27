.class public final Landroidj/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidj/support/v4/media/session/MediaSessionCompat$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExtraBinder:Landroidj/support/v4/media/session/IMediaSession;

.field private final mInner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$Token$1;

    invoke-direct {v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Token$1;-><init>()V

    sput-object v0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroidj/support/v4/media/session/IMediaSession;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroidj/support/v4/media/session/IMediaSession;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    iput-object p2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Landroidj/support/v4/media/session/IMediaSession;

    return-void
.end method

.method public static fromToken(Ljava/lang/Object;)Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;Landroidj/support/v4/media/session/IMediaSession;)Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public static fromToken(Ljava/lang/Object;Landroidj/support/v4/media/session/IMediaSession;)Landroidj/support/v4/media/session/MediaSessionCompat$Token;
    .registers 4
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {p0}, Landroidj/support/v4/media/session/MediaSessionCompatApi21;->verifyToken(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidj/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroidj/support/v4/media/session/IMediaSession;)V

    goto :goto_9
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v1, p1, Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v1, :cond_4

    check-cast p1, Landroidj/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v1, :cond_14

    iget-object v1, p1, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_14
    iget-object v1, p1, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    iget-object v1, p1, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getExtraBinder()Landroidj/support/v4/media/session/IMediaSession;
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Landroidj/support/v4/media/session/IMediaSession;

    return-object v0
.end method

.method public getToken()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_d
.end method
