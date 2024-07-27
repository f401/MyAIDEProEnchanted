.class public Lorg/c/a/a/c/a/a/a/b/a/g;
.super Lorg/c/a/a/b/d/a/o;


# instance fields
.field protected f:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILorg/c/a/a/b/d/b/f;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lorg/c/a/a/b/d/a/o;-><init>(ILjava/lang/String;Lorg/c/a/a/b/d/b/f;)V

    iput p3, p0, Lorg/c/a/a/c/a/a/a/b/a/g;->f:I

    return-void
.end method


# virtual methods
.method public f()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/b/a/g;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFileConstant{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/b/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/c/a/a/a/b/a/g;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
