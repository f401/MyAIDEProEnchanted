.class final Lcom/google/android/gms/internal/ads/hn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Lcom/google/android/gms/internal/ads/cn;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cn;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hn;->FH:Lcom/google/android/gms/internal/ads/cn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hn;->j6:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hn;->DW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->FH:Lcom/google/android/gms/internal/ads/cn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cn;->j6(Lcom/google/android/gms/internal/ads/cn;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn;->FH:Lcom/google/android/gms/internal/ads/cn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cn;->j6(Lcom/google/android/gms/internal/ads/cn;)Lcom/google/android/gms/internal/ads/nn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hn;->j6:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hn;->DW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nn;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
