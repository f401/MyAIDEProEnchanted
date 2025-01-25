.class public La/b/a/c/e;
.super La/b/a/c/m;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/c/m;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, La/b/a/c/m;-><init>()V

    iput p1, p0, La/b/a/c/e;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, La/b/a/c/m;-><init>()V

    rsub-int p1, p1, 0xfb

    iput p1, p0, La/b/a/c/e;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, La/b/a/c/e;->a:I

    rsub-int v0, v0, 0xfb

    return v0
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/a/a;)V
    .registers 12

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, La/b/a/c/a/a;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/e;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    invoke-super {p0, p1}, La/b/a/c/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_17

    :cond_7
    check-cast p1, La/b/a/c/e;

    iget v0, p0, La/b/a/c/e;->e:I

    iget v1, p1, La/b/a/c/e;->e:I

    if-ne v0, v1, :cond_17

    iget v0, p0, La/b/a/c/e;->a:I

    iget p1, p1, La/b/a/c/e;->a:I

    if-eq v0, p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, La/b/a/c/m;->hashCode()I

    move-result v0

    iget v1, p0, La/b/a/c/e;->a:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, La/b/a/c/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Var: (chopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/a/c/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), Stack: (empty)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
