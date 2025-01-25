.class public final Lcom/google/android/gms/internal/ads/lr$a;
.super Lcom/google/android/gms/internal/ads/hu$a;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/lr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu$a<",
        "Lcom/google/android/gms/internal/ads/lr;",
        "Lcom/google/android/gms/internal/ads/lr$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/lr;->Ws()Lcom/google/android/gms/internal/ads/lr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/hu$a;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/mr;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lr$a;-><init>()V

    return-void
.end method
