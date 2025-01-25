.class public Lorg/b/a/a/d;
.super Ljava/io/FilterInputStream;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:J

.field protected d:J

.field protected e:[B

.field protected f:Lorg/b/a/a/b;

.field protected g:Lorg/b/a/a/c;

.field protected h:[B

.field private final i:[B

.field private final j:[B

.field private final k:Lorg/b/a/b/e;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/b/a/a/d;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/b/a/a/d;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/b/a/a/d;->i:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/b/a/a/d;->j:[B

    new-instance v0, Lorg/b/a/a/b;

    invoke-direct {v0, p1, p2, p3}, Lorg/b/a/a/b;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lorg/b/a/a/d;->f:Lorg/b/a/a/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/b/a/a/d;->e:[B

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/b/a/a/d;->h:[B

    iput-boolean v1, p0, Lorg/b/a/a/d;->a:Z

    iput-boolean v1, p0, Lorg/b/a/a/d;->b:Z

    invoke-static {p4}, Lorg/b/a/b/f;->a(Ljava/lang/String;)Lorg/b/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lorg/b/a/a/d;->k:Lorg/b/a/b/e;

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 10

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "path"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v1, v0}, Lorg/b/a/a/c;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_2f
    const-string v3, "linkpath"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v1, v0}, Lorg/b/a/a/c;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_3d
    const-string v3, "gid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/b/a/a/c;->b(J)V

    goto :goto_8

    :cond_4f
    const-string v3, "gname"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v1, v0}, Lorg/b/a/a/c;->d(Ljava/lang/String;)V

    goto :goto_8

    :cond_5d
    const-string v3, "uid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/b/a/a/c;->a(J)V

    goto :goto_8

    :cond_6f
    const-string v3, "uname"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v1, v0}, Lorg/b/a/a/c;->c(Ljava/lang/String;)V

    goto :goto_8

    :cond_7d
    const-string v3, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/b/a/a/c;->d(J)V

    goto/16 :goto_8

    :cond_90
    const-string v3, "mtime"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L  # 1000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lorg/b/a/a/c;->c(J)V

    goto/16 :goto_8

    :cond_aa
    const-string v3, "SCHILY.devminor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/b/a/a/c;->b(I)V

    goto/16 :goto_8

    :cond_bd
    const-string v3, "SCHILY.devmajor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/b/a/a/c;->a(I)V

    goto/16 :goto_8
.end method

.method private c()[B
    .registers 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/b/a/a/d;->b:Z

    if-eqz v0, :cond_8

    :cond_6
    move-object v0, v1

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lorg/b/a/a/d;->f:Lorg/b/a/a/b;

    invoke-virtual {v0}, Lorg/b/a/a/b;->b()[B

    move-result-object v0

    if-nez v0, :cond_22

    iget-boolean v2, p0, Lorg/b/a/a/d;->a:Z

    if-eqz v2, :cond_1b

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "READ NULL RECORD"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1b
    iput-boolean v4, p0, Lorg/b/a/a/d;->b:Z

    :cond_1d
    :goto_1d
    iget-boolean v2, p0, Lorg/b/a/a/d;->b:Z

    if-nez v2, :cond_6

    goto :goto_7

    :cond_22
    iget-object v2, p0, Lorg/b/a/a/d;->f:Lorg/b/a/a/b;

    invoke-virtual {v2, v0}, Lorg/b/a/a/b;->a([B)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lorg/b/a/a/d;->a:Z

    if-eqz v2, :cond_35

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "READ EOF RECORD"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_35
    iput-boolean v4, p0, Lorg/b/a/a/d;->b:Z

    goto :goto_1d
.end method

.method private d()V
    .registers 2

    invoke-virtual {p0, p0}, Lorg/b/a/a/d;->a(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lorg/b/a/a/d;->a()Lorg/b/a/a/c;

    invoke-direct {p0, v0}, Lorg/b/a/a/d;->a(Ljava/util/Map;)V

    return-void
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v0}, Lorg/b/a/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_8
    invoke-direct {p0}, Lorg/b/a/a/d;->c()[B

    move-result-object v0

    iget-boolean v1, p0, Lorg/b/a/a/d;->b:Z

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    :cond_13
    :goto_13
    return-void

    :cond_14
    new-instance v1, Lorg/b/a/a/a;

    invoke-direct {v1, v0}, Lorg/b/a/a/a;-><init>([B)V

    invoke-virtual {v1}, Lorg/b/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_13
.end method

.method private f()Z
    .registers 2

    iget-object v0, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v0}, Lorg/b/a/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method a(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 11

    const/4 v1, 0x0

    const/4 v8, -0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_7
    move v0, v1

    move v2, v1

    :goto_9
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v8, :cond_12

    :cond_f
    :goto_f
    if-ne v3, v8, :cond_7

    return-object v4

    :cond_12
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x20

    if-ne v3, v5, :cond_77

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1d
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v8, :cond_f

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x3d

    if-ne v3, v6, :cond_72

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sub-int v6, v2, v0

    new-array v7, v6, [B

    move v2, v1

    move v0, v3

    :goto_35
    if-ge v2, v6, :cond_3d

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v8, :cond_5e

    :cond_3d
    if-eq v2, v6, :cond_64

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read Paxheader. Expected "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes, read "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    int-to-byte v3, v0

    aput-byte v3, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_64
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, v6, -0x1

    const-string v6, "UTF-8"

    invoke-direct {v2, v7, v1, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v0

    goto :goto_f

    :cond_72
    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1d

    :cond_77
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    goto :goto_9
.end method

.method public a()Lorg/b/a/a/c;
    .registers 11

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/b/a/a/d;->b:Z

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    if-eqz v1, :cond_5d

    iget-wide v2, p0, Lorg/b/a/a/d;->c:J

    iget-wide v4, p0, Lorg/b/a/a/d;->d:J

    sub-long/2addr v2, v4

    iget-boolean v1, p0, Lorg/b/a/a/d;->a:Z

    if-eqz v1, :cond_57

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TarInputStream: SKIP currENTRY \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v5}, Lorg/b/a/a/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' SZ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/b/a/a/d;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OFF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/b/a/a/d;->d:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_57
    :goto_57
    cmp-long v1, v2, v8

    if-gtz v1, :cond_68

    iput-object v0, p0, Lorg/b/a/a/d;->e:[B

    :cond_5d
    invoke-direct {p0}, Lorg/b/a/a/d;->c()[B

    move-result-object v1

    iget-boolean v2, p0, Lorg/b/a/a/d;->b:Z

    if-eqz v2, :cond_7a

    iput-object v0, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    goto :goto_7

    :cond_68
    invoke-virtual {p0, v2, v3}, Lorg/b/a/a/d;->skip(J)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-gtz v1, :cond_78

    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to skip current tar entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    sub-long/2addr v2, v4

    goto :goto_57

    :cond_7a
    :try_start_7a
    new-instance v2, Lorg/b/a/a/c;

    iget-object v3, p0, Lorg/b/a/a/d;->k:Lorg/b/a/b/e;

    invoke-direct {v2, v1, v3}, Lorg/b/a/a/c;-><init>([BLorg/b/a/b/e;)V

    iput-object v2, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_83} :catch_10f

    iget-boolean v1, p0, Lorg/b/a/a/d;->a:Z

    if-eqz v1, :cond_b1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TarInputStream: SET CURRENTRY \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v3}, Lorg/b/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v3}, Lorg/b/a/a/c;->d()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b1
    iput-wide v8, p0, Lorg/b/a/a/d;->d:J

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v1}, Lorg/b/a/a/c;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/b/a/a/d;->c:J

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v1}, Lorg/b/a/a/c;->g()Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-virtual {p0}, Lorg/b/a/a/d;->b()[B

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    iget-object v3, p0, Lorg/b/a/a/d;->k:Lorg/b/a/b/e;

    invoke-interface {v3, v1}, Lorg/b/a/b/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/b/a/a/c;->b(Ljava/lang/String;)V

    :cond_d4
    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v1}, Lorg/b/a/a/c;->h()Z

    move-result v1

    if-eqz v1, :cond_ed

    invoke-virtual {p0}, Lorg/b/a/a/d;->b()[B

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    iget-object v2, p0, Lorg/b/a/a/d;->k:Lorg/b/a/b/e;

    invoke-interface {v2, v1}, Lorg/b/a/b/e;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/b/a/a/c;->a(Ljava/lang/String;)V

    :cond_ed
    iget-object v0, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v0}, Lorg/b/a/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-direct {p0}, Lorg/b/a/a/d;->d()V

    :cond_f8
    iget-object v0, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v0}, Lorg/b/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-direct {p0}, Lorg/b/a/a/d;->e()V

    :cond_103
    iget-object v0, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    invoke-virtual {v0}, Lorg/b/a/a/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/b/a/a/d;->c:J

    iget-object v0, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    goto/16 :goto_7

    :catch_10f
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error detected parsing the header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public available()I
    .registers 5

    invoke-direct {p0}, Lorg/b/a/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-wide v0, p0, Lorg/b/a/a/d;->c:J

    iget-wide v2, p0, Lorg/b/a/a/d;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const v0, 0x7fffffff

    goto :goto_7

    :cond_18
    iget-wide v0, p0, Lorg/b/a/a/d;->c:J

    iget-wide v2, p0, Lorg/b/a/a/d;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_7
.end method

.method protected b()[B
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_6
    iget-object v1, p0, Lorg/b/a/a/d;->j:[B

    invoke-virtual {p0, v1}, Lorg/b/a/a/d;->read([B)I

    move-result v1

    if-gez v1, :cond_17

    invoke-virtual {p0}, Lorg/b/a/a/d;->a()Lorg/b/a/a/c;

    iget-object v1, p0, Lorg/b/a/a/d;->g:Lorg/b/a/a/c;

    if-nez v1, :cond_1d

    const/4 v0, 0x0

    :goto_16
    return-object v0

    :cond_17
    iget-object v2, p0, Lorg/b/a/a/d;->j:[B

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    :cond_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v0, v1

    move v2, v0

    :goto_23
    if-lez v2, :cond_2b

    add-int/lit8 v0, v2, -0x1

    aget-byte v0, v1, v0

    if-eqz v0, :cond_34

    :cond_2b
    array-length v0, v1

    if-eq v2, v0, :cond_38

    new-array v0, v2, [B

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_16

    :cond_34
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_23

    :cond_38
    move-object v0, v1

    goto :goto_16
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/b/a/a/d;->f:Lorg/b/a/a/b;

    invoke-virtual {v0}, Lorg/b/a/a/b;->d()V

    return-void
.end method

.method public mark(I)V
    .registers 2

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/b/a/a/d;->h:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/b/a/a/d;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lorg/b/a/a/d;->h:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_b
.end method

.method public read([BII)I
    .registers 10

    const/4 v3, 0x0

    iget-wide v0, p0, Lorg/b/a/a/d;->d:J

    iget-wide v4, p0, Lorg/b/a/a/d;->c:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_f

    invoke-direct {p0}, Lorg/b/a/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    const/4 v0, -0x1

    :goto_10
    return v0

    :cond_11
    int-to-long v0, p3

    iget-wide v4, p0, Lorg/b/a/a/d;->d:J

    add-long/2addr v0, v4

    iget-wide v4, p0, Lorg/b/a/a/d;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_21

    iget-wide v0, p0, Lorg/b/a/a/d;->c:J

    iget-wide v4, p0, Lorg/b/a/a/d;->d:J

    sub-long/2addr v0, v4

    long-to-int p3, v0

    :cond_21
    iget-object v0, p0, Lorg/b/a/a/d;->e:[B

    if-eqz v0, :cond_97

    iget-object v0, p0, Lorg/b/a/a/d;->e:[B

    array-length v0, v0

    if-le p3, v0, :cond_49

    iget-object v0, p0, Lorg/b/a/a/d;->e:[B

    array-length v0, v0

    :goto_2d
    iget-object v1, p0, Lorg/b/a/a/d;->e:[B

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/b/a/a/d;->e:[B

    array-length v1, v1

    if-lt v0, v1, :cond_4b

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/b/a/a/d;->e:[B

    :goto_3a
    add-int/lit8 v1, v0, 0x0

    sub-int v2, p3, v0

    add-int/2addr p2, v0

    move v0, v1

    :goto_40
    if-gtz v2, :cond_59

    iget-wide v2, p0, Lorg/b/a/a/d;->d:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/b/a/a/d;->d:J

    goto :goto_10

    :cond_49
    move v0, p3

    goto :goto_2d

    :cond_4b
    iget-object v1, p0, Lorg/b/a/a/d;->e:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    iget-object v4, p0, Lorg/b/a/a/d;->e:[B

    invoke-static {v4, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/b/a/a/d;->e:[B

    goto :goto_3a

    :cond_59
    iget-object v1, p0, Lorg/b/a/a/d;->f:Lorg/b/a/a/b;

    invoke-virtual {v1}, Lorg/b/a/a/b;->b()[B

    move-result-object v4

    if-nez v4, :cond_7c

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unexpected EOF with "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes unread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    array-length v1, v4

    if-le v1, v2, :cond_93

    invoke-static {v4, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v5, v1, v2

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/b/a/a/d;->e:[B

    iget-object v5, p0, Lorg/b/a/a/d;->e:[B

    sub-int/2addr v1, v2

    invoke-static {v4, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    :goto_8f
    add-int/2addr v0, v1

    sub-int/2addr v2, v1

    add-int/2addr p2, v1

    goto :goto_40

    :cond_93
    invoke-static {v4, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8f

    :cond_97
    move v0, v3

    move v2, p3

    goto :goto_40
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public skip(J)J
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_c

    invoke-direct {p0}, Lorg/b/a/a/d;->f()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return-wide v0

    :cond_d
    move-wide v4, p1

    :goto_e
    cmp-long v2, v4, v0

    if-gtz v2, :cond_15

    :cond_12
    sub-long v0, p1, v4

    goto :goto_c

    :cond_15
    iget-object v2, p0, Lorg/b/a/a/d;->i:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_2f

    iget-object v2, p0, Lorg/b/a/a/d;->i:[B

    array-length v2, v2

    int-to-long v2, v2

    :goto_21
    long-to-int v2, v2

    iget-object v3, p0, Lorg/b/a/a/d;->i:[B

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6, v2}, Lorg/b/a/a/d;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    int-to-long v2, v2

    sub-long/2addr v4, v2

    goto :goto_e

    :cond_2f
    move-wide v2, v4

    goto :goto_21
.end method
