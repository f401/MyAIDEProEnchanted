.class Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;
.super Landroidj/support/v4/media/VolumeProviderCompat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-direct {p0}, Landroidj/support/v4/media/VolumeProviderCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(Landroidj/support/v4/media/VolumeProviderCompat;)V
    .registers 8

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeProvider:Landroidj/support/v4/media/VolumeProviderCompat;

    if-eq v0, p1, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Landroidj/support/v4/media/session/ParcelableVolumeInfo;

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget v1, v1, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mVolumeType:I

    iget-object v2, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget v2, v2, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mLocalStream:I

    invoke-virtual {p1}, Landroidj/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v3

    invoke-virtual {p1}, Landroidj/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v4

    invoke-virtual {p1}, Landroidj/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    iget-object v1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-virtual {v1, v0}, Landroidj/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->sendVolumeInfoChanged(Landroidj/support/v4/media/session/ParcelableVolumeInfo;)V

    goto :goto_6
.end method
