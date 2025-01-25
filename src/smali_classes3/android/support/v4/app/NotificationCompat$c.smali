.class public Landroid/support/v4/app/NotificationCompat$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/W;)Landroid/app/Notification;
    .registers 6

    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->J0:Landroid/support/v4/app/NotificationCompat$l;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$l;->FH(Landroid/support/v4/app/W;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-interface {p2}, Landroid/support/v4/app/W;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v0, :cond_13

    :goto_10
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_18

    :cond_13
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->ei:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_18

    goto :goto_10

    :cond_18
    :goto_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2a

    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->J0:Landroid/support/v4/app/NotificationCompat$l;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$l;->DW(Landroid/support/v4/app/W;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_2a

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3c

    iget-object p1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->J0:Landroid/support/v4/app/NotificationCompat$l;

    if-eqz p1, :cond_3c

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$l;->Hw(Landroid/support/v4/app/W;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-eqz p1, :cond_3c

    iput-object p1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_3c
    return-object v1
.end method
