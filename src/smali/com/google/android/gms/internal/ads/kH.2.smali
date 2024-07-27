.class final Lcom/google/android/gms/internal/ads/kH;
.super Lcom/google/android/gms/internal/ads/pH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/pH",
        "<",
        "Lcom/google/android/gms/internal/ads/eg;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Landroid/app/Activity;

.field private final FH:Lcom/google/android/gms/internal/ads/iH;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iH;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kH;->FH:Lcom/google/android/gms/internal/ads/iH;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kH;->DW:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pH;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic DW()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kH;->FH:Lcom/google/android/gms/internal/ads/iH;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/iH;->Hw(Lcom/google/android/gms/internal/ads/iH;)Lcom/google/android/gms/internal/ads/dg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kH;->DW:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dg;->j6(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/eg;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic j6()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kH;->DW:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/iH;->j6(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/TH;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kH;->DW:Landroid/app/Activity;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/TH;->createAdOverlay(Labcd/ox;)Lcom/google/android/gms/internal/ads/eg;

    move-result-object v0

    return-object v0
.end method
