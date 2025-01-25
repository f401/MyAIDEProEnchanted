.class public final Lcom/a/b/c/c/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/c/b/j;

.field private b:Lcom/a/b/c/b/f;

.field private c:[B

.field private d:I

.field private e:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lcom/a/b/c/b/j;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/c/c/j;->a:Lcom/a/b/c/b/j;

    iput-object v1, p0, Lcom/a/b/c/c/j;->b:Lcom/a/b/c/b/f;

    iput-object v1, p0, Lcom/a/b/c/c/j;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/c/c/j;->d:I

    iput-object v1, p0, Lcom/a/b/c/c/j;->e:Ljava/util/TreeMap;

    return-void
.end method

.method private static a(Lcom/a/b/c/b/d;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/a/b/c/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_20

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    invoke-interface {p5, p2, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;)V
    .registers 15

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/b/c/c/j;->c()V

    if-eqz p3, :cond_46

    const/4 v0, 0x1

    move v5, v0

    :goto_8
    if-eqz v5, :cond_48

    const/4 v0, 0x6

    move v4, v0

    :goto_c
    if-eqz v5, :cond_4a

    const/4 v0, 0x2

    :goto_f
    iget-object v2, p0, Lcom/a/b/c/c/j;->b:Lcom/a/b/c/b/f;

    invoke-virtual {v2}, Lcom/a/b/c/b/f;->d_()I

    move-result v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "tries:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :goto_40
    move v2, v1

    :goto_41
    if-lt v2, v6, :cond_63

    if-nez v5, :cond_b6

    :goto_45
    return-void

    :cond_46
    move v5, v1

    goto :goto_8

    :cond_48
    move v4, v1

    goto :goto_c

    :cond_4a
    move v0, v1

    goto :goto_f

    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "tries:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_40

    :cond_63
    iget-object v7, p0, Lcom/a/b/c/c/j;->b:Lcom/a/b/c/b/f;

    invoke-virtual {v7, v2}, Lcom/a/b/c/b/f;->a(I)Lcom/a/b/c/b/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/b/c/b/g;->c()Lcom/a/b/c/b/d;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "try "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/a/b/c/b/g;->a()I

    move-result v10

    invoke-static {v10}, Lcom/a/b/g/k;->d(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/a/b/c/b/g;->b()I

    move-result v7

    invoke-static {v7}, Lcom/a/b/g/k;->d(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v8, v3, v9}, Lcom/a/b/c/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_af

    invoke-interface {p3, v4, v7}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    invoke-interface {p3, v0, v8}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :goto_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_af
    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ac

    :cond_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "handlers:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    iget v0, p0, Lcom/a/b/c/c/j;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/a/b/c/c/j;->e:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/a/b/c/c/j;->e:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_fd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10e

    iget-object v2, p0, Lcom/a/b/c/c/j;->c:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/a/b/c/c/j;->a(Lcom/a/b/c/b/d;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;)V

    goto/16 :goto_45

    :cond_10e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/a/b/c/b/d;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v0, :cond_12e

    sub-int v2, v7, v1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/a/b/c/c/j;->a(Lcom/a/b/c/b/d;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;)V

    :cond_12e
    move v1, v7

    move-object v0, v6

    goto :goto_fd
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/j;->b:Lcom/a/b/c/b/f;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/a/b/c/c/j;->a:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->g()Lcom/a/b/c/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/j;->b:Lcom/a/b/c/b/f;

    :cond_c
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-direct {p0}, Lcom/a/b/c/c/j;->c()V

    iget-object v0, p0, Lcom/a/b/c/c/j;->b:Lcom/a/b/c/b/f;

    invoke-virtual {v0}, Lcom/a/b/c/b/f;->d_()I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 12

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/a/b/c/c/j;->c()V

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v4

    iget-object v0, p0, Lcom/a/b/c/c/j;->b:Lcom/a/b/c/b/f;

    invoke-virtual {v0}, Lcom/a/b/c/b/f;->d_()I

    move-result v1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/c/c/j;->e:Ljava/util/TreeMap;

    move v0, v3

    :goto_16
    if-lt v0, v1, :cond_2b

    iget-object v0, p0, Lcom/a/b/c/c/j;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_3e

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "too many catch handlers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v2, p0, Lcom/a/b/c/c/j;->e:Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/a/b/c/c/j;->b:Lcom/a/b/c/b/f;

    invoke-virtual {v5, v0}, Lcom/a/b/c/b/f;->a(I)Lcom/a/b/c/b/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/c/b/g;->c()Lcom/a/b/c/b/d;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_3e
    new-instance v5, Lcom/a/b/g/h;

    invoke-direct {v5}, Lcom/a/b/g/h;-><init>()V

    iget-object v0, p0, Lcom/a/b/c/c/j;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/a/b/g/h;->e(I)I

    move-result v0

    iput v0, p0, Lcom/a/b/c/c/j;->d:I

    iget-object v0, p0, Lcom/a/b/c/c/j;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_59
    :goto_59
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_66

    invoke-virtual {v5}, Lcom/a/b/g/h;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/j;->c:[B

    return-void

    :cond_66
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/c/b/d;

    invoke-virtual {v1}, Lcom/a/b/c/b/d;->d_()I

    move-result v2

    invoke-virtual {v1}, Lcom/a/b/c/b/d;->e()Z

    move-result v7

    invoke-virtual {v5}, Lcom/a/b/g/h;->g()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_a0

    add-int/lit8 v0, v2, -0x1

    neg-int v0, v0

    invoke-virtual {v5, v0}, Lcom/a/b/g/h;->f(I)I

    add-int/lit8 v0, v2, -0x1

    :goto_8f
    move v2, v3

    :goto_90
    if-lt v2, v0, :cond_a5

    if-eqz v7, :cond_59

    invoke-virtual {v1, v0}, Lcom/a/b/c/b/d;->a(I)Lcom/a/b/c/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/e;->b()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/a/b/g/h;->e(I)I

    goto :goto_59

    :cond_a0
    invoke-virtual {v5, v2}, Lcom/a/b/g/h;->f(I)I

    move v0, v2

    goto :goto_8f

    :cond_a5
    invoke-virtual {v1, v2}, Lcom/a/b/c/b/d;->a(I)Lcom/a/b/c/b/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/b/c/b/e;->a()Lcom/a/b/e/c/ae;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/c/ae;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/a/b/g/h;->e(I)I

    invoke-virtual {v8}, Lcom/a/b/c/b/e;->b()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/a/b/g/h;->e(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_90
.end method

.method public a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 10

    invoke-direct {p0}, Lcom/a/b/c/c/j;->c()V

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "  "

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/a/b/c/c/j;->a(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;)V

    :cond_f
    iget-object v0, p0, Lcom/a/b/c/c/j;->b:Lcom/a/b/c/b/f;

    invoke-virtual {v0}, Lcom/a/b/c/b/f;->d_()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_17
    if-lt v1, v2, :cond_1f

    iget-object v0, p0, Lcom/a/b/c/c/j;->c:[B

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->a([B)V

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/a/b/c/c/j;->b:Lcom/a/b/c/b/f;

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/f;->a(I)Lcom/a/b/c/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/g;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/a/b/c/b/g;->b()I

    move-result v4

    sub-int v5, v4, v3

    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_5a

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus exception range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    invoke-interface {p2, v3}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v5}, Lcom/a/b/g/a;->c(I)V

    iget-object v3, p0, Lcom/a/b/c/c/j;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/a/b/c/b/g;->c()Lcom/a/b/c/b/d;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->c(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17
.end method

.method public b()I
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/c/c/j;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/a/b/c/c/j;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
