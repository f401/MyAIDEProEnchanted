.class public Lorg/c/a/a/b/d/b/ae;
.super Lorg/c/a/a/b/d/b/n;


# instance fields
.field protected a:I

.field protected b:Lorg/c/a/a/b/d/e/i;

.field protected c:Z


# direct methods
.method public constructor <init>(ILorg/c/a/a/b/d/e/i;)V
    .registers 4

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/n;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/d/b/ae;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/d/b/ae;->b:Lorg/c/a/a/b/d/e/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/b/d/b/ae;->c:Z

    return-void
.end method

.method public constructor <init>(ILorg/c/a/a/b/d/e/i;Z)V
    .registers 4

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/n;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/d/b/ae;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/d/b/ae;->b:Lorg/c/a/a/b/d/e/i;

    iput-boolean p3, p0, Lorg/c/a/a/b/d/b/ae;->c:Z

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/e/i;)V
    .registers 3

    invoke-direct {p0}, Lorg/c/a/a/b/d/b/n;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/b/ae;->b:Lorg/c/a/a/b/d/e/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/b/d/b/ae;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/ae;)V

    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/e/i;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ae;->b:Lorg/c/a/a/b/d/e/i;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/b/ae;->a:I

    return v0
.end method

.method public f()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/ae;->b:Lorg/c/a/a/b/d/e/i;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/b/d/b/ae;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectTypeReferenceExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/ae;->b:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
