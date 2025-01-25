.class public abstract Landroidx/core/app/NotificationCompat$Style;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .registers 6

    const/high16 v4, 0x3f800000  # 1.0f

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/core/R$dimen;->notification_top_pad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3fa66666  # 1.3f

    invoke-static {v0, v4, v3}, Landroidx/core/app/NotificationCompat$Style;->constrain(FFF)F

    move-result v0

    sub-float/2addr v0, v4

    const v3, 0x3e999998  # 0.29999995f

    div-float/2addr v0, v3

    sub-float v3, v4, v0

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez p3, :cond_3b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_13
    if-nez p3, :cond_19

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    :cond_19
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v3, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_32

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_32
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2

    :cond_3b
    move v0, p3

    goto :goto_13
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .registers 11

    sget v0, Landroidx/core/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, v0, p4, p2}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int v3, p2, p3

    div-int/lit8 v3, v3, 0x2

    add-int v4, p3, v3

    invoke-virtual {v2, v3, v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .registers 4

    const/16 v1, 0x8

    sget v0, Landroidx/core/R$id;->title:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroidx/core/R$id;->text2:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroidx/core/R$id;->text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 2

    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v2, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p2

    invoke-direct {v2, v3, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->getPriority()I

    move-result v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v4, -0x1

    if-ge v3, v4, :cond_1a6

    const/4 v3, 0x1

    :goto_29
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v4, v6, :cond_49

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v4, v6, :cond_49

    if-eqz v3, :cond_1a9

    sget v3, Landroidx/core/R$id;->notification_background:I

    const-string v4, "setBackgroundResource"

    sget v6, Landroidx/core/R$drawable;->notification_bg_low:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v3, Landroidx/core/R$id;->icon:I

    const-string v4, "setBackgroundResource"

    sget v6, Landroidx/core/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_49
    :goto_49
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1dc

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1bd

    sget v3, Landroidx/core/R$id;->icon:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroidx/core/R$id;->icon:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_68
    if-eqz p1, :cond_ab

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-eqz v3, :cond_ab

    sget v3, Landroidx/core/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_1c6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v3, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3, v4, v7}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    sget v4, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_a5
    sget v3, Landroidx/core/R$id;->right_icon:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_ab
    :goto_ab
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_be

    sget v3, Landroidx/core/R$id;->title:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_be
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_23a

    sget v3, Landroidx/core/R$id;->text:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v3, 0x1

    :goto_d2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v4, v6, :cond_23d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_23d

    const/4 v4, 0x1

    :goto_e1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v6, :cond_240

    sget v3, Landroidx/core/R$id;->info:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v3, Landroidx/core/R$id;->info:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_fa
    const/4 v3, 0x1

    const/4 v4, 0x1

    move v8, v3

    move v9, v4

    :goto_fe
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_290

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_290

    sget v3, Landroidx/core/R$id;->text:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_289

    sget v3, Landroidx/core/R$id;->text2:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v3, Landroidx/core/R$id;->text2:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v3, 0x1

    :goto_131
    if-eqz v3, :cond_151

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_151

    if-eqz p3, :cond_148

    sget v3, Landroidx/core/R$dimen;->notification_subtext_size:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    sget v4, Landroidx/core/R$id;->text:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_148
    sget v3, Landroidx/core/R$id;->line1:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_151
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_195

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz v3, :cond_293

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_293

    sget v3, Landroidx/core/R$id;->chronometer:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroidx/core/R$id;->chronometer:I

    const-string v4, "setBase"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v12, v14

    add-long/2addr v6, v12

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    sget v3, Landroidx/core/R$id;->chronometer:I

    const-string v4, "setStarted"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    move v9, v10

    :cond_195
    :goto_195
    sget v4, Landroidx/core/R$id;->right_side:I

    if-eqz v9, :cond_2ab

    const/4 v3, 0x0

    :goto_19a
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v4, Landroidx/core/R$id;->line3:I

    if-eqz v8, :cond_2af

    move v3, v11

    :goto_1a2
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v2

    :cond_1a6
    const/4 v3, 0x0

    goto/16 :goto_29

    :cond_1a9
    sget v3, Landroidx/core/R$id;->notification_background:I

    const-string v4, "setBackgroundResource"

    sget v6, Landroidx/core/R$drawable;->notification_bg:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v3, Landroidx/core/R$id;->icon:I

    const-string v4, "setBackgroundResource"

    sget v6, Landroidx/core/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_49

    :cond_1bd
    sget v3, Landroidx/core/R$id;->icon:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_68

    :cond_1c6
    sget v3, Landroidx/core/R$id;->right_icon:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_a5

    :cond_1dc
    if-eqz p1, :cond_ab

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-eqz v3, :cond_ab

    sget v3, Landroidx/core/R$id;->icon:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_224

    sget v3, Landroidx/core/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v6, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v6, v4}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    sget v4, Landroidx/core/R$id;->icon:I

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_ab

    :cond_224
    sget v3, Landroidx/core/R$id;->icon:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_ab

    :cond_23a
    const/4 v3, 0x0

    goto/16 :goto_d2

    :cond_23d
    const/4 v4, 0x0

    goto/16 :goto_e1

    :cond_240
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-lez v6, :cond_27e

    sget v3, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v4, v4, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-le v4, v3, :cond_269

    sget v3, Landroidx/core/R$id;->info:I

    sget v4, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_261
    sget v3, Landroidx/core/R$id;->info:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_fa

    :cond_269
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v3

    sget v4, Landroidx/core/R$id;->info:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_261

    :cond_27e
    sget v6, Landroidx/core/R$id;->info:I

    const/16 v7, 0x8

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v8, v3

    move v9, v4

    goto/16 :goto_fe

    :cond_289
    sget v3, Landroidx/core/R$id;->text2:I

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_290
    const/4 v3, 0x0

    goto/16 :goto_131

    :cond_293
    sget v3, Landroidx/core/R$id;->time:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroidx/core/R$id;->time:I

    const-string v4, "setTime"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    move v9, v10

    goto/16 :goto_195

    :cond_2ab
    const/16 v3, 0x8

    goto/16 :goto_19a

    :cond_2af
    const/16 v3, 0x8

    goto/16 :goto_1a2
.end method

.method public build()Landroid/app/Notification;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_29

    sget v1, Landroidx/core/R$id;->notification_main_column_container:I

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v3

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_29
    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_b

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_b

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_b
    return-void
.end method
