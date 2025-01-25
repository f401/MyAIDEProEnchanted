.class final Lcom/google/android/gms/internal/ads/Th;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Wm<",
        "Lcom/google/android/gms/internal/ads/zzasi;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Sh;

.field private final j6:Lcom/google/android/gms/internal/ads/ci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Sh;Lcom/google/android/gms/internal/ads/ci;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Th;->DW:Lcom/google/android/gms/internal/ads/Sh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Th;->j6:Lcom/google/android/gms/internal/ads/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Th;->DW:Lcom/google/android/gms/internal/ads/Sh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Th;->j6:Lcom/google/android/gms/internal/ads/ci;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Sh;->j6(Lcom/google/android/gms/internal/ads/ci;Lcom/google/android/gms/internal/ads/zzasi;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Th;->DW:Lcom/google/android/gms/internal/ads/Sh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sh;->j6()V

    :cond_11
    return-void
.end method
