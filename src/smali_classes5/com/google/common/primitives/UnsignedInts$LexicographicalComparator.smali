.class final enum Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "UnsignedInts.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedInts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 195
    new-instance v0, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    .line 194
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;
    .registers 2

    .line 194
    const-class v0, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;
    .registers 1

    .line 194
    sget-object v0, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 194
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .registers 7

    .line 199
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 200
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1b

    .line 201
    aget v2, p1, v0

    aget v3, p2, v0

    if-eq v2, v3, :cond_18

    .line 202
    aget v1, p1, v0

    aget v0, p2, v0

    invoke-static {v1, v0}, Lcom/google/common/primitives/UnsignedInts;->compare(II)I

    move-result v0

    .line 205
    :goto_17
    return v0

    .line 200
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 205
    :cond_1b
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 210
    const-string v0, "UnsignedInts.lexicographicalComparator()"

    return-object v0
.end method
