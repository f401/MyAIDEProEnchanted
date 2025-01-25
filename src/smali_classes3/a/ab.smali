.class public La/ab;
.super La/g;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 4

    invoke-direct {p0}, La/g;-><init>()V

    iput-boolean p1, p0, La/ab;->a:Z

    iput-boolean p2, p0, La/ab;->b:Z

    iput-boolean p3, p0, La/ab;->c:Z

    return-void
.end method

.method private a(La/aa;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/n;
    .registers 20

    move-object v0, p1

    iget-boolean v1, v0, La/aa;->l:Z

    if-eqz v1, :cond_2c

    new-instance v1, La/b/g/at;

    invoke-direct {v1}, La/b/g/at;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v11, p6

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v12, p0

    invoke-virtual {p0, p1, v1, v2}, La/ab;->a(La/f;La/b/g/s;Ljava/util/List;)La/b/g/n;

    move-result-object v2

    iget-object v4, v0, La/aa;->h:Ljava/util/List;

    iget-object v5, v0, La/aa;->i:Ljava/util/List;

    iget-object v6, v0, La/aa;->j:Ljava/util/List;

    move-object v3, p0

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, La/ab;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/s;

    move-result-object v0

    invoke-virtual {v1, v0}, La/b/g/at;->a(La/b/g/s;)V

    goto :goto_33

    :cond_2c
    move-object v12, p0

    move-object/from16 v11, p6

    invoke-super/range {p0 .. p6}, La/g;->a(La/f;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/n;

    move-result-object v2

    :goto_33
    return-object v2
.end method


# virtual methods
.method public a(La/aa;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;)La/b/g/n;
    .registers 13

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p1, La/aa;->m:Z

    if-eqz v0, :cond_42

    if-eqz p2, :cond_42

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p3, :cond_16

    new-instance p3, La/b/g/an;

    invoke-direct {p3, p2}, La/b/g/an;-><init>(La/b/g/s;)V

    goto :goto_27

    :cond_16
    new-instance v3, La/b/g/av;

    new-array v4, v2, [La/b/g/aq;

    aput-object p3, v4, v1

    new-instance p3, La/b/g/an;

    invoke-direct {p3, p2}, La/b/g/an;-><init>(La/b/g/s;)V

    aput-object p3, v4, v0

    invoke-direct {v3, v4}, La/b/g/av;-><init>([La/b/g/aq;)V

    move-object p3, v3

    :goto_27
    if-nez p4, :cond_2f

    new-instance p4, La/b/g/an;

    invoke-direct {p4, p2}, La/b/g/an;-><init>(La/b/g/s;)V

    goto :goto_42

    :cond_2f
    new-instance v3, La/b/g/av;

    new-array v2, v2, [La/b/g/aq;

    aput-object p4, v2, v1

    new-instance p4, La/b/g/an;

    invoke-direct {p4, p2}, La/b/g/an;-><init>(La/b/g/s;)V

    aput-object p4, v2, v0

    invoke-direct {v3, v2}, La/b/g/av;-><init>([La/b/g/aq;)V

    move-object v4, v3

    move-object v3, p3

    goto :goto_44

    :cond_42
    :goto_42
    move-object v3, p3

    move-object v4, p4

    :goto_44
    iget-boolean p3, p1, La/aa;->k:Z

    const/4 p4, 0x0

    if-nez p3, :cond_4f

    iget-boolean p3, p1, La/aa;->l:Z

    if-nez p3, :cond_4f

    move-object v2, p4

    goto :goto_50

    :cond_4f
    move-object v2, p2

    :goto_50
    iget-boolean p2, p1, La/aa;->n:Z

    if-eqz p2, :cond_5d

    new-instance p2, La/b/a/d/g;

    const-string p3, "Code"

    invoke-direct {p2, p3, p5}, La/b/a/d/g;-><init>(Ljava/lang/String;La/b/a/d/i;)V

    move-object v5, p2

    goto :goto_5e

    :cond_5d
    move-object v5, p4

    :goto_5e
    iget-object p2, p1, La/aa;->r:La/f;

    if-eqz p2, :cond_75

    new-instance p3, La/b/g/as;

    invoke-direct {p3}, La/b/g/as;-><init>()V

    invoke-virtual {p0, p2, p3, v6}, La/ab;->a(La/f;La/b/g/n;Ljava/util/List;)La/b/g/n;

    move-result-object p2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, La/ab;->a(La/aa;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/n;

    move-result-object p1

    invoke-virtual {p3, p1}, La/b/g/as;->a(La/b/g/n;)V

    goto :goto_7b

    :cond_75
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, La/ab;->a(La/aa;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/n;

    move-result-object p2

    :goto_7b
    return-object p2
.end method

.method public a(Ljava/util/List;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;)La/b/g/n;
    .registers 15

    new-instance v0, La/b/g/as;

    invoke-direct {v0}, La/b/g/as;-><init>()V

    if-eqz p1, :cond_3c

    const/4 v1, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, La/aa;

    iget-boolean v2, p0, La/ab;->a:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, v4, La/aa;->o:Z

    if-eqz v2, :cond_2d

    :cond_1d
    iget-boolean v2, p0, La/ab;->b:Z

    if-eqz v2, :cond_25

    iget-boolean v2, v4, La/aa;->p:Z

    if-eqz v2, :cond_2d

    :cond_25
    iget-boolean v2, p0, La/ab;->c:Z

    if-eqz v2, :cond_39

    iget-boolean v2, v4, La/aa;->q:Z

    if-nez v2, :cond_39

    :cond_2d
    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, La/ab;->a(La/aa;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;)La/b/g/n;

    move-result-object v2

    invoke-virtual {v0, v2}, La/b/g/as;->a(La/b/g/n;)V

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3c
    return-object v0
.end method
