.class public Lorg/antlr/v4/runtime/misc/IntervalSet;
.super Ljava/lang/Object;
.source "IntervalSet.java"

# interfaces
.implements Lorg/antlr/v4/runtime/misc/IntSet;


# static fields
.field public static final COMPLETE_CHAR_SET:Lorg/antlr/v4/runtime/misc/IntervalSet;

.field public static final EMPTY_SET:Lorg/antlr/v4/runtime/misc/IntervalSet;


# instance fields
.field protected intervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/misc/Interval;",
            ">;"
        }
    .end annotation
.end field

.field protected readonly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    const v0, 0x10ffff

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    sput-object v0, Lorg/antlr/v4/runtime/misc/IntervalSet;->COMPLETE_CHAR_SET:Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 35
    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->setReadonly(Z)V

    .line 38
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    sput-object v0, Lorg/antlr/v4/runtime/misc/IntervalSet;->EMPTY_SET:Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 40
    invoke-virtual {v0, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->setReadonly(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/misc/Interval;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/IntervalSet;)V
    .locals 1

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 54
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    .line 63
    :cond_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    .line 63
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static of(I)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 2

    .line 70
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 71
    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    return-object v0
.end method

.method public static of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 2

    .line 77
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 78
    invoke-virtual {v0, p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(II)V

    return-object v0
.end method

.method public static or([Lorg/antlr/v4/runtime/misc/IntervalSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 4

    const/4 v0, 0x0

    .line 156
    new-instance v1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v2, v0, [I

    invoke-direct {v1, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 157
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static subtract(Lorg/antlr/v4/runtime/misc/IntervalSet;Lorg/antlr/v4/runtime/misc/IntervalSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 9

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    new-instance v1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v0, v0, [I

    invoke-direct {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    move-object v0, v1

    .line 293
    :goto_0
    return-object v0

    .line 234
    :cond_1
    new-instance v6, Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-direct {v6, p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>(Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    if-eqz p1, :cond_2

    .line 235
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v0, v6

    .line 293
    goto :goto_0

    :cond_3
    move v4, v0

    move v5, v0

    .line 242
    :goto_1
    iget-object v0, v6, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    iget-object v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 243
    iget-object v0, v6, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 244
    iget-object v1, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/misc/Interval;

    .line 248
    iget v2, v1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v7, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ge v2, v7, :cond_4

    move v1, v5

    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v1

    goto :goto_1

    .line 253
    :cond_4
    iget v2, v1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v7, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-le v2, v7, :cond_5

    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 260
    :cond_5
    iget v2, v1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v7, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-le v2, v7, :cond_6

    .line 261
    new-instance v2, Lorg/antlr/v4/runtime/misc/Interval;

    iget v7, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v8, v1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v2, v7, v8}, Lorg/antlr/v4/runtime/misc/Interval;-><init>(II)V

    .line 264
    :goto_4
    iget v7, v1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v8, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ge v7, v8, :cond_a

    .line 265
    new-instance v7, Lorg/antlr/v4/runtime/misc/Interval;

    iget v1, v1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    add-int/lit8 v1, v1, 0x1

    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-direct {v7, v1, v0}, Lorg/antlr/v4/runtime/misc/Interval;-><init>(II)V

    move-object v0, v7

    :goto_5
    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    .line 271
    iget-object v1, v6, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v1, v6, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v1, v5

    goto :goto_2

    :cond_6
    move-object v2, v3

    .line 261
    goto :goto_4

    .line 279
    :cond_7
    iget-object v0, v6, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 287
    iget-object v1, v6, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    goto :goto_2

    .line 293
    :cond_9
    iget-object v0, v6, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    move-object v0, v3

    goto :goto_5
.end method


# virtual methods
.method public add(I)V
    .locals 2

    .line 92
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, p1, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(II)V

    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t alter readonly IntervalSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(II)V
    .locals 1

    .line 104
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(Lorg/antlr/v4/runtime/misc/Interval;)V

    return-void
.end method

.method protected add(Lorg/antlr/v4/runtime/misc/Interval;)V
    .locals 4

    .line 109
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    if-nez v0, :cond_7

    .line 111
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ge v0, v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 118
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->adjacent(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->disjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 123
    :cond_3
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->union(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v2

    .line 124
    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 127
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 129
    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/misc/Interval;->adjacent(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/misc/Interval;->disjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    :cond_4
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 135
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 136
    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/misc/Interval;->union(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 137
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {p1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->startsBeforeDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 144
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_6
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t alter readonly IntervalSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
    .locals 1

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 4

    if-nez p1, :cond_1

    .line 178
    :cond_0
    return-object p0

    .line 167
    :cond_1
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-eqz v0, :cond_2

    .line 168
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 170
    iget-object v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 172
    iget-object v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 173
    iget v3, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-virtual {p0, v3, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 177
    :cond_2
    invoke-interface {p1}, Lorg/antlr/v4/runtime/misc/IntSet;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    goto :goto_1
.end method

.method public bridge synthetic and(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
    .locals 1

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->and(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public and(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 11

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-object v2

    .line 320
    :cond_1
    iget-object v6, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    .line 321
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    iget-object v7, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    .line 323
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 324
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    move v3, v4

    move v5, v4

    :cond_2
    :goto_1
    if-ge v3, v8, :cond_b

    if-ge v5, v9, :cond_b

    .line 329
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 330
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/misc/Interval;

    .line 332
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->startsBeforeDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 336
    :cond_3
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->startsBeforeDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v0, v2

    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v2, v0

    goto :goto_1

    .line 340
    :cond_4
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->properlyContains(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-nez v2, :cond_5

    .line 343
    new-instance v2, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v10, v4, [I

    invoke-direct {v2, v10}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 345
    :cond_5
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->intersection(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(Lorg/antlr/v4/runtime/misc/Interval;)V

    move-object v0, v2

    goto :goto_3

    .line 348
    :cond_6
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->properlyContains(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v2, :cond_7

    .line 351
    new-instance v2, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v10, v4, [I

    invoke-direct {v2, v10}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 353
    :cond_7
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->intersection(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(Lorg/antlr/v4/runtime/misc/Interval;)V

    goto :goto_2

    .line 356
    :cond_8
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->disjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v10

    if-nez v10, :cond_2

    if-nez v2, :cond_9

    .line 359
    new-instance v2, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v10, v4, [I

    invoke-direct {v2, v10}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 361
    :cond_9
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->intersection(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(Lorg/antlr/v4/runtime/misc/Interval;)V

    .line 369
    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->startsAfterNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v0, v2

    goto :goto_3

    .line 372
    :cond_a
    invoke-virtual {v1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->startsAfterNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_b
    if-nez v2, :cond_0

    .line 378
    new-instance v2, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v0, v4, [I

    invoke-direct {v2, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 2

    .line 83
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t alter readonly IntervalSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
    .locals 1

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public complement(II)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 1

    .line 186
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 2

    if-eqz p1, :cond_0

    .line 192
    invoke-interface {p1}, Lorg/antlr/v4/runtime/misc/IntSet;->isNil()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 197
    :cond_1
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-eqz v0, :cond_2

    .line 198
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 205
    :goto_1
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->subtract(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_2
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 202
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-object p1, v0

    goto :goto_1
.end method

.method public contains(I)Z
    .locals 6

    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-gt v3, v2, :cond_2

    .line 392
    add-int v0, v3, v2

    div-int/lit8 v4, v0, 0x2

    .line 393
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 394
    iget v5, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 395
    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ge v0, p1, :cond_0

    add-int/lit8 v0, v4, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    if-le v5, p1, :cond_1

    add-int/lit8 v0, v4, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected elementName(Lorg/antlr/v4/runtime/Vocabulary;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 558
    const-string v0, "<EOF>"

    .line 564
    :goto_0
    return-object v0

    .line 558
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 561
    const-string v0, "<EPSILON>"

    goto :goto_0

    .line 564
    :cond_1
    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected elementName([Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    invoke-static {p1}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->elementName(Lorg/antlr/v4/runtime/Vocabulary;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 465
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-nez v0, :cond_1

    .line 469
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 468
    :cond_1
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 469
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    iget-object v1, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)I
    .locals 6

    const/4 v0, 0x0

    .line 629
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 632
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 633
    iget v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 634
    iget v5, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    move v0, v1

    :goto_1
    if-gt v0, v5, :cond_1

    if-ne v2, p1, :cond_0

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public getIntervals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/antlr/v4/runtime/misc/Interval;",
            ">;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    return-object v0
.end method

.method public getMaxElement()I
    .locals 2

    .line 420
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 424
    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    return v0

    .line 421
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "set is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMinElement()I
    .locals 2

    .line 434
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    return v0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "set is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 448
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 449
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 450
    iget v3, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    invoke-static {v1, v3}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v1

    .line 451
    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public isNil()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadonly()Z
    .locals 1

    .line 685
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    return v0
.end method

.method public bridge synthetic or(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
    .locals 1

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->or(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public or(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 2

    .line 307
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 308
    invoke-virtual {v0, p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 309
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    return-object v0
.end method

.method public remove(I)V
    .locals 5

    .line 651
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    if-nez v0, :cond_6

    .line 652
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 654
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 655
    iget v3, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 656
    iget v4, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ge p1, v3, :cond_1

    .line 679
    :cond_0
    :goto_1
    return-void

    .line 656
    :cond_1
    if-ne p1, v3, :cond_2

    if-ne p1, v4, :cond_2

    .line 662
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    .line 667
    iget v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    .line 672
    iget v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    goto :goto_1

    :cond_4
    if-le p1, v3, :cond_5

    if-ge p1, v4, :cond_5

    .line 677
    iget v3, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 678
    add-int/lit8 v4, p1, -0x1

    iput v4, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 679
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(II)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 651
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t alter readonly IntervalSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReadonly(Z)V
    .locals 2

    .line 689
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 690
    :cond_0
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    return-void

    .line 689
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t alter readonly IntervalSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 5

    const/4 v0, 0x0

    .line 571
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x1

    if-ne v3, v1, :cond_0

    .line 573
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 574
    iget v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 578
    :goto_0
    return v0

    :cond_0
    move v2, v0

    move v1, v0

    .line 574
    :goto_1
    if-ge v2, v3, :cond_1

    .line 577
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 578
    iget v4, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic subtract(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
    .locals 1

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->subtract(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .locals 2

    if-eqz p1, :cond_0

    .line 210
    invoke-interface {p1}, Lorg/antlr/v4/runtime/misc/IntSet;->isNil()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-direct {v0, p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>(Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    .line 220
    :goto_0
    return-object v0

    .line 214
    :cond_1
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-eqz v0, :cond_2

    .line 215
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->subtract(Lorg/antlr/v4/runtime/misc/IntervalSet;Lorg/antlr/v4/runtime/misc/IntervalSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    goto :goto_0

    .line 218
    :cond_2
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 219
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 220
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->subtract(Lorg/antlr/v4/runtime/misc/IntervalSet;Lorg/antlr/v4/runtime/misc/IntervalSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    goto :goto_0
.end method

.method public toArray()[I
    .locals 1

    .line 646
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toIntegerList()Lorg/antlr/v4/runtime/misc/IntegerList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public toIntegerList()Lorg/antlr/v4/runtime/misc/IntegerList;
    .locals 6

    .line 584
    new-instance v3, Lorg/antlr/v4/runtime/misc/IntegerList;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v0

    invoke-direct {v3, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>(I)V

    .line 585
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 587
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 588
    iget v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 589
    iget v5, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    move v0, v1

    :goto_1
    if-gt v0, v5, :cond_0

    .line 591
    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public toList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 599
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 600
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 602
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 603
    iget v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 604
    iget v5, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    move v0, v1

    :goto_1
    if-gt v0, v5, :cond_0

    .line 606
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public toSet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 613
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 614
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 615
    iget v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 616
    iget v4, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    move v0, v1

    :goto_0
    if-gt v0, v4, :cond_0

    .line 618
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    const-string v0, "{}"

    .line 544
    :goto_0
    return-object v0

    .line 520
    :cond_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 521
    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 524
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 525
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 526
    iget v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 527
    iget v4, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 528
    if-ne v1, v4, :cond_5

    .line 529
    invoke-virtual {p0, p1, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->elementName(Lorg/antlr/v4/runtime/Vocabulary;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    move v0, v1

    .line 529
    :goto_2
    if-gt v0, v4, :cond_4

    if-le v0, v1, :cond_6

    .line 533
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_6
    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->elementName(Lorg/antlr/v4/runtime/Vocabulary;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 541
    :cond_7
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v0

    if-le v0, v6, :cond_8

    .line 542
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    :cond_0
    const-string v0, "{}"

    .line 504
    :goto_0
    return-object v0

    .line 480
    :cond_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 481
    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 484
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 485
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 486
    iget v3, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 487
    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 488
    if-ne v3, v0, :cond_6

    const/4 v0, -0x1

    if-ne v3, v0, :cond_4

    .line 489
    const-string v0, "<EOF>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 489
    :cond_4
    if-eqz p1, :cond_5

    .line 490
    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 491
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 494
    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 495
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 501
    :cond_8
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v0

    if-le v0, v5, :cond_9

    .line 502
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public toString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    invoke-static {p1}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
