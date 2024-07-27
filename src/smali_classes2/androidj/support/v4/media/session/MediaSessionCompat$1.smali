.class Landroidj/support/v4/media/session/MediaSessionCompat$1;
.super Landroidj/support/v4/media/session/MediaSessionCompat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/media/session/MediaSessionCompat;


# direct methods
.method constructor <init>(Landroidj/support/v4/media/session/MediaSessionCompat;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/MediaSessionCompat$1;->this$0:Landroidj/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0}, Landroidj/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method
