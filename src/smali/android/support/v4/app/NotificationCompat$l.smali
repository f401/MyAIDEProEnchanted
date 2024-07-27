.class public abstract Landroid/support/v4/app/NotificationCompat$l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l"
.end annotation


# instance fields
.field DW:Ljava/lang/CharSequence;

.field FH:Ljava/lang/CharSequence;

.field Hw:Z

.field protected j6:Landroid/support/v4/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$l;->Hw:Z

    return-void
.end method


# virtual methods
.method public DW(Landroid/support/v4/app/W;)Landroid/widget/RemoteViews;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public FH(Landroid/support/v4/app/W;)Landroid/widget/RemoteViews;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public Hw(Landroid/support/v4/app/W;)Landroid/widget/RemoteViews;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public j6(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$l;->j6:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$l;->j6:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$l;->j6:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/support/v4/app/NotificationCompat$l;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method public abstract j6(Landroid/support/v4/app/W;)V
.end method
