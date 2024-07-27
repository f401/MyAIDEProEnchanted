.class final synthetic Lcom/google/android/gms/internal/ads/Bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qm;


# static fields
.field static final j6:Lcom/google/android/gms/internal/ads/qm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Bi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Bi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Bi;->j6:Lcom/google/android/gms/internal/ads/qm;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 3

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ai;->j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0
.end method
