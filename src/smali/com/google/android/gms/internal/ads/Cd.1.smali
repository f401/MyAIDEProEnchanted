.class final synthetic Lcom/google/android/gms/internal/ads/Cd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/gd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/gd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cd;->j6:Lcom/google/android/gms/internal/ads/gd;

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/ads/gd;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Cd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Cd;-><init>(Lcom/google/android/gms/internal/ads/gd;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cd;->j6:Lcom/google/android/gms/internal/ads/gd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gd;->destroy()V

    return-void
.end method
