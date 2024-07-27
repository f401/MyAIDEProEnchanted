.class final synthetic Lcom/google/android/gms/internal/ads/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final DW:Landroid/content/Context;

.field private final j6:Lcom/google/android/gms/internal/ads/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ak;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bk;->j6:Lcom/google/android/gms/internal/ads/ak;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bk;->DW:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bk;->j6:Lcom/google/android/gms/internal/ads/ak;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bk;->DW:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->DW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
