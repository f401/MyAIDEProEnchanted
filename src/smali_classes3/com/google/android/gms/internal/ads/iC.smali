.class final Lcom/google/android/gms/internal/ads/iC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/gC;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gC;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iC;->j6:Lcom/google/android/gms/internal/ads/gC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iC;->j6:Lcom/google/android/gms/internal/ads/gC;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gC;->j6(Lcom/google/android/gms/internal/ads/gC;Z)V

    return-void
.end method
