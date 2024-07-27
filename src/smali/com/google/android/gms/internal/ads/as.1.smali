.class public final enum Lcom/google/android/gms/internal/ads/as;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
            "Lcom/google/android/gms/internal/ads/lu",
            "<",
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
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/as;

    const-string v1, "UNKNOWN_STATUS"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/as;->j6:Lcom/google/android/gms/internal/ads/as;

    new-instance v0, Lcom/google/android/gms/internal/ads/as;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/as;->DW:Lcom/google/android/gms/internal/ads/as;

    new-instance v0, Lcom/google/android/gms/internal/ads/as;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/as;->FH:Lcom/google/android/gms/internal/ads/as;

    new-instance v0, Lcom/google/android/gms/internal/ads/as;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/as;->Hw:Lcom/google/android/gms/internal/ads/as;

    new-instance v0, Lcom/google/android/gms/internal/ads/as;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/as;->v5:Lcom/google/android/gms/internal/ads/as;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/as;

    sget-object v1, Lcom/google/android/gms/internal/ads/as;->j6:Lcom/google/android/gms/internal/ads/as;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/as;->DW:Lcom/google/android/gms/internal/ads/as;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/as;->FH:Lcom/google/android/gms/internal/ads/as;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/as;->Hw:Lcom/google/android/gms/internal/ads/as;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/as;->v5:Lcom/google/android/gms/internal/ads/as;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/ads/as;->VH:[Lcom/google/android/gms/internal/ads/as;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/as;->Hw:Lcom/google/android/gms/internal/ads/as;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/as;->FH:Lcom/google/android/gms/internal/ads/as;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/as;->DW:Lcom/google/android/gms/internal/ads/as;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/as;->j6:Lcom/google/android/gms/internal/ads/as;

    goto :goto_0
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

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/as;->gn:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
