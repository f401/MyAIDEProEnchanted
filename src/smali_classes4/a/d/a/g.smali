.class final La/d/a/g;
.super La/d/a/aq;


# instance fields
.field private final a:La/d/a/t;

.field private final b:B

.field private final c:La/d/a/t;


# direct methods
.method public constructor <init>(La/d/a/t;BLa/d/a/t;)V
    .registers 4

    invoke-direct {p0}, La/d/a/aq;-><init>()V

    iput-object p1, p0, La/d/a/g;->a:La/d/a/t;

    iput-byte p2, p0, La/d/a/g;->b:B

    iput-object p3, p0, La/d/a/g;->c:La/d/a/t;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_2a

    invoke-super {p0, p1}, La/d/a/aq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, La/d/a/g;->a:La/d/a/t;

    move-object v0, p1

    check-cast v0, La/d/a/g;

    iget-object v0, v0, La/d/a/g;->a:La/d/a/t;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-byte v1, p0, La/d/a/g;->b:B

    move-object v0, p1

    check-cast v0, La/d/a/g;

    iget-byte v0, v0, La/d/a/g;->b:B

    if-ne v1, v0, :cond_2c

    iget-object v0, p0, La/d/a/g;->c:La/d/a/t;

    check-cast p1, La/d/a/g;

    iget-object v1, p1, La/d/a/g;->c:La/d/a/t;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, La/d/a/aq;->hashCode()I

    move-result v0

    iget-object v1, p0, La/d/a/g;->a:La/d/a/t;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, La/d/a/g;->c:La/d/a/t;

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

    iget-object v1, p0, La/d/a/g;->a:La/d/a/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, La/d/a/g;->b:B

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/a/g;->c:La/d/a/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
