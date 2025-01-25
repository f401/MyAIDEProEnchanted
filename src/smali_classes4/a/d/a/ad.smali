.class public La/d/a/ad;
.super La/d/a/d;


# static fields
.field public static final a:La/d/a/ad;

.field private static final b:[I


# instance fields
.field private c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, La/d/a/ad;->b:[I

    new-instance v0, La/d/a/ad;

    sget-object v1, La/d/a/ad;->b:[I

    invoke-direct {v0, v1}, La/d/a/ad;-><init>([I)V

    sput-object v0, La/d/a/ad;->a:La/d/a/ad;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, La/d/a/d;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, La/d/a/ad;->c:[I

    return-void
.end method

.method public constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, La/d/a/d;-><init>()V

    iput-object p1, p0, La/d/a/ad;->c:[I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const v1, 0x1ffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final a(La/d/a/ad;)La/d/a/ad;
    .registers 9

    const/4 v2, 0x0

    iget-object v3, p0, La/d/a/ad;->c:[I

    array-length v0, v3

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-object p1

    :cond_7
    iget-object v4, p1, La/d/a/ad;->c:[I

    array-length v0, v4

    if-nez v0, :cond_e

    move-object p1, p0

    goto :goto_6

    :cond_e
    array-length v0, v3

    move v1, v2

    :goto_10
    array-length v5, v4

    if-ge v1, v5, :cond_20

    aget v5, v4, v1

    invoke-virtual {p0, v5}, La/d/a/ad;->b(I)Z

    move-result v5

    if-nez v5, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    array-length v1, v4

    if-eq v0, v1, :cond_6

    iget-object v1, p0, La/d/a/ad;->c:[I

    array-length v1, v1

    if-ne v0, v1, :cond_37

    array-length v1, v4

    const/4 v5, 0x1

    if-ne v1, v5, :cond_37

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget v1, v3, v1

    aget v5, v4, v2

    if-ne v1, v5, :cond_37

    move-object p1, p0

    goto :goto_6

    :cond_37
    new-array v5, v0, [I

    array-length v1, v3

    array-length v6, v4

    add-int/2addr v1, v6

    if-ne v0, v1, :cond_4d

    array-length v0, v3

    invoke-static {v3, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    :cond_43
    array-length v1, v4

    invoke-static {v4, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, La/d/a/ad;

    invoke-direct {p1, v5}, La/d/a/ad;-><init>([I)V

    goto :goto_6

    :cond_4d
    move v1, v2

    move v0, v2

    :goto_4f
    array-length v6, v3

    if-ge v1, v6, :cond_43

    aget v6, v3, v1

    invoke-virtual {p1, v6}, La/d/a/ad;->b(I)Z

    move-result v6

    if-nez v6, :cond_60

    aget v6, v3, v1

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f
.end method

.method public final a(La/d/a/bd;)La/d/a/bd;
    .registers 3

    invoke-virtual {p1}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v0

    invoke-virtual {p0, v0}, La/d/a/ad;->a(La/d/a/ad;)La/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_e

    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_f

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c(I)Z
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d(I)I
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const v1, -0x1000001

    and-int/2addr v0, v1

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .registers 2

    iget-object v0, p0, La/d/a/ad;->c:[I

    array-length v0, v0

    return v0
.end method

.method public e(I)Z
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    check-cast p1, La/d/a/ad;

    iget-object v2, p0, La/d/a/ad;->c:[I

    iget-object v3, p1, La/d/a/ad;->c:[I

    if-ne v2, v3, :cond_19

    move v0, v1

    goto :goto_e

    :cond_19
    iget-object v2, p0, La/d/a/ad;->c:[I

    if-eqz v2, :cond_e

    iget-object v2, p1, La/d/a/ad;->c:[I

    if-eqz v2, :cond_e

    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    iget-object v3, p1, La/d/a/ad;->c:[I

    array-length v3, v3

    if-ne v2, v3, :cond_e

    move v2, v0

    :goto_2a
    iget-object v3, p1, La/d/a/ad;->c:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3c

    iget-object v3, p1, La/d/a/ad;->c:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, La/d/a/ad;->b(I)Z

    move-result v3

    if-eqz v3, :cond_e

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public f()I
    .registers 5

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    if-ge v1, v2, :cond_16

    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v1

    const v3, 0x1ffffff

    and-int/2addr v2, v3

    if-ge v0, v2, :cond_13

    move v0, v2

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_16
    return v0
.end method

.method public f(I)Z
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public g(I)Z
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public h(I)Z
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v0, p0, La/d/a/ad;->c:[I

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    :goto_d
    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1a
    return v1
.end method

.method public i(I)Z
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final j()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public j(I)La/d/a/ad;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, La/d/a/ad;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-object p0

    :cond_8
    iget-object v0, p0, La/d/a/ad;->c:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, La/d/a/ad;->c:[I

    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, La/d/a/ad;->c:[I

    array-length v1, v1

    aput p1, v0, v1

    new-instance p0, La/d/a/ad;

    invoke-direct {p0, v0}, La/d/a/ad;-><init>([I)V

    goto :goto_7
.end method

.method public k(I)La/d/a/ad;
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2c

    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [I

    iget-object v3, p0, La/d/a/ad;->c:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, La/d/a/ad;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, La/d/a/ad;->c:[I

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, La/d/a/ad;

    invoke-direct {p0, v2}, La/d/a/ad;-><init>([I)V

    :cond_2b
    return-object p0

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x49

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n_()La/d/a/ad;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, La/d/a/ad;->c:[I

    if-eqz v0, :cond_74

    const/4 v0, 0x0

    :goto_a
    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_74

    if-lez v0, :cond_16

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_16
    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    if-gez v2, :cond_26

    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_26
    invoke-virtual {p0, v0}, La/d/a/ad;->c(I)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_31
    invoke-virtual {p0, v0}, La/d/a/ad;->e(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3c
    invoke-virtual {p0, v0}, La/d/a/ad;->f(I)Z

    move-result v2

    if-eqz v2, :cond_47

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_47
    invoke-virtual {p0, v0}, La/d/a/ad;->g(I)Z

    move-result v2

    if-eqz v2, :cond_52

    const/16 v2, 0x4e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_52
    invoke-virtual {p0, v0}, La/d/a/ad;->h(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5d
    invoke-virtual {p0, v0}, La/d/a/ad;->i(I)Z

    move-result v2

    if-eqz v2, :cond_68

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_68
    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_23

    :cond_74
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
