.class final enum Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "SignedBytes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/SignedBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 177
    new-instance v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    .line 176
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;
    .registers 2

    .line 176
    const-class v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;
    .registers 1

    .line 176
    sget-object v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 176
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public compare([B[B)I
    .registers 7

    .line 181
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 182
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 183
    aget-byte v0, p1, v1

    aget-byte v3, p2, v1

    invoke-static {v0, v3}, Lcom/google/common/primitives/SignedBytes;->compare(BB)I

    move-result v0

    .line 184
    if-eqz v0, :cond_15

    .line 188
    :goto_14
    return v0

    .line 182
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 188
    :cond_19
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 193
    const-string v0, "SignedBytes.lexicographicalComparator()"

    return-object v0
.end method
