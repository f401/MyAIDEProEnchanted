.class final Lcom/google/android/gms/internal/ads/oH;
.super Lcom/google/android/gms/internal/ads/pH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/pH<",
        "Lcom/google/android/gms/internal/ads/Ka;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Landroid/widget/FrameLayout;

.field private final FH:Landroid/widget/FrameLayout;

.field private final Hw:Landroid/content/Context;

.field private final v5:Lcom/google/android/gms/internal/ads/iH;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iH;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oH;->v5:Lcom/google/android/gms/internal/ads/iH;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oH;->DW:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/oH;->FH:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/oH;->Hw:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pH;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic DW()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oH;->v5:Lcom/google/android/gms/internal/ads/iH;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/iH;->FH(Lcom/google/android/gms/internal/ads/iH;)Lcom/google/android/gms/internal/ads/Eb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oH;->Hw:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oH;->DW:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/oH;->FH:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Eb;->j6(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/Ka;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic j6()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oH;->Hw:Landroid/content/Context;

    const-string v1, "native_ad_view_delegate"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/iH;->j6(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/DI;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/DI;-><init>()V

    return-object v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/TH;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oH;->DW:Landroid/widget/FrameLayout;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oH;->FH:Landroid/widget/FrameLayout;

    invoke-static {v1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/TH;->createNativeAdViewDelegate(Labcd/ox;Labcd/ox;)Lcom/google/android/gms/internal/ads/Ka;

    move-result-object p1

    return-object p1
.end method
