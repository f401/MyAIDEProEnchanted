.class final synthetic Lcom/google/android/gms/ads/internal/oa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/na;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/na;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/oa;->j6:Lcom/google/android/gms/ads/internal/na;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/oa;->j6:Lcom/google/android/gms/ads/internal/na;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/na;->s0()V

    return-void
.end method
