.class Landroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/FrameMetricsAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameMetricsBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public getMetrics()[Landroid/util/SparseIntArray;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()[Landroid/util/SparseIntArray;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public stop()[Landroid/util/SparseIntArray;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
