.class final Lcom/google/android/gms/internal/ads/wg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/vg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wg;->j6:Lcom/google/android/gms/internal/ads/vg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg;->j6:Lcom/google/android/gms/internal/ads/vg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vg;->DW()V

    return-void
.end method
