.class public final Landroidj/support/v4/media/MediaDescriptionCompat$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/MediaDescriptionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconUri:Landroid/net/Uri;

.field private mMediaId:Ljava/lang/String;

.field private mMediaUri:Landroid/net/Uri;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidj/support/v4/media/MediaDescriptionCompat;
    .registers 10

    new-instance v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    iget-object v1, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mMediaId:Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mIcon:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mIconUri:Landroid/net/Uri;

    iget-object v7, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v8, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mMediaUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v8}, Landroidj/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    return-object v0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;
    .registers 2
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;
    .registers 2
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;
    .registers 2
    .param p1  # Landroid/graphics/Bitmap;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setIconUri(Landroid/net/Uri;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;
    .registers 2
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mMediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaUri(Landroid/net/Uri;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;
    .registers 2
    .param p1  # Landroid/net/Uri;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mMediaUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;
    .registers 2
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/media/MediaDescriptionCompat$Builder;
    .registers 2
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidj/support/v4/media/MediaDescriptionCompat$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
