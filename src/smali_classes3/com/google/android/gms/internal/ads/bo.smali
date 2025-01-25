.class final synthetic Lcom/google/android/gms/internal/ads/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Sz;


# static fields
.field static final j6:Lcom/google/android/gms/internal/ads/Sz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bo;->j6:Lcom/google/android/gms/internal/ads/Sz;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6()[Lcom/google/android/gms/internal/ads/Oz;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/Oz;

    new-instance v1, Lcom/google/android/gms/internal/ads/DA;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/DA;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/eA;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/eA;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
