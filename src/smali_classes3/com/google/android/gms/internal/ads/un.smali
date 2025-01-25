.class final Lcom/google/android/gms/internal/ads/un;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/pn;

.field private final j6:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pn;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/un;->DW:Lcom/google/android/gms/internal/ads/pn;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/un;->j6:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/un;->DW:Lcom/google/android/gms/internal/ads/pn;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "isVisible"

    aput-object v3, v1, v2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/un;->j6:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "windowVisibilityChanged"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/pn;->j6(Lcom/google/android/gms/internal/ads/pn;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
