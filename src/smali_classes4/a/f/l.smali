.class public La/f/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/f/l;->a:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/lang/String;La/f/k;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_a

    :cond_9
    :goto_9
    return-object v1

    :cond_a
    const/16 v0, 0x3a

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, La/f/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :goto_2d
    move-object v1, v0

    goto :goto_9

    :cond_2f
    move-object v0, v1

    goto :goto_2d
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;La/f/k;)V
    .registers 22

    const/16 v1, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_3a

    const/4 v1, -0x1

    :goto_b
    const/16 v2, 0x20

    add-int/lit8 v3, v1, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/16 v2, 0x28

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    if-gez v11, :cond_45

    const/4 v8, -0x1

    :goto_22
    if-gez v8, :cond_50

    const/4 v7, -0x1

    :goto_25
    if-gez v7, :cond_5b

    const/4 v5, -0x1

    :goto_28
    if-ltz v5, :cond_66

    move v2, v5

    :goto_2b
    const-string v3, "->"

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-ltz v4, :cond_39

    if-gez v9, :cond_70

    :cond_39
    :goto_39
    return-void

    :cond_3a
    const/16 v1, 0x3a

    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_b

    :cond_45
    const/16 v2, 0x29

    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    goto :goto_22

    :cond_50
    const/16 v2, 0x3a

    add-int/lit8 v3, v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    goto :goto_25

    :cond_5b
    const/16 v2, 0x3a

    add-int/lit8 v3, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_28

    :cond_66
    if-ltz v7, :cond_6a

    move v2, v7

    goto :goto_2b

    :cond_6a
    if-ltz v8, :cond_6e

    move v2, v8

    goto :goto_2b

    :cond_6e
    move v2, v4

    goto :goto_2b

    :cond_70
    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-ltz v11, :cond_c7

    move v2, v11

    :goto_7f
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v9, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x2e

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    if-ltz v10, :cond_13e

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_aa
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_39

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_39

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_39

    if-gez v8, :cond_c9

    move-object/from16 v1, p3

    move-object/from16 v5, p1

    invoke-interface/range {v1 .. v6}, La/f/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_39

    :cond_c7
    move v2, v9

    goto :goto_7f

    :cond_c9
    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-ltz v1, :cond_13c

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v10, v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v15, v12

    move/from16 v16, v13

    move v1, v12

    move v10, v13

    :goto_f3
    if-ltz v7, :cond_13a

    if-lez v5, :cond_127

    move v1, v5

    :goto_f8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gez v5, :cond_129

    move v1, v7

    :goto_10b
    move v9, v7

    move v10, v1

    :goto_10d
    add-int/lit8 v1, v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v7, p3

    move-object v8, v2

    move-object v11, v3

    move-object v12, v4

    move-object/from16 v14, p1

    move-object/from16 v17, v6

    invoke-interface/range {v7 .. v17}, La/f/k;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_39

    :cond_127
    move v1, v9

    goto :goto_f8

    :cond_129
    add-int/lit8 v1, v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_10b

    :cond_13a
    move v9, v1

    goto :goto_10d

    :cond_13c
    const/4 v1, 0x0

    goto :goto_f3

    :cond_13e
    move-object/from16 v2, p1

    goto/16 :goto_aa
.end method


# virtual methods
.method public a(La/f/k;)V
    .registers 7

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, La/f/l;->a:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    :cond_12
    :goto_12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_3b
    .catchall {:try_start_12 .. :try_end_15} :catchall_5f

    move-result-object v2

    if-nez v2, :cond_1c

    :try_start_18
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_64

    :goto_1b
    return-void

    :cond_1c
    :try_start_1c
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-direct {p0, v2, p1}, La/f/l;->a(Ljava/lang/String;La/f/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_35
    if-eqz v0, :cond_12

    invoke-direct {p0, v0, v2, p1}, La/f/l;->a(Ljava/lang/String;Ljava/lang/String;La/f/k;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3a} :catch_3b
    .catchall {:try_start_1c .. :try_end_3a} :catchall_5f

    goto :goto_12

    :catch_3b
    move-exception v0

    :try_start_3c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t process mapping file ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5f
    .catchall {:try_start_3c .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v0

    :try_start_60
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_66

    :goto_63
    throw v0

    :catch_64
    move-exception v0

    goto :goto_1b

    :catch_66
    move-exception v1

    goto :goto_63
.end method
