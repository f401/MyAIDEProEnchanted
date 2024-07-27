.class final Landroidj/support/v4/app/NotificationCompat$Action$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;Z)Landroidj/support/v4/app/NotificationCompatBase$Action;
    .registers 14

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$Action;

    move-object v5, p5

    check-cast v5, [Landroidj/support/v4/app/RemoteInput;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidj/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidj/support/v4/app/RemoteInput;Z)V

    return-object v0
.end method

.method public newArray(I)[Landroidj/support/v4/app/NotificationCompat$Action;
    .registers 3

    new-array v0, p1, [Landroidj/support/v4/app/NotificationCompat$Action;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Landroidj/support/v4/app/NotificationCompatBase$Action;
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/NotificationCompat$Action$1;->newArray(I)[Landroidj/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0
.end method
