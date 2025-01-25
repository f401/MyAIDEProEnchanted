.class public La/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/an;

.field private final b:Ljava/util/Properties;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/an;Ljava/util/Properties;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/k;->a:La/an;

    iput-object p2, p0, La/k;->b:Ljava/util/Properties;

    invoke-direct {p0}, La/k;->j()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/io/File;Ljava/util/Properties;)V
    .registers 5

    new-instance v0, La/a;

    invoke-direct {v0, p1, p2}, La/a;-><init>([Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {p0, v0, p3}, La/k;-><init>(La/an;Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/Properties;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, La/k;-><init>([Ljava/lang/String;Ljava/io/File;Ljava/util/Properties;)V

    return-void
.end method

.method private a(J)J
    .registers 6

    const/4 v2, 0x1

    const-string v0, "configuration file name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, La/k;->a(Ljava/lang/String;ZZZ)V

    iget-object v0, p0, La/k;->a:La/an;

    invoke-virtual {v0}, La/an;->e()Ljava/net/URL;

    move-result-object v1

    :try_start_d
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_14} :catch_24

    :goto_14
    if-eqz v0, :cond_27

    iget-object v1, p0, La/k;->a:La/an;

    new-instance v2, La/q;

    invoke-direct {v2, v0}, La/q;-><init>(Ljava/net/URL;)V

    invoke-virtual {v1, v2}, La/an;->a(La/an;)V

    :cond_20
    :goto_20
    invoke-direct {p0}, La/k;->j()V

    return-wide p1

    :catch_24
    move-exception v0

    const/4 v0, 0x0

    goto :goto_14

    :cond_27
    if-eqz v1, :cond_3b

    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iget-object v1, p0, La/k;->a:La/an;

    new-instance v2, La/q;

    invoke-direct {v2, v0}, La/q;-><init>(Ljava/net/URL;)V

    invoke-virtual {v1, v2}, La/an;->a(La/an;)V

    goto :goto_20

    :cond_3b
    const-class v0, La/k;

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v1, p0, La/k;->a:La/an;

    new-instance v2, La/q;

    invoke-direct {v2, v0}, La/q;-><init>(Ljava/net/URL;)V

    invoke-virtual {v1, v2}, La/an;->a(La/an;)V

    goto :goto_20

    :cond_50
    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, La/k;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, La/k;->a:La/an;

    new-instance v2, La/q;

    invoke-direct {v2, v0}, La/q;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, La/an;->a(La/an;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_20

    move-wide p1, v0

    goto :goto_20
.end method

.method private a(ZZZLa/f;)La/aa;
    .registers 15

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v3, v0

    move v4, v0

    move v5, p3

    move v6, v0

    move v7, v0

    :goto_7
    const-string v2, "keyword \'class\', \'interface\', or \'enum\'"

    invoke-direct {p0, v2, v0, v0, v1}, La/k;->a(Ljava/lang/String;ZZZ)V

    const-string v2, ","

    iget-object v8, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    new-instance v0, La/aa;

    invoke-virtual {p0}, La/k;->a()La/f;

    move-result-object v9

    move v1, p1

    move v2, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, La/aa;-><init>(ZZZZZZZLa/f;La/f;)V

    return-object v0

    :cond_23
    const-string v2, "keyword \'allowshrinking\', \'allowoptimization\', or \'allowobfuscation\'"

    invoke-direct {p0, v2}, La/k;->d(Ljava/lang/String;)V

    const-string v2, "includedescriptorclasses"

    iget-object v8, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    move v3, v1

    goto :goto_7

    :cond_34
    const-string v2, "includecode"

    iget-object v8, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    move v4, v1

    goto :goto_7

    :cond_40
    const-string v2, "allowshrinking"

    iget-object v8, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    move v5, v1

    goto :goto_7

    :cond_4c
    const-string v2, "allowoptimization"

    iget-object v8, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    move v6, v1

    goto :goto_7

    :cond_58
    const-string v2, "allowobfuscation"

    iget-object v7, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    move v7, v1

    goto :goto_7

    :cond_64
    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting keyword \'includedescriptorclasses\', \'includecode\', \'allowshrinking\', \'allowoptimization\', or \'allowobfuscation\' before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(La/d;Z)La/d;
    .registers 20

    if-nez p1, :cond_7

    new-instance p1, La/d;

    invoke-direct/range {p1 .. p1}, La/d;-><init>()V

    :cond_7
    const-string v1, "jar or directory name"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, La/k;->a(Ljava/lang/String;ZZZ)V

    new-instance v15, La/e;

    move-object/from16 v0, p0

    iget-object v1, v0, La/k;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, La/k;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    move/from16 v0, p2

    invoke-direct {v15, v1, v0}, La/e;-><init>(Ljava/io/File;Z)V

    invoke-direct/range {p0 .. p0}, La/k;->j()V

    invoke-direct/range {p0 .. p0}, La/k;->k()Z

    move-result v1

    if-nez v1, :cond_db

    const-string v1, "("

    move-object/from16 v0, p0

    iget-object v2, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    const/4 v1, 0x7

    new-array v0, v1, [Ljava/util/List;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_3e
    add-int/lit8 v14, v13, 0x1

    const-string v2, "filter"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v12}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v16, v13

    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v14, v1, :cond_65

    const-string v1, ";"

    move-object/from16 v0, p0

    iget-object v2, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_120

    :cond_65
    const-string v1, ")"

    move-object/from16 v0, p0

    iget-object v2, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    new-instance v1, La/ag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting separating \',\' or \';\', or closing \')\' before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->a:La/an;

    invoke-virtual {v3}, La/an;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La/ag;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_92
    add-int/lit8 v1, v14, -0x1

    aget-object v2, v16, v1

    invoke-virtual {v15, v2}, La/e;->a(Ljava/util/List;)V

    if-lez v1, :cond_d8

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v16, v1

    invoke-virtual {v15, v2}, La/e;->c(Ljava/util/List;)V

    if-lez v1, :cond_d8

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v16, v1

    invoke-virtual {v15, v2}, La/e;->e(Ljava/util/List;)V

    if-lez v1, :cond_d8

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v16, v1

    invoke-virtual {v15, v2}, La/e;->f(Ljava/util/List;)V

    if-lez v1, :cond_d8

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v16, v1

    invoke-virtual {v15, v2}, La/e;->g(Ljava/util/List;)V

    if-lez v1, :cond_d8

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v16, v1

    invoke-virtual {v15, v2}, La/e;->h(Ljava/util/List;)V

    if-lez v1, :cond_d8

    add-int/lit8 v1, v1, -0x1

    aget-object v2, v16, v1

    invoke-virtual {v15, v2}, La/e;->b(Ljava/util/List;)V

    if-lez v1, :cond_d8

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v16, v1

    invoke-virtual {v15, v1}, La/e;->d(Ljava/util/List;)V

    :cond_d8
    invoke-direct/range {p0 .. p0}, La/k;->j()V

    :cond_db
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, La/d;->a(La/e;)Z

    invoke-direct/range {p0 .. p0}, La/k;->k()Z

    move-result v1

    if-eqz v1, :cond_e7

    return-object p1

    :cond_e7
    move-object/from16 v0, p0

    iget-object v1, v0, La/k;->c:Ljava/lang/String;

    sget-object v2, La/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, La/ag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting class path separator \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, La/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->a:La/an;

    invoke-virtual {v3}, La/an;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La/ag;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_120
    move v13, v14

    goto/16 :goto_3e
.end method

.method private a(Ljava/lang/String;)Ljava/net/URL;
    .registers 5

    invoke-direct {p0, p1}, La/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_4
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    iget-object v0, p0, La/k;->a:La/an;

    invoke-virtual {v0}, La/an;->e()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    const-class v0, La/k;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_37

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->d()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_37
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    goto :goto_9
.end method

.method private a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;
    .registers 16

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p11, :cond_9

    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    if-eqz p2, :cond_10

    if-nez p3, :cond_4c

    invoke-direct {p0, p1, p5, v2, v3}, La/k;->a(Ljava/lang/String;ZZZ)V

    :cond_10
    :goto_10
    if-eqz p6, :cond_17

    const-string v0, "java type"

    invoke-direct {p0, v0, p7}, La/k;->a(Ljava/lang/String;Z)V

    :cond_17
    if-eqz p8, :cond_21

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, La/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/k;->c:Ljava/lang/String;

    :cond_21
    if-eqz p9, :cond_2b

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-static {v0}, La/b/f/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/k;->c:Ljava/lang/String;

    :cond_2b
    if-eqz p10, :cond_35

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-static {v0}, La/b/f/i;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/k;->c:Ljava/lang/String;

    :cond_35
    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-interface {p11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_74

    const-string v0, "separating \',\' or closing \')\'"

    invoke-direct {p0, v0}, La/k;->d(Ljava/lang/String;)V

    :goto_41
    const-string v0, ","

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    :goto_4b
    return-object p11

    :cond_4c
    if-eqz p4, :cond_6a

    invoke-direct {p0, p1, p5, v2, v3}, La/k;->a(Ljava/lang/String;ZZZ)V

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "closing \')\'"

    invoke-direct {p0, v0}, La/k;->d(Ljava/lang/String;)V

    goto :goto_4b

    :cond_5f
    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4b

    :cond_6a
    invoke-direct {p0, p5, v2}, La/k;->a(ZZ)V

    invoke-direct {p0}, La/k;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4b

    :cond_74
    invoke-direct {p0}, La/k;->j()V

    goto :goto_41

    :cond_78
    invoke-direct {p0, p1, p5, v2, v3}, La/k;->a(Ljava/lang/String;ZZZ)V

    goto :goto_10
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .registers 14

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "keyword \'class\', \'interface\', or \'enum\'"

    invoke-direct {p0, v0, v3, v3, v2}, La/k;->a(Ljava/lang/String;ZZZ)V

    invoke-virtual {p0}, La/k;->a()La/f;

    move-result-object v5

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    if-nez v0, :cond_2e

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting \'-keep\' option after \'-if\' option, before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const-string v0, "-keep"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    :goto_3f
    return-object v0

    :cond_40
    const-string v0, "-keepclassmembers"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move v4, v3

    invoke-direct/range {v0 .. v5}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    goto :goto_3f

    :cond_53
    const-string v0, "-keepclasseswithmembers"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    move-object v6, p0

    move-object v7, p1

    move v8, v3

    move v9, v2

    move v10, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    goto :goto_3f

    :cond_68
    const-string v0, "-keepnames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    goto :goto_3f

    :cond_7a
    const-string v0, "-keepclassmembernames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    move-object v6, p0

    move-object v7, p1

    move v8, v3

    move v9, v3

    move v10, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    goto :goto_3f

    :cond_8f
    const-string v0, "-keepclasseswithmembernames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    move-object v6, p0

    move-object v7, p1

    move v8, v3

    move v9, v2

    move v10, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    goto :goto_3f

    :cond_a4
    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting \'-keep\' option after \'-if\' option, before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;
    .registers 7

    if-nez p1, :cond_7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-direct {p0, p2, p3, p4, p5}, La/k;->a(ZZZLa/f;)La/aa;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private a(ZLjava/util/List;)Ljava/util/List;
    .registers 6

    const/4 v2, 0x0

    if-nez p2, :cond_8

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    if-eqz p1, :cond_10

    const-string v0, "keyword \'class\', \'interface\', or \'enum\'"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, La/k;->a(Ljava/lang/String;ZZZ)V

    :cond_10
    invoke-virtual {p0}, La/k;->a()La/f;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private a(II)V
    .registers 6

    or-int v0, p1, p2

    and-int/lit16 v0, v0, -0x50e0

    if-eqz v0, :cond_25

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid method access modifier for field before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    return-void
.end method

.method private a(Ljava/lang/String;La/f;)V
    .registers 25

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move/from16 v20, v3

    move/from16 v21, v4

    :goto_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, La/k;->b(Z)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "@"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v4, "annotation type"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v14}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->c:Ljava/lang/String;

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ea

    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->c:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_49
    const-string v4, "public"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f0

    const/4 v4, 0x1

    :goto_52
    if-nez v4, :cond_18d

    :cond_54
    const-string v3, "*"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string v3, "<fields>"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string v3, "<methods>"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_220

    :cond_78
    const-string v3, "*"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, La/k;->a(II)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, La/k;->b(II)V

    new-instance v3, La/ae;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-direct/range {v3 .. v8}, La/ae;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, La/f;->a(La/ae;)V

    new-instance v3, La/ae;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-direct/range {v3 .. v8}, La/ae;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, La/f;->b(La/ae;)V

    :cond_b6
    :goto_b6
    const-string v3, "separator \';\'"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, La/k;->d(Ljava/lang/String;)V

    const-string v3, ";"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2af

    new-instance v3, La/ag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expecting separator \';\' before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, La/k;->a:La/an;

    invoke-virtual {v5}, La/an;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, La/ag;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_ea
    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->c:Ljava/lang/String;

    goto/16 :goto_49

    :cond_f0
    const-string v4, "private"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fb

    const/4 v4, 0x2

    goto/16 :goto_52

    :cond_fb
    const-string v4, "protected"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_106

    const/4 v4, 0x4

    goto/16 :goto_52

    :cond_106
    const-string v4, "static"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_112

    const/16 v4, 0x8

    goto/16 :goto_52

    :cond_112
    const-string v4, "final"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11e

    const/16 v4, 0x10

    goto/16 :goto_52

    :cond_11e
    const-string v4, "synchronized"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    const/16 v4, 0x20

    goto/16 :goto_52

    :cond_12a
    const-string v4, "volatile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_136

    const/16 v4, 0x40

    goto/16 :goto_52

    :cond_136
    const-string v4, "transient"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_142

    const/16 v4, 0x80

    goto/16 :goto_52

    :cond_142
    const-string v4, "bridge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14e

    const/16 v4, 0x40

    goto/16 :goto_52

    :cond_14e
    const-string v4, "varargs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15a

    const/16 v4, 0x80

    goto/16 :goto_52

    :cond_15a
    const-string v4, "native"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_166

    const/16 v4, 0x100

    goto/16 :goto_52

    :cond_166
    const-string v4, "abstract"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_172

    const/16 v4, 0x400

    goto/16 :goto_52

    :cond_172
    const-string v4, "strictfp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17e

    const/16 v4, 0x800

    goto/16 :goto_52

    :cond_17e
    const-string v4, "synthetic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18a

    const/16 v4, 0x1000

    goto/16 :goto_52

    :cond_18a
    const/4 v4, 0x0

    goto/16 :goto_52

    :cond_18d
    move-object/from16 v0, p0

    iget-object v5, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c0

    or-int v3, v4, v20

    move/from16 v4, v21

    :goto_19b
    and-int v5, v3, v4

    if-eqz v5, :cond_1c5

    new-instance v3, La/ag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting class member access modifiers for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, La/k;->a:La/an;

    invoke-virtual {v5}, La/an;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, La/ag;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1c0
    or-int v4, v4, v21

    move/from16 v3, v20

    goto :goto_19b

    :cond_1c5
    const-string v5, "class member description"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, La/k;->d(Ljava/lang/String;)V

    move/from16 v20, v3

    move/from16 v21, v4

    goto/16 :goto_7

    :cond_1d2
    const-string v3, "<fields>"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f9

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, La/k;->a(II)V

    new-instance v3, La/ae;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-direct/range {v3 .. v8}, La/ae;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, La/f;->a(La/ae;)V

    goto/16 :goto_b6

    :cond_1f9
    const-string v3, "<methods>"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, La/k;->b(II)V

    new-instance v3, La/ae;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-direct/range {v3 .. v8}, La/ae;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, La/f;->b(La/ae;)V

    goto/16 :goto_b6

    :cond_220
    const-string v3, "java type"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, La/k;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->c:Ljava/lang/String;

    const-string v4, "class member name"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, La/k;->d(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, La/k;->c:Ljava/lang/String;

    const-string v4, "("

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b0

    const-string v4, "<init>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_283

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_283

    invoke-static/range {p1 .. p1}, La/b/f/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_283

    new-instance v4, La/ag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expecting type and name instead of just \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' before "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, La/k;->a:La/an;

    invoke-virtual {v5}, La/an;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, La/ag;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_283
    const-string v3, "void"

    const-string v7, "<init>"

    move-object v4, v3

    :goto_288
    const-string v3, ";"

    move-object/from16 v0, p0

    iget-object v5, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, La/k;->a(II)V

    new-instance v3, La/ae;

    invoke-static {v4}, La/b/f/i;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-direct/range {v3 .. v8}, La/ae;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, La/f;->a(La/ae;)V

    :cond_2af
    :goto_2af
    return-void

    :cond_2b0
    const-string v4, "class member name"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, La/k;->e(Ljava/lang/String;)V

    const-string v4, "opening \'(\' or separator \';\'"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, La/k;->d(Ljava/lang/String;)V

    move-object v4, v3

    goto :goto_288

    :cond_2c0
    const-string v3, "("

    move-object/from16 v0, p0

    iget-object v5, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_360

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, La/k;->b(II)V

    const-string v9, "argument"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v19}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v4, v3}, La/b/f/i;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    const-string v3, ")"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31c

    new-instance v3, La/ag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expecting separating \',\' or closing \')\' before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, La/k;->a:La/an;

    invoke-virtual {v5}, La/an;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, La/ag;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_31c
    const-string v3, "separator \';\'"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, La/k;->d(Ljava/lang/String;)V

    const-string v3, ";"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_350

    new-instance v3, La/ag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expecting separator \';\' before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, La/k;->a:La/an;

    invoke-virtual {v5}, La/an;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, La/ag;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_350
    new-instance v3, La/ae;

    move/from16 v4, v20

    move/from16 v5, v21

    invoke-direct/range {v3 .. v8}, La/ae;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, La/f;->b(La/ae;)V

    goto/16 :goto_2af

    :cond_360
    new-instance v3, La/ag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expecting opening \'(\' or separator \';\' before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, La/k;->a:La/an;

    invoke-virtual {v5}, La/an;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, La/ag;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, La/k;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    if-nez p2, :cond_64

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, La/k;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use of generics not allowed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    return-void
.end method

.method private a(Ljava/lang/String;ZZZ)V
    .registers 8

    invoke-direct {p0, p2, p3}, La/k;->a(ZZ)V

    invoke-direct {p0, p4}, La/k;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    return-void
.end method

.method private a(ZZ)V
    .registers 4

    iget-object v0, p0, La/k;->a:La/an;

    invoke-virtual {v0, p1, p2}, La/an;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/k;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0x3c

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v2, 0x3e

    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_9

    add-int/lit8 v0, v1, 0x1

    :try_start_18
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1f} :catch_24

    invoke-direct {p0, p1, v2}, La/k;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_9

    :catch_24
    move-exception v0

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private a(Z)Z
    .registers 2

    invoke-direct {p0}, La/k;->j()V

    return p1
.end method

.method private b(J)J
    .registers 4

    invoke-direct {p0}, La/k;->j()V

    return-wide p1
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    invoke-direct {p0, p1}, La/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->d()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_1a
    return-object v0
.end method

.method private b()V
    .registers 4

    const/4 v2, 0x1

    const-string v0, "base directory name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, La/k;->a(Ljava/lang/String;ZZZ)V

    iget-object v0, p0, La/k;->a:La/an;

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, La/k;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, La/an;->a(Ljava/io/File;)V

    invoke-direct {p0}, La/k;->j()V

    return-void
.end method

.method private b(II)V
    .registers 6

    or-int v0, p1, p2

    and-int/lit16 v0, v0, -0x1e00

    if-eqz v0, :cond_25

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid field access modifier for method before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    return-void
.end method

.method private b(Z)Z
    .registers 4

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-nez p1, :cond_1c

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private c()I
    .registers 4

    const-string v0, "java version"

    invoke-direct {p0, v0}, La/k;->d(Ljava/lang/String;)V

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-static {v0}, La/b/f/i;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported java version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-direct {p0}, La/k;->j()V

    return v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    const/16 v2, 0x3c

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_b

    :cond_a
    return-object p1

    :cond_b
    const/16 v2, 0x3e

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_a

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, La/k;->b:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4c

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of system property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is undefined in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2
.end method

.method private d()I
    .registers 4

    :try_start_0
    const-string v0, "integer"

    invoke-direct {p0, v0}, La/k;->d(Ljava/lang/String;)V

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_64

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting value larger than 0, instead of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_38} :catch_38

    :catch_38
    move-exception v0

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting integer argument instead of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    :try_start_64
    invoke-direct {p0}, La/k;->j()V
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_67} :catch_38

    return v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, La/k;->a(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private e()Ljava/net/URL;
    .registers 4

    const/4 v2, 0x1

    const-string v0, "file name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, La/k;->a(Ljava/lang/String;ZZZ)V

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, La/k;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0}, La/k;->j()V

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, La/k;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private f()Ljava/io/File;
    .registers 4

    const/4 v2, 0x1

    const-string v0, "file name"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, La/k;->a(Ljava/lang/String;ZZZ)V

    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, La/k;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0}, La/k;->j()V

    return-object v0
.end method

.method private f(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v1, v0

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_44

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_41

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_41

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_41

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_41

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_41

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_41

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_41

    const/16 v3, 0x21

    if-eq v2, v3, :cond_41

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_41

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_41

    const/16 v3, 0x25

    if-ne v2, v3, :cond_7

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_44
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private g()Ljava/io/File;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, La/k;->a(ZZ)V

    invoke-direct {p0}, La/k;->k()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, La/h;->a:Ljava/io/File;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, La/k;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0}, La/k;->j()V

    goto :goto_c
.end method

.method private g(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/k;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private h()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, La/k;->j()V

    invoke-direct {p0}, La/k;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    invoke-direct {p0}, La/k;->j()V

    goto :goto_b
.end method

.method private i()I
    .registers 4

    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected keyword "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, La/k;->a(ZZ)V

    return-void
.end method

.method private k()Z
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/k;->b(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()La/f;
    .registers 21

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    :goto_7
    const-string v2, "class"

    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_129

    move-object/from16 v0, p0

    iget-object v2, v0, La/k;->c:Ljava/lang/String;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    move-object/from16 v0, p0

    iget-object v2, v0, La/k;->c:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_29
    const-string v2, "public"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    const/4 v2, 0x1

    move v5, v2

    :goto_33
    const/16 v2, 0x2000

    if-ne v5, v2, :cond_d5

    const-string v2, "annotation type or keyword \'interface\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7, v8}, La/k;->a(Ljava/lang/String;ZZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, La/k;->c:Ljava/lang/String;

    const-string v6, "interface"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d5

    move-object/from16 v0, p0

    iget-object v2, v0, La/k;->c:Ljava/lang/String;

    const-string v6, "enum"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d5

    move-object/from16 v0, p0

    iget-object v2, v0, La/k;->c:Ljava/lang/String;

    const-string v6, "class"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d5

    const-string v3, "annotation type"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_7

    :cond_7e
    move-object/from16 v0, p0

    iget-object v2, v0, La/k;->c:Ljava/lang/String;

    move-object v4, v2

    goto :goto_29

    :cond_84
    const-string v2, "final"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    const/16 v2, 0x10

    move v5, v2

    goto :goto_33

    :cond_90
    const-string v2, "interface"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    const/16 v2, 0x200

    move v5, v2

    goto :goto_33

    :cond_9c
    const-string v2, "abstract"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/16 v2, 0x400

    move v5, v2

    goto :goto_33

    :cond_a8
    const-string v2, "synthetic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    const/16 v2, 0x1000

    move v5, v2

    goto :goto_33

    :cond_b4
    const-string v2, "@"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    const/16 v2, 0x2000

    move v5, v2

    goto/16 :goto_33

    :cond_c1
    const-string v2, "enum"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    const/16 v2, 0x4000

    move v5, v2

    goto/16 :goto_33

    :cond_ce
    invoke-direct/range {p0 .. p0}, La/k;->i()I

    move-result v2

    move v5, v2

    goto/16 :goto_33

    :cond_d5
    if-nez v3, :cond_109

    or-int v3, v16, v5

    move v2, v15

    :goto_da
    and-int v6, v3, v2

    if-eqz v6, :cond_10e

    new-instance v2, La/ag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting class access modifiers for \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->a:La/an;

    invoke-virtual {v4}, La/an;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, La/ag;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_109
    or-int v2, v15, v5

    move/from16 v3, v16

    goto :goto_da

    :cond_10e
    const-string v6, "interface"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24d

    const-string v6, "enum"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24d

    const-string v6, "class"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ff

    move v15, v2

    move/from16 v16, v3

    :cond_129
    :goto_129
    const-string v3, "class name or interface name"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v19

    const-string v2, "*"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_212

    const/4 v2, 0x0

    move-object/from16 v17, v2

    :goto_14d
    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, La/k;->k()Z

    move-result v2

    if-nez v2, :cond_247

    const-string v2, "implements"

    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16c

    const-string v2, "extends"

    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_247

    :cond_16c
    const-string v2, "class name or interface name"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, La/k;->a(Ljava/lang/String;ZZZ)V

    const-string v2, "@"

    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_242

    const-string v3, "annotation type"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    :goto_19b
    const-string v3, "class name or interface name"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v13}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, La/j/k;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21a

    const/4 v9, 0x0

    move-object/from16 v8, v18

    :goto_1bd
    new-instance v2, La/f;

    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->d:Ljava/lang/String;

    move/from16 v4, v16

    move v5, v15

    move-object v6, v14

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v9}, La/f;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, La/k;->k()Z

    move-result v3

    if-nez v3, :cond_241

    const-string v3, "{"

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_228

    new-instance v2, La/ag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting opening \'{\' at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, La/k;->a:La/an;

    invoke-virtual {v4}, La/an;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, La/ag;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1ff
    const/16 v4, 0x2000

    if-eq v5, v4, :cond_20d

    const-string v4, "keyword \'class\', \'interface\', or \'enum\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, La/k;->a(Ljava/lang/String;ZZZ)V

    :cond_20d
    move v15, v2

    move/from16 v16, v3

    goto/16 :goto_7

    :cond_212
    invoke-static/range {v19 .. v19}, La/b/f/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto/16 :goto_14d

    :cond_21a
    invoke-static {v2}, La/b/f/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, v18

    goto :goto_1bd

    :cond_221
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, La/k;->a(Ljava/lang/String;La/f;)V

    :cond_228
    const-string v3, "class member description or closing \'}\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, La/k;->a(Ljava/lang/String;ZZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, La/k;->c:Ljava/lang/String;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_221

    invoke-direct/range {p0 .. p0}, La/k;->j()V

    :cond_241
    return-object v2

    :cond_242
    const/4 v2, 0x0

    move-object/from16 v18, v2

    goto/16 :goto_19b

    :cond_247
    const/16 v18, 0x0

    move-object/from16 v8, v18

    goto/16 :goto_1bd

    :cond_24d
    move v15, v2

    move/from16 v16, v3

    goto/16 :goto_129
.end method

.method public a(La/h;)V
    .registers 14

    :goto_0
    iget-object v0, p0, La/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_55e

    iget-object v0, p0, La/k;->a:La/an;

    invoke-virtual {v0}, La/an;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/k;->d:Ljava/lang/String;

    const-string v0, "@"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "-include"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_20
    iget-wide v0, p1, La/h;->h:J

    invoke-direct {p0, v0, v1}, La/k;->a(J)J

    move-result-wide v0

    iput-wide v0, p1, La/h;->h:J

    goto :goto_0

    :cond_29
    const-string v0, "-basedirectory"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-direct {p0}, La/k;->b()V

    goto :goto_0

    :cond_37
    const-string v0, "-injars"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p1, La/h;->b:La/d;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/k;->a(La/d;Z)La/d;

    move-result-object v0

    iput-object v0, p1, La/h;->b:La/d;

    goto :goto_0

    :cond_4b
    const-string v0, "-outjars"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p1, La/h;->b:La/d;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, La/k;->a(La/d;Z)La/d;

    move-result-object v0

    iput-object v0, p1, La/h;->b:La/d;

    goto :goto_0

    :cond_5f
    const-string v0, "-libraryjars"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p1, La/h;->c:La/d;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/k;->a(La/d;Z)La/d;

    move-result-object v0

    iput-object v0, p1, La/h;->c:La/d;

    goto :goto_0

    :cond_73
    const-string v0, "-resourcejars"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    new-instance v0, La/ag;

    const-string v1, "The \'-resourcejars\' option is no longer supported. Please use the \'-injars\' option for all input"

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_85
    const-string v0, "-skipnonpubliclibraryclasses"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->d:Z

    goto/16 :goto_0

    :cond_98
    const-string v0, "-dontskipnonpubliclibraryclasses"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->d:Z

    goto/16 :goto_0

    :cond_ab
    const-string v0, "-dontskipnonpubliclibraryclassmembers"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->e:Z

    goto/16 :goto_0

    :cond_be
    const-string v0, "-target"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-direct {p0}, La/k;->c()I

    move-result v0

    iput v0, p1, La/h;->g:I

    goto/16 :goto_0

    :cond_d0
    const-string v0, "-forceprocessing"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e7

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1}, La/k;->b(J)J

    move-result-wide v0

    iput-wide v0, p1, La/h;->h:J

    goto/16 :goto_0

    :cond_e7
    const-string v0, "-if"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p1, La/h;->i:Ljava/util/List;

    invoke-direct {p0, v0}, La/k;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->i:Ljava/util/List;

    goto/16 :goto_0

    :cond_fb
    const-string v0, "-keep"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_114

    iget-object v1, p1, La/h;->i:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->i:Ljava/util/List;

    goto/16 :goto_0

    :cond_114
    const-string v0, "-keepclassmembers"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12d

    iget-object v1, p1, La/h;->i:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->i:Ljava/util/List;

    goto/16 :goto_0

    :cond_12d
    const-string v0, "-keepclasseswithmembers"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_146

    iget-object v1, p1, La/h;->i:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->i:Ljava/util/List;

    goto/16 :goto_0

    :cond_146
    const-string v0, "-keepnames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15f

    iget-object v1, p1, La/h;->i:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->i:Ljava/util/List;

    goto/16 :goto_0

    :cond_15f
    const-string v0, "-keepclassmembernames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_178

    iget-object v1, p1, La/h;->i:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->i:Ljava/util/List;

    goto/16 :goto_0

    :cond_178
    const-string v0, "-keepclasseswithmembernames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_191

    iget-object v1, p1, La/h;->i:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La/k;->a(Ljava/util/List;ZZZLa/f;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->i:Ljava/util/List;

    goto/16 :goto_0

    :cond_191
    const-string v0, "-printseeds"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    invoke-direct {p0}, La/k;->g()Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, La/h;->j:Ljava/io/File;

    goto/16 :goto_0

    :cond_1a3
    const-string v0, "-keepdirectories"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c3

    const-string v1, "directory name"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p1, La/h;->f:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->f:Ljava/util/List;

    goto/16 :goto_0

    :cond_1c3
    const-string v0, "-dontshrink"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->k:Z

    goto/16 :goto_0

    :cond_1d6
    const-string v0, "-printusage"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    invoke-direct {p0}, La/k;->g()Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, La/h;->l:Ljava/io/File;

    goto/16 :goto_0

    :cond_1e8
    const-string v0, "-whyareyoukeeping"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    const/4 v0, 0x1

    iget-object v1, p1, La/h;->m:Ljava/util/List;

    invoke-direct {p0, v0, v1}, La/k;->a(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->m:Ljava/util/List;

    goto/16 :goto_0

    :cond_1fd
    const-string v0, "-dontoptimize"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_210

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->n:Z

    goto/16 :goto_0

    :cond_210
    const-string v0, "-optimizationpasses"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_222

    invoke-direct {p0}, La/k;->d()I

    move-result v0

    iput v0, p1, La/h;->p:I

    goto/16 :goto_0

    :cond_222
    const-string v0, "-optimizations"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_242

    const-string v1, "optimization name"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p1, La/h;->o:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->o:Ljava/util/List;

    goto/16 :goto_0

    :cond_242
    const-string v0, "-assumenosideeffects"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_257

    const/4 v0, 0x1

    iget-object v1, p1, La/h;->q:Ljava/util/List;

    invoke-direct {p0, v0, v1}, La/k;->a(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->q:Ljava/util/List;

    goto/16 :goto_0

    :cond_257
    const-string v0, "-assumenoexternalsideeffects"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26c

    const/4 v0, 0x1

    iget-object v1, p1, La/h;->r:Ljava/util/List;

    invoke-direct {p0, v0, v1}, La/k;->a(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->r:Ljava/util/List;

    goto/16 :goto_0

    :cond_26c
    const-string v0, "-assumenoescapingparameters"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_281

    const/4 v0, 0x1

    iget-object v1, p1, La/h;->s:Ljava/util/List;

    invoke-direct {p0, v0, v1}, La/k;->a(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->s:Ljava/util/List;

    goto/16 :goto_0

    :cond_281
    const-string v0, "-assumenoexternalreturnvalues"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_296

    const/4 v0, 0x1

    iget-object v1, p1, La/h;->t:Ljava/util/List;

    invoke-direct {p0, v0, v1}, La/k;->a(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->t:Ljava/util/List;

    goto/16 :goto_0

    :cond_296
    const-string v0, "-allowaccessmodification"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a9

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->u:Z

    goto/16 :goto_0

    :cond_2a9
    const-string v0, "-mergeinterfacesaggressively"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->v:Z

    goto/16 :goto_0

    :cond_2bc
    const-string v0, "-dontobfuscate"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->w:Z

    goto/16 :goto_0

    :cond_2cf
    const-string v0, "-printmapping"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e1

    invoke-direct {p0}, La/k;->g()Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, La/h;->x:Ljava/io/File;

    goto/16 :goto_0

    :cond_2e1
    const-string v0, "-applymapping"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f3

    invoke-direct {p0}, La/k;->f()Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, La/h;->y:Ljava/io/File;

    goto/16 :goto_0

    :cond_2f3
    const-string v0, "-obfuscationdictionary"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_305

    invoke-direct {p0}, La/k;->e()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p1, La/h;->z:Ljava/net/URL;

    goto/16 :goto_0

    :cond_305
    const-string v0, "-classobfuscationdictionary"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_317

    invoke-direct {p0}, La/k;->e()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p1, La/h;->A:Ljava/net/URL;

    goto/16 :goto_0

    :cond_317
    const-string v0, "-packageobfuscationdictionary"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_329

    invoke-direct {p0}, La/k;->e()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p1, La/h;->B:Ljava/net/URL;

    goto/16 :goto_0

    :cond_329
    const-string v0, "-overloadaggressively"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33c

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->C:Z

    goto/16 :goto_0

    :cond_33c
    const-string v0, "-useuniqueclassmembernames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->D:Z

    goto/16 :goto_0

    :cond_34f
    const-string v0, "-dontusemixedcaseclassnames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_362

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->E:Z

    goto/16 :goto_0

    :cond_362
    const-string v0, "-keeppackagenames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_382

    const-string v1, "package name"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p1, La/h;->F:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->F:Ljava/util/List;

    goto/16 :goto_0

    :cond_382
    const-string v0, "-flattenpackagehierarchy"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_398

    invoke-direct {p0}, La/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, La/h;->G:Ljava/lang/String;

    goto/16 :goto_0

    :cond_398
    const-string v0, "-repackageclasses"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3ae

    invoke-direct {p0}, La/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, La/h;->H:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3ae
    const-string v0, "-defaultpackage"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c4

    invoke-direct {p0}, La/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, La/h;->H:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3c4
    const-string v0, "-keepattributes"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e4

    const-string v1, "attribute name"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p1, La/h;->I:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->I:Ljava/util/List;

    goto/16 :goto_0

    :cond_3e4
    const-string v0, "-keepparameternames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->J:Z

    goto/16 :goto_0

    :cond_3f7
    const-string v0, "-renamesourcefileattribute"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_409

    invoke-direct {p0}, La/k;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, La/h;->K:Ljava/lang/String;

    goto/16 :goto_0

    :cond_409
    const-string v0, "-adaptclassstrings"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_429

    const-string v1, "class name"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p1, La/h;->L:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->L:Ljava/util/List;

    goto/16 :goto_0

    :cond_429
    const-string v0, "-adaptresourcefilenames"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_449

    const-string v1, "resource file name"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p1, La/h;->M:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->M:Ljava/util/List;

    goto/16 :goto_0

    :cond_449
    const-string v0, "-adaptresourcefilecontents"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_469

    const-string v1, "resource file name"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p1, La/h;->N:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->N:Ljava/util/List;

    goto/16 :goto_0

    :cond_469
    const-string v0, "-dontpreverify"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47c

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->O:Z

    goto/16 :goto_0

    :cond_47c
    const-string v0, "-microedition"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->P:Z

    goto/16 :goto_0

    :cond_48f
    const-string v0, "-android"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->Q:Z

    goto/16 :goto_0

    :cond_4a2
    const-string v0, "-verbose"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->R:Z

    goto/16 :goto_0

    :cond_4b5
    const-string v0, "-dontnote"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d5

    const-string v1, "class name"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p1, La/h;->S:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->S:Ljava/util/List;

    goto/16 :goto_0

    :cond_4d5
    const-string v0, "-dontwarn"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f5

    const-string v1, "class name"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p1, La/h;->T:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, La/k;->a(Ljava/lang/String;ZZZZZZZZZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, La/h;->T:Ljava/util/List;

    goto/16 :goto_0

    :cond_4f5
    const-string v0, "-ignorewarnings"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_508

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->U:Z

    goto/16 :goto_0

    :cond_508
    const-string v0, "-printconfiguration"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51a

    invoke-direct {p0}, La/k;->g()Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, La/h;->V:Ljava/io/File;

    goto/16 :goto_0

    :cond_51a
    const-string v0, "-dump"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52c

    invoke-direct {p0}, La/k;->g()Ljava/io/File;

    move-result-object v0

    iput-object v0, p1, La/h;->W:Ljava/io/File;

    goto/16 :goto_0

    :cond_52c
    const-string v0, "-addconfigurationdebugging"

    iget-object v1, p0, La/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/k;->a(Z)Z

    move-result v0

    iput-boolean v0, p1, La/h;->X:Z

    goto/16 :goto_0

    :cond_53f
    new-instance v0, La/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/k;->a:La/an;

    invoke-virtual {v2}, La/an;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55e
    return-void
.end method
