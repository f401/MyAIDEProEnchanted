.class public final Lcom/google/android/gms/internal/ads/cH;
.super Lcom/google/android/gms/internal/ads/OH;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final j6:Labcd/fx;


# direct methods
.method public constructor <init>(Labcd/fx;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/OH;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cH;->j6:Labcd/fx;

    return-void
.end method


# virtual methods
.method public final eN()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cH;->j6:Labcd/fx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/fx;->j6()V

    :cond_0
    return-void
.end method
