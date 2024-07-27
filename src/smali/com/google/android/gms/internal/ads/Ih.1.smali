.class final synthetic Lcom/google/android/gms/internal/ads/Ih;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ZF;


# static fields
.field static final j6:Lcom/google/android/gms/internal/ads/ZF;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/Ih;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Ih;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Ih;->j6:Lcom/google/android/gms/internal/ads/ZF;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/SG;)V
    .registers 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/SG;->we:Lcom/google/android/gms/internal/ads/OG;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/OG;->FH:Ljava/lang/Integer;

    return-void
.end method
