.class public Lorg/c/a/a/c/a/a/a/b/c/a;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Z

.field protected d:Lorg/c/a/a/b/d/d/r;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput p1, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->a:I

    iput p2, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->d:Lorg/c/a/a/b/d/d/r;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/r;)V
    .locals 0

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->d:Lorg/c/a/a/b/d/d/r;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/t;)V
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->d:Lorg/c/a/a/b/d/d/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->d:Lorg/c/a/a/b/d/d/r;

    invoke-interface {v0, p1}, Lorg/c/a/a/b/d/d/r;->a(Lorg/c/a/a/b/d/d/t;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->c:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->b:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->d:Lorg/c/a/a/b/d/d/r;

    if-nez v0, :cond_0

    const-string v0, "ClassFileBreakContinueStatement{}"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileBreakContinueStatement{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/c/a;->d:Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
