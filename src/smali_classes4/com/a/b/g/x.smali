.class public final Lcom/a/b/g/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/Writer;

.field private final b:I

.field private final c:Ljava/lang/StringBuffer;

.field private final d:Ljava/lang/StringBuffer;

.field private final e:Lcom/a/b/g/l;

.field private final f:Lcom/a/b/g/l;


# direct methods
.method public constructor <init>(Ljava/io/Writer;IILjava/lang/String;)V
    .registers 8

    const/16 v2, 0x3e8

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-ge p2, v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leftWidth < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    if-ge p3, v0, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rightWidth < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    if-nez p4, :cond_2e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spacer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    iput-object p1, p0, Lcom/a/b/g/x;->a:Ljava/io/Writer;

    iput p2, p0, Lcom/a/b/g/x;->b:I

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/a/b/g/x;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/a/b/g/x;->d:Ljava/lang/StringBuffer;

    new-instance v2, Lcom/a/b/g/l;

    invoke-direct {v2, v0, p2}, Lcom/a/b/g/l;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Lcom/a/b/g/x;->e:Lcom/a/b/g/l;

    new-instance v0, Lcom/a/b/g/l;

    invoke-direct {v0, v1, p3, p4}, Lcom/a/b/g/l;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/a/b/g/x;->f:Lcom/a/b/g/l;

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v1, Lcom/a/b/g/x;

    invoke-direct {v1, v0, p1, p4, p2}, Lcom/a/b/g/x;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    :try_start_15
    invoke-virtual {v1}, Lcom/a/b/g/x;->a()Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/a/b/g/x;->b()Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_2b

    invoke-virtual {v1}, Lcom/a/b/g/x;->c()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/io/Writer;I)V
    .registers 3

    :goto_0
    if-gtz p1, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .registers 4

    const/16 v1, 0xa

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_13

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_13
    return-void
.end method

.method private d()V
    .registers 6

    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lcom/a/b/g/x;->c:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_c

    :cond_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/a/b/g/x;->d:Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_b

    if-eqz v0, :cond_23

    iget-object v2, p0, Lcom/a/b/g/x;->a:Ljava/io/Writer;

    iget-object v3, p0, Lcom/a/b/g/x;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_23
    if-eqz v1, :cond_38

    iget-object v2, p0, Lcom/a/b/g/x;->a:Ljava/io/Writer;

    iget v3, p0, Lcom/a/b/g/x;->b:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/a/b/g/x;->a(Ljava/io/Writer;I)V

    iget-object v2, p0, Lcom/a/b/g/x;->a:Ljava/io/Writer;

    iget-object v3, p0, Lcom/a/b/g/x;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_38
    iget-object v2, p0, Lcom/a/b/g/x;->a:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    iget-object v2, p0, Lcom/a/b/g/x;->c:Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/a/b/g/x;->d:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/g/x;->c:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/a/b/g/x;->e:Lcom/a/b/g/l;

    invoke-static {v0, v1}, Lcom/a/b/g/x;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_7
    iget-object v0, p0, Lcom/a/b/g/x;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/a/b/g/x;->f:Lcom/a/b/g/l;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/a/b/g/l;->write(I)V

    invoke-direct {p0}, Lcom/a/b/g/x;->d()V

    goto :goto_7
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/g/x;->d:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/a/b/g/x;->f:Lcom/a/b/g/l;

    invoke-static {v0, v1}, Lcom/a/b/g/x;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_7
    iget-object v0, p0, Lcom/a/b/g/x;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/a/b/g/x;->e:Lcom/a/b/g/l;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/a/b/g/l;->write(I)V

    invoke-direct {p0}, Lcom/a/b/g/x;->d()V

    goto :goto_7
.end method


# virtual methods
.method public a()Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/x;->e:Lcom/a/b/g/l;

    return-object v0
.end method

.method public b()Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Lcom/a/b/g/x;->f:Lcom/a/b/g/l;

    return-object v0
.end method

.method public c()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/a/b/g/x;->c:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/a/b/g/x;->e:Lcom/a/b/g/l;

    invoke-static {v0, v1}, Lcom/a/b/g/x;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    iget-object v0, p0, Lcom/a/b/g/x;->d:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/a/b/g/x;->f:Lcom/a/b/g/l;

    invoke-static {v0, v1}, Lcom/a/b/g/x;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    invoke-direct {p0}, Lcom/a/b/g/x;->d()V

    invoke-direct {p0}, Lcom/a/b/g/x;->e()V

    invoke-direct {p0}, Lcom/a/b/g/x;->f()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
