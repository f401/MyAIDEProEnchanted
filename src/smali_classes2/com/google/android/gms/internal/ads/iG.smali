.class public final enum Lcom/google/android/gms/internal/ads/iG;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/iG;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field private static final enum DW:Lcom/google/android/gms/internal/ads/iG;

.field private static final enum FH:Lcom/google/android/gms/internal/ads/iG;

.field private static final Hw:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu",
            "<",
            "Lcom/google/android/gms/internal/ads/iG;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum j6:Lcom/google/android/gms/internal/ads/iG;

.field private static final v5:[Lcom/google/android/gms/internal/ads/iG;


# instance fields
.field private final Zo:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/iG;

    const-string v1, "PLATFORM_UNSPECIFIED"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/iG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/iG;->j6:Lcom/google/android/gms/internal/ads/iG;

    new-instance v1, Lcom/google/android/gms/internal/ads/iG;

    const-string v2, "IOS"

    invoke-direct {v1, v2, v5, v5}, Lcom/google/android/gms/internal/ads/iG;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/iG;->DW:Lcom/google/android/gms/internal/ads/iG;

    new-instance v2, Lcom/google/android/gms/internal/ads/iG;

    const-string v3, "ANDROID"

    invoke-direct {v2, v3, v6, v6}, Lcom/google/android/gms/internal/ads/iG;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/ads/iG;->FH:Lcom/google/android/gms/internal/ads/iG;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/iG;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lcom/google/android/gms/internal/ads/iG;->v5:[Lcom/google/android/gms/internal/ads/iG;

    new-instance v0, Lcom/google/android/gms/internal/ads/EG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/EG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/iG;->Hw:Lcom/google/android/gms/internal/ads/lu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/iG;->Zo:I

    return-void
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/iG;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/iG;->FH:Lcom/google/android/gms/internal/ads/iG;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/iG;->DW:Lcom/google/android/gms/internal/ads/iG;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/iG;->j6:Lcom/google/android/gms/internal/ads/iG;

    goto :goto_0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/iG;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/iG;->v5:[Lcom/google/android/gms/internal/ads/iG;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/iG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/iG;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/iG;->Zo:I

    return v0
.end method
