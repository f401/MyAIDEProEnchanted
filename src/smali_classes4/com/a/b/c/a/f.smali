.class public Lcom/a/b/c/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/HashSet;

.field private b:Ljava/util/HashSet;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_5
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    return-object v0

    :cond_19
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_f

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error with optimize list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/a/b/c/a/f;->c:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "optimize and don\'t optimize lists  are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-eqz p1, :cond_19

    invoke-static {p1}, Lcom/a/b/c/a/f;->b(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/a/f;->a:Ljava/util/HashSet;

    :cond_19
    if-eqz p2, :cond_21

    invoke-static {p2}, Lcom/a/b/c/a/f;->b(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/a/f;->b:Ljava/util/HashSet;

    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/c/a/f;->c:Z

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/b/c/a/f;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/a/b/c/a/f;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/a/b/c/a/f;->b:Ljava/util/HashSet;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/a/b/c/a/f;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method
