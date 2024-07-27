.class final synthetic Lcom/google/android/gms/internal/ads/Oj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rm;


# static fields
.field static final j6:Lcom/google/android/gms/internal/ads/rm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Oj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Oj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Oj;->j6:Lcom/google/android/gms/internal/ads/rm;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Mj;->Hw(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
