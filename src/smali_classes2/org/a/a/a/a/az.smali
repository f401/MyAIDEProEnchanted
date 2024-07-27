.class public final Lorg/a/a/a/a/az;
.super Lorg/a/a/a/a/bl;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/n;II)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/a/a/a/a/bl;-><init>(Lorg/a/a/a/a/n;)V

    iput p2, p0, Lorg/a/a/a/a/az;->a:I

    iput p3, p0, Lorg/a/a/a/a/az;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public a(III)Z
    .registers 5

    iget v0, p0, Lorg/a/a/a/a/az;->a:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/a/a/a/a/az;->b:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lorg/a/a/a/c/j;
    .registers 3

    iget v0, p0, Lorg/a/a/a/a/az;->a:I

    iget v1, p0, Lorg/a/a/a/a/az;->b:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/j;->a(II)Lorg/a/a/a/c/j;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/a/a/a/a/az;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/a/a/a/a/az;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
