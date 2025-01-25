.class final Lcom/google/android/gms/ads/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/w;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    const-string p2, "Adapter returned an ad, but assets substitution failed"

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/w;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    return-void
.end method
