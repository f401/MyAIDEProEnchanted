.class public Landroid/support/v4/app/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/W;
.implements Landroid/support/v4/app/V;


# instance fields
.field private j6:Landroid/app/Notification$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Ljava/lang/String;ILjava/lang/String;JZZI)V
    .registers 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Notification;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/graphics/Bitmap;",
            "IIZZZI",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "II",
            "Landroid/app/Notification;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "JZZI)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p29

    move-object/from16 v3, p30

    move-object/from16 v4, p31

    move-object/from16 v5, p32

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/app/Notification$Builder;

    move-object v7, p1

    invoke-direct {v6, p1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-wide v7, v1, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    move/from16 v7, p14

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->icon:I

    iget v8, v1, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v8, p6

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v8, v1, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->ledARGB:I

    iget v8, v1, Landroid/app/Notification;->ledOnMS:I

    iget v9, v1, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_57

    const/4 v7, 0x1

    goto :goto_58

    :cond_57
    const/4 v7, 0x0

    :goto_58
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_64

    const/4 v7, 0x1

    goto :goto_65

    :cond_64
    const/4 v7, 0x0

    :goto_65
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_71

    const/4 v7, 0x1

    goto :goto_72

    :cond_71
    const/4 v7, 0x0

    :goto_72
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->defaults:I

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, p3

    invoke-virtual {v6, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, p4

    invoke-virtual {v6, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v7, p17

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v7, p5

    invoke-virtual {v6, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v7, p8

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_a7

    move-object/from16 v1, p9

    const/4 v8, 0x1

    goto :goto_a9

    :cond_a7
    move-object/from16 v1, p9

    :goto_a9
    invoke-virtual {v6, v1, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v6, p7

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v6, p15

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v6, p16

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    invoke-virtual {v1, v6, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v6, p18

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v6, p21

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v6, p25

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v6, p26

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v6, p27

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v6, p19

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v6, p22

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v6, p23

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v6, p24

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v6, p28

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v5, p33

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v5, p34

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-wide/from16 v5, p35

    invoke-virtual {v1, v5, v6}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v5, p39

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/ba;->j6:Landroid/app/Notification$Builder;

    if-eqz p38, :cond_130

    move/from16 v5, p37

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    :cond_130
    if-eqz v2, :cond_137

    iget-object v1, v0, Landroid/support/v4/app/ba;->j6:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_137
    if-eqz v3, :cond_13e

    iget-object v1, v0, Landroid/support/v4/app/ba;->j6:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_13e
    if-eqz v4, :cond_145

    iget-object v1, v0, Landroid/support/v4/app/ba;->j6:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_145
    invoke-virtual/range {p20 .. p20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_149
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v4/app/ba;->j6:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_149

    :cond_15b
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/ba;->j6:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public j6()Landroid/app/Notification$Builder;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/ba;->j6:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public j6(Landroid/support/v4/app/ca;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/ba;->j6:Landroid/app/Notification$Builder;

    invoke-static {v0, p1}, Landroid/support/v4/app/aa;->j6(Landroid/app/Notification$Builder;Landroid/support/v4/app/ca;)V

    return-void
.end method
