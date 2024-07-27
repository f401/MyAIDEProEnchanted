.class public final Lcom/google/android/gms/internal/ads/Yl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Landroid/app/Activity;

.field private FH:Z

.field private Hw:Z

.field private VH:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private Zo:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final j6:Landroid/view/View;

.field private v5:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yl;->DW:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Yl;->j6:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Yl;->Zo:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Yl;->VH:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private static DW(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    goto :goto_0
.end method

.method private final Zo()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yl;->DW:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Yl;->FH:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yl;->Zo:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Yl;->DW(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Vk;->j6(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yl;->VH:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yl;->DW:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Yl;->DW(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yl;->FH:Z

    goto :goto_0
.end method

.method private final v5()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yl;->FH:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yl;->Zo:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yl;->DW:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Yl;->DW(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yl;->j6:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yl;->Zo:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yl;->VH:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yl;->DW:Landroid/app/Activity;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Yl;->DW(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->P8()Lcom/google/android/gms/internal/ads/Zm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yl;->j6:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Yl;->VH:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Zm;->j6(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yl;->FH:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yl;->Hw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Yl;->Zo()V

    return-void
.end method

.method public final FH()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yl;->v5:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yl;->Hw:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Yl;->v5()V

    :cond_0
    return-void
.end method

.method public final Hw()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yl;->v5:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Yl;->Zo()V

    return-void
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yl;->Hw:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Yl;->v5:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Yl;->v5()V

    :cond_0
    return-void
.end method

.method public final j6(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yl;->DW:Landroid/app/Activity;

    return-void
.end method
