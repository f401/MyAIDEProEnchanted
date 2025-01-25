.class La/e/ao;
.super Ljava/lang/Object;


# instance fields
.field final a:La/e/am;

.field private b:Z

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:[B

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>(La/e/am;Ljava/lang/String;ZI[BLjava/lang/String;)V
    .registers 7

    iput-object p1, p0, La/e/ao;->a:La/e/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La/e/ao;->h:Ljava/lang/String;

    iput-boolean p3, p0, La/e/ao;->b:Z

    iput p4, p0, La/e/ao;->c:I

    iput-object p5, p0, La/e/ao;->i:[B

    iput-object p6, p0, La/e/ao;->j:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(La/e/am;Ljava/lang/String;ZI[BLjava/lang/String;La/e/an;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, La/e/ao;-><init>(La/e/am;Ljava/lang/String;ZI[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(La/e/ao;I)I
    .registers 2

    iput p1, p0, La/e/ao;->d:I

    return p1
.end method

.method static synthetic a(La/e/ao;J)J
    .registers 4

    iput-wide p1, p0, La/e/ao;->g:J

    return-wide p1
.end method

.method static synthetic a(La/e/ao;)V
    .registers 1

    invoke-direct {p0}, La/e/ao;->c()V

    return-void
.end method

.method static synthetic b(La/e/ao;)J
    .registers 3

    iget-wide v0, p0, La/e/ao;->f:J

    return-wide v0
.end method

.method static synthetic b(La/e/ao;J)J
    .registers 4

    iput-wide p1, p0, La/e/ao;->e:J

    return-wide p1
.end method

.method static synthetic c(La/e/ao;J)J
    .registers 4

    iput-wide p1, p0, La/e/ao;->f:J

    return-wide p1
.end method

.method private c()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    const v2, 0x4034b50

    invoke-static {v0, v2}, La/e/am;->a(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    const/16 v2, 0xa

    invoke-static {v0, v2}, La/e/am;->b(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    invoke-static {v0, v1}, La/e/am;->b(La/e/am;I)V

    iget-object v2, p0, La/e/ao;->a:La/e/am;

    iget-boolean v0, p0, La/e/ao;->b:Z

    if-eqz v0, :cond_6a

    const/16 v0, 0x8

    :goto_1d
    invoke-static {v2, v0}, La/e/am;->b(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    iget v2, p0, La/e/ao;->c:I

    invoke-static {v0, v2}, La/e/am;->a(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    iget v2, p0, La/e/ao;->d:I

    invoke-static {v0, v2}, La/e/am;->a(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    iget-wide v2, p0, La/e/ao;->e:J

    invoke-static {v0, v2, v3}, La/e/am;->a(La/e/am;J)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    iget-wide v2, p0, La/e/ao;->f:J

    invoke-static {v0, v2, v3}, La/e/am;->a(La/e/am;J)V

    iget-object v0, p0, La/e/ao;->h:Ljava/lang/String;

    invoke-static {v0}, La/j/x;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    iget-object v3, p0, La/e/ao;->i:[B

    if-nez v3, :cond_6c

    :goto_47
    iget-object v3, p0, La/e/ao;->a:La/e/am;

    invoke-static {v3, v2}, La/e/am;->b(La/e/am;I)V

    iget-object v2, p0, La/e/ao;->a:La/e/am;

    invoke-static {v2, v1}, La/e/am;->b(La/e/am;I)V

    iget-object v1, p0, La/e/ao;->a:La/e/am;

    invoke-static {v1}, La/e/am;->a(La/e/am;)Ljava/io/DataOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, La/e/ao;->i:[B

    if-eqz v0, :cond_69

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    invoke-static {v0}, La/e/am;->a(La/e/am;)Ljava/io/DataOutputStream;

    move-result-object v0

    iget-object v1, p0, La/e/ao;->i:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    :cond_69
    return-void

    :cond_6a
    move v0, v1

    goto :goto_1d

    :cond_6c
    iget-object v1, p0, La/e/ao;->i:[B

    array-length v1, v1

    goto :goto_47
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, La/e/ao;->b:Z

    if-eqz v0, :cond_b

    new-instance v0, La/e/ap;

    invoke-direct {v0, p0, v1}, La/e/ap;-><init>(La/e/ao;La/e/an;)V

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, La/e/aq;

    invoke-direct {v0, p0, v1}, La/e/aq;-><init>(La/e/ao;La/e/an;)V

    goto :goto_a
.end method

.method public b()V
    .registers 7

    const/16 v3, 0xa

    const/4 v1, 0x0

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    const v2, 0x2014b50

    invoke-static {v0, v2}, La/e/am;->a(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    invoke-static {v0, v3}, La/e/am;->b(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    invoke-static {v0, v3}, La/e/am;->b(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    invoke-static {v0, v1}, La/e/am;->b(La/e/am;I)V

    iget-object v2, p0, La/e/ao;->a:La/e/am;

    iget-boolean v0, p0, La/e/ao;->b:Z

    if-eqz v0, :cond_9e

    const/16 v0, 0x8

    :goto_22
    invoke-static {v2, v0}, La/e/am;->b(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    iget v2, p0, La/e/ao;->c:I

    invoke-static {v0, v2}, La/e/am;->a(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    iget v2, p0, La/e/ao;->d:I

    invoke-static {v0, v2}, La/e/am;->a(La/e/am;I)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    iget-wide v2, p0, La/e/ao;->e:J

    invoke-static {v0, v2, v3}, La/e/am;->a(La/e/am;J)V

    iget-object v0, p0, La/e/ao;->a:La/e/am;

    iget-wide v2, p0, La/e/ao;->f:J

    invoke-static {v0, v2, v3}, La/e/am;->a(La/e/am;J)V

    iget-object v0, p0, La/e/ao;->h:Ljava/lang/String;

    invoke-static {v0}, La/j/x;->a(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v0, p0, La/e/ao;->j:Ljava/lang/String;

    if-nez v0, :cond_a0

    const/4 v0, 0x0

    :goto_4c
    iget-object v2, p0, La/e/ao;->a:La/e/am;

    array-length v4, v3

    invoke-static {v2, v4}, La/e/am;->b(La/e/am;I)V

    iget-object v4, p0, La/e/ao;->a:La/e/am;

    iget-object v2, p0, La/e/ao;->i:[B

    if-nez v2, :cond_a7

    move v2, v1

    :goto_59
    invoke-static {v4, v2}, La/e/am;->b(La/e/am;I)V

    iget-object v4, p0, La/e/ao;->a:La/e/am;

    if-nez v0, :cond_ab

    move v2, v1

    :goto_61
    invoke-static {v4, v2}, La/e/am;->b(La/e/am;I)V

    iget-object v2, p0, La/e/ao;->a:La/e/am;

    invoke-static {v2, v1}, La/e/am;->b(La/e/am;I)V

    iget-object v2, p0, La/e/ao;->a:La/e/am;

    invoke-static {v2, v1}, La/e/am;->b(La/e/am;I)V

    iget-object v2, p0, La/e/ao;->a:La/e/am;

    invoke-static {v2, v1}, La/e/am;->a(La/e/am;I)V

    iget-object v1, p0, La/e/ao;->a:La/e/am;

    iget-wide v4, p0, La/e/ao;->g:J

    invoke-static {v1, v4, v5}, La/e/am;->a(La/e/am;J)V

    iget-object v1, p0, La/e/ao;->a:La/e/am;

    invoke-static {v1}, La/e/am;->a(La/e/am;)Ljava/io/DataOutputStream;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v1, p0, La/e/ao;->i:[B

    if-eqz v1, :cond_92

    iget-object v1, p0, La/e/ao;->a:La/e/am;

    invoke-static {v1}, La/e/am;->a(La/e/am;)Ljava/io/DataOutputStream;

    move-result-object v1

    iget-object v2, p0, La/e/ao;->i:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    :cond_92
    if-eqz v0, :cond_9d

    iget-object v1, p0, La/e/ao;->a:La/e/am;

    invoke-static {v1}, La/e/am;->a(La/e/am;)Ljava/io/DataOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    :cond_9d
    return-void

    :cond_9e
    move v0, v1

    goto :goto_22

    :cond_a0
    iget-object v0, p0, La/e/ao;->j:Ljava/lang/String;

    invoke-static {v0}, La/j/x;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_4c

    :cond_a7
    iget-object v2, p0, La/e/ao;->i:[B

    array-length v2, v2

    goto :goto_59

    :cond_ab
    array-length v2, v0

    goto :goto_61
.end method
