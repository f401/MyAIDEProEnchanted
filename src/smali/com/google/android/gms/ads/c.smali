.class public final Lcom/google/android/gms/ads/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/c$a;
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/rI;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/c$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/rI;

    invoke-static {p1}, Lcom/google/android/gms/ads/c$a;->j6(Lcom/google/android/gms/ads/c$a;)Lcom/google/android/gms/internal/ads/sI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/rI;-><init>(Lcom/google/android/gms/internal/ads/sI;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/c;->j6:Lcom/google/android/gms/internal/ads/rI;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/c$a;Lcom/google/android/gms/ads/k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/c;-><init>(Lcom/google/android/gms/ads/c$a;)V

    return-void
.end method


# virtual methods
.method public final j6()Lcom/google/android/gms/internal/ads/rI;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/c;->j6:Lcom/google/android/gms/internal/ads/rI;

    return-object v0
.end method
