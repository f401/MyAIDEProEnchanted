.class public final enum Lcom/google/android/gms/internal/ads/ts;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/ts;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/ads/ts;

.field public static final enum FH:Lcom/google/android/gms/internal/ads/ts;

.field public static final enum Hw:Lcom/google/android/gms/internal/ads/ts;

.field private static final VH:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu",
            "<",
            "Lcom/google/android/gms/internal/ads/ts;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Zo:Lcom/google/android/gms/internal/ads/ts;

.field private static final gn:[Lcom/google/android/gms/internal/ads/ts;

.field public static final enum j6:Lcom/google/android/gms/internal/ads/ts;

.field public static final enum v5:Lcom/google/android/gms/internal/ads/ts;


# instance fields
.field private final u7:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/ts;

    const-string v1, "UNKNOWN_PREFIX"

    invoke-direct {v0, v1, v9, v9}, Lcom/google/android/gms/internal/ads/ts;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/ts;->j6:Lcom/google/android/gms/internal/ads/ts;

    new-instance v1, Lcom/google/android/gms/internal/ads/ts;

    const-string v2, "TINK"

    invoke-direct {v1, v2, v10, v10}, Lcom/google/android/gms/internal/ads/ts;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/ts;->DW:Lcom/google/android/gms/internal/ads/ts;

    new-instance v2, Lcom/google/android/gms/internal/ads/ts;

    const-string v3, "LEGACY"

    invoke-direct {v2, v3, v11, v11}, Lcom/google/android/gms/internal/ads/ts;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/ads/ts;->FH:Lcom/google/android/gms/internal/ads/ts;

    new-instance v3, Lcom/google/android/gms/internal/ads/ts;

    const-string v4, "RAW"

    invoke-direct {v3, v4, v12, v12}, Lcom/google/android/gms/internal/ads/ts;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/ts;->Hw:Lcom/google/android/gms/internal/ads/ts;

    new-instance v4, Lcom/google/android/gms/internal/ads/ts;

    const-string v5, "CRUNCHY"

    invoke-direct {v4, v5, v13, v13}, Lcom/google/android/gms/internal/ads/ts;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/ads/ts;->v5:Lcom/google/android/gms/internal/ads/ts;

    new-instance v5, Lcom/google/android/gms/internal/ads/ts;

    const-string v6, "UNRECOGNIZED"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/ts;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/ts;->Zo:Lcom/google/android/gms/internal/ads/ts;

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/google/android/gms/internal/ads/ts;

    aput-object v0, v6, v9

    aput-object v1, v6, v10

    aput-object v2, v6, v11

    aput-object v3, v6, v12

    aput-object v4, v6, v13

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lcom/google/android/gms/internal/ads/ts;->gn:[Lcom/google/android/gms/internal/ads/ts;

    new-instance v0, Lcom/google/android/gms/internal/ads/us;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/us;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ts;->VH:Lcom/google/android/gms/internal/ads/lu;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/ts;->u7:I

    return-void
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/ts;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ts;->v5:Lcom/google/android/gms/internal/ads/ts;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/ts;->Hw:Lcom/google/android/gms/internal/ads/ts;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/ts;->FH:Lcom/google/android/gms/internal/ads/ts;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/ts;->DW:Lcom/google/android/gms/internal/ads/ts;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/ts;->j6:Lcom/google/android/gms/internal/ads/ts;

    goto :goto_0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/ts;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ts;->gn:[Lcom/google/android/gms/internal/ads/ts;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/ts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/ts;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/ts;->Zo:Lcom/google/android/gms/internal/ads/ts;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/ts;->u7:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
