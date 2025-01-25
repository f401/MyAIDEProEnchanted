.class public Lcom/google/android/gms/internal/ads/Bg;
.super Lcom/google/android/gms/internal/ads/tg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ag;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/tg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ag;)V

    return-void
.end method


# virtual methods
.method protected DW()V
    .registers 1

    return-void
.end method

.method protected final j6()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->Zo:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/up;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Bg;->DW()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tg;->v5:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzasm;->FH:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
