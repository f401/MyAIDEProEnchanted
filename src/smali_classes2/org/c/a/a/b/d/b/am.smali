.class public Lorg/c/a/a/b/d/b/am;
.super Lorg/c/a/a/b/d/b/n;


# instance fields
.field protected a:I

.field protected b:Lorg/c/a/a/b/d/e/l;

.field protected c:Lorg/c/a/a/b/d/e/l;


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/l;)V
    .registers 4

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/n;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/d/b/am;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/d/b/am;->b:Lorg/c/a/a/b/d/e/l;

    sget-object v0, Lorg/c/a/a/b/d/e/i;->f:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0, p2}, Lorg/c/a/a/b/d/e/i;->a(Lorg/c/a/a/b/d/e/e;)Lorg/c/a/a/b/d/e/i;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/b/d/b/am;->c:Lorg/c/a/a/b/d/e/l;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/e/l;)V
    .registers 3

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/n;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/b/am;->b:Lorg/c/a/a/b/d/e/l;

    sget-object v0, Lorg/c/a/a/b/d/e/i;->f:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0, p1}, Lorg/c/a/a/b/d/e/i;->a(Lorg/c/a/a/b/d/e/e;)Lorg/c/a/a/b/d/e/i;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/b/d/b/am;->c:Lorg/c/a/a/b/d/e/l;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/am;)V

    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/am;->b:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/b/am;->a:I

    return v0
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/am;->c:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TypeReferenceDotClassExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/am;->b:Lorg/c/a/a/b/d/e/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
