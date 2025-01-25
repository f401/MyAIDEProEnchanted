.class final La/d/a/k;
.super La/d/a/as;


# instance fields
.field private final a:La/d/a/ae;


# direct methods
.method public constructor <init>(La/d/a/ae;)V
    .registers 2

    invoke-direct {p0}, La/d/a/as;-><init>()V

    iput-object p1, p0, La/d/a/k;->a:La/d/a/ae;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_14

    invoke-super {p0, p1}, La/d/a/as;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, La/d/a/k;->a:La/d/a/ae;

    check-cast p1, La/d/a/k;

    iget-object v1, p1, La/d/a/k;->a:La/d/a/ae;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, La/d/a/as;->hashCode()I

    move-result v0

    iget-object v1, p0, La/d/a/k;->a:La/d/a/ae;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(byte)("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/a/k;->a:La/d/a/ae;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
