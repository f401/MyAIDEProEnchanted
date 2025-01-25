.class public final enum Lcom/google/android/gms/internal/ads/Yr$b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/Yr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/Yr$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/ads/Yr$b;

.field public static final enum FH:Lcom/google/android/gms/internal/ads/Yr$b;

.field public static final enum Hw:Lcom/google/android/gms/internal/ads/Yr$b;

.field private static final VH:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu<",
            "Lcom/google/android/gms/internal/ads/Yr$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Zo:Lcom/google/android/gms/internal/ads/Yr$b;

.field private static final gn:[Lcom/google/android/gms/internal/ads/Yr$b;

.field public static final enum j6:Lcom/google/android/gms/internal/ads/Yr$b;

.field public static final enum v5:Lcom/google/android/gms/internal/ads/Yr$b;


# instance fields
.field private final u7:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lcom/google/android/gms/internal/ads/Yr$b;

    const-string v1, "UNKNOWN_KEYMATERIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/Yr$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Yr$b;->j6:Lcom/google/android/gms/internal/ads/Yr$b;

    new-instance v1, Lcom/google/android/gms/internal/ads/Yr$b;

    const-string v3, "SYMMETRIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/Yr$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/Yr$b;->DW:Lcom/google/android/gms/internal/ads/Yr$b;

    new-instance v3, Lcom/google/android/gms/internal/ads/Yr$b;

    const-string v5, "ASYMMETRIC_PRIVATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/Yr$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/Yr$b;->FH:Lcom/google/android/gms/internal/ads/Yr$b;

    new-instance v5, Lcom/google/android/gms/internal/ads/Yr$b;

    const-string v7, "ASYMMETRIC_PUBLIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/Yr$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/Yr$b;->Hw:Lcom/google/android/gms/internal/ads/Yr$b;

    new-instance v7, Lcom/google/android/gms/internal/ads/Yr$b;

    const-string v9, "REMOTE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/ads/Yr$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/Yr$b;->v5:Lcom/google/android/gms/internal/ads/Yr$b;

    new-instance v9, Lcom/google/android/gms/internal/ads/Yr$b;

    const/4 v11, -0x1

    const-string v12, "UNRECOGNIZED"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lcom/google/android/gms/internal/ads/Yr$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/ads/Yr$b;->Zo:Lcom/google/android/gms/internal/ads/Yr$b;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/ads/Yr$b;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v13

    sput-object v11, Lcom/google/android/gms/internal/ads/Yr$b;->gn:[Lcom/google/android/gms/internal/ads/Yr$b;

    new-instance v0, Lcom/google/android/gms/internal/ads/_r;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/_r;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Yr$b;->VH:Lcom/google/android/gms/internal/ads/lu;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/Yr$b;->u7:I

    return-void
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/Yr$b;
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
    sget-object p0, Lcom/google/android/gms/internal/ads/Yr$b;->v5:Lcom/google/android/gms/internal/ads/Yr$b;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/Yr$b;->Hw:Lcom/google/android/gms/internal/ads/Yr$b;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/Yr$b;->FH:Lcom/google/android/gms/internal/ads/Yr$b;

    return-object p0

    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/ads/Yr$b;->DW:Lcom/google/android/gms/internal/ads/Yr$b;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/Yr$b;->j6:Lcom/google/android/gms/internal/ads/Yr$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/Yr$b;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr$b;->gn:[Lcom/google/android/gms/internal/ads/Yr$b;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/Yr$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/Yr$b;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr$b;->Zo:Lcom/google/android/gms/internal/ads/Yr$b;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/Yr$b;->u7:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
