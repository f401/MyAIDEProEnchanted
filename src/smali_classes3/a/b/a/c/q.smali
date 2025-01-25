.class public La/b/a/c/q;
.super La/b/a/c/r;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/c/r;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, La/b/a/c/r;-><init>()V

    iput p1, p0, La/b/a/c/q;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;IILa/b/a/c/a/b;)V
    .registers 14

    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, La/b/a/c/a/b;->a(La/b/c;La/b/j;La/b/a/d;IILa/b/a/c/q;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/a/b;)V
    .registers 12

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, La/b/a/c/a/b;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/q;)V

    return-void
.end method

.method public b(La/b/c;La/b/j;La/b/a/d;IILa/b/a/c/a/b;)V
    .registers 14

    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, La/b/a/c/a/b;->b(La/b/c;La/b/j;La/b/a/d;IILa/b/a/c/q;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, La/b/a/c/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_11

    :cond_7
    check-cast p1, La/b/a/c/q;

    iget v0, p0, La/b/a/c/q;->a:I

    iget p1, p1, La/b/a/c/q;->a:I

    if-ne v0, p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, La/b/a/c/r;->hashCode()I

    move-result v0

    iget v1, p0, La/b/a/c/q;->a:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/a/c/q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
