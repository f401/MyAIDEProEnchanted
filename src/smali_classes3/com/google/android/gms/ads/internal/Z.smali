.class public final Lcom/google/android/gms/ads/internal/Z;
.super Landroid/widget/ViewSwitcher;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Yl;

.field private FH:Z

.field private final j6:Lcom/google/android/gms/internal/ads/zzazc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzazc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/Z;->j6:Lcom/google/android/gms/internal/ads/zzazc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzazc;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzazc;->DW(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/Z;->FH:Z

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_21

    new-instance p2, Lcom/google/android/gms/internal/ads/Yl;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1, p0, p4, p5}, Lcom/google/android/gms/internal/ads/Yl;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/Z;->DW:Lcom/google/android/gms/internal/ads/Yl;

    goto :goto_29

    :cond_21
    new-instance p1, Lcom/google/android/gms/internal/ads/Yl;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p4, p5}, Lcom/google/android/gms/internal/ads/Yl;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Z;->DW:Lcom/google/android/gms/internal/ads/Yl;

    :goto_29
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/Z;->DW:Lcom/google/android/gms/internal/ads/Yl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Yl;->FH()V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const-string v0, "Disable position monitoring on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Z;->DW:Lcom/google/android/gms/internal/ads/Yl;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yl;->Hw()V

    :cond_c
    return-void
.end method

.method public final FH()V
    .registers 2

    const-string v0, "Enable debug gesture detector on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/Z;->FH:Z

    return-void
.end method

.method public final Hw()V
    .registers 2

    const-string v0, "Disable debug gesture detector on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/Z;->FH:Z

    return-void
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/zzazc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Z;->j6:Lcom/google/android/gms/internal/ads/zzazc;

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Z;->DW:Lcom/google/android/gms/internal/ads/Yl;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yl;->j6()V

    :cond_a
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Z;->DW:Lcom/google/android/gms/internal/ads/Yl;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Yl;->DW()V

    :cond_a
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/Z;->FH:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Z;->j6:Lcom/google/android/gms/internal/ads/zzazc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzazc;->j6(Landroid/view/MotionEvent;)V

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAllViews()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1f

    invoke-virtual {p0, v2}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1c

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/Mo;

    if-eqz v4, :cond_1c

    check-cast v3, Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_26
    if-ge v1, v2, :cond_34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    goto :goto_26

    :cond_34
    return-void
.end method
