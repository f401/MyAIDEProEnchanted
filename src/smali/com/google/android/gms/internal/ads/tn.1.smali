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

    const-string v1, "surfaceDestroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/pn;->j6(Lcom/google/android/gms/internal/ads/pn;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
