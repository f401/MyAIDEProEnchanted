.class Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;
.super Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplJellybean"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroidj/support/v4/app/NotificationCompat$Builder;Landroidj/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;
    .registers 29

    new-instance v2, Landroidj/support/v4/app/NotificationCompatJellybean$Builder;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-virtual/range {p1 .. p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->resolveTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->resolveText()Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNumber:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    move-object/from16 v0, p1

    iget v14, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mProgress:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mPriority:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v25, v0

    invoke-direct/range {v2 .. v25}, Landroidj/support/v4/app/NotificationCompatJellybean$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroidj/support/v4/app/NotificationCompat;->addActionsToBuilder(Landroidj/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mStyle:Landroidj/support/v4/app/NotificationCompat$Style;

    invoke-static {v2, v3}, Landroidj/support/v4/app/NotificationCompat;->addStyleToBuilderJellybean(Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroidj/support/v4/app/NotificationCompat$Style;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroidj/support/v4/app/NotificationCompat$BuilderExtender;->build(Landroidj/support/v4/app/NotificationCompat$Builder;Landroidj/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mStyle:Landroidj/support/v4/app/NotificationCompat$Style;

    if-eqz v3, :cond_a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_a0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroidj/support/v4/app/NotificationCompat$Builder;->mStyle:Landroidj/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v4, v3}, Landroidj/support/v4/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V

    :cond_a0
    return-object v2
.end method

.method public getAction(Landroid/app/Notification;I)Landroidj/support/v4/app/NotificationCompat$Action;
    .registers 5

    sget-object v0, Landroidj/support/v4/app/NotificationCompat$Action;->FACTORY:Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;

    sget-object v1, Landroidj/support/v4/app/RemoteInput;->FACTORY:Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    invoke-static {p1, p2, v0, v1}, Landroidj/support/v4/app/NotificationCompatJellybean;->getAction(Landroid/app/Notification;ILandroidj/support/v4/app/NotificationCompatBase$Action$Factory;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroidj/support/v4/app/NotificationCompatBase$Action;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/NotificationCompat$Action;

    return-object v0
.end method

.method public getActionCount(Landroid/app/Notification;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompatJellybean;->getActionCount(Landroid/app/Notification;)I

    move-result v0

    return v0
.end method

.method public getActionsFromParcelableArrayList(Ljava/util/ArrayList;)[Landroidj/support/v4/app/NotificationCompat$Action;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)[",
            "Landroidj/support/v4/app/NotificationCompat$Action;"
        }
    .end annotation

    sget-object v0, Landroidj/support/v4/app/NotificationCompat$Action;->FACTORY:Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;

    sget-object v1, Landroidj/support/v4/app/RemoteInput;->FACTORY:Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    invoke-static {p1, v0, v1}, Landroidj/support/v4/app/NotificationCompatJellybean;->getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroidj/support/v4/app/NotificationCompatBase$Action$Factory;Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroidj/support/v4/app/NotificationCompatBase$Action;

    move-result-object v0

    check-cast v0, [Landroidj/support/v4/app/NotificationCompat$Action;

    return-object v0
.end method

.method public getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompatJellybean;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalOnly(Landroid/app/Notification;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompatJellybean;->getLocalOnly(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method

.method public getParcelableArrayListForActions([Landroidj/support/v4/app/NotificationCompat$Action;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidj/support/v4/app/NotificationCompat$Action;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompatJellybean;->getParcelableArrayListForActions([Landroidj/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompatJellybean;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGroupSummary(Landroid/app/Notification;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompatJellybean;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method
