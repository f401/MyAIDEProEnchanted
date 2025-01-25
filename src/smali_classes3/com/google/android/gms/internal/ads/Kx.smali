.class final Lcom/google/android/gms/internal/ads/Kx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Jx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Jx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kx;->j6:Lcom/google/android/gms/internal/ads/Jx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kx;->j6:Lcom/google/android/gms/internal/ads/Jx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Jx;->j6(Lcom/google/android/gms/internal/ads/Jx;)V

    return-void
.end method
