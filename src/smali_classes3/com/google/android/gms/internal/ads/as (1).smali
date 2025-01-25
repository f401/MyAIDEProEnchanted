.class public final enum Lcom/google/android/gms/internal/ads/as;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/as;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/ads/as;

.field private static final enum FH:Lcom/google/android/gms/internal/ads/as;

.field private static final enum Hw:Lcom/google/android/gms/internal/ads/as;

.field private static final VH:[Lcom/google/android/gms/internal/ads/as;

.field private static final Zo:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu<",
            "Lcom/google/android/gms/internal/ads/as;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum j6:Lcom/google/android/gms/internal/ads/as;

.field public static final enum v5:Lcom/google/android/gms/internal/ads/as;


# instance fields
.field private final gn:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/google/android/gms/internal/ads/as;

    const-string v1, "UNKNOWN_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/as;->j6:Lcom/google/android/gms/internal/ads/as;

    new-instance v1, Lcom/google/android/gms/internal/ads/as;

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/as;->DW:Lcom/google/android/gms/internal/ads/as;

    new-instance v3, Lcom/google/android/gms/internal/ads/as;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/as;->FH:Lcom/google/android/gms/internal/ads/as;

    new-instance v5, Lcom/google/android/gms/internal/ads/as;

    const-string v7, "DESTROYED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/as;->Hw:Lcom/google/android/gms/internal/ads/as;

    new-instance v7, Lcom/google/android/gms/internal/ads/as;

    const/4 v9, -0x1

    const-string v10, "UNRECOGNIZED"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v9}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/as;->v5:Lcom/google/android/gms/internal/ads/as;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/ads/as;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v11

    sput-object v9, Lcom/google/android/gms/internal/ads/as;->VH:[Lcom/google/android/gms/internal/ads/as;

    new-instance v0, Lcom/google/android/gms/internal/ads/bs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/as;->Zo:Lcom/google/android/gms/internal/ads/lu;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/as;->gn:I

    return-void
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/as;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object p0, Lcom/google/android/gms/internal/ads/as;->Hw:Lcom/google/android/gms/internal/ads/as;

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/as;->FH:Lcom/google/android/gms/internal/ads/as;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/as;->DW:Lcom/google/android/gms/internal/ads/as;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/as;->j6:Lcom/google/android/gms/internal/ads/as;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/as;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/as;->VH:[Lcom/google/android/gms/internal/ads/as;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/as;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/as;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/as;->v5:Lcom/google/android/gms/internal/ads/as;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/as;->gn:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
