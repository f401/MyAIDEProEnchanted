.class final synthetic Lcom/google/android/gms/internal/ads/ld;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/vp;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/hd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ld;->j6:Lcom/google/android/gms/internal/ads/hd;

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/ads/hd;)Lcom/google/android/gms/internal/ads/vp;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/ld;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ld;-><init>(Lcom/google/android/gms/internal/ads/hd;)V

    return-object v0
.end method


# virtual methods
.method public final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ld;->j6:Lcom/google/android/gms/internal/ads/hd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/hd;->j6()V

    return-void
.end method
