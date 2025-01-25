.class public Landroid/support/v4/app/Z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/W;
.implements Landroid/support/v4/app/V;


# instance fields
.field private DW:Landroid/os/Bundle;

.field private FH:Landroid/widget/RemoteViews;

.field private Hw:Landroid/widget/RemoteViews;

.field private Zo:I

.field private j6:Landroid/app/Notification$Builder;

.field private v5:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;I)V
    .registers 39
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
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p21

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/app/Notification$Builder;

    move-object v4, p1

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-wide v4, v1, Landroid/app/Notification;->when:J

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    move/from16 v4, p14

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->icon:I

    iget v5, v1, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object v5, p6

    invoke-virtual {v3, v4, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v5, v1, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->ledARGB:I

    iget v5, v1, Landroid/app/Notification;->ledOnMS:I

    iget v6, v1, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_50

    const/4 v4, 0x1

    goto :goto_51

    :cond_50
    const/4 v4, 0x0

    :goto_51
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5d

    const/4 v4, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v4, 0x0

    :goto_5e
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6a

    const/4 v4, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v4, 0x0

    :goto_6b
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->defaults:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object v4, p3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object v4, p4

    invoke-virtual {v3, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v4, p17

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object v4, p5

    invoke-virtual {v3, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object v4, p8

    invoke-virtual {v3, p8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9f

    move-object/from16 v1, p9

    const/4 v5, 0x1

    goto :goto_a1

    :cond_9f
    move-object/from16 v1, p9

    :goto_a1
    invoke-virtual {v3, v1, v5}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v3, p10

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    move v3, p7

    invoke-virtual {v1, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v3, p15

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v3, p16

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v3, p11

    move/from16 v4, p12

    move/from16 v5, p13

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v3, p18

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v3, p25

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v3, p26

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v3, p27

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v3, p19

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v3, p22

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move/from16 v3, p23

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v3, p24

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/Z;->j6:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/support/v4/app/Z;->DW:Landroid/os/Bundle;

    if-eqz v2, :cond_104

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_104
    invoke-virtual/range {p20 .. p20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_108
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v4/app/Z;->j6:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_108

    :cond_11a
    move-object/from16 v2, p28

    iput-object v2, v0, Landroid/support/v4/app/Z;->FH:Landroid/widget/RemoteViews;

    move-object/from16 v1, p29

    iput-object v1, v0, Landroid/support/v4/app/Z;->Hw:Landroid/widget/RemoteViews;

    move-object/from16 v1, p30

    iput-object v1, v0, Landroid/support/v4/app/Z;->v5:Landroid/widget/RemoteViews;

    move/from16 v1, p31

    iput v1, v0, Landroid/support/v4/app/Z;->Zo:I

    return-void
.end method

.method private j6(Landroid/app/Notification;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/Z;->j6:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/Z;->DW:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroid/support/v4/app/Z;->j6:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Z;->FH:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_13

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_13
    iget-object v1, p0, Landroid/support/v4/app/Z;->Hw:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_19

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_19
    iget-object v1, p0, Landroid/support/v4/app/Z;->v5:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1f

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_1f
    iget v1, p0, Landroid/support/v4/app/Z;->Zo:I

    if-eqz v1, :cond_4b

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_37

    iget v1, p0, Landroid/support/v4/app/Z;->Zo:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    invoke-direct {p0, v0}, Landroid/support/v4/app/Z;->j6(Landroid/app/Notification;)V

    :cond_37
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_4b

    iget v1, p0, Landroid/support/v4/app/Z;->Zo:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4b

    invoke-direct {p0, v0}, Landroid/support/v4/app/Z;->j6(Landroid/app/Notification;)V

    :cond_4b
    return-object v0
.end method

.method public j6()Landroid/app/Notification$Builder;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/Z;->j6:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public j6(Landroid/support/v4/app/ca;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/Z;->j6:Landroid/app/Notification$Builder;

    invoke-static {v0, p1}, Landroid/support/v4/app/Y;->j6(Landroid/app/Notification$Builder;Landroid/support/v4/app/ca;)V

    return-void
.end method
