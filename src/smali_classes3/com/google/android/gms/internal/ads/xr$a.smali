.class public final Lcom/google/android/gms/internal/ads/xr$a;
.super Lcom/google/android/gms/internal/ads/hu$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/xr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu$a<",
        "Lcom/google/android/gms/internal/ads/xr;",
        "Lcom/google/android/gms/internal/ads/xr$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->QX()Lcom/google/android/gms/internal/ads/xr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/hu$a;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/yr;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(I)Lcom/google/android/gms/internal/ads/xr$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hu$a;->gn()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    check-cast p1, Lcom/google/android/gms/internal/ads/xr;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/xr;->j6(Lcom/google/android/gms/internal/ads/xr;I)V

    return-object p0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/xr$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hu$a;->gn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    check-cast v0, Lcom/google/android/gms/internal/ads/xr;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/xr;->j6(Lcom/google/android/gms/internal/ads/xr;Lcom/google/android/gms/internal/ads/yt;)V

    return-object p0
.end method
