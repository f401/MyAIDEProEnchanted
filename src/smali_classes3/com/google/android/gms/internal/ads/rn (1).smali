.class final synthetic Lcom/google/android/gms/internal/ads/rn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Z

.field private final j6:Lcom/google/android/gms/internal/ads/pn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pn;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rn;->j6:Lcom/google/android/gms/internal/ads/pn;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/rn;->DW:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rn;->j6:Lcom/google/android/gms/internal/ads/pn;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/rn;->DW:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/pn;->j6(Z)V

    return-void
.end method
