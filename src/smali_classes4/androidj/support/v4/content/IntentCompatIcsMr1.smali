.class Landroidj/support/v4/content/IntentCompatIcsMr1;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xf
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    invoke-static {p0, p1}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
