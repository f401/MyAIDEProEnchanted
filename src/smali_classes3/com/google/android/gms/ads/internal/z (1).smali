.class final synthetic Lcom/google/android/gms/ads/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/lang/Runnable;

.field private final j6:Lcom/google/android/gms/ads/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/y;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/z;->j6:Lcom/google/android/gms/ads/internal/y;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/z;->DW:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/z;->j6:Lcom/google/android/gms/ads/internal/y;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/z;->DW:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/ads/internal/B;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/ads/internal/B;-><init>(Lcom/google/android/gms/ads/internal/y;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
