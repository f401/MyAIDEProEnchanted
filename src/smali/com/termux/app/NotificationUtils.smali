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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .registers 10

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 68
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 69
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0, p5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 70
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 71
    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 73
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 75
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p0, p2, :cond_2d

    .line 76
    invoke-static {v0, p1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 78
    :cond_2d
    invoke-static {v0, p8}, Lcom/termux/app/NotificationUtils;->setNotificationDefaults(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_4
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static setNotificationDefaults(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;
    .registers 2

    if-eqz p1, :cond_29

    packed-switch p1, :pswitch_data_2c

    goto :goto_28

    .line 130
    :pswitch_6  #0x8
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_28

    .line 127
    :pswitch_b  #0x7
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_28

    .line 124
    :pswitch_10  #0x6
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_28

    .line 121
    :pswitch_15  #0x5
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_28

    .line 118
    :pswitch_1a  #0x4
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_28

    .line 115
    :pswitch_1f  #0x3
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_28

    .line 112
    :pswitch_24  #0x2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :goto_28
    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_24  #00000002
        :pswitch_1f  #00000003
        :pswitch_1a  #00000004
        :pswitch_15  #00000005
        :pswitch_10  #00000006
        :pswitch_b  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method

.method public static setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 6

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    return-void

    .line 96
    :cond_7
    invoke-static {p1, p2, p3}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 98
    invoke-static {p0}, Lcom/termux/app/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 100
    invoke-static {p0, p1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_14
    return-void
.end method
