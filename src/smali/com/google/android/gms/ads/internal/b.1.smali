.class final synthetic Lcom/google/android/gms/ads/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/wp;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/kk;

.field private final j6:Lcom/google/android/gms/internal/ads/PE;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/PE;Lcom/google/android/gms/internal/ads/kk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/b;->j6:Lcom/google/android/gms/internal/ads/PE;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/b;->DW:Lcom/google/android/gms/internal/ads/kk;

    return-void
.end method


# virtual methods
.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/b;->j6:Lcom/google/android/gms/internal/ads/PE;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->DW:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/PE;->j6(Lcom/google/android/gms/internal/ads/TE;)V

    return-void
.end method
