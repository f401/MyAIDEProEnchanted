.class public La/m;
.super Ljava/lang/Object;


# direct methods
.method private static a(La/e/m;ZZZLjava/util/List;Ljava/lang/String;)La/e/m;
    .registers 11

    if-eqz p1, :cond_1b

    new-instance v0, La/e/u;

    new-instance v1, La/e/k;

    new-instance v2, La/j/g;

    const-string v3, ".class"

    invoke-direct {v2, v3}, La/j/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, La/e/k;-><init>(La/j/t;)V

    new-instance v2, La/e/ag;

    const-string v3, "classes/"

    invoke-direct {v2, v3, p0}, La/e/ag;-><init>(Ljava/lang/String;La/e/m;)V

    invoke-direct {v0, v1, v2, p0}, La/e/u;-><init>(La/e/j;La/e/m;La/e/m;)V

    move-object p0, v0

    :cond_1b
    new-instance v0, La/e/x;

    invoke-direct {v0, p0, p2}, La/e/x;-><init>(La/e/m;Z)V

    if-eqz p3, :cond_23

    :goto_22
    return-object v0

    :cond_23
    if-eqz p4, :cond_4d

    new-instance v1, La/e/u;

    new-instance v2, La/e/k;

    new-instance v3, La/j/j;

    new-instance v4, La/j/h;

    invoke-direct {v4}, La/j/h;-><init>()V

    invoke-direct {v3, v4}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v3, p4}, La/j/j;->a(Ljava/util/List;)La/j/t;

    move-result-object v3

    invoke-direct {v2, v3}, La/e/k;-><init>(La/j/t;)V

    invoke-direct {v1, v2, v0}, La/e/u;-><init>(La/e/j;La/e/m;)V

    :goto_3d
    new-instance v0, La/e/u;

    new-instance v2, La/e/k;

    new-instance v3, La/j/g;

    invoke-direct {v3, p5}, La/j/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, La/e/k;-><init>(La/j/t;)V

    invoke-direct {v0, v2, v1, p0}, La/e/u;-><init>(La/e/j;La/e/m;La/e/m;)V

    goto :goto_22

    :cond_4d
    move-object v1, v0

    goto :goto_3d
.end method

.method public static a(Ljava/lang/String;La/e;La/e/m;)La/e/m;
    .registers 23

    invoke-virtual/range {p1 .. p1}, La/e;->d()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, La/e;->e()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, La/e;->f()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, La/e;->g()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, La/e;->h()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, La/e;->i()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, La/e;->j()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, La/e;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, La/e;->m()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, La/e;->n()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, La/e;->o()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, La/e;->p()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, La/e;->q()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, La/e;->r()Ljava/util/List;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, La/e;->s()Ljava/util/List;

    move-result-object v18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v4, :cond_f2

    const-string v1, "apk"

    :goto_4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, La/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_73

    if-nez v5, :cond_73

    if-nez v13, :cond_73

    if-nez v14, :cond_73

    if-nez v15, :cond_73

    if-nez v16, :cond_73

    if-nez v17, :cond_73

    if-eqz v18, :cond_11a

    :cond_73
    const-string v1, " (filtered)"

    :goto_75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_11e

    new-instance v1, La/e/u;

    new-instance v3, La/e/k;

    new-instance v6, La/j/j;

    new-instance v19, La/j/h;

    invoke-direct/range {v19 .. v19}, La/j/h;-><init>()V

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v6, v2}, La/j/j;->a(Ljava/util/List;)La/j/t;

    move-result-object v2

    invoke-direct {v3, v2}, La/e/k;-><init>(La/j/t;)V

    move-object/from16 v0, p2

    invoke-direct {v1, v3, v0}, La/e/u;-><init>(La/e/j;La/e/m;)V

    :goto_9e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, ".apk"

    invoke-static/range {v1 .. v6}, La/m;->a(La/e/m;ZZZLjava/util/List;Ljava/lang/String;)La/e/m;

    move-result-object v1

    if-nez v4, :cond_f1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, ".jar"

    move v4, v7

    move-object v5, v13

    invoke-static/range {v1 .. v6}, La/m;->a(La/e/m;ZZZLjava/util/List;Ljava/lang/String;)La/e/m;

    move-result-object v1

    if-nez v7, :cond_f1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, ".aar"

    move v4, v8

    move-object v5, v14

    invoke-static/range {v1 .. v6}, La/m;->a(La/e/m;ZZZLjava/util/List;Ljava/lang/String;)La/e/m;

    move-result-object v1

    if-nez v8, :cond_f1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v6, ".war"

    move v4, v9

    move-object v5, v15

    invoke-static/range {v1 .. v6}, La/m;->a(La/e/m;ZZZLjava/util/List;Ljava/lang/String;)La/e/m;

    move-result-object v1

    if-nez v9, :cond_f1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, ".ear"

    move v4, v10

    move-object/from16 v5, v16

    invoke-static/range {v1 .. v6}, La/m;->a(La/e/m;ZZZLjava/util/List;Ljava/lang/String;)La/e/m;

    move-result-object v1

    if-nez v10, :cond_f1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v6, ".jmod"

    move v4, v11

    move-object/from16 v5, v17

    invoke-static/range {v1 .. v6}, La/m;->a(La/e/m;ZZZLjava/util/List;Ljava/lang/String;)La/e/m;

    move-result-object v1

    if-nez v11, :cond_f1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, ".zip"

    move v4, v12

    move-object/from16 v5, v18

    invoke-static/range {v1 .. v6}, La/m;->a(La/e/m;ZZZLjava/util/List;Ljava/lang/String;)La/e/m;

    move-result-object v1

    :cond_f1
    return-object v1

    :cond_f2
    if-eqz v7, :cond_f8

    const-string v1, "jar"

    goto/16 :goto_4b

    :cond_f8
    if-eqz v8, :cond_fe

    const-string v1, "aar"

    goto/16 :goto_4b

    :cond_fe
    if-eqz v9, :cond_104

    const-string v1, "war"

    goto/16 :goto_4b

    :cond_104
    if-eqz v10, :cond_10a

    const-string v1, "ear"

    goto/16 :goto_4b

    :cond_10a
    if-eqz v11, :cond_110

    const-string v1, "jmod"

    goto/16 :goto_4b

    :cond_110
    if-eqz v12, :cond_116

    const-string v1, "zip"

    goto/16 :goto_4b

    :cond_116
    const-string v1, "directory"

    goto/16 :goto_4b

    :cond_11a
    const-string v1, ""

    goto/16 :goto_75

    :cond_11e
    move-object/from16 v1, p2

    goto/16 :goto_9e
.end method
