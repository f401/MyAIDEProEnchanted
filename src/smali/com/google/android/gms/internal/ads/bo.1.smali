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

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/ads/DA;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/DA;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/internal/ads/eA;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/eA;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method
