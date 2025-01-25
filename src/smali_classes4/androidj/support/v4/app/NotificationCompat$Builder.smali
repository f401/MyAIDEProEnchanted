.class public Landroidj/support/v4/app/NotificationCompat$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field public mActions:Ljava/util/ArrayList;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidj/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field mBigContentView:Landroid/widget/RemoteViews;

.field mCategory:Ljava/lang/String;

.field mColor:I

.field public mContentInfo:Ljava/lang/CharSequence;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mContentTitle:Ljava/lang/CharSequence;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mContentView:Landroid/widget/RemoteViews;

.field public mContext:Landroid/content/Context;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mExtras:Landroid/os/Bundle;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mGroupKey:Ljava/lang/String;

.field mGroupSummary:Z

.field mHeadsUpContentView:Landroid/widget/RemoteViews;

.field public mLargeIcon:Landroid/graphics/Bitmap;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mLocalOnly:Z

.field public mNotification:Landroid/app/Notification;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mNumber:I
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mPublicVersion:Landroid/app/Notification;

.field public mRemoteInputHistory:[Ljava/lang/CharSequence;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mShowWhen:Z

.field mSortKey:Ljava/lang/String;

.field public mStyle:Landroidj/support/v4/app/NotificationCompat$Style;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public mSubText:Ljava/lang/CharSequence;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mTickerView:Landroid/widget/RemoteViews;

.field public mUseChronometer:Z
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    iput-boolean v4, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    iput v4, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mColor:I

    iput v4, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    iput v4, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mPriority:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    const/16 v1, 0x1400

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_4
.end method

.method private setFlag(IZ)V
    .registers 6

    if-eqz p2, :cond_a

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_9
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroidj/support/v4/app/NotificationCompat$Action;

    invoke-direct {v1, p1, p2, p3}, Landroidj/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Landroidj/support/v4/app/NotificationCompat$Action;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    if-eqz p1, :cond_d

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    :cond_d
    :goto_d
    return-object p0

    :cond_e
    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_d
.end method

.method public addPerson(Ljava/lang/String;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .registers 3

    sget-object v0, Landroidj/support/v4/app/NotificationCompat;->IMPL:Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompat$Builder;->getExtender()Landroidj/support/v4/app/NotificationCompat$BuilderExtender;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroidj/support/v4/app/NotificationCompat$NotificationCompatImpl;->build(Landroidj/support/v4/app/NotificationCompat$Builder;Landroidj/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroidj/support/v4/app/NotificationCompat$Extender;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    invoke-interface {p1, p0}, Landroidj/support/v4/app/NotificationCompat$Extender;->extend(Landroidj/support/v4/app/NotificationCompat$Builder;)Landroidj/support/v4/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public getBigContentView()Landroid/widget/RemoteViews;
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getColor()I
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mColor:I

    return v0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method protected getExtender()Landroidj/support/v4/app/NotificationCompat$BuilderExtender;
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    new-instance v0, Landroidj/support/v4/app/NotificationCompat$BuilderExtender;

    invoke-direct {v0}, Landroidj/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidj/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mPriority:I

    return v0
.end method

.method public getWhenIfShowing()J
    .registers 3
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    :goto_8
    return-wide v0

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method protected resolveText()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected resolveTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAutoCancel(Z)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setColor(I)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mColor:I

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setDefaults(I)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_10
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 4

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Landroidj/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupSummary(Z)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setLights(III)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 9
    .param p1  # I
        .annotation build Landroidj/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz v0, :cond_29

    move v0, v1

    :goto_1b
    iget-object v3, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    if-eqz v0, :cond_2b

    :goto_23
    and-int/lit8 v0, v4, -0x2

    or-int/2addr v0, v1

    iput v0, v3, Landroid/app/Notification;->flags:I

    return-object p0

    :cond_29
    move v0, v2

    goto :goto_1b

    :cond_2b
    move v1, v2

    goto :goto_23
.end method

.method public setLocalOnly(Z)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z

    return-object p0
.end method

.method public setNumber(I)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNumber:I

    return-object p0
.end method

.method public setOngoing(Z)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setPriority(I)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mPriority:I

    return-object p0
.end method

.method public setProgress(IIZ)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 4

    iput p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    iput p2, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mProgress:I

    iput-boolean p3, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    return-object p0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShowWhen(Z)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z

    return-object p0
.end method

.method public setSmallIcon(I)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public setSmallIcon(II)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setStyle(Landroidj/support/v4/app/NotificationCompat$Style;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mStyle:Landroidj/support/v4/app/NotificationCompat$Style;

    if-eq v0, p1, :cond_f

    iput-object p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mStyle:Landroidj/support/v4/app/NotificationCompat$Style;

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mStyle:Landroidj/support/v4/app/NotificationCompat$Style;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mStyle:Landroidj/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Landroidj/support/v4/app/NotificationCompat$Style;->setBuilder(Landroidj/support/v4/app/NotificationCompat$Builder;)V

    :cond_f
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroidj/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setUsesChronometer(Z)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    return-object p0
.end method

.method public setVibrate([J)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setVisibility(I)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 2

    iput p1, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mVisibility:I

    return-object p0
.end method

.method public setWhen(J)Landroidj/support/v4/app/NotificationCompat$Builder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
