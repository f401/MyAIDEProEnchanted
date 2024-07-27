.class public final enum Lcom/google/android/gms/internal/ads/zr;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/zr;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/ads/zr;

.field public static final enum FH:Lcom/google/android/gms/internal/ads/zr;

.field public static final enum Hw:Lcom/google/android/gms/internal/ads/zr;

.field private static final VH:[Lcom/google/android/gms/internal/ads/zr;

.field private static final Zo:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu",
            "<",
            "Lcom/google/android/gms/internal/ads/zr;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum j6:Lcom/google/android/gms/internal/ads/zr;

.field public static final enum v5:Lcom/google/android/gms/internal/ads/zr;


# instance fields
.field private final gn:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/zr;

    const-string v1, "UNKNOWN_FORMAT"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zr;->j6:Lcom/google/android/gms/internal/ads/zr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zr;

    const-string v1, "UNCOMPRESSED"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/zr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zr;->DW:Lcom/google/android/gms/internal/ads/zr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zr;

    const-string v1, "COMPRESSED"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/zr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zr;->FH:Lcom/google/android/gms/internal/ads/zr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zr;

    const-string v1, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/zr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zr;->Hw:Lcom/google/android/gms/internal/ads/zr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zr;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zr;->v5:Lcom/google/android/gms/internal/ads/zr;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zr;->j6:Lcom/google/android/gms/internal/ads/zr;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zr;->DW:Lcom/google/android/gms/internal/ads/zr;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/zr;->FH:Lcom/google/android/gms/internal/ads/zr;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/zr;->Hw:Lcom/google/android/gms/internal/ads/zr;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/zr;->v5:Lcom/google/android/gms/internal/ads/zr;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/ads/zr;->VH:[Lcom/google/android/gms/internal/ads/zr;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Ar;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zr;->Zo:Lcom/google/android/gms/internal/ads/lu;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/zr;->gn:I

    return-void
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/zr;
    .registers 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zr;->Hw:Lcom/google/android/gms/internal/ads/zr;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zr;->FH:Lcom/google/android/gms/internal/ads/zr;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zr;->DW:Lcom/google/android/gms/internal/ads/zr;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zr;->j6:Lcom/google/android/gms/internal/ads/zr;

    goto :goto_0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zr;->VH:[Lcom/google/android/gms/internal/ads/zr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zr;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zr;->v5:Lcom/google/android/gms/internal/ads/zr;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zr;->gn:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
