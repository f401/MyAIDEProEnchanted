.class public final enum Lcom/google/android/gms/internal/ads/iG;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
            "Lcom/google/android/gms/internal/ads/lu<",
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
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ads/iG;

    const-string v1, "PLATFORM_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/iG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/iG;->j6:Lcom/google/android/gms/internal/ads/iG;

    new-instance v1, Lcom/google/android/gms/internal/ads/iG;

    const-string v3, "IOS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/iG;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/iG;->DW:Lcom/google/android/gms/internal/ads/iG;

    new-instance v3, Lcom/google/android/gms/internal/ads/iG;

    const-string v5, "ANDROID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/iG;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/iG;->FH:Lcom/google/android/gms/internal/ads/iG;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/iG;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/iG;->v5:[Lcom/google/android/gms/internal/ads/iG;

    new-instance v0, Lcom/google/android/gms/internal/ads/EG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/EG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/iG;->Hw:Lcom/google/android/gms/internal/ads/lu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
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
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    sget-object p0, Lcom/google/android/gms/internal/ads/iG;->FH:Lcom/google/android/gms/internal/ads/iG;

    return-object p0

    :cond_d
    sget-object p0, Lcom/google/android/gms/internal/ads/iG;->DW:Lcom/google/android/gms/internal/ads/iG;

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/iG;->j6:Lcom/google/android/gms/internal/ads/iG;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/iG;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/iG;->v5:[Lcom/google/android/gms/internal/ads/iG;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/iG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/iG;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/iG;->Zo:I

    return v0
.end method
