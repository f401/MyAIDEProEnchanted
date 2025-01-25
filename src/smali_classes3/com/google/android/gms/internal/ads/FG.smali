.class public final enum Lcom/google/android/gms/internal/ads/FG;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
            "Lcom/google/android/gms/internal/ads/lu<",
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
    .registers 8

    new-instance v0, Lcom/google/android/gms/internal/ads/FG;

    const-string v1, "ENUM_FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/FG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/FG;->j6:Lcom/google/android/gms/internal/ads/FG;

    new-instance v1, Lcom/google/android/gms/internal/ads/FG;

    const-string v3, "ENUM_TRUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/FG;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/FG;->DW:Lcom/google/android/gms/internal/ads/FG;

    new-instance v3, Lcom/google/android/gms/internal/ads/FG;

    const/16 v5, 0x3e8

    const-string v6, "ENUM_UNKNOWN"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v5}, Lcom/google/android/gms/internal/ads/FG;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/FG;->FH:Lcom/google/android/gms/internal/ads/FG;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/FG;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v7

    sput-object v5, Lcom/google/android/gms/internal/ads/FG;->v5:[Lcom/google/android/gms/internal/ads/FG;

    new-instance v0, Lcom/google/android/gms/internal/ads/GG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/GG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/FG;->Hw:Lcom/google/android/gms/internal/ads/lu;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/FG;->Zo:I

    return-void
.end method

.method public static Hw()Lcom/google/android/gms/internal/ads/mu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/HG;->j6:Lcom/google/android/gms/internal/ads/mu;

    return-object v0
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/FG;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    sget-object p0, Lcom/google/android/gms/internal/ads/FG;->FH:Lcom/google/android/gms/internal/ads/FG;

    return-object p0

    :cond_e
    sget-object p0, Lcom/google/android/gms/internal/ads/FG;->DW:Lcom/google/android/gms/internal/ads/FG;

    return-object p0

    :cond_11
    sget-object p0, Lcom/google/android/gms/internal/ads/FG;->j6:Lcom/google/android/gms/internal/ads/FG;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/FG;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/FG;->v5:[Lcom/google/android/gms/internal/ads/FG;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/FG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/FG;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/FG;->Zo:I

    return v0
.end method
