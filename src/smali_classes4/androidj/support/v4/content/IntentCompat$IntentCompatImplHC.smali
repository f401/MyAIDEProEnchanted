.class Landroidj/support/v4/content/IntentCompat$IntentCompatImplHC;
.super Landroidj/support/v4/content/IntentCompat$IntentCompatImplBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/content/IntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntentCompatImplHC"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/content/IntentCompat$IntentCompatImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/content/IntentCompatHoneycomb;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/content/IntentCompatHoneycomb;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
