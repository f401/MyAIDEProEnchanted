.class public final Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify an action to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a name to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-nez p3, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify an icon resource id to build a CustomAction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iput-object p1, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    iput-object p2, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    iput p3, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    return-void
.end method


# virtual methods
.method public build()Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .registers 6

    new-instance v0, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction;

    iget-object v1, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mAction:Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mName:Ljava/lang/CharSequence;

    iget v3, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mIcon:I

    iget-object v4, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method
