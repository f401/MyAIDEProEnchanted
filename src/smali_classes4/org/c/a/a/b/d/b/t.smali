.class public Lorg/c/a/a/b/d/b/t;
.super Lorg/c/a/a/b/d/b/c;


# static fields
.field static final d:Z


# instance fields
.field protected a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/d/b/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/b/d/b/t;->d:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(ILorg/c/a/a/b/d/e/l;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput p3, p0, Lorg/c/a/a/b/d/b/t;->a:I

    sget-boolean v0, Lorg/c/a/a/b/d/b/t;->d:Z

    if-nez v0, :cond_15

    invoke-interface {p2}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/e/l;I)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/c/a/a/b/d/b/c;-><init>(Lorg/c/a/a/b/d/e/l;)V

    iput p2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    sget-boolean v0, Lorg/c/a/a/b/d/b/t;->d:Z

    if-nez v0, :cond_15

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/t;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/l;)V
    .registers 4

    sget-boolean v0, Lorg/c/a/a/b/d/b/t;->d:Z

    if-nez v0, :cond_18

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lorg/c/a/a/b/d/b/t;->b(Lorg/c/a/a/b/d/e/l;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "setType : incompatible types"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_18
    invoke-super {p0, p1}, Lorg/c/a/a/b/d/b/c;->a(Lorg/c/a/a/b/d/e/l;)V

    return-void
.end method

.method protected b(Lorg/c/a/a/b/d/e/l;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v2

    if-eqz v2, :cond_5a

    check-cast p1, Lorg/c/a/a/b/d/e/k;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v2

    invoke-static {v2}, Lorg/c/a/a/c/a/a/c/aa;->b(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_5c

    const/high16 v2, -0x80000000

    iget v3, p0, Lorg/c/a/a/b/d/b/t;->a:I

    if-gt v2, v3, :cond_58

    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    const v3, 0x7fffffff

    if-gt v2, v3, :cond_58

    :cond_22
    :goto_22
    return v0

    :sswitch_23
    const/16 v2, -0x80

    iget v3, p0, Lorg/c/a/a/b/d/b/t;->a:I

    if-gt v2, v3, :cond_2f

    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    const/16 v3, 0x7f

    if-le v2, v3, :cond_22

    :cond_2f
    move v0, v1

    goto :goto_22

    :sswitch_31
    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    int-to-char v2, v2

    if-ltz v2, :cond_3e

    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    int-to-char v2, v2

    const v3, 0xffff

    if-le v2, v3, :cond_22

    :cond_3e
    move v0, v1

    goto :goto_22

    :sswitch_40
    const/16 v2, -0x8000

    iget v3, p0, Lorg/c/a/a/b/d/b/t;->a:I

    if-gt v2, v3, :cond_4c

    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    const/16 v3, 0x7fff

    if-le v2, v3, :cond_22

    :cond_4c
    move v0, v1

    goto :goto_22

    :sswitch_4e
    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    if-ltz v2, :cond_56

    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    if-le v2, v0, :cond_22

    :cond_56
    move v0, v1

    goto :goto_22

    :cond_58
    move v0, v1

    goto :goto_22

    :cond_5a
    move v0, v1

    goto :goto_22

    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_4e
        0x2 -> :sswitch_31
        0x10 -> :sswitch_23
        0x20 -> :sswitch_40
    .end sparse-switch
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/b/t;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntegerConstantExpression{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/t;->c:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/b/d/b/t;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
