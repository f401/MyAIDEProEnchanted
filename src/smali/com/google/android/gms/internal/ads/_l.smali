.class final Lcom/google/android/gms/internal/ads/_l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/bm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Zl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/am;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/am;-><init>(Lcom/google/android/gms/internal/ads/_l;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
