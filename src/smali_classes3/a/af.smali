.class public La/af;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/h;


# direct methods
.method public constructor <init>(La/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/af;->a:La/h;

    return-void
.end method

.method private a(La/b/b;La/e/o;)La/e/o;
    .registers 7

    invoke-static {p1}, La/af;->a(La/b/b;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, La/e/ad;

    iget-object v2, p0, La/af;->a:La/h;

    iget-object v2, v2, La/h;->M:Ljava/util/List;

    new-instance v3, La/e/aj;

    invoke-direct {v3, p1, v0, p2}, La/e/aj;-><init>(La/b/b;Ljava/util/Map;La/e/o;)V

    invoke-direct {v1, v2, v3, p2}, La/e/ad;-><init>(Ljava/util/List;La/e/o;La/e/o;)V

    return-object v1
.end method

.method private a(La/b/b;La/e/m;La/e/m;)La/e/p;
    .registers 7

    iget-object v0, p0, La/af;->a:La/h;

    iget-object v0, v0, La/h;->f:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-static {p1}, La/af;->a(La/b/b;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, La/e/ac;

    iget-object v1, p0, La/af;->a:La/h;

    iget-object v1, v1, La/h;->f:Ljava/util/List;

    new-instance v2, La/e/ai;

    invoke-direct {v2, p1, p2, p2}, La/e/ai;-><init>(Ljava/util/Map;La/e/m;La/e/m;)V

    invoke-direct {v0, v1, v2}, La/e/ac;-><init>(Ljava/util/List;La/e/m;)V

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    new-instance p1, La/e/p;

    invoke-direct {p1, v0, p3}, La/e/p;-><init>(La/e/m;La/e/m;)V

    return-object p1
.end method

.method private static a(La/b/b;)Ljava/util/Map;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, La/b/b;->b()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, La/b/f/i;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_27

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_27
    invoke-virtual {p0, v2}, La/b/b;->a(Ljava/lang/String;)La/b/c;

    move-result-object v2

    invoke-interface {v2}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/b/f/i;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_37
    return-object v0
.end method

.method private a(La/n;La/b/b;La/d;III)V
    .registers 13

    :try_start_0
    invoke-virtual {p1, p3, p5, p6}, La/n;->a(La/d;II)La/e/o;

    move-result-object p1

    iget-object p6, p0, La/af;->a:La/h;

    iget-boolean p6, p6, La/h;->X:Z

    if-eqz p6, :cond_21

    new-instance p6, La/e/s;

    new-instance v0, La/e/d;

    invoke-direct {v0, p2, p1}, La/e/d;-><init>(La/b/b;La/e/o;)V

    const-string v1, "classmap.txt"

    invoke-direct {p6, v1, p1, v0}, La/e/s;-><init>(Ljava/lang/String;La/e/o;La/e/o;)V

    const-string p1, "Warning: -addconfigurationdebugging is enabled; the resulting build will contain obfuscation information."

    invoke-static {p1}, La/j/l;->a(Ljava/lang/String;)V

    const-string p1, "It should only be used for debugging purposes."

    invoke-static {p1}, La/j/l;->a(Ljava/lang/String;)V

    move-object p1, p6

    :cond_21
    iget-object p6, p0, La/af;->a:La/h;

    iget-boolean p6, p6, La/h;->w:Z

    if-eqz p6, :cond_32

    iget-object p6, p0, La/af;->a:La/h;

    iget-object p6, p6, La/h;->M:Ljava/util/List;

    if-eqz p6, :cond_32

    invoke-direct {p0, p2, p1}, La/af;->a(La/b/b;La/e/o;)La/e/o;

    move-result-object p6

    goto :goto_33

    :cond_32
    move-object p6, p1

    :goto_33
    new-instance v0, La/e/h;

    invoke-direct {v0, p6}, La/e/h;-><init>(La/e/o;)V

    iget-object v1, p0, La/af;->a:La/h;

    iget-boolean v1, v1, La/h;->k:Z

    if-nez v1, :cond_4a

    iget-object v1, p0, La/af;->a:La/h;

    iget-boolean v1, v1, La/h;->n:Z

    if-nez v1, :cond_4a

    iget-object v1, p0, La/af;->a:La/h;

    iget-boolean v1, v1, La/h;->w:Z

    if-eqz v1, :cond_66

    :cond_4a
    iget-object v1, p0, La/af;->a:La/h;

    iget-object v1, v1, La/h;->N:Ljava/util/List;

    if-eqz v1, :cond_66

    iget-object v1, p0, La/af;->a:La/h;

    iget-boolean v1, v1, La/h;->w:Z

    if-eqz v1, :cond_5b

    invoke-direct {p0, p2, p6}, La/af;->b(La/b/b;La/e/o;)La/e/m;

    move-result-object p6

    goto :goto_5c

    :cond_5b
    move-object p6, v0

    :goto_5c
    new-instance v1, La/e/ac;

    iget-object v2, p0, La/af;->a:La/h;

    iget-object v2, v2, La/h;->N:Ljava/util/List;

    invoke-direct {v1, v2, p6, v0}, La/e/ac;-><init>(Ljava/util/List;La/e/m;La/e/m;)V

    goto :goto_67

    :cond_66
    move-object v1, v0

    :goto_67
    invoke-direct {p0, p2, v0, v1}, La/af;->a(La/b/b;La/e/m;La/e/m;)La/e/p;

    move-result-object p2

    new-instance v5, La/e/c;

    new-instance p6, La/e/w;

    invoke-direct {p6, p1}, La/e/w;-><init>(La/e/o;)V

    invoke-direct {v5, p6, p2}, La/e/c;-><init>(La/e/m;La/e/m;)V

    new-instance v0, La/y;

    iget-object p2, p0, La/af;->a:La/h;

    invoke-direct {v0, p2}, La/y;-><init>(La/h;)V

    const-string v1, "  Copying resources from program "

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, La/y;->a(Ljava/lang/String;La/d;IILa/e/m;)V

    invoke-interface {p1}, La/e/o;->a()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_87} :catch_88

    return-void

    :catch_88
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Can\'t write ["

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p3, p5}, La/d;->a(I)La/e;

    move-result-object p3

    invoke-virtual {p3}, La/e;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "] ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method private b(La/b/b;La/e/o;)La/e/m;
    .registers 7

    iget-object v0, p0, La/af;->a:La/h;

    iget-boolean v0, v0, La/h;->Q:Z

    if-eqz v0, :cond_d

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_11
    new-instance v1, La/e/ac;

    new-instance v2, La/e/z;

    invoke-direct {v2, p1, v0, p2}, La/e/z;-><init>(La/b/b;Ljava/nio/charset/Charset;La/e/o;)V

    new-instance v3, La/e/n;

    invoke-direct {v3, p1, v0, p2}, La/e/n;-><init>(La/b/b;Ljava/nio/charset/Charset;La/e/o;)V

    const-string p1, "META-INF/MANIFEST.MF,META-INF/*.SF"

    invoke-direct {v1, p1, v2, v3}, La/e/ac;-><init>(Ljava/lang/String;La/e/m;La/e/m;)V

    return-object v1
.end method


# virtual methods
.method public a(La/b/b;La/j/n;)V
    .registers 14

    iget-object v0, p0, La/af;->a:La/h;

    iget-object v0, v0, La/h;->b:La/d;

    new-instance v8, La/n;

    invoke-direct {v8, p1, p2}, La/n;-><init>(La/b/b;La/j/n;)V

    const/4 p2, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v0}, La/d;->b()I

    move-result v1

    if-ge p2, v1, :cond_3e

    invoke-virtual {v0, p2}, La/d;->a(I)La/e;

    move-result-object v1

    invoke-virtual {v1}, La/e;->c()Z

    move-result v1

    if-nez v1, :cond_1e

    move v9, p2

    goto :goto_3b

    :cond_1e
    add-int/lit8 v10, p2, 0x1

    invoke-virtual {v0}, La/d;->b()I

    move-result v1

    if-eq v10, v1, :cond_30

    invoke-virtual {v0, v10}, La/d;->a(I)La/e;

    move-result-object v1

    invoke-virtual {v1}, La/e;->c()Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_30
    add-int/lit8 v6, v9, 0x1

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v4, v0

    move v7, v10

    invoke-direct/range {v1 .. v7}, La/af;->a(La/n;La/b/b;La/d;III)V

    move v5, v10

    :cond_3b
    :goto_3b
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_3e
    return-void
.end method
