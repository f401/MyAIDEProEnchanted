.class public final enum Lcom/google/android/gms/internal/ads/mG$b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/mG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/mG$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field private static final enum DW:Lcom/google/android/gms/internal/ads/mG$b;

.field private static final enum FH:Lcom/google/android/gms/internal/ads/mG$b;

.field private static final enum Hw:Lcom/google/android/gms/internal/ads/mG$b;

.field private static final Zo:[Lcom/google/android/gms/internal/ads/mG$b;

.field private static final enum j6:Lcom/google/android/gms/internal/ads/mG$b;

.field private static final v5:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu<",
            "Lcom/google/android/gms/internal/ads/mG$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final VH:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/google/android/gms/internal/ads/mG$b;

    const-string v1, "CELLULAR_NETWORK_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/mG$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$b;->j6:Lcom/google/android/gms/internal/ads/mG$b;

    new-instance v1, Lcom/google/android/gms/internal/ads/mG$b;

    const-string v3, "TWO_G"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/mG$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/mG$b;->DW:Lcom/google/android/gms/internal/ads/mG$b;

    new-instance v3, Lcom/google/android/gms/internal/ads/mG$b;

    const-string v5, "THREE_G"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/mG$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/mG$b;->FH:Lcom/google/android/gms/internal/ads/mG$b;

    new-instance v5, Lcom/google/android/gms/internal/ads/mG$b;

    const-string v7, "LTE"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/ads/mG$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/mG$b;->Hw:Lcom/google/android/gms/internal/ads/mG$b;

    new-array v7, v9, [Lcom/google/android/gms/internal/ads/mG$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/ads/mG$b;->Zo:[Lcom/google/android/gms/internal/ads/mG$b;

    new-instance v0, Lcom/google/android/gms/internal/ads/IG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/IG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$b;->v5:Lcom/google/android/gms/internal/ads/lu;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/mG$b;->VH:I

    return-void
.end method

.method public static Hw()Lcom/google/android/gms/internal/ads/mu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/JG;->j6:Lcom/google/android/gms/internal/ads/mu;

    return-object v0
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/mG$b;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object p0, Lcom/google/android/gms/internal/ads/mG$b;->Hw:Lcom/google/android/gms/internal/ads/mG$b;

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/mG$b;->FH:Lcom/google/android/gms/internal/ads/mG$b;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/mG$b;->DW:Lcom/google/android/gms/internal/ads/mG$b;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/mG$b;->j6:Lcom/google/android/gms/internal/ads/mG$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/mG$b;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/mG$b;->Zo:[Lcom/google/android/gms/internal/ads/mG$b;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/mG$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/mG$b;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/mG$b;->VH:I

    return v0
.end method
