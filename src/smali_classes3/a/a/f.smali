.class public La/a/f;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/j;
.implements La/b/b/a/f;
.implements La/b/g/s;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:La/b/b/h;

.field private c:I

.field private d:La/b/c;

.field private e:La/b/j;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/a/f;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(La/b/k;I)I
    .registers 2

    invoke-virtual {p0, p1}, La/b/k;->l(I)La/b/b/b;

    move-result-object p0

    check-cast p0, La/b/b/f;

    invoke-virtual {p0}, La/b/b/f;->b()I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "java/lang/invoke/LambdaMetafactory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(La/b/k;I)La/b/b/k;
    .registers 2

    invoke-virtual {p0, p1}, La/b/k;->l(I)La/b/b/b;

    move-result-object p0

    check-cast p0, La/b/b/k;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "altMetafactory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/b;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    move-object v14, v1

    check-cast v14, La/b/k;

    iget v2, v15, La/b/a/b;->a:I

    invoke-virtual {v14, v2}, La/b/k;->l(I)La/b/b/b;

    move-result-object v2

    move-object v13, v2

    check-cast v13, La/b/b/j;

    invoke-virtual {v13, v1}, La/b/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/a/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_134

    iget-object v2, v0, La/a/f;->b:La/b/b/h;

    invoke-virtual {v2, v1}, La/b/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, La/b/f/i;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/b/f/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, La/b/a/b;->c:[I

    const/4 v12, 0x1

    aget v3, v3, v12

    invoke-virtual {v14, v3}, La/b/k;->l(I)La/b/b/b;

    move-result-object v3

    check-cast v3, La/b/b/j;

    const/4 v4, 0x0

    iput-object v4, v0, La/a/f;->d:La/b/c;

    iput-object v4, v0, La/a/f;->e:La/b/j;

    iget v4, v3, La/b/b/j;->b:I

    invoke-interface {v1, v4, v0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget v4, v0, La/a/f;->c:I

    iget-object v5, v0, La/a/f;->b:La/b/b/h;

    invoke-virtual {v5, v1}, La/b/b/h;->a(La/b/c;)Ljava/lang/String;

    move-result-object v9

    iget-object v5, v15, La/b/a/b;->c:[I

    const/4 v11, 0x0

    aget v5, v5, v11

    invoke-static {v14, v5}, La/a/f;->b(La/b/k;I)La/b/b/k;

    move-result-object v5

    invoke-virtual {v5, v1}, La/b/b/k;->a(La/b/c;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, La/b/b/j;->b()I

    move-result v16

    invoke-virtual {v3, v1}, La/b/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v3, v1}, La/b/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3, v1}, La/b/b/j;->c(La/b/c;)Ljava/lang/String;

    move-result-object v19

    iget-object v8, v0, La/a/f;->d:La/b/c;

    iget-object v7, v0, La/a/f;->e:La/b/j;

    new-instance v5, La/a/e;

    new-array v3, v12, [Ljava/lang/String;

    aput-object v2, v3, v11

    new-array v2, v11, [Ljava/lang/String;

    move-object/from16 v20, v2

    move-object v2, v5

    move-object/from16 v21, v3

    move-object v3, v14

    move-object v0, v5

    move-object/from16 v5, p2

    move-object/from16 v22, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v8

    move-object/from16 v8, v20

    const/16 v20, 0x0

    move/from16 v11, v16

    const/16 v23, 0x1

    move-object/from16 v12, v17

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v13, v18

    move-object/from16 v24, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    invoke-direct/range {v2 .. v16}, La/a/e;-><init>(La/b/k;ILa/b/a/b;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/j;)V

    invoke-virtual {v0, v1}, La/b/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    move-object/from16 v0, p2

    iget-object v1, v0, La/b/a/b;->c:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    move-object/from16 v2, v24

    invoke-static {v2, v1}, La/a/f;->a(La/b/k;I)I

    move-result v1

    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x4

    if-eqz v3, :cond_dd

    iget-object v3, v0, La/b/a/b;->c:[I

    aget v3, v3, v4

    invoke-static {v2, v3}, La/a/f;->a(La/b/k;I)I

    move-result v3

    const/4 v4, 0x5

    const/4 v11, 0x0

    :goto_bf
    if-ge v11, v3, :cond_dd

    iget-object v5, v0, La/b/a/b;->c:[I

    aget v5, v5, v4

    invoke-virtual {v2, v5}, La/b/k;->e(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v17

    iget-object v7, v6, La/a/e;->e:[Ljava/lang/String;

    iget-object v8, v6, La/a/e;->e:[Ljava/lang/String;

    array-length v8, v8

    invoke-static {v7, v8, v5}, La/j/b;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v6, La/a/e;->e:[Ljava/lang/String;

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_bf

    :cond_dd
    move-object/from16 v6, v17

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_10e

    iget-object v3, v0, La/b/a/b;->c:[I

    aget v3, v3, v4

    invoke-static {v2, v3}, La/a/f;->a(La/b/k;I)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x0

    :goto_ee
    if-ge v11, v3, :cond_10e

    iget-object v5, v0, La/b/a/b;->c:[I

    aget v5, v5, v4

    invoke-static {v2, v5}, La/a/f;->b(La/b/k;I)La/b/b/k;

    move-result-object v5

    iget-object v7, v6, La/a/e;->f:[Ljava/lang/String;

    iget-object v8, v6, La/a/e;->f:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v5, v2}, La/b/b/k;->a(La/b/c;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v8, v5}, La/j/b;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v6, La/a/e;->f:[Ljava/lang/String;

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_ee

    :cond_10e
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_121

    iget-object v0, v6, La/a/e;->e:[Ljava/lang/String;

    iget-object v1, v6, La/a/e;->e:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "java/io/Serializable"

    invoke-static {v0, v1, v2}, La/j/b;->a([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v6, La/a/e;->e:[Ljava/lang/String;

    :cond_121
    move-object/from16 v0, p0

    move-object v1, v6

    goto :goto_129

    :cond_125
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    :goto_129
    iget-object v2, v0, La/a/f;->a:Ljava/util/Map;

    iget v3, v0, La/a/f;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_134
    return-void
.end method

.method public a(La/b/c;La/b/a/c;)V
    .registers 4

    iget v0, p0, La/a/f;->c:I

    invoke-virtual {p2, p1, v0, p0}, La/b/a/c;->a(La/b/c;ILa/b/a/d/j;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 3

    iput-object p2, p0, La/a/f;->b:La/b/b/h;

    invoke-virtual {p2}, La/b/b/h;->b()I

    move-result p2

    iput p2, p0, La/a/f;->c:I

    invoke-interface {p1, p0}, La/b/c;->a(La/b/a/d/i;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/q;)V
    .registers 3

    iget-object p1, p2, La/b/b/q;->c:La/b/c;

    iput-object p1, p0, La/a/f;->d:La/b/c;

    iget-object p1, p2, La/b/b/q;->e:La/b/i;

    check-cast p1, La/b/j;

    iput-object p1, p0, La/a/f;->e:La/b/j;

    return-void
.end method

.method public a(La/b/e;)V
    .registers 2

    return-void
.end method

.method public a(La/b/k;)V
    .registers 4

    new-instance v0, La/b/b/a/e;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, La/b/b/a/e;-><init>(ILa/b/b/a/f;)V

    invoke-virtual {p1, v0}, La/b/k;->a(La/b/b/a/f;)V

    return-void
.end method
