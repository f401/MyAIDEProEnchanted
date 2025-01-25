.class public Lorg/a/a/a/c/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lorg/a/a/a/c/j;

.field public static final b:Lorg/a/a/a/c/j;


# instance fields
.field protected c:Ljava/util/List;

.field protected d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x10ffff

    invoke-static {v1, v0}, Lorg/a/a/a/c/j;->a(II)Lorg/a/a/a/c/j;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/c/j;->a:Lorg/a/a/a/c/j;

    sget-object v0, Lorg/a/a/a/c/j;->a:Lorg/a/a/a/c/j;

    invoke-virtual {v0, v2}, Lorg/a/a/a/c/j;->b(Z)V

    new-instance v0, Lorg/a/a/a/c/j;

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/a/a/a/c/j;-><init>([I)V

    sput-object v0, Lorg/a/a/a/c/j;->b:Lorg/a/a/a/c/j;

    sget-object v0, Lorg/a/a/a/c/j;->b:Lorg/a/a/a/c/j;

    invoke-virtual {v0, v2}, Lorg/a/a/a/c/j;->b(Z)V

    return-void
.end method

.method public varargs constructor <init>([I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    :cond_d
    return-void

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v1, :cond_d

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/a/a/a/c/j;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public static a(I)Lorg/a/a/a/c/j;
    .registers 3

    new-instance v0, Lorg/a/a/a/c/j;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/a/a/a/c/j;-><init>([I)V

    invoke-virtual {v0, p0}, Lorg/a/a/a/c/j;->b(I)V

    return-object v0
.end method

.method public static a(II)Lorg/a/a/a/c/j;
    .registers 4

    new-instance v0, Lorg/a/a/a/c/j;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/a/a/a/c/j;-><init>([I)V

    invoke-virtual {v0, p0, p1}, Lorg/a/a/a/c/j;->b(II)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x1

    if-ne v3, v1, :cond_1b

    iget-object v1, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/c/h;

    iget v1, v0, Lorg/a/a/a/c/h;->e:I

    iget v0, v0, Lorg/a/a/a/c/h;->d:I

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    move v2, v0

    move v1, v0

    :goto_1d
    if-lt v2, v3, :cond_21

    move v0, v1

    goto :goto_1a

    :cond_21
    iget-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/c/h;

    iget v4, v0, Lorg/a/a/a/c/h;->e:I

    iget v0, v0, Lorg/a/a/a/c/h;->d:I

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d
.end method

.method public a(Z)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_12
    const-string v0, "{}"

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0}, Lorg/a/a/a/c/j;->a()I

    move-result v0

    if-le v0, v5, :cond_20

    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Lorg/a/a/a/c/j;->a()I

    move-result v0

    if-le v0, v5, :cond_37

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/c/h;

    iget v3, v0, Lorg/a/a/a/c/h;->d:I

    iget v0, v0, Lorg/a/a/a/c/h;->e:I

    if-ne v3, v0, :cond_72

    const/4 v0, -0x1

    if-ne v3, v0, :cond_5c

    const-string v0, "<EOF>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_5c
    if-eqz p1, :cond_6e

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_6e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_72
    if-eqz p1, :cond_8e

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_8e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_50
.end method

.method protected a(Lorg/a/a/a/c/h;)V
    .registers 6

    iget-boolean v0, p0, Lorg/a/a/a/c/j;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t alter readonly IntervalSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p1, Lorg/a/a/a/c/h;->e:I

    iget v1, p1, Lorg/a/a/a/c/h;->d:I

    if-ge v0, v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_25
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/c/h;

    invoke-virtual {p1, v0}, Lorg/a/a/a/c/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1, v0}, Lorg/a/a/a/c/h;->d(Lorg/a/a/a/c/h;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {p1, v0}, Lorg/a/a/a/c/h;->c(Lorg/a/a/a/c/h;)Z

    move-result v2

    if-nez v2, :cond_6d

    :cond_3d
    invoke-virtual {p1, v0}, Lorg/a/a/a/c/h;->e(Lorg/a/a/a/c/h;)Lorg/a/a/a/c/h;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    :goto_44
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/c/h;

    invoke-virtual {v2, v0}, Lorg/a/a/a/c/h;->d(Lorg/a/a/a/c/h;)Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v2, v0}, Lorg/a/a/a/c/h;->c(Lorg/a/a/a/c/h;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_5c
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lorg/a/a/a/c/h;->e(Lorg/a/a/a/c/h;)Lorg/a/a/a/c/h;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_44

    :cond_6d
    invoke-virtual {p1, v0}, Lorg/a/a/a/c/h;->a(Lorg/a/a/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public b(I)V
    .registers 4

    iget-boolean v0, p0, Lorg/a/a/a/c/j;->d:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t alter readonly IntervalSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0, p1, p1}, Lorg/a/a/a/c/j;->b(II)V

    return-void
.end method

.method public b(II)V
    .registers 4

    invoke-static {p1, p2}, Lorg/a/a/a/c/h;->a(II)Lorg/a/a/a/c/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/a/a/a/c/j;->a(Lorg/a/a/a/c/h;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-boolean v0, p0, Lorg/a/a/a/c/j;->d:Z

    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t alter readonly IntervalSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-boolean p1, p0, Lorg/a/a/a/c/j;->d:Z

    return-void
.end method

.method public c(I)Z
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_b
    if-le v3, v2, :cond_f

    move v0, v1

    :goto_e
    return v0

    :cond_f
    add-int v0, v3, v2

    div-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/c/h;

    iget v5, v0, Lorg/a/a/a/c/h;->d:I

    iget v0, v0, Lorg/a/a/a/c/h;->e:I

    if-ge v0, p1, :cond_25

    add-int/lit8 v0, v4, 0x1

    move v3, v0

    goto :goto_b

    :cond_25
    if-le v5, p1, :cond_2b

    add-int/lit8 v0, v4, -0x1

    move v2, v0

    goto :goto_b

    :cond_2b
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_6

    instance-of v0, p1, Lorg/a/a/a/c/j;

    if-nez v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    check-cast p1, Lorg/a/a/a/c/j;

    iget-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    iget-object v1, p1, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 5

    invoke-static {}, Lorg/a/a/a/c/k;->a()I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/a/a/a/c/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/c/h;

    iget v3, v0, Lorg/a/a/a/c/h;->d:I

    invoke-static {v1, v3}, Lorg/a/a/a/c/k;->a(II)I

    move-result v1

    iget v0, v0, Lorg/a/a/a/c/h;->e:I

    invoke-static {v1, v0}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    move v1, v0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/a/a/a/c/j;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
