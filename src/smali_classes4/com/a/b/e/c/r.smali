.class public final Lcom/a/b/e/c/r;
.super Lcom/a/b/e/c/a;


# instance fields
.field private final a:I

.field private final b:Lcom/a/b/e/c/aa;

.field private final c:Lcom/a/b/e/d/a;

.field private d:Lcom/a/b/e/c/ae;

.field private e:Lcom/a/b/e/c/i;

.field private final f:Ljava/util/List;


# direct methods
.method private constructor <init>(ILcom/a/b/e/c/aa;)V
    .registers 4

    invoke-direct {p0}, Lcom/a/b/e/c/a;-><init>()V

    iput p1, p0, Lcom/a/b/e/c/r;->a:I

    iput-object p2, p0, Lcom/a/b/e/c/r;->b:Lcom/a/b/e/c/aa;

    invoke-virtual {p2}, Lcom/a/b/e/c/aa;->b()Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/d/a;->b(Ljava/lang/String;)Lcom/a/b/e/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/e/c/r;->c:Lcom/a/b/e/d/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/e/c/r;->f:Ljava/util/List;

    return-void
.end method

.method public static a(ILcom/a/b/e/c/aa;)Lcom/a/b/e/c/r;
    .registers 3

    new-instance v0, Lcom/a/b/e/c/r;

    invoke-direct {v0, p0, p1}, Lcom/a/b/e/c/r;-><init>(ILcom/a/b/e/c/aa;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/b/e/c/j;
    .registers 3

    new-instance v0, Lcom/a/b/e/c/j;

    iget-object v1, p0, Lcom/a/b/e/c/r;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/a/b/e/c/j;-><init>(Lcom/a/b/e/c/r;I)V

    iget-object v1, p0, Lcom/a/b/e/c/r;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Lcom/a/b/e/c/ae;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/c/r;->d:Lcom/a/b/e/c/ae;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "already added declaring class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p1, :cond_16

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "declaringClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput-object p1, p0, Lcom/a/b/e/c/r;->d:Lcom/a/b/e/c/ae;

    return-void
.end method

.method public a(Lcom/a/b/e/c/i;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/c/r;->e:Lcom/a/b/e/c/i;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "already added call site"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p1, :cond_16

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callSite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iput-object p1, p0, Lcom/a/b/e/c/r;->e:Lcom/a/b/e/c/i;

    return-void
.end method

.method protected b(Lcom/a/b/e/c/a;)I
    .registers 4

    check-cast p1, Lcom/a/b/e/c/r;

    iget v0, p0, Lcom/a/b/e/c/r;->a:I

    invoke-virtual {p1}, Lcom/a/b/e/c/r;->c()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/a/b/e/c/r;->b:Lcom/a/b/e/c/aa;

    invoke-virtual {p1}, Lcom/a/b/e/c/r;->e()Lcom/a/b/e/c/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/aa;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/a/b/e/c/r;->d:Lcom/a/b/e/c/ae;

    invoke-virtual {p1}, Lcom/a/b/e/c/r;->j()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ae;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/a/b/e/c/r;->e:Lcom/a/b/e/c/i;

    invoke-virtual {p1}, Lcom/a/b/e/c/r;->k()Lcom/a/b/e/c/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/i;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    goto :goto_b
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/r;->f:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/a/b/e/c/r;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/c/r;->d:Lcom/a/b/e/c/ae;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/a/b/e/c/r;->d:Lcom/a/b/e/c/ae;

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InvokeDynamic("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/b/e/c/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/c/r;->b:Lcom/a/b/e/c/aa;

    invoke-virtual {v1}, Lcom/a/b/e/c/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3c
    const-string v0, "Unknown"

    goto :goto_a
.end method

.method public e()Lcom/a/b/e/c/aa;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/r;->b:Lcom/a/b/e/c/aa;

    return-object v0
.end method

.method public f()Lcom/a/b/e/d/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/r;->c:Lcom/a/b/e/d/a;

    return-object v0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "InvokeDynamic"

    return-object v0
.end method

.method public i()Lcom/a/b/e/d/c;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/r;->c:Lcom/a/b/e/d/a;

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->b()Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/r;->d:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public k()Lcom/a/b/e/c/i;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/r;->e:Lcom/a/b/e/c/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/r;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
