.class final Lcom/google/android/gms/internal/ads/hC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/gC;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gC;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hC;->j6:Lcom/google/android/gms/internal/ads/gC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hC;->j6:Lcom/google/android/gms/internal/ads/gC;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gC;->j6(Lcom/google/android/gms/internal/ads/gC;)V

    return-void
.end method
