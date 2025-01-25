.class public La/b/a/c/j;
.super La/b/a/c/m;


# instance fields
.field public a:La/b/a/c/r;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/c/m;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, La/b/a/c/m;-><init>()V

    add-int/lit8 p1, p1, -0x40

    iput p1, p0, La/b/a/c/j;->e:I

    return-void
.end method

.method public constructor <init>(La/b/a/c/r;)V
    .registers 2

    invoke-direct {p0}, La/b/a/c/m;-><init>()V

    iput-object p1, p0, La/b/a/c/j;->a:La/b/a/c/r;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, La/b/a/c/j;->e:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_a

    iget v0, p0, La/b/a/c/j;->e:I

    add-int/2addr v0, v1

    goto :goto_c

    :cond_a
    const/16 v0, 0xf7

    :goto_c
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

    invoke-interface/range {v0 .. v5}, La/b/a/c/a/a;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/j;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/a/b;)V
    .registers 12

    iget-object v0, p0, La/b/a/c/j;->a:La/b/a/c/r;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/b/a/c/r;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/a/b;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    invoke-super {p0, p1}, La/b/a/c/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1b

    :cond_7
    check-cast p1, La/b/a/c/j;

    iget v0, p0, La/b/a/c/j;->e:I

    iget v1, p1, La/b/a/c/j;->e:I

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, La/b/a/c/j;->a:La/b/a/c/r;

    iget-object p1, p1, La/b/a/c/j;->a:La/b/a/c/r;

    invoke-virtual {v0, p1}, La/b/a/c/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, La/b/a/c/m;->hashCode()I

    move-result v0

    iget-object v1, p0, La/b/a/c/j;->a:La/b/a/c/r;

    invoke-virtual {v1}, La/b/a/c/r;->hashCode()I

    move-result v1

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

    const-string v1, "Var: ..., Stack: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/b/a/c/j;->a:La/b/a/c/r;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
