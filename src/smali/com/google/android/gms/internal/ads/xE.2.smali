.class public final Lcom/google/android/gms/internal/ads/xE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/cF;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/kk;

.field private final j6:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/kk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xE;->j6:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xE;->DW:Lcom/google/android/gms/internal/ads/kk;

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xE;->DW:Lcom/google/android/gms/internal/ads/kk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xE;->j6:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final FH()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xE;->j6:Landroid/view/View;

    return-object v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/cF;
    .registers 1

    return-object p0
.end method
