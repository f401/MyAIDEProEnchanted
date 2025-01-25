.class final Lcom/google/android/gms/ads/internal/overlay/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/overlay/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/e;->j6:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/e;->j6:Lcom/google/android/gms/ads/internal/overlay/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->g0()V

    return-void
.end method
