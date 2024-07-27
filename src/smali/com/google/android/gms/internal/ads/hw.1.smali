.class public final enum Lcom/google/android/gms/internal/ads/hw;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
            "Lcom/google/android/gms/internal/ads/lu",
            "<",
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
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/hw;

    const-string v1, "SAFE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/hw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/hw;->j6:Lcom/google/android/gms/internal/ads/hw;

    new-instance v0, Lcom/google/android/gms/internal/ads/hw;

    const-string v1, "DANGEROUS"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/hw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/hw;->DW:Lcom/google/android/gms/internal/ads/hw;

    new-instance v0, Lcom/google/android/gms/internal/ads/hw;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/hw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/hw;->FH:Lcom/google/android/gms/internal/ads/hw;

    new-instance v0, Lcom/google/android/gms/internal/ads/hw;

    const-string v1, "POTENTIALLY_UNWANTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/hw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/hw;->Hw:Lcom/google/android/gms/internal/ads/hw;

    new-instance v0, Lcom/google/android/gms/internal/ads/hw;

    const-string v1, "DANGEROUS_HOST"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/hw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/hw;->v5:Lcom/google/android/gms/internal/ads/hw;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/hw;

    sget-object v1, Lcom/google/android/gms/internal/ads/hw;->j6:Lcom/google/android/gms/internal/ads/hw;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/hw;->DW:Lcom/google/android/gms/internal/ads/hw;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/hw;->FH:Lcom/google/android/gms/internal/ads/hw;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/hw;->Hw:Lcom/google/android/gms/internal/ads/hw;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/hw;->v5:Lcom/google/android/gms/internal/ads/hw;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/ads/hw;->VH:[Lcom/google/android/gms/internal/ads/hw;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/hw;->v5:Lcom/google/android/gms/internal/ads/hw;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/hw;->Hw:Lcom/google/android/gms/internal/ads/hw;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/hw;->FH:Lcom/google/android/gms/internal/ads/hw;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/hw;->DW:Lcom/google/android/gms/internal/ads/hw;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/hw;->j6:Lcom/google/android/gms/internal/ads/hw;

    goto :goto_0
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
