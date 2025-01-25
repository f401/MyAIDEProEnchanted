.class Lcom/google/android/gms/ads/BaseAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field protected final j6:Lcom/google/android/gms/internal/ads/tI;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/tI;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/tI;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0, p3}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/tI;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/tI;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V

    iput-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

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
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/c;->j6()Lcom/google/android/gms/internal/ads/rI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/internal/ads/rI;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
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

.method protected onMeasure(II)V
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
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getAdSize()Lcom/google/android/gms/ads/d;

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

.method public setAdListener(Lcom/google/android/gms/ads/a;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/a;)V

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/internal/ads/WG;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/doubleclick/a;)V

    return-void

    :cond_13
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/WG;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/WG;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/internal/ads/WG;)V

    :cond_1f
    instance-of v0, p1, Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->j6:Lcom/google/android/gms/internal/ads/tI;

    check-cast p1, Lcom/google/android/gms/ads/doubleclick/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tI;->j6(Lcom/google/android/gms/ads/doubleclick/a;)V

    :cond_2a
    return-void
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
