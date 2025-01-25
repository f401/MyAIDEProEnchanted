.class public La/d/a/ab;
.super La/d/a/ao;


# instance fields
.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/d/a/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La/d/a/ae;
    .registers 3

    iget v0, p0, La/d/a/ab;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La/d/a/ab;->f:I

    new-instance v1, La/d/a/y;

    invoke-direct {v1, p0, v0}, La/d/a/y;-><init>(La/d/a/be;I)V

    return-object v1
.end method

.method public a(Ljava/lang/String;La/b/c;La/d/a/ae;)La/d/a/ap;
    .registers 11

    if-nez p1, :cond_5

    sget-object v0, La/d/a/ax;->f:La/d/a/ap;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v6, p0, La/d/a/ab;->j:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, La/d/a/ab;->j:I

    new-instance v0, La/d/a/v;

    const/4 v3, 0x0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, La/d/a/v;-><init>(Ljava/lang/String;La/b/c;ZLa/d/a/ae;La/d/a/be;I)V

    goto :goto_4
.end method

.method public b()La/d/a/af;
    .registers 3

    iget v0, p0, La/d/a/ab;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La/d/a/ab;->g:I

    new-instance v1, La/d/a/z;

    invoke-direct {v1, p0, v0}, La/d/a/z;-><init>(La/d/a/be;I)V

    return-object v1
.end method

.method public b(Ljava/lang/String;La/b/c;ZZ)La/d/a/ap;
    .registers 12

    if-nez p1, :cond_5

    sget-object v0, La/d/a/ax;->f:La/d/a/ap;

    :goto_4
    return-object v0

    :cond_5
    iget v6, p0, La/d/a/ab;->j:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, La/d/a/ab;->j:I

    new-instance v0, La/d/a/aa;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, La/d/a/aa;-><init>(Ljava/lang/String;La/b/c;ZZLa/d/a/be;I)V

    goto :goto_4
.end method

.method public c()La/d/a/u;
    .registers 3

    iget v0, p0, La/d/a/ab;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La/d/a/ab;->h:I

    new-instance v1, La/d/a/x;

    invoke-direct {v1, p0, v0}, La/d/a/x;-><init>(La/d/a/be;I)V

    return-object v1
.end method

.method public d()La/d/a/t;
    .registers 3

    iget v0, p0, La/d/a/ab;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La/d/a/ab;->i:I

    new-instance v1, La/d/a/w;

    invoke-direct {v1, p0, v0}, La/d/a/w;-><init>(La/d/a/be;I)V

    return-object v1
.end method
