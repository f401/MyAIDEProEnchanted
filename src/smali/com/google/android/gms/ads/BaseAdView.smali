.class Lcom/google/android/gms/ads/BaseAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field protected final j6:Lcom/google/android/gms/internal/ads/tI;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/tI;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/tI;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/tI;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p4}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->EQ()V

    return-void
.end method

.method public FH()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->we()V

    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/ads/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->DW()Lcom/google/android/gms/ads/a;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->FH()Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->v5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->VH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tI;->j6()V

    return-void
.end method

.method public j6(Lcom/google/android/gms/ads/c;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/c;->j6()Lcom/google/android/gms/internal/ads/rI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/internal/ads/rI;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/d;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/d;->DW(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/d;->j6(Landroid/content/Context;)I

    move-result v0

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/ads/a;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/a;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/internal/ads/WG;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/doubleclick/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/WG;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/WG;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/internal/ads/WG;)V

    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    check-cast p1, Lcom/google/android/gms/ads/doubleclick/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/doubleclick/a;)V

    goto :goto_0
.end method

.method public setAdSize(Lcom/google/android/gms/ads/d;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/d;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tI;->j6([Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Ljava/lang/String;)V

    return-void
.end method
