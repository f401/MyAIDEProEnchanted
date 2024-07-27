.class public Lorg/c/a/a/c/a/a/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Lorg/c/a/a/c/a/a/a/a/a;

.field protected d:Z


# direct methods
.method public constructor <init>(ILorg/c/a/a/c/a/a/a/a/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/c/a/a/a/a/e;->a:I

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->b:I

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/e;->c:Lorg/c/a/a/c/a/a/a/a/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->d:Z

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v0

    iput v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->b:I

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/e;->c:Lorg/c/a/a/c/a/a/a/a/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->a:I

    return v0
.end method

.method public a(Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->c:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/e;->c:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_0
    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/e;->c:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->c:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/e;->c:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_0
    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->b:I

    return v0
.end method

.method public c()Lorg/c/a/a/c/a/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->c:Lorg/c/a/a/c/a/a/a/a/a;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/a/a/e;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicBlock.SwitchCase{default: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/e;->c:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicBlock.SwitchCase{\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/c/a/a/c/a/a/a/a/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/e;->c:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
