.class public La/g/a/u;
.super La/g/a/z;


# instance fields
.field private a:[La/d/a/bd;


# direct methods
.method public constructor <init>(La/d/h;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/a/z;-><init>(La/d/h;)V

    const/16 v0, 0x100

    new-array v0, v0, [La/d/a/bd;

    iput-object v0, p0, La/g/a/u;->a:[La/d/a/bd;

    return-void
.end method

.method private a(La/b/c;La/b/j;La/d/a/ap;)Z
    .registers 7

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v0, p2, La/b/n;

    if-eqz v0, :cond_22

    check-cast p2, La/b/n;

    iget-object v0, p2, La/b/n;->a:[La/b/c;

    :goto_10
    if-eqz v0, :cond_18

    invoke-static {v1}, La/b/f/i;->j(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p3, v1, v0}, La/d/a/ap;->a(Ljava/lang/String;La/b/c;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    check-cast p2, La/b/h;

    iget-object v0, p2, La/b/h;->a:[La/b/c;

    goto :goto_10

    :cond_27
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    goto :goto_19

    :cond_2d
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method public a(La/b/c;La/b/b/q;ILa/d/a/bd;)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, La/g/a/z;->a(La/b/c;La/b/b/q;ILa/d/a/bd;)V

    iget-object v0, p0, La/g/a/u;->a:[La/d/a/bd;

    aput-object p4, v0, p3

    return-void
.end method

.method public b(La/b/c;La/b/b/q;Ljava/lang/String;)La/d/a/bd;
    .registers 16

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, La/g/a/z;->b(La/b/c;La/b/b/q;Ljava/lang/String;)La/d/a/bd;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/bd;->j()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_d

    :cond_c
    :goto_c
    return-object v2

    :cond_d
    iget-object v0, p2, La/b/b/q;->e:La/b/i;

    check-cast v0, La/b/j;

    if-eqz v0, :cond_c

    move-object v1, v2

    check-cast v1, La/d/a/av;

    invoke-virtual {v1}, La/d/a/av;->s()La/d/a/bd;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    invoke-virtual {v1, v4}, La/d/a/ad;->a(I)I

    move-result v3

    invoke-static {v0}, La/g/b/ac;->d(La/b/j;)Z

    move-result v1

    if-eqz v1, :cond_6b

    new-instance v1, La/d/a/ad;

    const/high16 v5, 0x4000000

    or-int/2addr v3, v5

    invoke-direct {v1, v3}, La/d/a/ad;-><init>(I)V

    :goto_30
    invoke-static {v0}, La/g/b/ac;->b(La/b/j;)J

    move-result-wide v6

    invoke-virtual {p2, p1}, La/b/b/q;->c(La/b/c;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, La/g/a/u;->b:Z

    invoke-static {v3, v5}, La/b/f/i;->a(Ljava/lang/String;Z)I

    move-result v5

    move-object v3, v1

    :goto_3f
    if-ge v4, v5, :cond_81

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v4

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_88

    iget-object v1, p0, La/g/a/u;->a:[La/d/a/bd;

    aget-object v1, v1, v4

    instance-of v8, v1, La/d/a/av;

    if-eqz v8, :cond_88

    check-cast v1, La/d/a/av;

    iget-object v8, p2, La/b/b/q;->c:La/b/c;

    invoke-direct {p0, v8, v0, v1}, La/g/a/u;->a(La/b/c;La/b/j;La/d/a/ap;)Z

    move-result v8

    if-eqz v8, :cond_88

    invoke-virtual {v1}, La/d/a/av;->s()La/d/a/bd;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v1

    if-nez v3, :cond_7c

    :goto_67
    add-int/lit8 v4, v4, 0x1

    move-object v3, v1

    goto :goto_3f

    :cond_6b
    invoke-static {v0}, La/g/b/ac;->c(La/b/j;)Z

    move-result v1

    if-eqz v1, :cond_7a

    new-instance v1, La/d/a/ad;

    const/high16 v5, 0x8000000

    or-int/2addr v3, v5

    invoke-direct {v1, v3}, La/d/a/ad;-><init>(I)V

    goto :goto_30

    :cond_7a
    const/4 v1, 0x0

    goto :goto_30

    :cond_7c
    invoke-virtual {v3, v1}, La/d/a/ad;->a(La/d/a/ad;)La/d/a/ad;

    move-result-object v1

    goto :goto_67

    :cond_81
    if-eqz v3, :cond_c

    invoke-virtual {p0, v2, v3}, La/g/a/u;->a(La/d/a/bd;La/d/a/ad;)La/d/a/bd;

    move-result-object v2

    goto :goto_c

    :cond_88
    move-object v1, v3

    goto :goto_67
.end method
