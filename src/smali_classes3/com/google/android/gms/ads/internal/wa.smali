.class final synthetic Lcom/google/android/gms/ads/internal/wa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/va;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/va;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/wa;->j6:Lcom/google/android/gms/ads/internal/va;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/wa;->j6:Lcom/google/android/gms/ads/internal/va;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/va;->Hw(Lcom/google/android/gms/internal/ads/kk;)V

    return-void
.end method
