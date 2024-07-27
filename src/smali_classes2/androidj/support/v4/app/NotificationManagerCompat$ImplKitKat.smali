.class Landroidj/support/v4/app/NotificationManagerCompat$ImplKitKat;
.super Landroidj/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImplKitKat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;-><init>()V

    return-void
.end method


# virtual methods
.method public areNotificationsEnabled(Landroid/content/Context;Landroid/app/NotificationManager;)Z
    .registers 4

    invoke-static {p1}, Landroidj/support/v4/app/NotificationManagerCompatKitKat;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
