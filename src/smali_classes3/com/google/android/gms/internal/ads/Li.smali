.class public final Lcom/google/android/gms/internal/ads/Li;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private j6:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/Ni;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Li;->j6:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Li;)Ljava/util/WeakHashMap;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Li;->j6:Ljava/util/WeakHashMap;

    return-object p0
.end method


# virtual methods
.method public final j6(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/ads/Ji;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Mi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Mi;-><init>(Lcom/google/android/gms/internal/ads/Li;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    return-object p1
.end method
