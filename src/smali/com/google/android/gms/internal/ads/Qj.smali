.class final Lcom/google/android/gms/internal/ads/Qj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sm",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Hm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Mj;Lcom/google/android/gms/internal/ads/Hm;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qj;->j6:Lcom/google/android/gms/internal/ads/Hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/Mj;->j6()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qj;->j6:Lcom/google/android/gms/internal/ads/Hm;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j6(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/Mj;->j6()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qj;->j6:Lcom/google/android/gms/internal/ads/Hm;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
