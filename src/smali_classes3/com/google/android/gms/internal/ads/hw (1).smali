.class public final enum Lcom/google/android/gms/internal/ads/hw;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/hw;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field private static final enum DW:Lcom/google/android/gms/internal/ads/hw;

.field private static final enum FH:Lcom/google/android/gms/internal/ads/hw;

.field private static final enum Hw:Lcom/google/android/gms/internal/ads/hw;

.field private static final VH:[Lcom/google/android/gms/internal/ads/hw;

.field private static final Zo:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu<",
            "Lcom/google/android/gms/internal/ads/hw;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum j6:Lcom/google/android/gms/internal/ads/hw;

.field private static final enum v5:Lcom/google/android/gms/internal/ads/hw;


# instance fields
.field private final gn:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/google/android/gms/internal/ads/hw;

    const-string v1, "SAFE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/hw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/hw;->j6:Lcom/google/android/gms/internal/ads/hw;

    new-instance v1, Lcom/google/android/gms/internal/ads/hw;

    const-string v3, "DANGEROUS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/hw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/hw;->DW:Lcom/google/android/gms/internal/ads/hw;

    new-instance v3, Lcom/google/android/gms/internal/ads/hw;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/hw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/hw;->FH:Lcom/google/android/gms/internal/ads/hw;

    new-instance v5, Lcom/google/android/gms/internal/ads/hw;

    const-string v7, "POTENTIALLY_UNWANTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/hw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/hw;->Hw:Lcom/google/android/gms/internal/ads/hw;

    new-instance v7, Lcom/google/android/gms/internal/ads/hw;

    const-string v9, "DANGEROUS_HOST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/ads/hw;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/hw;->v5:Lcom/google/android/gms/internal/ads/hw;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/ads/hw;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/ads/hw;->VH:[Lcom/google/android/gms/internal/ads/hw;

    new-instance v0, Lcom/google/android/gms/internal/ads/lw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/lw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/hw;->Zo:Lcom/google/android/gms/internal/ads/lu;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/hw;->gn:I

    return-void
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/hw;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/hw;->v5:Lcom/google/android/gms/internal/ads/hw;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/hw;->Hw:Lcom/google/android/gms/internal/ads/hw;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/hw;->FH:Lcom/google/android/gms/internal/ads/hw;

    return-object p0

    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/ads/hw;->DW:Lcom/google/android/gms/internal/ads/hw;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/hw;->j6:Lcom/google/android/gms/internal/ads/hw;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/hw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/hw;->VH:[Lcom/google/android/gms/internal/ads/hw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/hw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/hw;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/hw;->gn:I

    return v0
.end method
