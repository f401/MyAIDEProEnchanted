.class Landroidj/support/v4/app/NotificationManagerCompat$ImplApi24;
.super Landroidj/support/v4/app/NotificationManagerCompat$ImplKitKat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImplApi24"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/NotificationManagerCompat$ImplKitKat;-><init>()V

    return-void
.end method


# virtual methods
.method public areNotificationsEnabled(Landroid/content/Context;Landroid/app/NotificationManager;)Z
    .registers 4

    invoke-static {p2}, Landroidj/support/v4/app/NotificationManagerCompatApi24;->areNotificationsEnabled(Landroid/app/NotificationManager;)Z

    move-result v0

    return v0
.end method

.method public getImportance(Landroid/app/NotificationManager;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationManagerCompatApi24;->getImportance(Landroid/app/NotificationManager;)I

    move-result v0

    return v0
.end method
