.class public La/d/k;
.super La/d/l;


# instance fields
.field private c:La/d/a/bd;

.field private d:La/d/l;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, La/d/l;-><init>(I)V

    new-instance v0, La/d/l;

    invoke-direct {v0, p1}, La/d/l;-><init>(I)V

    iput-object v0, p0, La/d/k;->d:La/d/l;

    return-void
.end method

.method public constructor <init>(La/d/k;)V
    .registers 4

    invoke-direct {p0, p1}, La/d/l;-><init>(La/d/l;)V

    new-instance v0, La/d/l;

    iget-object v1, p1, La/d/k;->d:La/d/l;

    invoke-direct {v0, v1}, La/d/l;-><init>(La/d/l;)V

    iput-object v0, p0, La/d/k;->d:La/d/l;

    return-void
.end method


# virtual methods
.method public a(I)La/d/a/bd;
    .registers 3

    iget-object v0, p0, La/d/k;->d:La/d/l;

    invoke-virtual {v0, p1}, La/d/l;->c(I)La/d/a/bd;

    move-result-object v0

    return-object v0
.end method

.method public a(ILa/d/a/bd;)V
    .registers 4

    iget-object v0, p0, La/d/k;->d:La/d/l;

    invoke-virtual {v0, p1, p2}, La/d/l;->b(ILa/d/a/bd;)V

    return-void
.end method

.method public a(La/d/a/bd;)V
    .registers 2

    iput-object p1, p0, La/d/k;->c:La/d/a/bd;

    return-void
.end method

.method public a(La/d/k;)V
    .registers 4

    invoke-super {p0, p1}, La/d/l;->a(La/d/l;)V

    iget-object v0, p0, La/d/k;->d:La/d/l;

    iget-object v1, p1, La/d/k;->d:La/d/l;

    invoke-virtual {v0, v1}, La/d/l;->a(La/d/l;)V

    return-void
.end method

.method public a(La/d/k;Z)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, La/d/l;->a(La/d/l;Z)Z

    move-result v2

    iget-object v0, p0, La/d/k;->d:La/d/l;

    iget-object v3, p1, La/d/k;->d:La/d/l;

    invoke-virtual {v0, v3, p2}, La/d/l;->a(La/d/l;Z)Z

    move-result v3

    if-eqz v2, :cond_2c

    move v0, v1

    :goto_11
    iget v4, p0, La/d/k;->b:I

    if-ge v0, v4, :cond_2c

    iget-object v4, p0, La/d/k;->a:[La/d/a/bd;

    aget-object v4, v4, v0

    if-nez v4, :cond_29

    iget-object v4, p0, La/d/k;->d:La/d/l;

    iget-object v4, v4, La/d/l;->a:[La/d/a/bd;

    aput-object v5, v4, v0

    if-eqz p2, :cond_29

    iget-object v4, p1, La/d/k;->d:La/d/l;

    iget-object v4, v4, La/d/l;->a:[La/d/a/bd;

    aput-object v5, v4, v0

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2c
    if-nez v2, :cond_30

    if-eqz v3, :cond_31

    :cond_30
    const/4 v1, 0x1

    :cond_31
    return v1
.end method

.method public b(I)V
    .registers 3

    invoke-super {p0, p1}, La/d/l;->b(I)V

    iget-object v0, p0, La/d/k;->d:La/d/l;

    invoke-virtual {v0, p1}, La/d/l;->b(I)V

    return-void
.end method

.method public b(ILa/d/a/bd;)V
    .registers 6

    invoke-super {p0, p1, p2}, La/d/l;->b(ILa/d/a/bd;)V

    iget-object v0, p0, La/d/k;->d:La/d/l;

    iget-object v1, p0, La/d/k;->c:La/d/a/bd;

    invoke-virtual {v0, p1, v1}, La/d/l;->b(ILa/d/a/bd;)V

    invoke-virtual {p2}, La/d/a/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, La/d/k;->d:La/d/l;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, La/d/k;->c:La/d/a/bd;

    invoke-virtual {v0, v1, v2}, La/d/l;->b(ILa/d/a/bd;)V

    :cond_19
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_f

    :cond_d
    move v0, v1

    :goto_e
    return v0

    :cond_f
    move-object v0, p1

    check-cast v0, La/d/k;

    invoke-super {p0, p1}, La/d/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, La/d/k;->d:La/d/l;

    iget-object v0, v0, La/d/k;->d:La/d/l;

    invoke-virtual {v2, v0}, La/d/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_e

    :cond_24
    move v0, v1

    goto :goto_e
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, La/d/l;->hashCode()I

    move-result v0

    iget-object v1, p0, La/d/k;->d:La/d/l;

    invoke-virtual {v1}, La/d/l;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, La/d/k;->a()I

    move-result v2

    if-ge v1, v2, :cond_3f

    iget-object v2, p0, La/d/k;->a:[La/d/a/bd;

    aget-object v2, v2, v1

    iget-object v3, p0, La/d/k;->d:La/d/l;

    invoke-virtual {v3, v1}, La/d/l;->c(I)La/d/a/bd;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    if-nez v3, :cond_35

    const-string v0, "empty:"

    :goto_20
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-nez v2, :cond_3a

    const-string v0, "empty"

    :goto_28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_35
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
