.class Landroidj/support/v4/app/NotificationManagerCompat$ImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/NotificationManagerCompat$Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areNotificationsEnabled(Landroid/content/Context;Landroid/app/NotificationManager;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public cancelNotification(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public getImportance(Landroid/app/NotificationManager;)I
    .registers 3

    const/16 v0, -0x3e8

    return v0
.end method

.method public getSideChannelBindFlags()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public postNotification(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V
    .registers 5

    invoke-virtual {p1, p2, p3, p4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
