.class public Lcom/sun/tools/javac/util/List;
.super Ljava/util/AbstractCollection;
.source "List.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TA;>;",
        "Ljava/util/List",
        "<TA;>;"
    }
.end annotation


# static fields
.field private static EMPTYITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field private static EMPTY_LIST:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field public head:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public tail:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 77
    new-instance v0, Lcom/sun/tools/javac/util/List$1;

    invoke-direct {v0, v1, v1}, Lcom/sun/tools/javac/util/List$1;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    sput-object v0, Lcom/sun/tools/javac/util/List;->EMPTY_LIST:Lcom/sun/tools/javac/util/List;

    .line 373
    new-instance v0, Lcom/sun/tools/javac/util/List$2;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/List$2;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/util/List;->EMPTYITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 67
    iput-object p1, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public static convert(Ljava/lang/Class;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/sun/tools/javac/util/List",
            "<*>;)",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;"
        }
    .end annotation

    .line 366
    if-nez p1, :cond_4

    .line 367
    const/4 p1, 0x0

    .line 370
    :cond_3
    return-object p1

    .line 368
    :cond_4
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 369
    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method private static emptyIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<TA;>;"
        }
    .end annotation

    .line 387
    sget-object v0, Lcom/sun/tools/javac/util/List;->EMPTYITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public static equals(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<*>;",
            "Lcom/sun/tools/javac/util/List",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 324
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_1f

    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_1f

    .line 325
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-nez v1, :cond_12

    .line 326
    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 333
    :cond_11
    :goto_11
    return v0

    .line 328
    :cond_12
    iget-object v2, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 330
    :cond_1a
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 331
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_1

    .line 333
    :cond_1f
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v1, :cond_11

    iget-object v1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static fill(ILjava/lang/Object;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(ITA;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 130
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, p0, :cond_11

    new-instance v1, Lcom/sun/tools/javac/util/List;

    invoke-direct {v1, p1, v0}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_6

    .line 131
    :cond_11
    return-object v0
.end method

.method public static from([Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">([TA;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 117
    if-eqz p0, :cond_17

    .line 118
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_a
    if-ltz v2, :cond_17

    .line 119
    new-instance v1, Lcom/sun/tools/javac/util/List;

    aget-object v3, p0, v2

    invoke-direct {v1, v3, v0}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    .line 118
    add-int/lit8 v2, v2, -0x1

    move-object v0, v1

    goto :goto_a

    .line 120
    :cond_17
    return-object v0
.end method

.method public static nil()Lcom/sun/tools/javac/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/sun/tools/javac/util/List;->EMPTY_LIST:Lcom/sun/tools/javac/util/List;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/sun/tools/javac/util/List;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;TA;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/sun/tools/javac/util/List;

    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;TA;TA;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/sun/tools/javac/util/List;

    invoke-static {p1, p2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;TA;TA;[TA;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/sun/tools/javac/util/List;

    new-instance v1, Lcom/sun/tools/javac/util/List;

    new-instance v2, Lcom/sun/tools/javac/util/List;

    invoke-static {p3}, Lcom/sun/tools/javac/util/List;->from([Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    invoke-direct {v1, p1, v2}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TA;>;)Z"
        }
    .end annotation

    .line 427
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 428
    const/4 v0, 0x0

    return v0

    .line 429
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 218
    invoke-static {p1}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 225
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/util/List;->prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public appendList(Lcom/sun/tools/javac/util/ListBuffer;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<TA;>;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 233
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/List;->appendList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    .line 340
    .line 341
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_17

    .line 342
    if-nez p1, :cond_c

    .line 343
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-nez v1, :cond_14

    .line 349
    :cond_b
    :goto_b
    return v0

    .line 345
    :cond_c
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 347
    :cond_14
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_1

    .line 349
    :cond_17
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    .line 305
    instance-of v1, p1, Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_c

    .line 306
    check-cast p1, Lcom/sun/tools/javac/util/List;

    invoke-static {p0, p1}, Lcom/sun/tools/javac/util/List;->equals(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    .line 318
    :cond_b
    :goto_b
    return v0

    .line 307
    :cond_c
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_b

    .line 309
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    :goto_16
    iget-object v2, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-nez v3, :cond_2d

    if-nez v2, :cond_b

    .line 314
    :cond_2a
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_16

    .line 312
    :cond_2d
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_b

    .line 316
    :cond_34
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 413
    if-ltz p1, :cond_3d

    move-object v0, p0

    move v1, p1

    .line 417
    :goto_4
    if-lez v1, :cond_11

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 420
    :cond_11
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 423
    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    return-object v0

    .line 421
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :cond_3d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .line 291
    .line 292
    const/4 v0, 0x1

    .line 293
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_15

    .line 294
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 295
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_1

    .line 294
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a

    .line 297
    :cond_15
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4

    .line 445
    const/4 v0, 0x0

    .line 446
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_17

    .line 447
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-nez v1, :cond_c

    if-nez p1, :cond_12

    .line 450
    :cond_b
    :goto_b
    return v0

    .line 447
    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 446
    :cond_12
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    :cond_17
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public isEmpty()Z
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TA;>;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-nez v0, :cond_9

    .line 393
    invoke-static {}, Lcom/sun/tools/javac/util/List;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 394
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/sun/tools/javac/util/List$3;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/util/List$3;-><init>(Lcom/sun/tools/javac/util/List;)V

    goto :goto_8
.end method

.method public last()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_a

    .line 358
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 359
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_1

    .line 361
    :cond_a
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    .line 454
    const/4 v0, -0x1

    .line 455
    const/4 v1, 0x0

    .line 456
    :goto_2
    iget-object v2, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v2, :cond_19

    .line 457
    iget-object v2, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    if-nez v2, :cond_12

    if-nez p1, :cond_d

    :goto_c
    move v0, v1

    .line 456
    :cond_d
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 457
    :cond_12
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_c

    .line 460
    :cond_19
    return v0
.end method

.method public length()I
    .registers 3

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_a

    .line 155
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_a
    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TA;>;"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TA;>;"
        }
    .end annotation

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/sun/tools/javac/util/List;

    invoke-direct {v0, p1, p0}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    return-object v0
.end method

.method public prependList(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object p0, p1

    .line 196
    :cond_7
    :goto_7
    return-object p0

    .line 182
    :cond_8
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 183
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object p0

    goto :goto_7

    .line 186
    :cond_1d
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 187
    if-eq v1, p1, :cond_36

    const/4 v0, 0x1

    :goto_24
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    move-object v0, v1

    .line 190
    :goto_28
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 191
    iget-object v1, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 193
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/util/List;->setTail(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-object p0, v0

    move-object v0, v1

    .line 194
    goto :goto_28

    .line 187
    :cond_36
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reverse()Lcom/sun/tools/javac/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    move-object v0, p0

    .line 211
    :cond_f
    return-object v0

    .line 208
    :cond_10
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 209
    :goto_14
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 210
    new-instance v1, Lcom/sun/tools/javac/util/List;

    iget-object v2, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    .line 209
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v0, v1

    goto :goto_14
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)TA;"
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTail(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;)",
            "Lcom/sun/tools/javac/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 167
    return-object p1
.end method

.method public size()I
    .registers 2

    .line 162
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    .line 472
    if-ltz p1, :cond_29

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_29

    if-gt p1, p2, :cond_29

    .line 475
    new-instance v1, Ljava/util/ArrayList;

    sub-int v0, p2, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    const/4 v0, 0x0

    .line 477
    :goto_12
    iget-object v2, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    if-eqz v2, :cond_18

    .line 478
    if-ne v0, p2, :cond_1d

    .line 484
    :cond_18
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 480
    :cond_1d
    if-lt v0, p1, :cond_24

    .line 481
    iget-object v2, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_24
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 473
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 260
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 241
    const/4 v1, 0x0

    move-object v0, p0

    .line 243
    :goto_2
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 245
    iget-object v2, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    aput-object v2, p1, v1

    .line 246
    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 249
    :cond_14
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 250
    array-length v0, p1

    if-ge v1, v0, :cond_20

    .line 251
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 256
    :cond_20
    :goto_20
    return-object p1

    .line 255
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 256
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_20
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 283
    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/List;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 266
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 267
    const-string v0, ""

    .line 275
    :goto_8
    return-object v0

    .line 269
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 271
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    :goto_15
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 272
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    iget-object v2, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 271
    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_15

    .line 275
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
