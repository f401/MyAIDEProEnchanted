.class public final Lcom/google/android/gms/internal/ads/yo;
.super Lcom/google/android/gms/internal/ads/po;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Dn;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/po;-><init>(Lcom/google/android/gms/internal/ads/Dn;)V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 1

    return-void
.end method

.method public final j6(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/po;->FH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Dn;

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/po;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/ads/Dn;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/po;)V

    :cond_11
    const-string v0, "VideoStreamNoopCache is doing nothing."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/po;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noop"

    const-string v2, "Noop cache is a noop."

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
