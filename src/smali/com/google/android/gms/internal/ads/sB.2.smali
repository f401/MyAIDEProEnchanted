.class final Lcom/google/android/gms/internal/ads/sB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/oB;

.field private final j6:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oB;Ljava/io/IOException;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sB;->DW:Lcom/google/android/gms/internal/ads/oB;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sB;->j6:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sB;->DW:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oB;->v5(Lcom/google/android/gms/internal/ads/oB;)Lcom/google/android/gms/internal/ads/xB;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sB;->j6:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xB;->j6(Ljava/io/IOException;)V

    return-void
.end method
