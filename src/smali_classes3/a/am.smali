.class La/am;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, La/am;->a:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, La/am;->b:J

    return-void
.end method

.method synthetic constructor <init>(La/al;)V
    .registers 2

    invoke-direct {p0}, La/am;-><init>()V

    return-void
.end method

.method private a()V
    .registers 6

    iget-wide v0, p0, La/am;->a:J

    iget-wide v2, p0, La/am;->b:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The output is outdated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(J)V
    .registers 6

    iget-wide v0, p0, La/am;->a:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_b

    iput-wide p1, p0, La/am;->a:J

    invoke-direct {p0}, La/am;->a()V

    :cond_b
    return-void
.end method

.method public a(JZ)V
    .registers 4

    if-eqz p3, :cond_6

    invoke-virtual {p0, p1, p2}, La/am;->b(J)V

    goto :goto_9

    :cond_6
    invoke-virtual {p0, p1, p2}, La/am;->a(J)V

    :goto_9
    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La/am;->a(Ljava/io/File;Z)V

    :cond_6
    return-void
.end method

.method public a(Ljava/io/File;Z)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, La/am;->b(J)V

    :cond_14
    const/4 v0, 0x0

    :goto_15
    array-length v1, p1

    if-ge v0, v1, :cond_27

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, La/am;->a(Ljava/io/File;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_20
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, La/am;->a(JZ)V

    :cond_27
    return-void
.end method

.method public a(Ljava/net/URL;)V
    .registers 4

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :try_start_e
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, La/am;->a(Ljava/io/File;Z)V
    :try_end_1b
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception p1

    :cond_1d
    :goto_1d
    return-void
.end method

.method public b(J)V
    .registers 6

    iget-wide v0, p0, La/am;->b:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_b

    iput-wide p1, p0, La/am;->b:J

    invoke-direct {p0}, La/am;->a()V

    :cond_b
    return-void
.end method

.method public b(Ljava/io/File;)V
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, La/am;->a(Ljava/io/File;Z)V

    :cond_10
    return-void
.end method
