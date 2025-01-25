.class public abstract Lcom/a4455jkjh/c/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/StringBuffer;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/io/File;

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/a4455jkjh/c/b;->a:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a4455jkjh/c/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/a4455jkjh/c/b;->f:I

    return-void
.end method

.method private k()V
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v2

    move v3, v2

    :goto_13
    if-lt v4, v6, :cond_1c

    iput v0, p0, Lcom/a4455jkjh/c/b;->h:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/a4455jkjh/c/b;->i:I

    return-void

    :cond_1c
    invoke-virtual {v5, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    sparse-switch v7, :sswitch_data_3e

    add-int/2addr v1, v8

    move v3, v2

    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :sswitch_2c
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v3, v2

    goto :goto_29

    :sswitch_31
    const/4 v3, 0x1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_29

    :sswitch_36
    if-eqz v3, :cond_3a

    move v3, v2

    goto :goto_29

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_29

    :sswitch_data_3e
    .sparse-switch
        0xa -> :sswitch_36
        0xb -> :sswitch_2c
        0xc -> :sswitch_2c
        0xd -> :sswitch_31
        0x85 -> :sswitch_2c
        0x2028 -> :sswitch_2c
        0x2029 -> :sswitch_2c
    .end sparse-switch
.end method


# virtual methods
.method public a()Lcom/a4455jkjh/c/c;
    .registers 8

    const/4 v6, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->h()Lcom/a4455jkjh/c/c;

    move-result-object v2

    if-nez v2, :cond_10

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/a4455jkjh/c/b;->a(I)Lcom/a4455jkjh/c/c;

    move-result-object v1

    :goto_c
    invoke-direct {p0}, Lcom/a4455jkjh/c/b;->k()V

    :goto_f
    return-object v1

    :cond_10
    instance-of v1, v2, Lcom/a4455jkjh/c/a;

    if-eqz v1, :cond_54

    move-object v0, v2

    check-cast v0, Lcom/a4455jkjh/c/a;

    move-object v1, v0

    iget-boolean v3, p0, Lcom/a4455jkjh/c/b;->j:Z

    if-nez v3, :cond_4e

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/a4455jkjh/c/b;->a(Lcom/a4455jkjh/c/a;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " Error for input \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/a4455jkjh/c/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/a4455jkjh/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4e
    iget v1, p0, Lcom/a4455jkjh/c/b;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a4455jkjh/c/b;->f:I
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_54} :catch_56

    :cond_54
    move-object v1, v2

    goto :goto_c

    :catch_56
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shouldn\'t happen: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/a4455jkjh/c/b;->a(I)Lcom/a4455jkjh/c/c;

    move-result-object v1

    goto :goto_f
.end method

.method protected a(I)Lcom/a4455jkjh/c/c;
    .registers 3

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/a4455jkjh/c/b;->a(ILjava/lang/String;)Lcom/a4455jkjh/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILjava/lang/String;)Lcom/a4455jkjh/c/c;
    .registers 6

    new-instance v0, Lcom/a4455jkjh/c/c;

    invoke-direct {v0, p1, p2}, Lcom/a4455jkjh/c/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/c;->d(I)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->j()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/c;->c(I)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/c;->a(I)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/c;->b(I)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/a4455jkjh/c/c;
    .registers 3

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/a4455jkjh/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a4455jkjh/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/a4455jkjh/c/c;
    .registers 6

    new-instance v0, Lcom/a4455jkjh/c/a;

    invoke-direct {v0, p1, p2}, Lcom/a4455jkjh/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/a;->d(I)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->j()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/a;->c(I)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/a;->a(I)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/a;->b(I)V

    return-object v0
.end method

.method public a(Lcom/a4455jkjh/c/a;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a4455jkjh/c/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a4455jkjh/c/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a4455jkjh/c/b;->i:I

    return v0
.end method

.method protected b(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/a4455jkjh/c/b;->d(I)V

    iget-object v0, p0, Lcom/a4455jkjh/c/b;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->d()I

    move-result v0

    iput v0, p0, Lcom/a4455jkjh/c/b;->c:I

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->e()I

    move-result v0

    iput v0, p0, Lcom/a4455jkjh/c/b;->d:I

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->g()I

    move-result v0

    iput v0, p0, Lcom/a4455jkjh/c/b;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a4455jkjh/c/b;->b:Ljava/lang/String;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/a4455jkjh/c/b;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/a4455jkjh/c/b;->b:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/a4455jkjh/c/b;->h:I

    return v0
.end method

.method protected c(I)Lcom/a4455jkjh/c/c;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a4455jkjh/c/b;->d(I)V

    iget-object v0, p0, Lcom/a4455jkjh/c/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/a4455jkjh/c/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/a4455jkjh/c/b;->c(Ljava/lang/String;)Lcom/a4455jkjh/c/c;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lcom/a4455jkjh/c/c;

    iget-object v1, p0, Lcom/a4455jkjh/c/b;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/a4455jkjh/c/c;-><init>(ILjava/lang/String;)V

    iget v1, p0, Lcom/a4455jkjh/c/b;->e:I

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/c;->d(I)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->j()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/c;->c(I)V

    iget v1, p0, Lcom/a4455jkjh/c/b;->c:I

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/c;->a(I)V

    iget v1, p0, Lcom/a4455jkjh/c/b;->d:I

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/c;->b(I)V

    goto :goto_e
.end method

.method protected c(Ljava/lang/String;)Lcom/a4455jkjh/c/c;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a4455jkjh/c/b;->d(I)V

    new-instance v0, Lcom/a4455jkjh/c/a;

    iget-object v1, p0, Lcom/a4455jkjh/c/b;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/a4455jkjh/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/a4455jkjh/c/b;->e:I

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/a;->d(I)V

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->g()I

    move-result v1

    invoke-virtual {p0}, Lcom/a4455jkjh/c/b;->j()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/a;->c(I)V

    iget v1, p0, Lcom/a4455jkjh/c/b;->c:I

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/a;->a(I)V

    iget v1, p0, Lcom/a4455jkjh/c/b;->d:I

    invoke-virtual {v0, v1}, Lcom/a4455jkjh/c/a;->b(I)V

    return-object v0
.end method

.method public abstract d()I
.end method

.method public abstract d(I)V
.end method

.method public abstract e()I
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a4455jkjh/c/b;->g:Ljava/io/File;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/a4455jkjh/c/b;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public abstract g()I
.end method

.method public abstract h()Lcom/a4455jkjh/c/c;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()I
.end method
