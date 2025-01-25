.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/tI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/tI;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/tI;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    const-string p2, "Context cannot be null"

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/tI;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object p1, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->DW()Lcom/google/android/gms/ads/a;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->FH()Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSizes()[Lcom/google/android/gms/ads/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->Hw()[Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->v5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->Zo()Lcom/google/android/gms/ads/doubleclick/a;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->VH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->gn()Lcom/google/android/gms/ads/doubleclick/c;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->u7()Lcom/google/android/gms/ads/h;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/i;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->tp()Lcom/google/android/gms/ads/i;

    move-result-object v0

    return-object v0
.end method

.method protected final onLayout(ZIIII)V
    .registers 8

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_24
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1b

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_39

    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/d;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1f} :catch_20

    goto :goto_27

    :catch_20
    move-exception v1

    const-string v2, "Unable to retrieve ad size."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_27
    if-eqz v1, :cond_38

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/d;->DW(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/d;->j6(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/a;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final varargs setAdSizes([Lcom/google/android/gms/ads/d;)V
    .registers 3

    if-eqz p1, :cond_b

    array-length v0, p1

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->DW([Lcom/google/android/gms/ads/d;)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/a;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/doubleclick/a;)V

    return-void
.end method

.method public final setCorrelator(Lcom/google/android/gms/ads/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/e;)V

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Z)V

    return-void
.end method

.method public final setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/c;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/doubleclick/c;)V

    return-void
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/i;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/i;)V

    return-void
.end method
