.class final Lcom/google/android/gms/internal/ads/um;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/sm;


# instance fields
.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/um;->j6:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final j6(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/um;->j6:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
