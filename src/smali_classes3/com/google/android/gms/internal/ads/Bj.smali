.class final synthetic Lcom/google/android/gms/internal/ads/Bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/kk;

.field private final j6:Lcom/google/android/gms/internal/ads/Aj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Aj;Lcom/google/android/gms/internal/ads/kk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Bj;->j6:Lcom/google/android/gms/internal/ads/Aj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Bj;->DW:Lcom/google/android/gms/internal/ads/kk;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bj;->j6:Lcom/google/android/gms/internal/ads/Aj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bj;->DW:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Aj;->DW(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method
