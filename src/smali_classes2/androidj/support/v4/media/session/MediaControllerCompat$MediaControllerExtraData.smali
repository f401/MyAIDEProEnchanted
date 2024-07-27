.class Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;
.super Landroidj/support/v4/app/SupportActivity$ExtraData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaControllerExtraData"
.end annotation


# instance fields
.field private final mMediaController:Landroidj/support/v4/media/session/MediaControllerCompat;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaControllerCompat;)V
    .registers 2

    invoke-direct {p0}, Landroidj/support/v4/app/SupportActivity$ExtraData;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Landroidj/support/v4/media/session/MediaControllerCompat;

    return-void
.end method


# virtual methods
.method getMediaController()Landroidj/support/v4/media/session/MediaControllerCompat;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Landroidj/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method
