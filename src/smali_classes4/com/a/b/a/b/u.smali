.class public Lcom/a/b/a/b/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/a/b/e/c/ad;

.field private final d:Lcom/a/b/e/c/ad;

.field private final e:Lcom/a/b/e/c/ad;

.field private final f:I


# direct methods
.method public constructor <init>(IILcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startPc < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-gez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p3, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    if-nez p4, :cond_2d

    if-nez p5, :cond_2d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "(descriptor == null) && (signature == null)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    if-gez p6, :cond_37

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iput p1, p0, Lcom/a/b/a/b/u;->a:I

    iput p2, p0, Lcom/a/b/a/b/u;->b:I

    iput-object p3, p0, Lcom/a/b/a/b/u;->c:Lcom/a/b/e/c/ad;

    iput-object p4, p0, Lcom/a/b/a/b/u;->d:Lcom/a/b/e/c/ad;

    iput-object p5, p0, Lcom/a/b/a/b/u;->e:Lcom/a/b/e/c/ad;

    iput p6, p0, Lcom/a/b/a/b/u;->f:I

    return-void
.end method

.method static synthetic b(Lcom/a/b/a/b/u;)Lcom/a/b/e/c/ad;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/b/u;->c()Lcom/a/b/e/c/ad;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/u;->e:Lcom/a/b/e/c/ad;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/b/e/c/ad;)Lcom/a/b/a/b/u;
    .registers 9

    new-instance v0, Lcom/a/b/a/b/u;

    iget v1, p0, Lcom/a/b/a/b/u;->a:I

    iget v2, p0, Lcom/a/b/a/b/u;->b:I

    iget-object v3, p0, Lcom/a/b/a/b/u;->c:Lcom/a/b/e/c/ad;

    iget-object v4, p0, Lcom/a/b/a/b/u;->d:Lcom/a/b/e/c/ad;

    iget v6, p0, Lcom/a/b/a/b/u;->f:I

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/a/b/a/b/u;-><init>(IILcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;I)V

    return-object v0
.end method

.method public a()Lcom/a/b/e/b/o;
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/b/u;->c:Lcom/a/b/e/c/ad;

    iget-object v1, p0, Lcom/a/b/a/b/u;->e:Lcom/a/b/e/c/ad;

    invoke-static {v0, v1}, Lcom/a/b/e/b/o;->a(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)Lcom/a/b/e/b/o;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Z
    .registers 5

    iget v0, p0, Lcom/a/b/a/b/u;->f:I

    if-ne p2, v0, :cond_11

    iget v0, p0, Lcom/a/b/a/b/u;->a:I

    if-lt p1, v0, :cond_11

    iget v0, p0, Lcom/a/b/a/b/u;->a:I

    iget v1, p0, Lcom/a/b/a/b/u;->b:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public a(Lcom/a/b/a/b/u;)Z
    .registers 4

    iget v0, p0, Lcom/a/b/a/b/u;->a:I

    iget v1, p1, Lcom/a/b/a/b/u;->a:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/a/b/a/b/u;->b:I

    iget v1, p1, Lcom/a/b/a/b/u;->b:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/a/b/a/b/u;->f:I

    iget v1, p1, Lcom/a/b/a/b/u;->f:I

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/a/b/a/b/u;->c:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/a/b/u;->c:Lcom/a/b/e/c/ad;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public b()Lcom/a/b/e/d/c;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/u;->d:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/d/c;->a(Ljava/lang/String;)Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method
