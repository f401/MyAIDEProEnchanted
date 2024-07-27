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

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/b/d/b/t;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILorg/c/a/a/b/d/e/l;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput p3, p0, Lorg/c/a/a/b/d/b/t;->a:I

    sget-boolean v0, Lorg/c/a/a/b/d/b/t;->d:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/e/l;I)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/c/a/a/b/d/b/c;-><init>(Lorg/c/a/a/b/d/e/l;)V

    iput p2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    sget-boolean v0, Lorg/c/a/a/b/d/b/t;->d:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
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

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/c/a/a/b/d/b/t;->b(Lorg/c/a/a/b/d/e/l;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "setType : incompatible types"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-super {p0, p1}, Lorg/c/a/a/b/d/b/c;->a(Lorg/c/a/a/b/d/e/l;)V

    return-void
.end method

.method protected b(Lorg/c/a/a/b/d/e/l;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->m_()Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p1, Lorg/c/a/a/b/d/e/k;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v2

    invoke-static {v2}, Lorg/c/a/a/c/a/a/c/aa;->b(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/high16 v2, -0x80000000

    iget v3, p0, Lorg/c/a/a/b/d/b/t;->a:I

    if-gt v2, v3, :cond_5

    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    const v3, 0x7fffffff

    if-gt v2, v3, :cond_5

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const/16 v2, -0x80

    iget v3, p0, Lorg/c/a/a/b/d/b/t;->a:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    int-to-char v2, v2

    if-ltz v2, :cond_2

    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    int-to-char v2, v2

    const v3, 0xffff

    if-le v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_2
    const/16 v2, -0x8000

    iget v3, p0, Lorg/c/a/a/b/d/b/t;->a:I

    if-gt v2, v3, :cond_3

    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    const/16 v3, 0x7fff

    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_3
    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    if-ltz v2, :cond_4

    iget v2, p0, Lorg/c/a/a/b/d/b/t;->a:I

    if-le v2, v0, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x10 -> :sswitch_0
        0x20 -> :sswitch_2
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
