.class public Lorg/a/a/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/a/a/a/b/a;

.field private final b:Lorg/a/a/a/ad;


# direct methods
.method public constructor <init>(Lorg/a/a/a/b/a;Lorg/a/a/a/ad;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/a/b/c;->a:Lorg/a/a/a/b/a;

    iput-object p2, p0, Lorg/a/a/a/b/c;->b:Lorg/a/a/a/ad;

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/b/c;->b:Lorg/a/a/a/ad;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lorg/a/a/a/ad;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/a/a/a/b/d;)Ljava/lang/String;
    .registers 5

    iget v1, p1, Lorg/a/a/a/b/d;->a:I

    iget-boolean v0, p1, Lorg/a/a/a/b/d;->d:Z

    if-eqz v0, :cond_1

    const-string v0, ":"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p1, Lorg/a/a/a/b/d;->g:Z

    if-eqz v0, :cond_2

    const-string v0, "^"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p1, Lorg/a/a/a/b/d;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/a/a/a/b/d;->h:[Lorg/a/a/a/b/e;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "=>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/a/a/a/b/d;->h:[Lorg/a/a/a/b/e;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "=>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lorg/a/a/a/b/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/a/a/a/b/c;->a:Lorg/a/a/a/b/a;

    iget-object v0, v0, Lorg/a/a/a/b/a;->b:Lorg/a/a/a/b/d;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/a/a/a/b/c;->a:Lorg/a/a/a/b/a;

    invoke-virtual {v0}, Lorg/a/a/a/b/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/b/d;

    iget-object v2, v0, Lorg/a/a/a/b/d;->c:[Lorg/a/a/a/b/d;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/a/a/a/b/d;->c:[Lorg/a/a/a/b/d;

    array-length v2, v2

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    iget-object v7, v0, Lorg/a/a/a/b/d;->c:[Lorg/a/a/a/b/d;

    aget-object v7, v7, v4

    if-eqz v7, :cond_4

    iget v8, v7, Lorg/a/a/a/b/d;->a:I

    const v9, 0x7fffffff

    if-eq v8, v9, :cond_4

    invoke-virtual {p0, v0}, Lorg/a/a/a/b/c;->a(Lorg/a/a/a/b/d;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lorg/a/a/a/b/c;->a(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v7}, Lorg/a/a/a/b/c;->a(Lorg/a/a/a/b/d;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_1
.end method
