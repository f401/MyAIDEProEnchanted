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

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$l;->FH(Landroid/support/v4/app/W;)Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_0
    invoke-interface {p2}, Landroid/support/v4/app/W;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v0, :cond_4

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->J0:Landroid/support/v4/app/NotificationCompat$l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$l;->DW(Landroid/support/v4/app/W;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->J0:Landroid/support/v4/app/NotificationCompat$l;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$l;->Hw(Landroid/support/v4/app/W;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->ei:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1
.end method
