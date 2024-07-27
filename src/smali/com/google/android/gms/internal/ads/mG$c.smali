.class public final enum Lcom/google/android/gms/internal/ads/mG$c;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/mG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/mG$c;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field private static final enum DW:Lcom/google/android/gms/internal/ads/mG$c;

.field private static final enum FH:Lcom/google/android/gms/internal/ads/mG$c;

.field private static final Hw:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu",
            "<",
            "Lcom/google/android/gms/internal/ads/mG$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum j6:Lcom/google/android/gms/internal/ads/mG$c;

.field private static final v5:[Lcom/google/android/gms/internal/ads/mG$c;


# instance fields
.field private final Zo:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/mG$c;

    const-string v1, "NETWORKTYPE_UNSPECIFIED"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/mG$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$c;->j6:Lcom/google/android/gms/internal/ads/mG$c;

    new-instance v0, Lcom/google/android/gms/internal/ads/mG$c;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/mG$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$c;->DW:Lcom/google/android/gms/internal/ads/mG$c;

    new-instance v0, Lcom/google/android/gms/internal/ads/mG$c;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/mG$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$c;->FH:Lcom/google/android/gms/internal/ads/mG$c;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/mG$c;

    sget-object v1, Lcom/google/android/gms/internal/ads/mG$c;->j6:Lcom/google/android/gms/internal/ads/mG$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/mG$c;->DW:Lcom/google/android/gms/internal/ads/mG$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/mG$c;->FH:Lcom/google/android/gms/internal/ads/mG$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$c;->v5:[Lcom/google/android/gms/internal/ads/mG$c;

    new-instance v0, Lcom/google/android/gms/internal/ads/KG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/KG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/mG$c;->Hw:Lcom/google/android/gms/internal/ads/lu;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/mG$c;->Zo:I

    return-void
.end method

.method public static Hw()Lcom/google/android/gms/internal/ads/mu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/LG;->j6:Lcom/google/android/gms/internal/ads/mu;

    return-object v0
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/mG$c;
    .registers 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/mG$c;->FH:Lcom/google/android/gms/internal/ads/mG$c;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/mG$c;->DW:Lcom/google/android/gms/internal/ads/mG$c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/mG$c;->j6:Lcom/google/android/gms/internal/ads/mG$c;

    goto :goto_0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/mG$c;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/mG$c;->v5:[Lcom/google/android/gms/internal/ads/mG$c;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/mG$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/mG$c;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/mG$c;->Zo:I

    return v0
.end method
