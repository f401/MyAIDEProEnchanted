.class final Lcom/google/android/gms/internal/ads/od;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/id;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/od;->DW:Lcom/google/android/gms/internal/ads/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/od;->j6:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/od;->DW:Lcom/google/android/gms/internal/ads/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->j6(Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/od;->j6:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Mo;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
