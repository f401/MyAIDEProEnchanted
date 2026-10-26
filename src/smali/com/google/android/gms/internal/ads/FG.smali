.class public final enum Lcom/google/android/gms/internal/ads/FG;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/FG;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field private static final enum DW:Lcom/google/android/gms/internal/ads/FG;

.field private static final enum FH:Lcom/google/android/gms/internal/ads/FG;

.field private static final Hw:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu",
            "<",
            "Lcom/google/android/gms/internal/ads/FG;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum j6:Lcom/google/android/gms/internal/ads/FG;

.field private static final v5:[Lcom/google/android/gms/internal/ads/FG;


# instance fields
.field private final Zo:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/FG;

    const-string v1, "ENUM_FALSE"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/FG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/FG;->j6:Lcom/google/android/gms/internal/ads/FG;

    new-instance v1, Lcom/google/android/gms/internal/ads/FG;

    const-string v2, "ENUM_TRUE"

    invoke-direct {v1, v2, v6, v6}, Lcom/google/android/gms/internal/ads/FG;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/FG;->DW:Lcom/google/android/gms/internal/ads/FG;

    new-instance v2, Lcom/google/android/gms/internal/ads/FG;

    const-string v3, "ENUM_UNKNOWN"

    const/16 v4, 0x3e8

    invoke-direct {v2, v3, v7, v4}, Lcom/google/android/gms/internal/ads/FG;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/ads/FG;->FH:Lcom/google/android/gms/internal/ads/FG;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/FG;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    sput-object v3, Lcom/google/android/gms/internal/ads/FG;->v5:[Lcom/google/android/gms/internal/ads/FG;

    new-instance v0, Lcom/google/android/gms/internal/ads/GG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/GG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/FG;->Hw:Lcom/google/android/gms/internal/ads/lu;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/FG;->Zo:I

    return-void
.end method

.method public static Hw()Lcom/google/android/gms/internal/ads/mu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/HG;->j6:Lcom/google/android/gms/internal/ads/mu;

    return-object v0
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/FG;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/FG;->FH:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/FG;->DW:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/FG;->j6:Lcom/google/android/gms/internal/ads/FG;

    goto :goto_0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/FG;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/FG;->v5:[Lcom/google/android/gms/internal/ads/FG;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/FG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/FG;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/FG;->Zo:I

    return v0
.end method
