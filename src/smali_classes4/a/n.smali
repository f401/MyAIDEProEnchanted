.class public La/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/b/b;

.field private final b:La/j/n;


# direct methods
.method public constructor <init>(La/b/b;La/j/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/n;->a:La/b/b;

    iput-object p2, p0, La/n;->b:La/j/n;

    return-void
.end method

.method private a(La/e/o;ZZLjava/lang/String;Ljava/util/List;[BLjava/lang/String;)La/e/o;
    .registers 15

    if-eqz p2, :cond_3e

    new-instance v0, La/e/ae;

    invoke-direct {v0, p1}, La/e/ae;-><init>(La/e/o;)V

    :goto_7
    new-instance v2, La/e/l;

    new-instance v1, La/e/k;

    new-instance v3, La/j/g;

    invoke-direct {v3, p4}, La/j/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, La/e/k;-><init>(La/j/t;)V

    invoke-direct {v2, v1}, La/e/l;-><init>(La/e/j;)V

    if-eqz p5, :cond_5c

    new-instance v1, La/e/v;

    new-instance v3, La/e/l;

    new-instance v4, La/e/k;

    new-instance v5, La/j/j;

    new-instance v6, La/j/h;

    invoke-direct {v6}, La/j/h;-><init>()V

    invoke-direct {v5, v6}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v5, p5}, La/j/j;->a(Ljava/util/List;)La/j/t;

    move-result-object v5

    invoke-direct {v4, v5}, La/e/k;-><init>(La/j/t;)V

    invoke-direct {v3, v4}, La/e/l;-><init>(La/e/j;)V

    invoke-direct {v1, v3, v0}, La/e/v;-><init>(La/e/j;La/e/o;)V

    :goto_35
    if-eqz p3, :cond_38

    move-object p1, v0

    :cond_38
    new-instance v0, La/e/v;

    invoke-direct {v0, v2, v1, p1}, La/e/v;-><init>(La/e/j;La/e/o;La/e/o;)V

    return-object v0

    :cond_3e
    new-instance v1, La/e/y;

    invoke-direct {v1, p6, p1}, La/e/y;-><init>([BLa/e/o;)V

    if-eqz p7, :cond_5e

    new-instance v0, La/e/v;

    new-instance v2, La/e/k;

    new-instance v3, La/j/g;

    const-string v4, ".class"

    invoke-direct {v3, v4}, La/j/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, La/e/k;-><init>(La/j/t;)V

    new-instance v3, La/e/af;

    invoke-direct {v3, p7, v1}, La/e/af;-><init>(Ljava/lang/String;La/e/o;)V

    invoke-direct {v0, v2, v3, v1}, La/e/v;-><init>(La/e/j;La/e/o;La/e/o;)V

    goto :goto_7

    :cond_5c
    move-object v1, v0

    goto :goto_35

    :cond_5e
    move-object v0, v1

    goto :goto_7
.end method

.method private a(La/e;La/e/o;)La/e/o;
    .registers 30

    invoke-virtual/range {p1 .. p1}, La/e;->d()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, La/e;->e()Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, La/e;->f()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, La/e;->g()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, La/e;->h()Z

    move-result v18

    invoke-virtual/range {p1 .. p1}, La/e;->i()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, La/e;->j()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, La/e;->l()Ljava/util/List;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, La/e;->m()Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, La/e;->n()Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, La/e;->o()Ljava/util/List;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, La/e;->p()Ljava/util/List;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, La/e;->q()Ljava/util/List;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, La/e;->r()Ljava/util/List;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, La/e;->s()Ljava/util/List;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing output "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v14, :cond_158

    const-string v1, "apk"

    :goto_4b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, La/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v20, :cond_73

    if-nez v21, :cond_73

    if-nez v22, :cond_73

    if-nez v23, :cond_73

    if-nez v24, :cond_73

    if-nez v25, :cond_73

    if-nez v26, :cond_73

    if-eqz v6, :cond_180

    :cond_73
    const-string v1, " (filtered)"

    :goto_75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, La/e;->b()Ljava/io/File;

    move-result-object v3

    if-nez v14, :cond_92

    if-nez v15, :cond_92

    if-nez v16, :cond_92

    if-nez v17, :cond_92

    if-nez v18, :cond_92

    if-nez v19, :cond_92

    if-eqz v4, :cond_184

    :cond_92
    const/4 v1, 0x1

    :goto_93
    new-instance v2, La/e/r;

    invoke-direct {v2, v3, v1}, La/e/r;-><init>(Ljava/io/File;Z)V

    if-eqz v14, :cond_187

    const/4 v1, 0x1

    move v13, v1

    :goto_9c
    if-nez v13, :cond_a0

    if-eqz v15, :cond_18b

    :cond_a0
    const/4 v1, 0x1

    move v12, v1

    :goto_a2
    if-nez v12, :cond_a6

    if-eqz v16, :cond_18f

    :cond_a6
    const/4 v1, 0x1

    move v11, v1

    :goto_a8
    if-nez v11, :cond_ac

    if-eqz v17, :cond_193

    :cond_ac
    const/4 v1, 0x1

    move v10, v1

    :goto_ae
    if-nez v10, :cond_b2

    if-eqz v18, :cond_197

    :cond_b2
    const/4 v1, 0x1

    move v9, v1

    :goto_b4
    if-nez v9, :cond_b8

    if-eqz v19, :cond_19b

    :cond_b8
    const/4 v3, 0x1

    :goto_b9
    const-string v5, ".zip"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, La/n;->a(La/e/o;ZZLjava/lang/String;Ljava/util/List;[BLjava/lang/String;)La/e/o;

    move-result-object v2

    const-string v5, ".jmod"

    sget-object v7, La/b/a;->a:[B

    const-string v8, "classes/"

    move-object/from16 v1, p0

    move v3, v9

    move/from16 v4, v19

    move-object/from16 v6, v26

    invoke-direct/range {v1 .. v8}, La/n;->a(La/e/o;ZZLjava/lang/String;Ljava/util/List;[BLjava/lang/String;)La/e/o;

    move-result-object v2

    const-string v5, ".ear"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move v3, v10

    move/from16 v4, v18

    move-object/from16 v6, v25

    invoke-direct/range {v1 .. v8}, La/n;->a(La/e/o;ZZLjava/lang/String;Ljava/util/List;[BLjava/lang/String;)La/e/o;

    move-result-object v2

    const-string v5, ".war"

    const/4 v7, 0x0

    const-string v8, "classes/"

    move-object/from16 v1, p0

    move v3, v11

    move/from16 v4, v17

    move-object/from16 v6, v24

    invoke-direct/range {v1 .. v8}, La/n;->a(La/e/o;ZZLjava/lang/String;Ljava/util/List;[BLjava/lang/String;)La/e/o;

    move-result-object v2

    const-string v5, ".aar"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move v3, v12

    move/from16 v4, v16

    move-object/from16 v6, v23

    invoke-direct/range {v1 .. v8}, La/n;->a(La/e/o;ZZLjava/lang/String;Ljava/util/List;[BLjava/lang/String;)La/e/o;

    move-result-object v2

    const-string v5, ".jar"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move v3, v13

    move v4, v15

    move-object/from16 v6, v22

    invoke-direct/range {v1 .. v8}, La/n;->a(La/e/o;ZZLjava/lang/String;Ljava/util/List;[BLjava/lang/String;)La/e/o;

    move-result-object v2

    const/4 v3, 0x0

    const-string v5, ".apk"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move v4, v14

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v8}, La/n;->a(La/e/o;ZZLjava/lang/String;Ljava/util/List;[BLjava/lang/String;)La/e/o;

    move-result-object v1

    new-instance v2, La/e/b;

    move-object/from16 v0, p0

    iget-object v3, v0, La/n;->a:La/b/b;

    invoke-direct {v2, v3, v1}, La/e/b;-><init>(La/b/b;La/e/o;)V

    if-eqz v20, :cond_19e

    new-instance v1, La/e/v;

    new-instance v3, La/e/k;

    new-instance v4, La/j/j;

    new-instance v5, La/j/h;

    invoke-direct {v5}, La/j/h;-><init>()V

    invoke-direct {v4, v5}, La/j/j;-><init>(La/j/u;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, La/j/j;->a(Ljava/util/List;)La/j/t;

    move-result-object v4

    invoke-direct {v3, v4}, La/e/k;-><init>(La/j/t;)V

    invoke-direct {v1, v3, v2}, La/e/v;-><init>(La/e/j;La/e/o;)V

    :goto_143
    new-instance v2, La/e/s;

    move-object/from16 v0, p0

    iget-object v3, v0, La/n;->b:La/j/n;

    const-string v4, ".class"

    invoke-direct {v2, v3, v1, v1, v4}, La/e/s;-><init>(La/j/n;La/e/o;La/e/o;Ljava/lang/String;)V

    if-eqz p2, :cond_1a0

    new-instance v1, La/e/a;

    move-object/from16 v0, p2

    invoke-direct {v1, v2, v0}, La/e/a;-><init>(La/e/o;La/e/o;)V

    :goto_157
    return-object v1

    :cond_158
    if-eqz v15, :cond_15e

    const-string v1, "jar"

    goto/16 :goto_4b

    :cond_15e
    if-eqz v16, :cond_164

    const-string v1, "aar"

    goto/16 :goto_4b

    :cond_164
    if-eqz v17, :cond_16a

    const-string v1, "war"

    goto/16 :goto_4b

    :cond_16a
    if-eqz v18, :cond_170

    const-string v1, "ear"

    goto/16 :goto_4b

    :cond_170
    if-eqz v19, :cond_176

    const-string v1, "jmod"

    goto/16 :goto_4b

    :cond_176
    if-eqz v4, :cond_17c

    const-string v1, "zip"

    goto/16 :goto_4b

    :cond_17c
    const-string v1, "directory"

    goto/16 :goto_4b

    :cond_180
    const-string v1, ""

    goto/16 :goto_75

    :cond_184
    const/4 v1, 0x0

    goto/16 :goto_93

    :cond_187
    const/4 v1, 0x0

    move v13, v1

    goto/16 :goto_9c

    :cond_18b
    const/4 v1, 0x0

    move v12, v1

    goto/16 :goto_a2

    :cond_18f
    const/4 v1, 0x0

    move v11, v1

    goto/16 :goto_a8

    :cond_193
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_ae

    :cond_197
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_b4

    :cond_19b
    const/4 v3, 0x0

    goto/16 :goto_b9

    :cond_19e
    move-object v1, v2

    goto :goto_143

    :cond_1a0
    move-object v1, v2

    goto :goto_157
.end method


# virtual methods
.method public a(La/d;II)La/e/o;
    .registers 7

    const/4 v0, 0x0

    add-int/lit8 v1, p3, -0x1

    :goto_3
    if-lt v1, p2, :cond_10

    invoke-virtual {p1, v1}, La/d;->a(I)La/e;

    move-result-object v2

    invoke-direct {p0, v2, v0}, La/n;->a(La/e;La/e/o;)La/e/o;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_10
    return-object v0
.end method
