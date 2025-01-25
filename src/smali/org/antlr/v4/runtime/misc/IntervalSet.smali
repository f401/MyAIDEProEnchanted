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
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/misc/Interval;",
            ">;"
        }
    .end annotation
.end field

.field protected readonly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    const v0, 0x10ffff

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object v0

    sput-object v0, Lorg/antlr/v4/runtime/misc/IntervalSet;->COMPLETE_CHAR_SET:Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 35
    const/4 v2, 0x1

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
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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
    .registers 3

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 54
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    return-void
.end method

.method public varargs constructor <init>([I)V
    .registers 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    goto :goto_22

    .line 62
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    .line 63
    array-length v0, p1

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_22

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_22
    :goto_22
    return-void
.end method

.method public static of(I)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 3

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
    .registers 4

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
    .registers 5

    .line 156
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 157
    array-length v2, p0

    :goto_9
    if-ge v1, v2, :cond_13

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-object v0
.end method

.method public static subtract(Lorg/antlr/v4/runtime/misc/IntervalSet;Lorg/antlr/v4/runtime/misc/IntervalSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_98

    .line 230
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_98

    .line 234
    :cond_b
    new-instance v1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-direct {v1, p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>(Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    if-eqz p1, :cond_97

    .line 235
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto/16 :goto_97

    :cond_1a
    const/4 p0, 0x0

    .line 242
    :goto_1b
    iget-object v2, v1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_97

    iget-object v2, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_97

    .line 243
    iget-object v2, v1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/misc/Interval;

    .line 244
    iget-object v3, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/misc/Interval;

    .line 248
    iget v4, v3, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v5, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ge v4, v5, :cond_42

    goto :goto_8e

    .line 253
    :cond_42
    iget v4, v3, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v5, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-le v4, v5, :cond_49

    goto :goto_84

    .line 260
    :cond_49
    iget v4, v3, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v5, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    const/4 v6, 0x0

    if-le v4, v5, :cond_5c

    .line 261
    new-instance v4, Lorg/antlr/v4/runtime/misc/Interval;

    iget v5, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v7, v3, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v4, v5, v7}, Lorg/antlr/v4/runtime/misc/Interval;-><init>(II)V

    goto :goto_5d

    :cond_5c
    move-object v4, v6

    .line 264
    :goto_5d
    iget v5, v3, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v7, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ge v5, v7, :cond_6e

    .line 265
    new-instance v6, Lorg/antlr/v4/runtime/misc/Interval;

    iget v3, v3, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    add-int/lit8 v3, v3, 0x1

    iget v2, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-direct {v6, v3, v2}, Lorg/antlr/v4/runtime/misc/Interval;-><init>(II)V

    :cond_6e
    if-eqz v4, :cond_87

    if-eqz v6, :cond_7f

    .line 271
    iget-object v2, v1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v2, v1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_8e

    .line 279
    :cond_7f
    iget-object v2, v1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v2, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 279
    :cond_87
    if-eqz v6, :cond_91

    .line 287
    iget-object v2, v1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v2, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 248
    :goto_8e
    add-int/lit8 p0, p0, 0x1

    goto :goto_1b

    .line 293
    :cond_91
    iget-object v2, v1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1b

    :cond_97
    :goto_97
    return-object v1

    .line 231
    :cond_98
    :goto_98
    new-instance p0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array p1, v0, [I

    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    return-object p0
.end method


# virtual methods
.method public add(I)V
    .registers 3

    .line 92
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    if-nez v0, :cond_8

    .line 93
    invoke-virtual {p0, p1, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(II)V

    return-void

    .line 92
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t alter readonly IntervalSet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(II)V
    .registers 3

    .line 104
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(Lorg/antlr/v4/runtime/misc/Interval;)V

    return-void
.end method

.method protected add(Lorg/antlr/v4/runtime/misc/Interval;)V
    .registers 5

    .line 109
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    if-nez v0, :cond_76

    .line 111
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ge v0, v1, :cond_b

    return-void

    .line 116
    :cond_b
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 117
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/misc/Interval;

    .line 118
    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/misc/Interval;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    return-void

    .line 121
    :cond_24
    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/misc/Interval;->adjacent(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/misc/Interval;->disjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_3e

    .line 141
    :cond_31
    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/misc/Interval;->startsBeforeDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 143
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 144
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    .line 123
    :cond_3e
    :goto_3e
    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/misc/Interval;->union(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p1

    .line 124
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 127
    :goto_45
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 128
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/misc/Interval;

    .line 129
    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/misc/Interval;->adjacent(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/misc/Interval;->disjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v2

    if-eqz v2, :cond_5e

    goto :goto_6f

    .line 134
    :cond_5e
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 135
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 136
    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/misc/Interval;->union(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 137
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_45

    :cond_6f
    :goto_6f
    return-void

    .line 151
    :cond_70
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 109
    :cond_76
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t alter readonly IntervalSet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7f

    :goto_7e
    throw p1

    :goto_7f
    goto :goto_7e
.end method

.method public bridge synthetic addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 6

    if-nez p1, :cond_3

    return-object p0

    .line 167
    :cond_3
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-eqz v0, :cond_24

    .line 168
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 170
    iget-object v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_40

    .line 172
    iget-object v2, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/misc/Interval;

    .line 173
    iget v3, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v2, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-virtual {p0, v3, v2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 177
    :cond_24
    invoke-interface {p1}, Lorg/antlr/v4/runtime/misc/IntSet;->toList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(I)V

    goto :goto_2c

    :cond_40
    return-object p0
.end method

.method public bridge synthetic and(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->and(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1
.end method

.method public and(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 320
    :cond_4
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    .line 321
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    iget-object p1, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    .line 323
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_15
    :goto_15
    if-ge v5, v2, :cond_89

    if-ge v6, v3, :cond_89

    .line 329
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/antlr/v4/runtime/misc/Interval;

    .line 330
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/antlr/v4/runtime/misc/Interval;

    .line 332
    invoke-virtual {v7, v8}, Lorg/antlr/v4/runtime/misc/Interval;->startsBeforeDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v9

    if-eqz v9, :cond_2c

    goto :goto_86

    .line 336
    :cond_2c
    invoke-virtual {v8, v7}, Lorg/antlr/v4/runtime/misc/Interval;->startsBeforeDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v9

    if-eqz v9, :cond_33

    goto :goto_7d

    .line 340
    :cond_33
    invoke-virtual {v7, v8}, Lorg/antlr/v4/runtime/misc/Interval;->properlyContains(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v9

    if-eqz v9, :cond_4a

    if-nez v0, :cond_42

    .line 343
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v9, v4, [I

    invoke-direct {v0, v9}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 345
    :cond_42
    invoke-virtual {v7, v8}, Lorg/antlr/v4/runtime/misc/Interval;->intersection(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(Lorg/antlr/v4/runtime/misc/Interval;)V

    goto :goto_7d

    .line 348
    :cond_4a
    invoke-virtual {v8, v7}, Lorg/antlr/v4/runtime/misc/Interval;->properlyContains(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v9

    if-eqz v9, :cond_61

    if-nez v0, :cond_59

    .line 351
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v9, v4, [I

    invoke-direct {v0, v9}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 353
    :cond_59
    invoke-virtual {v7, v8}, Lorg/antlr/v4/runtime/misc/Interval;->intersection(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(Lorg/antlr/v4/runtime/misc/Interval;)V

    goto :goto_86

    .line 356
    :cond_61
    invoke-virtual {v7, v8}, Lorg/antlr/v4/runtime/misc/Interval;->disjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v9

    if-nez v9, :cond_15

    if-nez v0, :cond_70

    .line 359
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v9, v4, [I

    invoke-direct {v0, v9}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 361
    :cond_70
    invoke-virtual {v7, v8}, Lorg/antlr/v4/runtime/misc/Interval;->intersection(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(Lorg/antlr/v4/runtime/misc/Interval;)V

    .line 369
    invoke-virtual {v7, v8}, Lorg/antlr/v4/runtime/misc/Interval;->startsAfterNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 336
    :goto_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 372
    :cond_80
    invoke-virtual {v8, v7}, Lorg/antlr/v4/runtime/misc/Interval;->startsAfterNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 332
    :goto_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 372
    :cond_89
    if-nez v0, :cond_93

    .line 378
    new-instance p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    new-array v0, v4, [I

    invoke-direct {p1, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    return-object p1

    :cond_93
    return-object v0
.end method

.method public clear()V
    .registers 3

    .line 83
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    if-nez v0, :cond_a

    .line 84
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 83
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t alter readonly IntervalSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1
.end method

.method public complement(II)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 3

    .line 186
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->of(II)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1
.end method

.method public complement(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 4

    if-eqz p1, :cond_21

    .line 192
    invoke-interface {p1}, Lorg/antlr/v4/runtime/misc/IntSet;->isNil()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_21

    .line 197
    :cond_9
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-eqz v0, :cond_10

    .line 198
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    goto :goto_1c

    .line 201
    :cond_10
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 202
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-object p1, v0

    .line 205
    :goto_1c
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->subtract(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1

    :cond_21
    :goto_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public contains(I)Z
    .registers 9

    .line 386
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-gt v3, v0, :cond_27

    .line 392
    add-int v4, v3, v0

    div-int/lit8 v4, v4, 0x2

    .line 393
    iget-object v5, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/misc/Interval;

    .line 394
    iget v6, v5, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 395
    iget v5, v5, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ge v5, p1, :cond_21

    add-int/lit8 v3, v4, 0x1

    goto :goto_a

    :cond_21
    if-le v6, p1, :cond_26

    add-int/lit8 v0, v4, -0x1

    goto :goto_a

    :cond_26
    return v1

    :cond_27
    return v2
.end method

.method protected elementName(Lorg/antlr/v4/runtime/Vocabulary;I)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 558
    const-string p1, "<EOF>"

    return-object p1

    :cond_6
    const/4 v0, -0x2

    if-ne p2, v0, :cond_c

    .line 561
    const-string p1, "<EPSILON>"

    return-object p1

    .line 564
    :cond_c
    invoke-interface {p1, p2}, Lorg/antlr/v4/runtime/Vocabulary;->getDisplayName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected elementName([Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    invoke-static {p1}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/misc/IntervalSet;->elementName(Lorg/antlr/v4/runtime/Vocabulary;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_12

    .line 465
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-nez v0, :cond_7

    goto :goto_12

    .line 468
    :cond_7
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 469
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    iget-object p1, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)I
    .registers 7

    .line 629
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v1, v0, :cond_23

    .line 632
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/misc/Interval;

    .line 633
    iget v4, v3, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 634
    iget v3, v3, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    :goto_16
    if-gt v4, v3, :cond_20

    if-ne v2, p1, :cond_1b

    return v4

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    const/4 p1, -0x1

    return p1
.end method

.method public getIntervals()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/misc/Interval;",
            ">;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    return-object v0
.end method

.method public getMaxElement()I
    .registers 3

    .line 420
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v0

    if-nez v0, :cond_17

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
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "set is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMinElement()I
    .registers 3

    .line 434
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->isNil()Z

    move-result v0

    if-nez v0, :cond_12

    .line 438
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    return v0

    .line 435
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "set is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 5

    .line 448
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 449
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/misc/Interval;

    .line 450
    iget v3, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    invoke-static {v0, v3}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    .line 451
    iget v2, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-static {v0, v2}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    goto :goto_a

    .line 454
    :cond_23
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public isNil()Z
    .registers 2

    .line 410
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isReadonly()Z
    .registers 2

    .line 685
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    return v0
.end method

.method public bridge synthetic or(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->or(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1
.end method

.method public or(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 4

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
    .registers 7

    .line 651
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    if-nez v0, :cond_4b

    .line 652
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_4a

    .line 654
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/misc/Interval;

    .line 655
    iget v3, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 656
    iget v4, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ge p1, v3, :cond_1c

    goto :goto_4a

    :cond_1c
    if-ne p1, v3, :cond_26

    if-ne p1, v4, :cond_26

    .line 662
    iget-object p1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4a

    :cond_26
    if-ne p1, v3, :cond_2f

    .line 667
    iget p1, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    goto :goto_4a

    :cond_2f
    if-ne p1, v4, :cond_38

    .line 672
    iget p1, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    goto :goto_4a

    :cond_38
    if-le p1, v3, :cond_47

    if-ge p1, v4, :cond_47

    .line 677
    iget v3, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 678
    add-int/lit8 v4, p1, -0x1

    iput v4, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 679
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/antlr/v4/runtime/misc/IntervalSet;->add(II)V

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_4a
    :goto_4a
    return-void

    .line 651
    :cond_4b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t alter readonly IntervalSet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_54

    :goto_53
    throw p1

    :goto_54
    goto :goto_53
.end method

.method public setReadonly(Z)V
    .registers 3

    .line 689
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_7

    goto :goto_f

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t alter readonly IntervalSet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 690
    :cond_f
    :goto_f
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->readonly:Z

    return-void
.end method

.method public size()I
    .registers 7

    .line 571
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 573
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/Interval;

    .line 574
    iget v1, v0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v0, v0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    return v1

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-ge v1, v0, :cond_2e

    .line 577
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antlr/v4/runtime/misc/Interval;

    .line 578
    iget v5, v4, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v4, v4, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    sub-int/2addr v5, v4

    add-int/2addr v5, v2

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2e
    return v3
.end method

.method public bridge synthetic subtract(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntSet;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->subtract(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;
    .registers 4

    if-eqz p1, :cond_24

    .line 210
    invoke-interface {p1}, Lorg/antlr/v4/runtime/misc/IntSet;->isNil()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_24

    .line 214
    :cond_9
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    if-eqz v0, :cond_14

    .line 215
    check-cast p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-static {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->subtract(Lorg/antlr/v4/runtime/misc/IntervalSet;Lorg/antlr/v4/runtime/misc/IntervalSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1

    .line 218
    :cond_14
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntervalSet;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>([I)V

    .line 219
    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->addAll(Lorg/antlr/v4/runtime/misc/IntSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    .line 220
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->subtract(Lorg/antlr/v4/runtime/misc/IntervalSet;Lorg/antlr/v4/runtime/misc/IntervalSet;)Lorg/antlr/v4/runtime/misc/IntervalSet;

    move-result-object p1

    return-object p1

    .line 211
    :cond_24
    :goto_24
    new-instance p1, Lorg/antlr/v4/runtime/misc/IntervalSet;

    invoke-direct {p1, p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;-><init>(Lorg/antlr/v4/runtime/misc/IntervalSet;)V

    return-object p1
.end method

.method public toArray()[I
    .registers 2

    .line 646
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toIntegerList()Lorg/antlr/v4/runtime/misc/IntegerList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/IntegerList;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public toIntegerList()Lorg/antlr/v4/runtime/misc/IntegerList;
    .registers 6

    .line 584
    new-instance v0, Lorg/antlr/v4/runtime/misc/IntegerList;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>(I)V

    .line 585
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_29

    .line 587
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/misc/Interval;

    .line 588
    iget v4, v3, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 589
    iget v3, v3, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    :goto_1e
    if-gt v4, v3, :cond_26

    .line 591
    invoke-virtual {v0, v4}, Lorg/antlr/v4/runtime/misc/IntegerList;->add(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_29
    return-object v0
.end method

.method public toList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_29

    .line 602
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/misc/Interval;

    .line 603
    iget v4, v3, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 604
    iget v3, v3, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    :goto_1a
    if-gt v4, v3, :cond_26

    .line 606
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_29
    return-object v0
.end method

.method public toSet()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 613
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 614
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/misc/Interval;

    .line 615
    iget v3, v2, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 616
    iget v2, v2, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    :goto_1b
    if-gt v3, v2, :cond_b

    .line 618
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_27
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;
    .registers 10

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    if-eqz v1, :cond_6a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_6a

    .line 520
    :cond_10
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1c

    .line 521
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_1c
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 524
    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 525
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/misc/Interval;

    .line 526
    iget v4, v3, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 527
    iget v3, v3, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 528
    const-string v5, ", "

    if-ne v4, v3, :cond_3e

    .line 529
    invoke-virtual {p0, p1, v4}, Lorg/antlr/v4/runtime/misc/IntervalSet;->elementName(Lorg/antlr/v4/runtime/Vocabulary;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_3e
    move v6, v4

    :goto_3f
    if-gt v6, v3, :cond_50

    if-le v6, v4, :cond_46

    .line 533
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_46
    invoke-virtual {p0, p1, v6}, Lorg/antlr/v4/runtime/misc/IntervalSet;->elementName(Lorg/antlr/v4/runtime/Vocabulary;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 537
    :cond_50
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 538
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 541
    :cond_5a
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result p1

    if-le p1, v2, :cond_65

    .line 542
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 518
    :cond_6a
    :goto_6a
    const-string p1, "{}"

    return-object p1
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 9

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    if-eqz v1, :cond_8e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_8e

    .line 480
    :cond_11
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1d

    .line 481
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_1d
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/IntervalSet;->intervals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 484
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/misc/Interval;

    .line 486
    iget v4, v3, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 487
    iget v3, v3, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 488
    const-string v5, "\'"

    if-ne v4, v3, :cond_51

    const/4 v3, -0x1

    if-ne v4, v3, :cond_40

    .line 489
    const-string v3, "<EOF>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_40
    if-eqz p1, :cond_4d

    .line 490
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 491
    :cond_4d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_51
    if-eqz p1, :cond_67

    .line 494
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'..\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 495
    :cond_67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 498
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 501
    :cond_7e
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntervalSet;->size()I

    move-result p1

    if-le p1, v2, :cond_89

    .line 502
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 478
    :cond_8e
    :goto_8e
    const-string p1, "{}"

    return-object p1
.end method

.method public toString([Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    invoke-static {p1}, Lorg/antlr/v4/runtime/VocabularyImpl;->fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntervalSet;->toString(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
