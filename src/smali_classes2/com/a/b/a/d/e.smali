.class public Lcom/a/b/a/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/a/e/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/a/b/g/e;

.field private final c:Z

.field private d:Lcom/a/b/e/c/af;

.field private e:I

.field private f:Lcom/a/b/e/c/ae;

.field private g:Lcom/a/b/e/c/ae;

.field private h:Lcom/a/b/e/d/e;

.field private i:Lcom/a/b/a/e/e;

.field private j:Lcom/a/b/a/e/h;

.field private k:Lcom/a/b/a/e/k;

.field private l:Lcom/a/b/a/d/b;

.field private m:Lcom/a/b/a/e/j;


# direct methods
.method public constructor <init>(Lcom/a/b/g/e;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filePath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/a/b/a/d/e;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    iput-boolean p3, p0, Lcom/a/b/a/d/e;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/a/d/e;->e:I

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Z)V
    .registers 5

    new-instance v0, Lcom/a/b/g/e;

    invoke-direct {v0, p1}, Lcom/a/b/g/e;-><init>([B)V

    invoke-direct {p0, v0, p2, p3}, Lcom/a/b/a/d/e;-><init>(Lcom/a/b/g/e;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_0

    const-string v0, "(none)"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)Z
    .registers 3

    const v0, -0x35014542    # -8346975.0f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(II)Z
    .registers 5

    const/16 v1, 0x35

    const/4 v0, 0x1

    if-ltz p1, :cond_2

    if-ne p2, v1, :cond_1

    if-gtz p1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge p2, v1, :cond_2

    const/16 v1, 0x2d

    if-ge p2, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .registers 3

    iget v0, p0, Lcom/a/b/a/d/e;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/a/b/a/d/e;->s()V

    :cond_0
    return-void
.end method

.method private r()V
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/d/e;->k:Lcom/a/b/a/e/k;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/b/a/d/e;->s()V

    :cond_0
    return-void
.end method

.method private s()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/a/b/a/d/e;->t()V
    :try_end_0
    .catch Lcom/a/b/a/e/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/b/a/d/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/a/e/i;->a(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/a/b/a/e/i;

    invoke-direct {v1, v0}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/b/a/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/b/a/e/i;->a(Ljava/lang/String;)V

    throw v1
.end method

.method private t()V
    .registers 11

    const/4 v4, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    invoke-virtual {v0}, Lcom/a/b/g/e;->a()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/a/b/a/e/i;

    const-string v1, "severely truncated class file"

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    iget-object v1, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    const-string v2, "begin classfile"

    invoke-interface {v0, v1, v8, v8, v2}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    iget-object v1, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "magic: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->n()I

    move-result v3

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v8, v4, v2}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    iget-object v1, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minor_version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->o()I

    move-result v3

    invoke-static {v3}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v9, v2}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    iget-object v1, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "major_version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->p()I

    move-result v4

    invoke-static {v4}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v9, v3}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/a/b/a/d/e;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->n()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/b/a/d/e;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/a/b/a/e/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad class file magic ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->n()I

    move-result v2

    invoke-static {v2}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/a/b/a/d/e;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->p()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/a/d/e;->b(II)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/a/b/a/e/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/a/b/a/c/a;

    iget-object v1, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    invoke-direct {v0, v1}, Lcom/a/b/a/c/a;-><init>(Lcom/a/b/g/e;)V

    iget-object v1, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    invoke-virtual {v0, v1}, Lcom/a/b/a/c/a;->a(Lcom/a/b/a/e/j;)V

    invoke-virtual {v0}, Lcom/a/b/a/c/a;->b()Lcom/a/b/e/c/af;

    move-result-object v1

    iput-object v1, p0, Lcom/a/b/a/d/e;->d:Lcom/a/b/e/c/af;

    iget-object v1, p0, Lcom/a/b/a/d/e;->d:Lcom/a/b/e/c/af;

    invoke-virtual {v1}, Lcom/a/b/e/c/af;->c_()V

    invoke-virtual {v0}, Lcom/a/b/a/c/a;->a()I

    move-result v1

    iget-object v0, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v2

    iget-object v0, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v3}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    iget-object v3, p0, Lcom/a/b/a/d/e;->d:Lcom/a/b/e/c/af;

    invoke-virtual {v3, v0}, Lcom/a/b/e/c/af;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    iput-object v0, p0, Lcom/a/b/a/d/e;->f:Lcom/a/b/e/c/ae;

    iget-object v0, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v0, v3}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    iget-object v3, p0, Lcom/a/b/a/d/e;->d:Lcom/a/b/e/c/af;

    invoke-virtual {v3, v0}, Lcom/a/b/e/c/af;->b(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    iput-object v0, p0, Lcom/a/b/a/d/e;->g:Lcom/a/b/e/c/ae;

    iget-object v0, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    add-int/lit8 v3, v1, 0x6

    invoke-virtual {v0, v3}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    iget-object v3, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    iget-object v4, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "access_flags: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/e/b/a;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v1, v9, v5}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v3, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    iget-object v4, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    add-int/lit8 v5, v1, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "this_class: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/a/b/a/d/e;->f:Lcom/a/b/e/c/ae;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v9, v6}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v3, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    iget-object v4, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    add-int/lit8 v5, v1, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "super_class: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/a/b/a/d/e;->g:Lcom/a/b/e/c/ae;

    invoke-static {v7}, Lcom/a/b/a/d/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v9, v6}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v3, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    iget-object v4, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    add-int/lit8 v5, v1, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "interfaces_count: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v9, v6}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    iget-object v4, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    add-int/lit8 v5, v1, 0x8

    const-string v6, "interfaces:"

    invoke-interface {v3, v4, v5, v8, v6}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/a/b/a/d/e;->a(II)Lcom/a/b/e/d/e;

    move-result-object v3

    iput-object v3, p0, Lcom/a/b/a/d/e;->h:Lcom/a/b/e/d/e;

    iget-boolean v3, p0, Lcom/a/b/a/d/e;->c:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/a/b/a/d/e;->f:Lcom/a/b/e/c/ae;

    invoke-virtual {v3}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/a/b/a/d/e;->a:Ljava/lang/String;

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/a/b/a/d/e;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/a/b/a/d/e;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    if-eq v4, v5, :cond_6

    :cond_5
    new-instance v0, Lcom/a/b/a/e/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "class name ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match path ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/d/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput v2, p0, Lcom/a/b/a/d/e;->e:I

    new-instance v2, Lcom/a/b/a/d/g;

    iget-object v3, p0, Lcom/a/b/a/d/e;->f:Lcom/a/b/e/c/ae;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/b/a/d/e;->l:Lcom/a/b/a/d/b;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/a/b/a/d/g;-><init>(Lcom/a/b/a/d/e;Lcom/a/b/e/c/ae;ILcom/a/b/a/d/b;)V

    iget-object v0, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    invoke-virtual {v2, v0}, Lcom/a/b/a/d/g;->a(Lcom/a/b/a/e/j;)V

    invoke-virtual {v2}, Lcom/a/b/a/d/g;->a()Lcom/a/b/a/e/m;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/d/e;->i:Lcom/a/b/a/e/e;

    invoke-virtual {v2}, Lcom/a/b/a/d/g;->d()I

    move-result v0

    new-instance v1, Lcom/a/b/a/d/i;

    iget-object v2, p0, Lcom/a/b/a/d/e;->f:Lcom/a/b/e/c/ae;

    iget-object v3, p0, Lcom/a/b/a/d/e;->l:Lcom/a/b/a/d/b;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/a/b/a/d/i;-><init>(Lcom/a/b/a/d/e;Lcom/a/b/e/c/ae;ILcom/a/b/a/d/b;)V

    iget-object v0, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    invoke-virtual {v1, v0}, Lcom/a/b/a/d/i;->a(Lcom/a/b/a/e/j;)V

    invoke-virtual {v1}, Lcom/a/b/a/d/i;->a()Lcom/a/b/a/e/p;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/d/e;->j:Lcom/a/b/a/e/h;

    new-instance v0, Lcom/a/b/a/d/c;

    invoke-virtual {v1}, Lcom/a/b/a/d/i;->d()I

    move-result v1

    iget-object v2, p0, Lcom/a/b/a/d/e;->l:Lcom/a/b/a/d/b;

    invoke-direct {v0, p0, v8, v1, v2}, Lcom/a/b/a/d/c;-><init>(Lcom/a/b/a/d/e;IILcom/a/b/a/d/b;)V

    iget-object v1, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    invoke-virtual {v0, v1}, Lcom/a/b/a/d/c;->a(Lcom/a/b/a/e/j;)V

    invoke-virtual {v0}, Lcom/a/b/a/d/c;->b()Lcom/a/b/a/e/k;

    move-result-object v1

    iput-object v1, p0, Lcom/a/b/a/d/e;->k:Lcom/a/b/a/e/k;

    iget-object v1, p0, Lcom/a/b/a/d/e;->k:Lcom/a/b/a/e/k;

    invoke-virtual {v1}, Lcom/a/b/a/e/k;->c_()V

    invoke-virtual {v0}, Lcom/a/b/a/d/c;->a()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    invoke-virtual {v1}, Lcom/a/b/g/e;->a()I

    move-result v1

    if-eq v0, v1, :cond_7

    new-instance v1, Lcom/a/b/a/e/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extra bytes at end of class file, at offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v1, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    iget-object v2, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    const-string v3, "end classfile"

    invoke-interface {v1, v2, v0, v8, v3}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public a(II)Lcom/a/b/e/d/e;
    .registers 9

    if-nez p2, :cond_0

    sget-object v0, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/d/e;->d:Lcom/a/b/e/c/af;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pool not yet initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/a/b/a/d/f;

    iget-object v1, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    iget-object v4, p0, Lcom/a/b/a/d/e;->d:Lcom/a/b/e/c/af;

    iget-object v5, p0, Lcom/a/b/a/d/e;->m:Lcom/a/b/a/e/j;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/b/a/d/f;-><init>(Lcom/a/b/g/e;IILcom/a/b/e/c/af;Lcom/a/b/a/e/j;)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/d/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/a/b/a/d/b;)V
    .registers 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/a/d/e;->l:Lcom/a/b/a/d/b;

    return-void
.end method

.method public b()Lcom/a/b/g/e;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    return-object v0
.end method

.method public c()I
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/e;->q()V

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->n()I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/e;->q()V

    iget v0, p0, Lcom/a/b/a/d/e;->e:I

    return v0
.end method

.method public e()Lcom/a/b/e/c/ae;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/e;->q()V

    iget-object v0, p0, Lcom/a/b/a/d/e;->f:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public f()Lcom/a/b/e/c/ae;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/e;->q()V

    iget-object v0, p0, Lcom/a/b/a/d/e;->g:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public g()Lcom/a/b/e/c/b;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/e;->q()V

    iget-object v0, p0, Lcom/a/b/a/d/e;->d:Lcom/a/b/e/c/af;

    return-object v0
.end method

.method public h()Lcom/a/b/e/d/e;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/e;->q()V

    iget-object v0, p0, Lcom/a/b/a/d/e;->h:Lcom/a/b/e/d/e;

    return-object v0
.end method

.method public i()Lcom/a/b/a/e/e;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/e;->r()V

    iget-object v0, p0, Lcom/a/b/a/d/e;->i:Lcom/a/b/a/e/e;

    return-object v0
.end method

.method public j()Lcom/a/b/a/e/h;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/e;->r()V

    iget-object v0, p0, Lcom/a/b/a/d/e;->j:Lcom/a/b/a/e/h;

    return-object v0
.end method

.method public k()Lcom/a/b/a/e/b;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/d/e;->r()V

    iget-object v0, p0, Lcom/a/b/a/d/e;->k:Lcom/a/b/a/e/k;

    return-object v0
.end method

.method public l()Lcom/a/b/a/b/d;
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->k()Lcom/a/b/a/e/b;

    move-result-object v0

    const-string v1, "BootstrapMethods"

    invoke-interface {v0, v1}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/a/b/a/a/b;->b()Lcom/a/b/a/b/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/a/b/a/b/d;->a:Lcom/a/b/a/b/d;

    goto :goto_0
.end method

.method public m()Lcom/a/b/e/c/ad;
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/a/d/e;->k()Lcom/a/b/a/e/b;

    move-result-object v0

    const-string v1, "SourceFile"

    invoke-interface {v0, v1}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    instance-of v1, v0, Lcom/a/b/a/a/r;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/a/b/a/a/r;

    invoke-virtual {v0}, Lcom/a/b/a/a/r;->b()Lcom/a/b/e/c/ad;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->c(I)I

    move-result v0

    return v0
.end method

.method public o()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    return v0
.end method

.method public p()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/d/e;->b:Lcom/a/b/g/e;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    return v0
.end method
