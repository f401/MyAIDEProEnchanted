.class final Lcom/google/android/gms/internal/ads/tn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/pn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tn;->j6:Lcom/google/android/gms/internal/ads/pn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tn;->j6:Lcom/google/android/gms/internal/ads/pn;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "surfaceDestroyed"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/pn;->j6(Lcom/google/android/gms/internal/ads/pn;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
