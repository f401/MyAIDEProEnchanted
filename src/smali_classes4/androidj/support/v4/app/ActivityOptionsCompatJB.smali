.class Landroidj/support/v4/app/ActivityOptionsCompatJB;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x10
.end annotation


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method private constructor <init>(Landroid/app/ActivityOptions;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/ActivityOptionsCompatJB;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroidj/support/v4/app/ActivityOptionsCompatJB;
    .registers 5

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompatJB;

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompatJB;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroidj/support/v4/app/ActivityOptionsCompatJB;
    .registers 7

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompatJB;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompatJB;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroidj/support/v4/app/ActivityOptionsCompatJB;
    .registers 6

    new-instance v0, Landroidj/support/v4/app/ActivityOptionsCompatJB;

    invoke-static {p0, p1, p2, p3}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidj/support/v4/app/ActivityOptionsCompatJB;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompatJB;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroidj/support/v4/app/ActivityOptionsCompatJB;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/ActivityOptionsCompatJB;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v1, p1, Landroidj/support/v4/app/ActivityOptionsCompatJB;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    return-void
.end method
