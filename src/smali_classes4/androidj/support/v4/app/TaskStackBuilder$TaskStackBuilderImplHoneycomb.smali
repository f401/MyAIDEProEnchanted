.class Landroidj/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/TaskStackBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskStackBuilderImplHoneycomb"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 9

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    aget-object v1, p2, v2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p3, p2, p4}, Landroidj/support/v4/app/TaskStackBuilderHoneycomb;->getActivitiesPendingIntent(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
