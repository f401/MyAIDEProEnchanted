.class final synthetic Lcom/google/android/gms/internal/ads/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wd;


# static fields
.field static final j6:Lcom/google/android/gms/internal/ads/Wd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ae;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ae;->j6:Lcom/google/android/gms/internal/ads/Wd;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/_d;->j6(Lorg/json/JSONObject;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
