.class final Lcom/google/android/gms/internal/ads/Yo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Xo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Xo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yo;->j6:Lcom/google/android/gms/internal/ads/Xo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yo;->j6:Lcom/google/android/gms/internal/ads/Xo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Xo;->j6(Lcom/google/android/gms/internal/ads/Xo;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    return-void
.end method
