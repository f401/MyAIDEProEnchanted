.class public final Lutilcode/com/google/gson/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutilcode/com/google/gson/internal/LinkedTreeMap$EntrySet;,
        Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;,
        Lutilcode/com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;,
        Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
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

.field private entrySet:Lutilcode/com/google/gson/internal/LinkedTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$1;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap$1;-><init>()V

    sput-object v0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->size:I

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->modCount:I

    new-instance v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;-><init>()V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->header:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz p1, :cond_14

    :goto_11
    iput-object p1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    return-void

    :cond_14
    sget-object p1, Lutilcode/com/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_11
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

.method private rebalance(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_2f

    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v4, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v3, :cond_30

    iget v0, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_c
    if-eqz v4, :cond_32

    iget v0, v4, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    :goto_10
    sub-int v5, v2, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3d

    iget-object v3, v4, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, v4, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_34

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_1e
    if-eqz v3, :cond_7c

    iget v0, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    :goto_22
    sub-int/2addr v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2a

    if-nez v0, :cond_36

    if-nez p2, :cond_36

    :cond_2a
    invoke-direct {p0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->rotateLeft(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

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
    invoke-direct {p0, v4}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->rotateRight(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    invoke-direct {p0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->rotateLeft(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_2d

    :cond_3d
    const/4 v4, 0x2

    if-ne v5, v4, :cond_66

    iget-object v4, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_5d

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_49
    if-eqz v4, :cond_7a

    iget v0, v4, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    :goto_4d
    sub-int/2addr v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_55

    if-nez v0, :cond_5f

    if-nez p2, :cond_5f

    :cond_55
    invoke-direct {p0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->rotateRight(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    :goto_58
    if-nez p2, :cond_2f

    :cond_5a
    iget-object p1, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_1

    :cond_5d
    move v2, v1

    goto :goto_49

    :cond_5f
    invoke-direct {p0, v3}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->rotateLeft(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    invoke-direct {p0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->rotateRight(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_58

    :cond_66
    if-nez v5, :cond_6f

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz p2, :cond_5a

    goto :goto_2f

    :cond_6f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-nez p2, :cond_5a

    goto :goto_2f

    :cond_7a
    move v0, v1

    goto :goto_4d

    :cond_7c
    move v0, v1

    goto :goto_22
.end method

.method private replaceInParent(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    const/4 v1, 0x0

    iput-object v1, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz p2, :cond_9

    iput-object v0, p2, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :cond_9
    if-eqz v0, :cond_15

    iget-object v1, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-ne v1, p1, :cond_12

    iput-object p2, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :goto_11
    return-void

    :cond_12
    iput-object p2, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_11

    :cond_15
    iput-object p2, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->root:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_11
.end method

.method private rotateLeft(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v4, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v5, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v4, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v4, :cond_f

    iput-object p1, v4, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :cond_f
    invoke-direct {p0, p1, v3}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    iput-object p1, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v3, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_36

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_1b
    if-eqz v4, :cond_38

    iget v0, v4, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    iget v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz v5, :cond_2d

    iget v1, v5, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    return-void

    :cond_36
    move v2, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private rotateRight(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v4, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v5, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v5, :cond_f

    iput-object p1, v5, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :cond_f
    invoke-direct {p0, p1, v3}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    iput-object p1, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v3, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_36

    iget v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_1b
    if-eqz v5, :cond_38

    iget v0, v5, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    iget v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz v4, :cond_2d

    iget v1, v4, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    return-void

    :cond_36
    move v2, v1

    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
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
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->root:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    const/4 v0, 0x0

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->size:I

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->modCount:I

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->header:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

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

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->entrySet:Lutilcode/com/google/gson/internal/LinkedTreeMap$EntrySet;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/LinkedTreeMap$EntrySet;-><init>(Lutilcode/com/google/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->entrySet:Lutilcode/com/google/gson/internal/LinkedTreeMap$EntrySet;

    goto :goto_4
.end method

.method find(Ljava/lang/Object;Z)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v5, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->root:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v1, :cond_34

    sget-object v0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v0, :cond_1b

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v4, v0

    :goto_f
    if-eqz v4, :cond_1d

    iget-object v0, v1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :goto_17
    if-nez v0, :cond_24

    move-object v0, v1

    :goto_1a
    return-object v0

    :cond_1b
    move-object v4, v2

    goto :goto_f

    :cond_1d
    iget-object v0, v1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v5, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_17

    :cond_24
    if-gez v0, :cond_2f

    iget-object v3, v1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :goto_28
    if-nez v3, :cond_32

    move v3, v0

    :goto_2b
    if-nez p2, :cond_37

    move-object v0, v2

    goto :goto_1a

    :cond_2f
    iget-object v3, v1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_28

    :cond_32
    move-object v1, v3

    goto :goto_f

    :cond_34
    const/4 v0, 0x0

    move v3, v0

    goto :goto_2b

    :cond_37
    iget-object v2, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->header:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-nez v1, :cond_78

    sget-object v0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v0, :cond_43

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_59

    :cond_43
    new-instance v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v3, v2, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0, v1, p1, v2, v3}, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;-><init>(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->root:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :goto_4c
    iget v1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->size:I

    iget v1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->modCount:I

    goto :goto_1a

    :cond_59
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

    :cond_78
    new-instance v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v4, v2, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0, v1, p1, v2, v4}, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;-><init>(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    if-gez v3, :cond_88

    iput-object v0, v1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :goto_83
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->rebalance(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Z)V

    goto :goto_4c

    :cond_88
    iput-object v0, v1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_83
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method findByObject(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
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

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

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

    iget-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->keySet:Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;

    invoke-direct {v0, p0}, Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;-><init>(Lutilcode/com/google/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->keySet:Lutilcode/com/google/gson/internal/LinkedTreeMap$KeySet;

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

    invoke-virtual {p0, p1, v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    iget-object v1, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    iput-object p2, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method removeInternal(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_10

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->next:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->prev:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :cond_10
    iget-object v0, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v0, :cond_52

    if-eqz v1, :cond_52

    iget v3, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    iget v4, v1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-le v3, v4, :cond_4b

    invoke-virtual {v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->last()Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    :goto_24
    invoke-virtual {p0, v0, v2}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->removeInternal(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Z)V

    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v3, :cond_50

    iget v1, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    iput-object v3, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :goto_33
    iget-object v3, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v3, :cond_3f

    iget v2, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    iput-object v3, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v3, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->parent:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :cond_3f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->height:I

    invoke-direct {p0, p1, v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    :goto_4a
    return-void

    :cond_4b
    invoke-virtual {v1}, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->first()Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    goto :goto_24

    :cond_50
    move v1, v2

    goto :goto_33

    :cond_52
    if-eqz v0, :cond_69

    invoke-direct {p0, p1, v0}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->left:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    :goto_59
    invoke-direct {p0, v3, v2}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->rebalance(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Z)V

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->size:I

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->modCount:I

    goto :goto_4a

    :cond_69
    if-eqz v1, :cond_71

    invoke-direct {p0, p1, v1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    iput-object v5, p1, Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;->right:Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_59

    :cond_71
    invoke-direct {p0, p1, v5}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->replaceInParent(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_59
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lutilcode/com/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lutilcode/com/google/gson/internal/LinkedTreeMap;->removeInternal(Lutilcode/com/google/gson/internal/LinkedTreeMap$Node;Z)V

    :cond_a
    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lutilcode/com/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
