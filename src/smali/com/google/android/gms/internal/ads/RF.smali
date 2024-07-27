.class final Lcom/google/android/gms/internal/ads/RF;
.super Lcom/google/android/gms/internal/ads/Rm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Rm",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final VH:Lcom/google/android/gms/internal/ads/QF;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/QF;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/RF;->VH:Lcom/google/android/gms/internal/ads/QF;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/RF;->VH:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/QF;->j6(Lcom/google/android/gms/internal/ads/QF;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/Rm;->cancel(Z)Z

    move-result v0

    return v0
.end method
