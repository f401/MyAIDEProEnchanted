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

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v4, p1, La/d/a/ad;->c:[I

    array-length v0, v4

    if-nez v0, :cond_2

    move-object p1, p0

    goto :goto_0

    :cond_2
    array-length v0, v3

    move v1, v2

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget v5, v4, v1

    invoke-virtual {p0, v5}, La/d/a/ad;->b(I)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    array-length v1, v4

    if-eq v0, v1, :cond_0

    iget-object v1, p0, La/d/a/ad;->c:[I

    array-length v1, v1

    if-ne v0, v1, :cond_5

    array-length v1, v4

    const/4 v5, 0x1

    if-ne v1, v5, :cond_5

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget v1, v3, v1

    aget v5, v4, v2

    if-ne v1, v5, :cond_5

    move-object p1, p0

    goto :goto_0

    :cond_5
    new-array v5, v0, [I

    array-length v1, v3

    array-length v6, v4

    add-int/2addr v1, v6

    if-ne v0, v1, :cond_7

    array-length v0, v3

    invoke-static {v3, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    :cond_6
    array-length v1, v4

    invoke-static {v4, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, La/d/a/ad;

    invoke-direct {p1, v5}, La/d/a/ad;-><init>([I)V

    goto :goto_0

    :cond_7
    move v1, v2

    move v0, v2

    :goto_2
    array-length v6, v3

    if-ge v1, v6, :cond_6

    aget v6, v3, v1

    invoke-virtual {p1, v6}, La/d/a/ad;->b(I)Z

    move-result v6

    if-nez v6, :cond_8

    aget v6, v3, v1

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
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

    :goto_0
    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, La/d/a/ad;

    iget-object v2, p0, La/d/a/ad;->c:[I

    iget-object v3, p1, La/d/a/ad;->c:[I

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, La/d/a/ad;->c:[I

    if-eqz v2, :cond_0

    iget-object v2, p1, La/d/a/ad;->c:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    iget-object v3, p1, La/d/a/ad;->c:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_1
    iget-object v3, p1, La/d/a/ad;->c:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v3, p1, La/d/a/ad;->c:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, La/d/a/ad;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public f()I
    .registers 5

    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    const v3, 0x1ffffff

    and-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public f(I)Z
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(I)Z
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(I)Z
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v0, p0, La/d/a/ad;->c:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public i(I)Z
    .registers 4

    iget-object v0, p0, La/d/a/ad;->c:[I

    aget v0, v0, p1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
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

    goto :goto_0
.end method

.method public k(I)La/d/a/ad;
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

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

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, La/d/a/ad;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_8

    if-lez v0, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    if-gez v2, :cond_1

    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, La/d/a/ad;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0, v0}, La/d/a/ad;->e(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0, v0}, La/d/a/ad;->f(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {p0, v0}, La/d/a/ad;->g(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x4e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {p0, v0}, La/d/a/ad;->h(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {p0, v0}, La/d/a/ad;->i(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v2, p0, La/d/a/ad;->c:[I

    aget v2, v2, v0

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_8
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
