.class final synthetic Lcom/google/android/gms/internal/ads/qn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/zzbdi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbdi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qn;->j6:Lcom/google/android/gms/internal/ads/zzbdi;

    return-void
.end method

.method static j6(Lcom/google/android/gms/internal/ads/zzbdi;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/qn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/qn;-><init>(Lcom/google/android/gms/internal/ads/zzbdi;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qn;->j6:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->Hw()V

    return-void
.end method
