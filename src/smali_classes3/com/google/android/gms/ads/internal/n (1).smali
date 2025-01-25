.class final synthetic Lcom/google/android/gms/ads/internal/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/wp;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/kk;

.field private final j6:Lcom/google/android/gms/ads/internal/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/m;Lcom/google/android/gms/internal/ads/kk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/n;->j6:Lcom/google/android/gms/ads/internal/m;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/n;->DW:Lcom/google/android/gms/internal/ads/kk;

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n;->j6:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/n;->DW:Lcom/google/android/gms/internal/ads/kk;

    new-instance v2, Lcom/google/android/gms/internal/ads/PE;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/PE;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/PE;->j6(Lcom/google/android/gms/internal/ads/TE;)V

    return-void
.end method
