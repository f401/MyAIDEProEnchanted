.class public final Lcom/google/gson/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/LinkedTreeMap$EntrySet;,
        Lcom/google/gson/internal/LinkedTreeMap$KeySet;,
        Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;,
        Lcom/google/gson/internal/LinkedTreeMap$Node;
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

.field private entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$1;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    sget-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Ljava/util/Comparator;)V

    .line 61
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

    .line 71
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 48
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 49
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 52
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 72
    if-eqz p1, :cond_14

    :goto_11
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 75
    return-void

    .line 72
    :cond_14
    sget-object p1, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_11
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 208
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

.method private rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 311
    :goto_1
    if-eqz p1, :cond_2f

    .line 312
    iget-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 313
    iget-object v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 314
    if-eqz v3, :cond_30

    iget v0, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    .line 315
    :goto_c
    if-eqz v4, :cond_32

    iget v0, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 317
    :goto_10
    sub-int v5, v2, v0

    .line 318
    const/4 v6, -0x2

    if-ne v5, v6, :cond_3d

    .line 319
    iget-object v3, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 320
    iget-object v0, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 321
    if-eqz v0, :cond_34

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    .line 322
    :goto_1e
    if-eqz v3, :cond_7c

    iget v0, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 324
    :goto_22
    sub-int/2addr v0, v2

    .line 325
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2a

    if-nez v0, :cond_36

    if-nez p2, :cond_36

    .line 326
    :cond_2a
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 332
    :goto_2d
    if-eqz p2, :cond_5a

    .line 368
    :cond_2f
    :goto_2f
    return-void

    :cond_30
    move v2, v1

    .line 314
    goto :goto_c

    :cond_32
    move v0, v1

    .line 315
    goto :goto_10

    :cond_34
    move v2, v1

    .line 321
    goto :goto_1e

    .line 328
    :cond_36
    invoke-direct {p0, v4}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_2d

    .line 336
    :cond_3d
    const/4 v4, 0x2

    if-ne v5, v4, :cond_66

    .line 337
    iget-object v4, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 338
    iget-object v0, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 339
    if-eqz v0, :cond_5d

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    .line 340
    :goto_49
    if-eqz v4, :cond_7a

    iget v0, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 342
    :goto_4d
    sub-int/2addr v0, v2

    .line 343
    const/4 v2, 0x1

    if-eq v0, v2, :cond_55

    if-nez v0, :cond_5f

    if-nez p2, :cond_5f

    .line 344
    :cond_55
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 350
    :goto_58
    if-nez p2, :cond_2f

    .line 311
    :cond_5a
    iget-object p1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_1

    :cond_5d
    move v2, v1

    .line 339
    goto :goto_49

    .line 346
    :cond_5f
    invoke-direct {p0, v3}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 348
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_58

    .line 354
    :cond_66
    if-nez v5, :cond_6f

    .line 355
    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 356
    if-eqz p2, :cond_5a

    goto :goto_2f

    .line 361
    :cond_6f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 363
    if-nez p2, :cond_5a

    goto :goto_2f

    :cond_7a
    move v0, v1

    goto :goto_4d

    :cond_7c
    move v0, v1

    goto :goto_22
.end method

.method private replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .line 285
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 287
    if-eqz p2, :cond_9

    .line 288
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 291
    :cond_9
    if-eqz v0, :cond_15

    .line 292
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-ne v1, p1, :cond_12

    .line 293
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 301
    :goto_11
    return-void

    .line 295
    :cond_12
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_11

    .line 299
    :cond_15
    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_11
.end method

.method private rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 374
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 375
    iget-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 376
    iget-object v4, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 377
    iget-object v5, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 380
    iput-object v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 381
    if-eqz v4, :cond_f

    .line 382
    iput-object p1, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 385
    :cond_f
    invoke-direct {p0, p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 388
    iput-object p1, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 389
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 392
    if-eqz v0, :cond_36

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_1b
    if-eqz v4, :cond_38

    iget v0, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 394
    iget v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz v5, :cond_2d

    iget v1, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 396
    return-void

    :cond_36
    move v2, v1

    .line 392
    goto :goto_1b

    :cond_38
    move v0, v1

    goto :goto_1f
.end method

.method private rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 402
    iget-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 403
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 404
    iget-object v4, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 405
    iget-object v5, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 408
    iput-object v5, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 409
    if-eqz v5, :cond_f

    .line 410
    iput-object p1, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 413
    :cond_f
    invoke-direct {p0, p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 416
    iput-object p1, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 417
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 420
    if-eqz v0, :cond_36

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v2, v0

    :goto_1b
    if-eqz v5, :cond_38

    iget v0, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 422
    iget v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz v4, :cond_2d

    iget v1, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 424
    return-void

    :cond_36
    move v2, v1

    .line 420
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

    .line 628
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 103
    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 106
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 107
    iput-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 108
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

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

    .line 430
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    .line 431
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    goto :goto_4
.end method

.method find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 122
    iget-object v5, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 123
    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 124
    const/4 v0, 0x0

    .line 126
    if-eqz v1, :cond_89

    .line 129
    sget-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v0, :cond_1c

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v4, v0

    .line 134
    :goto_10
    if-eqz v4, :cond_1e

    iget-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 135
    invoke-interface {v4, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 139
    :goto_18
    if-nez v0, :cond_25

    move-object v0, v1

    .line 180
    :goto_1b
    return-object v0

    :cond_1c
    move-object v4, v2

    .line 129
    goto :goto_10

    .line 135
    :cond_1e
    iget-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 136
    invoke-interface {v5, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_18

    .line 144
    :cond_25
    if-gez v0, :cond_30

    iget-object v3, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 145
    :goto_29
    if-nez v3, :cond_33

    move v3, v0

    .line 154
    :goto_2c
    if-nez p2, :cond_35

    move-object v0, v2

    .line 155
    goto :goto_1b

    .line 144
    :cond_30
    iget-object v3, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_29

    :cond_33
    move-object v1, v3

    .line 150
    goto :goto_10

    .line 159
    :cond_35
    iget-object v2, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 161
    if-nez v1, :cond_76

    .line 163
    sget-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v0, :cond_41

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_57

    .line 166
    :cond_41
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v3, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 167
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 177
    :goto_4a
    iget v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 178
    iget v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    goto :goto_1b

    .line 164
    :cond_57
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

    .line 169
    :cond_76
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v4, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0, v1, p1, v2, v4}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 170
    if-gez v3, :cond_86

    .line 171
    iput-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 175
    :goto_81
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    goto :goto_4a

    .line 173
    :cond_86
    iput-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_81

    :cond_89
    move v3, v0

    goto :goto_2c
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .line 202
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    .line 204
    :goto_17
    if-eqz v1, :cond_1c

    :goto_19
    return-object v0

    .line 203
    :cond_1a
    const/4 v1, 0x0

    goto :goto_17

    .line 204
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    .line 188
    :cond_8
    :goto_8
    return-object v0

    .line 187
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

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

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

    .line 435
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    .line 436
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 91
    if-eqz p1, :cond_c

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 95
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 96
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 97
    return-object v1

    .line 92
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

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 218
    if-eqz p2, :cond_10

    .line 219
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 220
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 223
    :cond_10
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 224
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 225
    iget-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 226
    if-eqz v0, :cond_50

    if-eqz v1, :cond_50

    .line 237
    iget v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    iget v4, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-le v3, v4, :cond_4b

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap$Node;->last()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 238
    :goto_24
    invoke-virtual {p0, v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 241
    iget-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 242
    if-eqz v3, :cond_73

    .line 243
    iget v1, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 244
    iput-object v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 245
    iput-object v0, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 246
    iput-object v5, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 250
    :goto_33
    iget-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 251
    if-eqz v3, :cond_3f

    .line 252
    iget v2, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 253
    iput-object v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 254
    iput-object v0, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 255
    iput-object v5, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 258
    :cond_3f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 274
    :goto_4a
    return-void

    .line 237
    :cond_4b
    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedTreeMap$Node;->first()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    goto :goto_24

    .line 261
    :cond_50
    if-eqz v0, :cond_67

    .line 262
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 263
    iput-object v5, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 271
    :goto_57
    invoke-direct {p0, v3, v2}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 272
    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 273
    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    goto :goto_4a

    .line 264
    :cond_67
    if-eqz v1, :cond_6f

    .line 265
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 266
    iput-object v5, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_57

    .line 268
    :cond_6f
    invoke-direct {p0, p1, v5}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_57

    :cond_73
    move v1, v2

    goto :goto_33
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .line 277
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_a

    .line 279
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 281
    :cond_a
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
