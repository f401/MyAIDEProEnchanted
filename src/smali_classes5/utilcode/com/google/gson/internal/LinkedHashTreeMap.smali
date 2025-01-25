.class public final Lutilcode/com/google/gson/internal/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,
        Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;,
        Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;,
        Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;,
        Lutilcode/com/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I

.field table:[Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$1;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->size:I

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->modCount:I

    if-eqz p1, :cond_23

    :goto_a
    iput-object p1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    new-instance v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;-><init>()V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->header:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    const/16 v0, 0x10

    new-array v0, v0, [Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->table:[Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->threshold:I

    return-void

    :cond_23
    sget-object p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_a
.end method

.method private doubleCapacity()V
    .registers 3

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->table:[Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->doubleCapacity([Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)[Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->table:[Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->threshold:I

    return-void
.end method

.method static doubleCapacity([Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)[Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)[",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v5, p0

    mul-int/lit8 v0, v5, 0x2

    new-array v6, v0, [Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    new-instance v7, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v7}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;-><init>()V

    new-instance v8, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v8}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    new-instance v9, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v9}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    move v4, v1

    :goto_17
    if-ge v4, v5, :cond_68

    aget-object v10, p0, v4

    if-nez v10, :cond_21

    :goto_1d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_17

    :cond_21
    invoke-virtual {v7, v10}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    move v0, v1

    move v2, v1

    :goto_26
    invoke-virtual {v7}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v11

    if-eqz v11, :cond_37

    iget v11, v11, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v11, v5

    if-nez v11, :cond_34

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_37
    invoke-virtual {v8, v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    invoke-virtual {v9, v2}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    invoke-virtual {v7, v10}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    :goto_40
    invoke-virtual {v7}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v10

    if-eqz v10, :cond_53

    iget v11, v10, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v11, v5

    if-nez v11, :cond_4f

    invoke-virtual {v8, v10}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_40

    :cond_4f
    invoke-virtual {v9, v10}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_40

    :cond_53
    if-lez v0, :cond_66

    invoke-virtual {v8}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    :goto_59
    aput-object v0, v6, v4

    if-lez v2, :cond_69

    invoke-virtual {v9}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    :goto_61
    add-int v2, v4, v5

    aput-object v0, v6, v2

    goto :goto_1d

    :cond_66
    move-object v0, v3

    goto :goto_59

    :cond_68
    return-object v6

    :cond_69
    move-object v0, v3

    goto :goto_61
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p2, :cond_a

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private rebalance(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_2f

    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v4, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_30

    iget v0, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_c
    if-eqz v4, :cond_32

    iget v0, v4, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_10
    sub-int v5, v2, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3d

    iget-object v3, v4, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, v4, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_34

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_1e
    if-eqz v3, :cond_7c

    iget v0, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_22
    sub-int/2addr v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2a

    if-nez v0, :cond_36

    if-nez p2, :cond_36

    :cond_2a
    invoke-direct {p0, p1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    :goto_2d
    if-eqz p2, :cond_5a

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    move v2, v1

    goto :goto_c

    :cond_32
    move v0, v1

    goto :goto_10

    :cond_34
    move v2, v1

    goto :goto_1e

    :cond_36
    invoke-direct {p0, v4}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    invoke-direct {p0, p1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_2d

    :cond_3d
    const/4 v4, 0x2

    if-ne v5, v4, :cond_66

    iget-object v4, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_5d

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_49
    if-eqz v4, :cond_7a

    iget v0, v4, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_4d
    sub-int/2addr v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_55

    if-nez v0, :cond_5f

    if-nez p2, :cond_5f

    :cond_55
    invoke-direct {p0, p1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    :goto_58
    if-nez p2, :cond_2f

    :cond_5a
    iget-object p1, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_1

    :cond_5d
    move v2, v1

    goto :goto_49

    :cond_5f
    invoke-direct {p0, v3}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    invoke-direct {p0, p1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_58

    :cond_66
    if-nez v5, :cond_6f

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz p2, :cond_5a

    goto :goto_2f

    :cond_6f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-nez p2, :cond_5a

    goto :goto_2f

    :cond_7a
    move v0, v1

    goto :goto_4d

    :cond_7c
    move v0, v1

    goto :goto_22
.end method

.method private replaceInParent(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    iput-object v1, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz p2, :cond_9

    iput-object v0, p2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :cond_9
    if-eqz v0, :cond_15

    iget-object v1, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-ne v1, p1, :cond_12

    iput-object p2, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_11
    return-void

    :cond_12
    iput-object p2, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_11

    :cond_15
    iget v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    iget-object v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->table:[Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    aput-object p2, v1, v0

    goto :goto_11
.end method

.method private rotateLeft(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v4, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v5, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v4, :cond_f

    iput-object p1, v4, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :cond_f
    invoke-direct {p0, p1, v3}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    iput-object p1, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v3, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_36

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_1b
    if-eqz v4, :cond_38

    iget v0, v4, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iget v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v5, :cond_2d

    iget v1, v5, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    return-void

    :cond_36
    move v2, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private rotateRight(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v4, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v5, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v5, :cond_f

    iput-object p1, v5, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :cond_f
    invoke-direct {p0, p1, v3}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    iput-object p1, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v3, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_36

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v2, v0

    :goto_1b
    if-eqz v5, :cond_38

    iget v0, v5, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iget v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v4, :cond_2d

    iget v1, v4, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    return-void

    :cond_36
    move v2, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private static secondaryHash(I)I
    .registers 4

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, v0, 0x4

    ushr-int/lit8 v2, v0, 0x7

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->table:[Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->size:I

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iget-object v2, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->header:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, v2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_13
    if-eq v0, v2, :cond_1d

    iget-object v1, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v3, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v3, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v0, v1

    goto :goto_13

    :cond_1d
    iput-object v2, v2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v2, v2, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->entrySet:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;-><init>(Lutilcode/com/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->entrySet:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$EntrySet;

    goto :goto_4
.end method

.method find(Ljava/lang/Object;Z)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v7, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v8, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->table:[Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v3

    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    and-int v9, v0, v3

    aget-object v1, v8, v9

    if-eqz v1, :cond_43

    sget-object v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v7, v0, :cond_2a

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v5, v0

    :goto_1e
    if-eqz v5, :cond_2c

    iget-object v0, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v5, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :goto_26
    if-nez v0, :cond_33

    move-object v0, v1

    :goto_29
    return-object v0

    :cond_2a
    move-object v5, v2

    goto :goto_1e

    :cond_2c
    iget-object v0, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v7, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_26

    :cond_33
    if-gez v0, :cond_3e

    iget-object v4, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_37
    if-nez v4, :cond_41

    move v6, v0

    :goto_3a
    if-nez p2, :cond_46

    move-object v0, v2

    goto :goto_29

    :cond_3e
    iget-object v4, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_37

    :cond_41
    move-object v1, v4

    goto :goto_1e

    :cond_43
    const/4 v0, 0x0

    move v6, v0

    goto :goto_3a

    :cond_46
    iget-object v4, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->header:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-nez v1, :cond_8f

    sget-object v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v7, v0, :cond_52

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_70

    :cond_52
    new-instance v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v5, v4, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    aput-object v0, v8, v9

    :goto_5c
    iget v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->size:I

    iget v2, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->threshold:I

    if-le v1, v2, :cond_69

    invoke-direct {p0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->doubleCapacity()V

    :cond_69
    iget v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->modCount:I

    goto :goto_29

    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not Comparable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8f
    new-instance v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v5, v4, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    if-gez v6, :cond_a0

    iput-object v0, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_9b
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->rebalance(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    goto :goto_5c

    :cond_a0
    iput-object v0, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_9b
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_17
    if-eqz v1, :cond_1c

    :goto_19
    return-object v0

    :cond_1a
    const/4 v1, 0x0

    goto :goto_17

    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method findByObject(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    :cond_8
    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    goto :goto_8
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->keySet:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;-><init>(Lutilcode/com/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->keySet:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$KeySet;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iget-object v1, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    iput-object p2, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    return-object v1

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method removeInternal(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_14

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :cond_14
    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_56

    if-eqz v1, :cond_56

    iget v3, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iget v4, v1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-le v3, v4, :cond_4f

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->last()Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    :goto_28
    invoke-virtual {p0, v0, v2}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_54

    iget v1, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iput-object v3, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_37
    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_43

    iget v2, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iput-object v3, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, v3, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :cond_43
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    invoke-direct {p0, p1, v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    :goto_4e
    return-void

    :cond_4f
    invoke-virtual {v1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->first()Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    goto :goto_28

    :cond_54
    move v1, v2

    goto :goto_37

    :cond_56
    if-eqz v0, :cond_6d

    invoke-direct {p0, p1, v0}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    :goto_5d
    invoke-direct {p0, v3, v2}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->rebalance(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->size:I

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->modCount:I

    goto :goto_4e

    :cond_6d
    if-eqz v1, :cond_75

    invoke-direct {p0, p1, v1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_5d

    :cond_75
    invoke-direct {p0, p1, v5}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_5d
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lutilcode/com/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    :cond_a
    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
