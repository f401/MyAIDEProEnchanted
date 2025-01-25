.class public final enum Lcom/google/android/gms/internal/ads/Or;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/Or;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/ads/Or;

.field public static final enum FH:Lcom/google/android/gms/internal/ads/Or;

.field public static final enum Hw:Lcom/google/android/gms/internal/ads/Or;

.field private static final VH:[Lcom/google/android/gms/internal/ads/Or;

.field private static final Zo:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu<",
            "Lcom/google/android/gms/internal/ads/Or;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum j6:Lcom/google/android/gms/internal/ads/Or;

.field public static final enum v5:Lcom/google/android/gms/internal/ads/Or;


# instance fields
.field private final gn:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/google/android/gms/internal/ads/Or;

    const-string v1, "UNKNOWN_CURVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/Or;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Or;->j6:Lcom/google/android/gms/internal/ads/Or;

    new-instance v1, Lcom/google/android/gms/internal/ads/Or;

    const-string v3, "NIST_P256"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Or;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/Or;->DW:Lcom/google/android/gms/internal/ads/Or;

    new-instance v3, Lcom/google/android/gms/internal/ads/Or;

    const-string v6, "NIST_P384"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v5, v7}, Lcom/google/android/gms/internal/ads/Or;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/Or;->FH:Lcom/google/android/gms/internal/ads/Or;

    new-instance v6, Lcom/google/android/gms/internal/ads/Or;

    const-string v8, "NIST_P521"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/google/android/gms/internal/ads/Or;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/ads/Or;->Hw:Lcom/google/android/gms/internal/ads/Or;

    new-instance v8, Lcom/google/android/gms/internal/ads/Or;

    const-string v10, "UNRECOGNIZED"

    const/4 v11, -0x1

    invoke-direct {v8, v10, v9, v11}, Lcom/google/android/gms/internal/ads/Or;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/ads/Or;->v5:Lcom/google/android/gms/internal/ads/Or;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/google/android/gms/internal/ads/Or;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/google/android/gms/internal/ads/Or;->VH:[Lcom/google/android/gms/internal/ads/Or;

    new-instance v0, Lcom/google/android/gms/internal/ads/Pr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Pr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Or;->Zo:Lcom/google/android/gms/internal/ads/lu;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/Or;->gn:I

    return-void
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/Or;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object p0, Lcom/google/android/gms/internal/ads/Or;->Hw:Lcom/google/android/gms/internal/ads/Or;

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/Or;->FH:Lcom/google/android/gms/internal/ads/Or;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/Or;->DW:Lcom/google/android/gms/internal/ads/Or;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/Or;->j6:Lcom/google/android/gms/internal/ads/Or;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/Or;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Or;->VH:[Lcom/google/android/gms/internal/ads/Or;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/Or;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/Or;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Or;->v5:Lcom/google/android/gms/internal/ads/Or;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/Or;->gn:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
