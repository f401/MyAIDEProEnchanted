.class public Lorg/c/a/a/c/a/a/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/c/a/a/b/a/d;

.field protected b:Lorg/c/a/a/d/c;

.field protected c:[I


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/a/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/g;

    invoke-direct {v0, p0}, Lorg/c/a/a/c/a/a/a/a/g;-><init>(Lorg/c/a/a/c/a/a/a/a/f;)V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/f;->c:[I

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/f;->a:Lorg/c/a/a/b/a/d;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/f;->c:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/f;->c:[I

    aget v0, v0, p1

    goto :goto_5
.end method

.method public a()Lorg/c/a/a/b/a/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/f;->a:Lorg/c/a/a/b/a/d;

    return-object v0
.end method

.method public a(II)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(III)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 11

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/a;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->size()I

    move-result v2

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/a/a;-><init>(Lorg/c/a/a/c/a/a/a/a/f;IIIIZ)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v1, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(IIILjava/util/HashSet;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 13

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/a;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->size()I

    move-result v2

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/c/a/a/c/a/a/a/a/a;-><init>(Lorg/c/a/a/c/a/a/a/a/f;IIIIZLjava/util/HashSet;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v1, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(IIIZ)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 12

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/a;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->size()I

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/a/a;-><init>(Lorg/c/a/a/c/a/a/a/a/f;IIIIZ)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v1, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(Lorg/c/a/a/c/a/a/a/a/a;)Lorg/c/a/a/c/a/a/a/a/a;
    .registers 4

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/a;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v1}, Lorg/c/a/a/d/c;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lorg/c/a/a/c/a/a/a/a/a;-><init>(Lorg/c/a/a/c/a/a/a/a/f;ILorg/c/a/a/c/a/a/a/a/a;)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v1, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a([I)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/f;->c:[I

    return-void
.end method

.method public b()Lorg/c/a/a/d/c;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    return-object v0
.end method

.method public c()Lorg/c/a/a/c/a/a/a/a/a;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/f;->b:Lorg/c/a/a/d/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    return-object v0
.end method
