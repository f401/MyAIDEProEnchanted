.class final Lcom/google/android/gms/internal/ads/Wb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Rm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Wb;->j6:Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Wb;->j6:Lcom/google/android/gms/internal/ads/Rm;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    return-void
.end method
