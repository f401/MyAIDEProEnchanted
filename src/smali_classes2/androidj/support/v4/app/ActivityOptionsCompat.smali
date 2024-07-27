.class public Landroidj/support/v4/app/ActivityOptionsCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;,
        Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;,
        Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;,
        Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;
    }
.end annotation


# static fields
.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeBasic()Landroidj/support/v4/app/ActivityOptionsCompat;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    invoke-static {}, Landroidj/support/v4/app/ActivityOptionsCompat24;->makeBasic()Landroidj/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat24;)V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    invoke-static {}, Landroidj/support/v4/app/ActivityOptionsCompat23;->makeBasic()Landroidj/support/v4/app/ActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat23;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroidj/support/v4/app/ActivityOptionsCompat;
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    invoke-static {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/ActivityOptionsCompat24;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroidj/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat24;)V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    invoke-static {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/ActivityOptionsCompat23;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroidj/support/v4/app/ActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat23;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroidj/support/v4/app/ActivityOptionsCompat;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    invoke-static {p0, p1, p2}, Landroidj/support/v4/app/ActivityOptionsCompat24;->makeCustomAnimation(Landroid/content/Context;II)Landroidj/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat24;)V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    invoke-static {p0, p1, p2}, Landroidj/support/v4/app/ActivityOptionsCompat23;->makeCustomAnimation(Landroid/content/Context;II)Landroidj/support/v4/app/ActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat23;)V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    invoke-static {p0, p1, p2}, Landroidj/support/v4/app/ActivityOptionsCompat21;->makeCustomAnimation(Landroid/content/Context;II)Landroidj/support/v4/app/ActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat21;)V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    invoke-static {p0, p1, p2}, Landroidj/support/v4/app/ActivityOptionsCompatJB;->makeCustomAnimation(Landroid/content/Context;II)Landroidj/support/v4/app/ActivityOptionsCompatJB;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroidj/support/v4/app/ActivityOptionsCompatJB;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroidj/support/v4/app/ActivityOptionsCompat;
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    invoke-static {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/ActivityOptionsCompat24;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroidj/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat24;)V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    invoke-static {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/ActivityOptionsCompat23;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroidj/support/v4/app/ActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat23;)V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    invoke-static {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/ActivityOptionsCompat21;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroidj/support/v4/app/ActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat21;)V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    invoke-static {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/ActivityOptionsCompatJB;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroidj/support/v4/app/ActivityOptionsCompatJB;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroidj/support/v4/app/ActivityOptionsCompatJB;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidj/support/v4/app/ActivityOptionsCompat;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    invoke-static {p0, p1, p2}, Landroidj/support/v4/app/ActivityOptionsCompat24;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidj/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat24;)V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    invoke-static {p0, p1, p2}, Landroidj/support/v4/app/ActivityOptionsCompat23;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidj/support/v4/app/ActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat23;)V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    invoke-static {p0, p1, p2}, Landroidj/support/v4/app/ActivityOptionsCompat21;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidj/support/v4/app/ActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat21;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroidj/support/v4/util/Pair;)Landroidj/support/v4/app/ActivityOptionsCompat;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroidj/support/v4/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidj/support/v4/app/ActivityOptionsCompat;"
        }
    .end annotation

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    if-eqz p1, :cond_4

    array-length v0, p1

    new-array v3, v0, [Landroid/view/View;

    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    aget-object v0, p1, v1

    iget-object v0, v0, Landroidj/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    aput-object v0, v3, v1

    aget-object v0, p1, v1

    iget-object v0, v0, Landroidj/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    invoke-static {p0, v3, v1}, Landroidj/support/v4/app/ActivityOptionsCompat24;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroidj/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat24;)V

    :goto_2
    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    invoke-static {p0, v3, v1}, Landroidj/support/v4/app/ActivityOptionsCompat23;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroidj/support/v4/app/ActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat23;)V

    goto :goto_2

    :cond_2
    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    invoke-static {p0, v3, v1}, Landroidj/support/v4/app/ActivityOptionsCompat21;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroidj/support/v4/app/ActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat21;)V

    goto :goto_2

    :cond_3
    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    goto :goto_2

    :cond_4
    move-object v1, v0

    move-object v3, v0

    goto :goto_1
.end method

.method public static makeTaskLaunchBehind()Landroidj/support/v4/app/ActivityOptionsCompat;
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    invoke-static {}, Landroidj/support/v4/app/ActivityOptionsCompat24;->makeTaskLaunchBehind()Landroidj/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat24;)V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    invoke-static {}, Landroidj/support/v4/app/ActivityOptionsCompat23;->makeTaskLaunchBehind()Landroidj/support/v4/app/ActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat23;)V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    invoke-static {}, Landroidj/support/v4/app/ActivityOptionsCompat21;->makeTaskLaunchBehind()Landroidj/support/v4/app/ActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat21;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroidj/support/v4/app/ActivityOptionsCompat;
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    invoke-static {p0, p1, p2, p3}, Landroidj/support/v4/app/ActivityOptionsCompat24;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroidj/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat24;)V

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    invoke-static {p0, p1, p2, p3}, Landroidj/support/v4/app/ActivityOptionsCompat23;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroidj/support/v4/app/ActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat23;)V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    invoke-static {p0, p1, p2, p3}, Landroidj/support/v4/app/ActivityOptionsCompat21;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroidj/support/v4/app/ActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroidj/support/v4/app/ActivityOptionsCompat21;)V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    invoke-static {p0, p1, p2, p3}, Landroidj/support/v4/app/ActivityOptionsCompatJB;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroidj/support/v4/app/ActivityOptionsCompatJB;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroidj/support/v4/app/ActivityOptionsCompatJB;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroidj/support/v4/app/ActivityOptionsCompat;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .registers 2
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 2

    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroidj/support/v4/app/ActivityOptionsCompat;
    .registers 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroidj/support/v4/app/ActivityOptionsCompat;)V
    .registers 2

    return-void
.end method
