.class public La/d/l;
.super Ljava/lang/Object;


# static fields
.field private static final c:La/d/a/au;


# instance fields
.field protected a:[La/d/a/bd;

.field protected b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, La/d/a/au;

    invoke-direct {v0}, La/d/a/au;-><init>()V

    sput-object v0, La/d/l;->c:La/d/a/au;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [La/d/a/bd;

    iput-object v0, p0, La/d/l;->a:[La/d/a/bd;

    iput p1, p0, La/d/l;->b:I

    return-void
.end method

.method public constructor <init>(La/d/l;)V
    .registers 3

    iget v0, p1, La/d/l;->b:I

    invoke-direct {p0, v0}, La/d/l;-><init>(I)V

    invoke-virtual {p0, p1}, La/d/l;->a(La/d/l;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, La/d/l;->b:I

    return v0
.end method

.method public a(La/d/l;)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, La/d/l;->b:I

    iget v1, p1, La/d/l;->b:I

    if-ge v0, v1, :cond_34

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable frame is too small ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] compared to other frame ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, La/d/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    iget-object v0, p1, La/d/l;->a:[La/d/a/bd;

    iget-object v1, p0, La/d/l;->a:[La/d/a/bd;

    iget v2, p1, La/d/l;->b:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public a(La/d/l;Z)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget v0, p0, La/d/l;->b:I

    iget v2, p1, La/d/l;->b:I

    if-eq v0, v2, :cond_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable frames have different sizes ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] and ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, La/d/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move v0, v1

    move v2, v1

    :goto_38
    iget v4, p0, La/d/l;->b:I

    if-ge v2, v4, :cond_7a

    iget-object v4, p0, La/d/l;->a:[La/d/a/bd;

    aget-object v4, v4, v2

    iget-object v5, p1, La/d/l;->a:[La/d/a/bd;

    aget-object v5, v5, v2

    if-eqz v4, :cond_68

    if-eqz v5, :cond_68

    invoke-virtual {v4}, La/d/a/bd;->j()I

    move-result v6

    invoke-virtual {v5}, La/d/a/bd;->j()I

    move-result v7

    if-ne v6, v7, :cond_68

    invoke-virtual {v4, v5}, La/d/a/bd;->a(La/d/a/bd;)La/d/a/bd;

    move-result-object v5

    if-nez v0, :cond_5e

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    :cond_5e
    move v0, v3

    :goto_5f
    iget-object v4, p0, La/d/l;->a:[La/d/a/bd;

    aput-object v5, v4, v2

    :cond_63
    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_66
    move v0, v1

    goto :goto_5f

    :cond_68
    if-nez v0, :cond_6c

    if-eqz v4, :cond_78

    :cond_6c
    move v0, v3

    :goto_6d
    iget-object v4, p0, La/d/l;->a:[La/d/a/bd;

    aput-object v8, v4, v2

    if-eqz p2, :cond_63

    iget-object v4, p1, La/d/l;->a:[La/d/a/bd;

    aput-object v8, v4, v2

    goto :goto_63

    :cond_78
    move v0, v1

    goto :goto_6d

    :cond_7a
    return v0
.end method

.method public b(I)V
    .registers 6

    iget-object v0, p0, La/d/l;->a:[La/d/a/bd;

    array-length v0, v0

    if-ge v0, p1, :cond_c

    new-array v0, p1, [La/d/a/bd;

    iput-object v0, p0, La/d/l;->a:[La/d/a/bd;

    :goto_9
    iput p1, p0, La/d/l;->b:I

    return-void

    :cond_c
    iget-object v0, p0, La/d/l;->a:[La/d/a/bd;

    const/4 v1, 0x0

    iget v2, p0, La/d/l;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_9
.end method

.method public b(ILa/d/a/bd;)V
    .registers 6

    if-ltz p1, :cond_6

    iget v0, p0, La/d/l;->b:I

    if-lt p1, v0, :cond_31

    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] out of bounds ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v0, p0, La/d/l;->a:[La/d/a/bd;

    aput-object p2, v0, p1

    invoke-virtual {p2}, La/d/a/bd;->b()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, La/d/l;->a:[La/d/a/bd;

    add-int/lit8 v1, p1, 0x1

    sget-object v2, La/d/l;->c:La/d/a/au;

    aput-object v2, v0, v1

    :cond_43
    return-void
.end method

.method public c(I)La/d/a/bd;
    .registers 5

    if-ltz p1, :cond_6

    iget v0, p0, La/d/l;->b:I

    if-lt p1, v0, :cond_31

    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] out of bounds ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v0, p0, La/d/l;->a:[La/d/a/bd;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public d(I)La/d/a/bd;
    .registers 5

    if-ltz p1, :cond_6

    iget v0, p0, La/d/l;->b:I

    if-lt p1, v0, :cond_31

    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variable index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] out of bounds ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, La/d/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v0, p0, La/d/l;->a:[La/d/a/bd;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public e(I)La/d/a/ae;
    .registers 3

    invoke-virtual {p0, p1}, La/d/l;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    check-cast p1, La/d/l;

    iget v1, p0, La/d/l;->b:I

    iget v2, p1, La/d/l;->b:I

    if-ne v1, v2, :cond_d

    move v1, v0

    :goto_17
    iget v2, p0, La/d/l;->b:I

    if-ge v1, v2, :cond_3a

    iget-object v2, p0, La/d/l;->a:[La/d/a/bd;

    aget-object v2, v2, v1

    iget-object v3, p1, La/d/l;->a:[La/d/a/bd;

    aget-object v3, v3, v1

    if-eqz v2, :cond_37

    if-eqz v3, :cond_37

    invoke-virtual {v2}, La/d/a/bd;->j()I

    move-result v4

    invoke-virtual {v3}, La/d/a/bd;->j()I

    move-result v5

    if-ne v4, v5, :cond_37

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3a
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public f(I)La/d/a/af;
    .registers 3

    invoke-virtual {p0, p1}, La/d/l;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->k_()La/d/a/af;

    move-result-object v0

    return-object v0
.end method

.method public g(I)La/d/a/u;
    .registers 3

    invoke-virtual {p0, p1}, La/d/l;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->l()La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public h(I)La/d/a/t;
    .registers 3

    invoke-virtual {p0, p1}, La/d/l;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->i()La/d/a/t;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, La/d/l;->b:I

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, La/d/l;->b:I

    if-ge v1, v2, :cond_15

    iget-object v2, p0, La/d/l;->a:[La/d/a/bd;

    aget-object v2, v2, v1

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    return v0
.end method

.method public i(I)La/d/a/ap;
    .registers 3

    invoke-virtual {p0, p1}, La/d/l;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public j(I)La/d/a/ad;
    .registers 3

    invoke-virtual {p0, p1}, La/d/l;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget v2, p0, La/d/l;->b:I

    if-ge v1, v2, :cond_2a

    iget-object v2, p0, La/d/l;->a:[La/d/a/bd;

    aget-object v2, v2, v1

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    if-nez v2, :cond_25

    const-string v0, "empty"

    :goto_18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_25
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
