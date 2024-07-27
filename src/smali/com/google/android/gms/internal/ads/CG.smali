.class final Lcom/google/android/gms/internal/ads/CG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/mu;


# static fields
.field static final j6:Lcom/google/android/gms/internal/ads/mu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/CG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/CG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/CG;->j6:Lcom/google/android/gms/internal/ads/mu;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(I)Z
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fG$a;->j6(I)Lcom/google/android/gms/internal/ads/fG$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
