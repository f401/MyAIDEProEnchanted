.class final synthetic Lcom/google/android/gms/ads/internal/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/M;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/M;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ba;->j6:Lcom/google/android/gms/ads/internal/M;

    return-void
.end method

.method static j6(Lcom/google/android/gms/ads/internal/M;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/ads/internal/ba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/ba;-><init>(Lcom/google/android/gms/ads/internal/M;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ba;->j6:Lcom/google/android/gms/ads/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/M;->DW()V

    return-void
.end method
