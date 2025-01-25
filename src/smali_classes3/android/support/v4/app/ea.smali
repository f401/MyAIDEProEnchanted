.class public Landroid/support/v4/app/ea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/W;
.implements Landroid/support/v4/app/V;


# instance fields
.field private DW:Landroid/os/Bundle;

.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Landroid/widget/RemoteViews;

.field private j6:Landroid/app/Notification$Builder;

.field private v5:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 36
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
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p19

    move-object/from16 v3, p20

    move-object/from16 v4, p21

    move-object/from16 v5, p23

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroid/support/v4/app/ea;->FH:Ljava/util/List;

    new-instance v6, Landroid/app/Notification$Builder;

    move-object v7, p1

    invoke-direct {v6, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

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

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_5e

    const/4 v7, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v7, 0x0

    :goto_5f
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_6b

    const/4 v7, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v7, 0x0

    :goto_6c
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_78

    const/4 v7, 0x1

    goto :goto_79

    :cond_78
    const/4 v7, 0x0

    :goto_79
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

    if-eqz v1, :cond_ae

    move-object/from16 v1, p9

    const/4 v9, 0x1

    goto :goto_b0

    :cond_ae
    move-object/from16 v1, p9

    :goto_b0
    invoke-virtual {v6, v1, v9}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

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

    move/from16 v9, p13

    invoke-virtual {v1, v6, v7, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/ea;->j6:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/support/v4/app/ea;->DW:Landroid/os/Bundle;

    if-eqz v3, :cond_e4

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_e4
    if-eqz v2, :cond_ff

    invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ff

    iget-object v1, v0, Landroid/support/v4/app/ea;->DW:Landroid/os/Bundle;

    invoke-virtual/range {p19 .. p19}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v3, "android.people"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_ff
    if-eqz p18, :cond_108

    iget-object v1, v0, Landroid/support/v4/app/ea;->DW:Landroid/os/Bundle;

    const-string v2, "android.support.localOnly"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_108
    if-eqz v4, :cond_11d

    iget-object v1, v0, Landroid/support/v4/app/ea;->DW:Landroid/os/Bundle;

    const-string v2, "android.support.groupKey"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v4/app/ea;->DW:Landroid/os/Bundle;

    if-eqz p22, :cond_118

    const-string v2, "android.support.isGroupSummary"

    goto :goto_11a

    :cond_118
    const-string v2, "android.support.useSideChannel"

    :goto_11a
    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_11d
    if-eqz v5, :cond_126

    iget-object v1, v0, Landroid/support/v4/app/ea;->DW:Landroid/os/Bundle;

    const-string v2, "android.support.sortKey"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_126
    move-object/from16 v1, p24

    iput-object v1, v0, Landroid/support/v4/app/ea;->Hw:Landroid/widget/RemoteViews;

    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/support/v4/app/ea;->v5:Landroid/widget/RemoteViews;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/ea;->FH:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/da;->j6(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/support/v4/app/ea;->DW:Landroid/os/Bundle;

    const-string v2, "android.support.actionExtras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/ea;->j6:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/ea;->DW:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroid/support/v4/app/ea;->j6:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/ea;->Hw:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_22

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_22
    iget-object v1, p0, Landroid/support/v4/app/ea;->v5:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_28

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_28
    return-object v0
.end method

.method public j6()Landroid/app/Notification$Builder;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/ea;->j6:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public j6(Landroid/support/v4/app/ca;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/ea;->FH:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/app/ea;->j6:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroid/support/v4/app/da;->j6(Landroid/app/Notification$Builder;Landroid/support/v4/app/ca;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
