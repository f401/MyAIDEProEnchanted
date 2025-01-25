.class public Lorg/c/a/a/c/a/a/a/c/k;
.super Lorg/c/a/a/c/a/a/a/c/a;


# static fields
.field static final l:Z


# instance fields
.field protected k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/a/a/a/c/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/c/a/a/a/c/k;->l:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p4, v1}, Lorg/c/a/a/c/a/a/a/c/a;-><init>(IILjava/lang/String;I)V

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/k;->l:Z

    if-nez v0, :cond_16

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    invoke-static {p3}, Lorg/c/a/a/c/a/a/c/aa;->a(Ljava/lang/String;)Lorg/c/a/a/b/d/e/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    return-void
.end method

.method public constructor <init>(IILorg/c/a/a/b/d/e/k;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/c/a/a/c/a/a/a/c/a;-><init>(III)V

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/k;->l:Z

    if-nez v0, :cond_14

    invoke-virtual {p3}, Lorg/c/a/a/b/d/e/k;->d()I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    invoke-virtual {p3}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    return-void
.end method

.method public constructor <init>(IILorg/c/a/a/b/d/e/k;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lorg/c/a/a/c/a/a/a/c/a;-><init>(IILjava/lang/String;I)V

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/k;->l:Z

    if-nez v0, :cond_14

    invoke-virtual {p3}, Lorg/c/a/a/b/d/e/k;->d()I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    invoke-virtual {p3}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    return-void
.end method

.method public constructor <init>(IILorg/c/a/a/c/a/a/a/c/k;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/c/a/a/c/a/a/a/c/a;-><init>(III)V

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/k;->l:Z

    if-nez v0, :cond_14

    invoke-virtual {p3}, Lorg/c/a/a/c/a/a/a/c/k;->h()I

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    iget v0, p3, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1d

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    :goto_1c
    return-void

    :cond_1d
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_26

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    goto :goto_1c

    :cond_26
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_31

    or-int/lit8 v0, v0, 0x40

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    goto :goto_1c

    :cond_31
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3c

    or-int/lit8 v0, v0, 0x40

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    goto :goto_1c

    :cond_3c
    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    goto :goto_1c
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/e/k;)V
    .registers 3

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/k;->l:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->d()I

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/c/i;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/c/a/a/a/c/i;->a(Lorg/c/a/a/c/a/a/a/c/k;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/l;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v1

    if-nez v1, :cond_19

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    check-cast p1, Lorg/c/a/a/b/d/e/k;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->j()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public b(Lorg/c/a/a/b/d/e/l;)V
    .registers 4

    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    move-object v0, p1

    check-cast v0, Lorg/c/a/a/b/d/e/k;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/e/k;->j()I

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/k;->l:Z

    if-nez v0, :cond_20

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    if-nez v0, :cond_20

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    return-void
.end method

.method public b(Lorg/c/a/a/c/a/a/a/c/a;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->h()I

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/c/a/a/c/a/a/a/c/k;

    if-ne v2, v3, :cond_1e

    iget v2, p0, Lorg/c/a/a/c/a/a/a/c/k;->h:I

    if-nez v2, :cond_1f

    iget v2, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    check-cast p1, Lorg/c/a/a/c/a/a/a/c/k;

    iget v3, p1, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1e

    :cond_1d
    move v0, v1

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    iget v2, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    check-cast p1, Lorg/c/a/a/c/a/a/a/c/k;

    iget v3, p1, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    if-eq v2, v3, :cond_1d

    goto :goto_1e
.end method

.method public c(Lorg/c/a/a/b/d/e/l;)V
    .registers 4

    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    move-object v0, p1

    check-cast v0, Lorg/c/a/a/b/d/e/k;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/e/k;->i()I

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/k;->l:Z

    if-nez v0, :cond_22

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    if-nez v0, :cond_22

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "rightReduce : incompatible types"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_22
    return-void
.end method

.method public c(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 5

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/k;->l:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->h()I

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    check-cast p1, Lorg/c/a/a/c/a/a/a/c/k;

    iget v1, p1, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    const/4 v0, 0x0

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1b

    const/16 v0, 0x70

    :cond_1b
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_21

    or-int/lit8 v0, v0, 0x42

    :cond_21
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_27

    or-int/lit8 v0, v0, 0x60

    :cond_27
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2d

    or-int/lit8 v0, v0, 0x40

    :cond_2d
    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_37

    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    :cond_37
    return-void
.end method

.method public d(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 5

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/k;->l:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/c/a;->h()I

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    check-cast p1, Lorg/c/a/a/c/a/a/a/c/k;

    iget v1, p1, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    const/4 v0, 0x0

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1b

    const/16 v0, 0x40

    :cond_1b
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_21

    or-int/lit8 v0, v0, 0x30

    :cond_21
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_27

    or-int/lit8 v0, v0, 0x2

    :cond_27
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2d

    or-int/lit8 v0, v0, 0x10

    :cond_2d
    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_37

    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    :cond_37
    return-void
.end method

.method public k()Lorg/c/a/a/b/d/e/l;
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->h:I

    invoke-static {v0, v1}, Lorg/c/a/a/c/a/a/c/aa;->a(II)Lorg/c/a/a/b/d/e/k;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimitiveLocalVariable{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_15

    const-string v1, "boolean "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_20

    const-string v1, "char "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2b

    const-string v1, "float "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_36

    const-string v1, "double "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_41

    const-string v1, "byte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4c

    const-string v1, "short "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_57

    const-string v1, "int "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_62

    const-string v1, "long "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    iget v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->k:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_6d

    const-string v1, "void "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6d
    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/c/a/a/c/a/a/a/c/k;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/k;->b:Lorg/c/a/a/c/a/a/a/c/a;

    if-eqz v1, :cond_8d

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/c/a/a/a/c/k;->b:Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8d
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
