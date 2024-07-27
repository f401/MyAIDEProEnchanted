.class final Lcom/google/android/gms/internal/ads/Ex;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Ax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ax;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ex;->j6:Lcom/google/android/gms/internal/ads/Ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ex;->j6:Lcom/google/android/gms/internal/ads/Ax;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ax;->DW:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    return-void
.end method
