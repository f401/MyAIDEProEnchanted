.class final synthetic Lcom/google/android/gms/internal/ads/Bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Hm;

.field private final FH:Ljava/lang/Class;

.field private final Hw:Lcom/google/android/gms/internal/ads/qm;

.field private final j6:Lcom/google/android/gms/internal/ads/Rm;

.field private final v5:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Bm;->j6:Lcom/google/android/gms/internal/ads/Rm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Bm;->DW:Lcom/google/android/gms/internal/ads/Hm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Bm;->FH:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Bm;->Hw:Lcom/google/android/gms/internal/ads/qm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Bm;->v5:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bm;->j6:Lcom/google/android/gms/internal/ads/Rm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bm;->DW:Lcom/google/android/gms/internal/ads/Hm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Bm;->FH:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Bm;->Hw:Lcom/google/android/gms/internal/ads/qm;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Bm;->v5:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)V

    return-void
.end method
