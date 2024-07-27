.class public Lcom/termux/app/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field public static final NOTIFICATION_MODE_ALL:I = 0x8

.field public static final NOTIFICATION_MODE_LIGHTS:I = 0x4

.field public static final NOTIFICATION_MODE_NONE:I = 0x0

.field public static final NOTIFICATION_MODE_SILENT:I = 0x1

.field public static final NOTIFICATION_MODE_SOUND:I = 0x2

.field public static final NOTIFICATION_MODE_SOUND_AND_LIGHTS:I = 0x6

.field public static final NOTIFICATION_MODE_SOUND_AND_VIBRATE:I = 0x5

.field public static final NOTIFICATION_MODE_VIBRATE:I = 0x3

.field public static final NOTIFICATION_MODE_VIBRATE_AND_LIGHTS:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .registers 12
    .annotation runtime Landroidx/annotation/Nullable;
    .end annotation

    .line 65
    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification$Builder;

    .line 80
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 68
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 69
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, p5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 70
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 71
    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 73
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 76
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 78
    :cond_1
    invoke-static {v0, p8}, Lcom/termux/app/NotificationUtils;->setNotificationDefaults(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2
    .annotation runtime Landroidx/annotation/Nullable;
    .end annotation

    .line 40
    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Landroid/app/NotificationManager;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    goto :goto_0
.end method

.method public static setNotificationDefaults(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .registers 3

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    return-object p0

    .line 108
    :pswitch_1
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification$Builder;

    move-object p0, v0

    goto :goto_0

    .line 112
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 115
    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 118
    :pswitch_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 121
    :pswitch_5
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 124
    :pswitch_6
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 127
    :pswitch_7
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 130
    :pswitch_8
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 98
    invoke-static {p0}, Lcom/termux/app/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0
.end method
