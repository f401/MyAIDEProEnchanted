.class final La/d/a/f;
.super La/d/a/as;


# instance fields
.field private final a:La/d/a/bd;

.field private final b:La/d/a/bd;


# direct methods
.method public constructor <init>(La/d/a/bd;La/d/a/bd;)V
    .registers 3

    invoke-direct {p0}, La/d/a/as;-><init>()V

    iput-object p1, p0, La/d/a/f;->a:La/d/a/bd;

    iput-object p2, p0, La/d/a/f;->b:La/d/a/bd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_21

    invoke-super {p0, p1}, La/d/a/as;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v1, p0, La/d/a/f;->a:La/d/a/bd;

    move-object v0, p1

    check-cast v0, La/d/a/f;

    iget-object v0, v0, La/d/a/f;->a:La/d/a/bd;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, La/d/a/f;->b:La/d/a/bd;

    check-cast p1, La/d/a/f;

    iget-object v1, p1, La/d/a/f;->b:La/d/a/bd;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, La/d/a/as;->hashCode()I

    move-result v0

    iget-object v1, p0, La/d/a/f;->a:La/d/a/bd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, La/d/a/f;->b:La/d/a/bd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/a/f;->a:La/d/a/bd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/a/f;->b:La/d/a/bd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
