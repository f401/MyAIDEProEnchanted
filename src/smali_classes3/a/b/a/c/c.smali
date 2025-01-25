.class public La/b/a/c/c;
.super La/b/a/c/m;


# instance fields
.field public a:I

.field public b:[La/b/a/c/r;

.field public c:I

.field public d:[La/b/a/c/r;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/c/m;-><init>()V

    return-void
.end method

.method public constructor <init>(II[La/b/a/c/r;I[La/b/a/c/r;)V
    .registers 6

    invoke-direct {p0}, La/b/a/c/m;-><init>()V

    iput p1, p0, La/b/a/c/c;->e:I

    iput p2, p0, La/b/a/c/c;->a:I

    iput-object p3, p0, La/b/a/c/c;->b:[La/b/a/c/r;

    iput p4, p0, La/b/a/c/c;->c:I

    iput-object p5, p0, La/b/a/c/c;->d:[La/b/a/c/r;

    return-void
.end method

.method public constructor <init>(I[La/b/a/c/r;[La/b/a/c/r;)V
    .registers 10

    array-length v2, p2

    array-length v4, p3

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, La/b/a/c/c;-><init>(II[La/b/a/c/r;I[La/b/a/c/r;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xff

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

    invoke-interface/range {v0 .. v5}, La/b/a/c/a/a;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/c;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/a/b;)V
    .registers 14

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La/b/a/c/c;->a:I

    if-ge v0, v1, :cond_15

    iget-object v1, p0, La/b/a/c/c;->b:[La/b/a/c/r;

    aget-object v1, v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, v0

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, La/b/a/c/r;->b(La/b/c;La/b/j;La/b/a/d;IILa/b/a/c/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public b(La/b/c;La/b/j;La/b/a/d;ILa/b/a/c/a/b;)V
    .registers 14

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, La/b/a/c/c;->c:I

    if-ge v0, v1, :cond_15

    iget-object v1, p0, La/b/a/c/c;->d:[La/b/a/c/r;

    aget-object v1, v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, v0

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, La/b/a/c/r;->a(La/b/c;La/b/j;La/b/a/d;IILa/b/a/c/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    invoke-super {p0, p1}, La/b/a/c/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_49

    :cond_8
    check-cast p1, La/b/a/c/c;

    iget v0, p0, La/b/a/c/c;->e:I

    iget v2, p1, La/b/a/c/c;->e:I

    if-ne v0, v2, :cond_49

    iget v0, p0, La/b/a/c/c;->a:I

    iget v2, p1, La/b/a/c/c;->a:I

    if-ne v0, v2, :cond_49

    iget v0, p0, La/b/a/c/c;->c:I

    iget v2, p1, La/b/a/c/c;->c:I

    if-ne v0, v2, :cond_49

    const/4 v0, 0x0

    :goto_1d
    iget v2, p0, La/b/a/c/c;->a:I

    if-ge v0, v2, :cond_32

    iget-object v2, p0, La/b/a/c/c;->b:[La/b/a/c/r;

    aget-object v2, v2, v0

    iget-object v3, p1, La/b/a/c/c;->b:[La/b/a/c/r;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, La/b/a/c/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iget v2, p0, La/b/a/c/c;->c:I

    if-ge v0, v2, :cond_48

    iget-object v2, p0, La/b/a/c/c;->d:[La/b/a/c/r;

    aget-object v2, v2, v0

    iget-object v3, p1, La/b/a/c/c;->d:[La/b/a/c/r;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, La/b/a/c/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_48
    const/4 v1, 0x1

    :cond_49
    :goto_49
    return v1
.end method

.method public hashCode()I
    .registers 5

    invoke-super {p0}, La/b/a/c/m;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    iget v3, p0, La/b/a/c/c;->a:I

    if-ge v2, v3, :cond_16

    iget-object v3, p0, La/b/a/c/c;->b:[La/b/a/c/r;

    aget-object v3, v3, v2

    invoke-virtual {v3}, La/b/a/c/r;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    :goto_16
    iget v2, p0, La/b/a/c/c;->c:I

    if-ge v1, v2, :cond_26

    iget-object v2, p0, La/b/a/c/c;->d:[La/b/a/c/r;

    aget-object v2, v2, v1

    invoke-virtual {v2}, La/b/a/c/r;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_26
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, La/b/a/c/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "Var: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    iget v3, p0, La/b/a/c/c;->a:I

    const/16 v4, 0x5d

    const/16 v5, 0x5b

    if-ge v2, v3, :cond_30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, La/b/a/c/c;->b:[La/b/a/c/r;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_30
    const-string v2, ", Stack: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_35
    iget v2, p0, La/b/a/c/c;->c:I

    if-ge v1, v2, :cond_50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, La/b/a/c/c;->d:[La/b/a/c/r;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
