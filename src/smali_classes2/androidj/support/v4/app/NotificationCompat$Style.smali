.class public abstract Landroidj/support/v4/app/NotificationCompat$Style;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Landroidj/support/v4/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public build()Landroid/app/Notification;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidj/support/v4/app/NotificationCompat$Style;->mBuilder:Landroidj/support/v4/app/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Style;->mBuilder:Landroidj/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidj/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public setBuilder(Landroidj/support/v4/app/NotificationCompat$Builder;)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Style;->mBuilder:Landroidj/support/v4/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Style;->mBuilder:Landroidj/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Style;->mBuilder:Landroidj/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Style;->mBuilder:Landroidj/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Landroidj/support/v4/app/NotificationCompat$Builder;->setStyle(Landroidj/support/v4/app/NotificationCompat$Style;)Landroidj/support/v4/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method
