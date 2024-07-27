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
        "Ljava/lang/Enum",
        "<",
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
            "Lcom/google/android/gms/internal/ads/lu",
            "<",
            "Lcom/google/android/gms/internal/ads/mG$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final VH:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/mG$b;

    const-string v1, "CELLULAR_NETWORK_TYPE_UNSPECIFIED"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/mG$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$b;->j6:Lcom/google/android/gms/internal/ads/mG$b;

    new-instance v0, Lcom/google/android/gms/internal/ads/mG$b;

    const-string v1, "TWO_G"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/mG$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$b;->DW:Lcom/google/android/gms/internal/ads/mG$b;

    new-instance v0, Lcom/google/android/gms/internal/ads/mG$b;

    const-string v1, "THREE_G"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/mG$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$b;->FH:Lcom/google/android/gms/internal/ads/mG$b;

    new-instance v0, Lcom/google/android/gms/internal/ads/mG$b;

    const-string v1, "LTE"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/gms/internal/ads/mG$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$b;->Hw:Lcom/google/android/gms/internal/ads/mG$b;

    new-array v0, v6, [Lcom/google/android/gms/internal/ads/mG$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/mG$b;->j6:Lcom/google/android/gms/internal/ads/mG$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/mG$b;->DW:Lcom/google/android/gms/internal/ads/mG$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/mG$b;->FH:Lcom/google/android/gms/internal/ads/mG$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/mG$b;->Hw:Lcom/google/android/gms/internal/ads/mG$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$b;->Zo:[Lcom/google/android/gms/internal/ads/mG$b;

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

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/mG$b;->Hw:Lcom/google/android/gms/internal/ads/mG$b;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/mG$b;->FH:Lcom/google/android/gms/internal/ads/mG$b;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/mG$b;->DW:Lcom/google/android/gms/internal/ads/mG$b;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/mG$b;->j6:Lcom/google/android/gms/internal/ads/mG$b;

    goto :goto_0
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
