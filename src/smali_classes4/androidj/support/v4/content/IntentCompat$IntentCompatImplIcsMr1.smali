.class Landroidj/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;
.super Landroidj/support/v4/content/IntentCompat$IntentCompatImplHC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/content/IntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntentCompatImplIcsMr1"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>()V

    return-void
.end method


# virtual methods
.method public makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-static {p1, p2}, Landroidj/support/v4/content/IntentCompatIcsMr1;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
