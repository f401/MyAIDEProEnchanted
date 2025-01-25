.class public final Lcom/a/b/c/b/al;
.super Lcom/a/b/c/b/an;


# instance fields
.field private final a:Lcom/a/b/c/b/h;

.field private final b:Lcom/a/b/g/n;

.field private final c:[Lcom/a/b/c/b/h;

.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ad;Lcom/a/b/c/b/h;Lcom/a/b/g/n;[Lcom/a/b/c/b/h;)V
    .registers 7

    sget-object v0, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {p0, p1, v0}, Lcom/a/b/c/b/an;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    if-nez p2, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "user == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-nez p3, :cond_19

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cases == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    if-nez p4, :cond_23

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targets == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    invoke-virtual {p3}, Lcom/a/b/g/n;->b()I

    move-result v0

    array-length v1, p4

    if-eq v0, v1, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cases / targets mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    const v1, 0xffff

    if-le v0, v1, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too many cases"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iput-object p2, p0, Lcom/a/b/c/b/al;->a:Lcom/a/b/c/b/h;

    iput-object p3, p0, Lcom/a/b/c/b/al;->b:Lcom/a/b/g/n;

    iput-object p4, p0, Lcom/a/b/c/b/al;->c:[Lcom/a/b/c/b/h;

    invoke-static {p3}, Lcom/a/b/c/b/al;->c(Lcom/a/b/g/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/b/c/b/al;->d:Z

    return-void
.end method

.method private static a(Lcom/a/b/g/n;)J
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/g/n;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    int-to-long v2, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_23

    :goto_22
    return-wide v0

    :cond_23
    const-wide/16 v0, -0x1

    goto :goto_22
.end method

.method private static b(Lcom/a/b/g/n;)J
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/g/n;->b()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static c(Lcom/a/b/g/n;)Z
    .registers 9

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/a/b/g/n;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcom/a/b/c/b/al;->a(Lcom/a/b/g/n;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/a/b/c/b/al;->b(Lcom/a/b/g/n;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_21

    const-wide/16 v6, 0x5

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    :cond_21
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-boolean v0, p0, Lcom/a/b/c/b/al;->d:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/a/b/c/b/al;->b:Lcom/a/b/g/n;

    invoke-static {v0}, Lcom/a/b/c/b/al;->a(Lcom/a/b/g/n;)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/a/b/c/b/al;->b:Lcom/a/b/g/n;

    invoke-static {v0}, Lcom/a/b/c/b/al;->b(Lcom/a/b/g/n;)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_b
.end method

.method public a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 7

    new-instance v0, Lcom/a/b/c/b/al;

    invoke-virtual {p0}, Lcom/a/b/c/b/al;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/b/al;->a:Lcom/a/b/c/b/h;

    iget-object v3, p0, Lcom/a/b/c/b/al;->b:Lcom/a/b/g/n;

    iget-object v4, p0, Lcom/a/b/c/b/al;->c:[Lcom/a/b/c/b/h;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/b/c/b/al;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/c/b/h;Lcom/a/b/g/n;[Lcom/a/b/c/b/h;)V

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/a/b/c/b/al;->a:Lcom/a/b/c/b/h;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->i()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/c/b/al;->c:[Lcom/a/b/c/b/h;

    array-length v3, v0

    iget-boolean v0, p0, Lcom/a/b/c/b/al;->d:Z

    if-eqz v0, :cond_2d

    const-string v0, "packed"

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-switch-payload // for switch @ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_26
    if-lt v0, v3, :cond_30

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    const-string v0, "sparse"

    goto :goto_16

    :cond_30
    iget-object v4, p0, Lcom/a/b/c/b/al;->c:[Lcom/a/b/c/b/h;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/a/b/c/b/h;->i()I

    move-result v4

    const-string v5, "\n  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/a/b/c/b/al;->b:Lcom/a/b/g/n;

    invoke-virtual {v5, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " // "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v4, v1

    invoke-static {v4}, Lcom/a/b/g/k;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public a(Lcom/a/b/g/a;)V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/c/b/al;->a:Lcom/a/b/c/b/h;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->i()I

    move-result v6

    sget-object v0, Lcom/a/b/c/b/o;->S:Lcom/a/b/c/b/n;

    invoke-virtual {v0}, Lcom/a/b/c/b/n;->c()Lcom/a/b/c/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/r;->a()I

    move-result v2

    iget-object v0, p0, Lcom/a/b/c/b/al;->c:[Lcom/a/b/c/b/h;

    array-length v3, v0

    iget-boolean v0, p0, Lcom/a/b/c/b/al;->d:Z

    if-eqz v0, :cond_62

    if-nez v3, :cond_31

    move v5, v1

    :goto_1b
    if-nez v3, :cond_39

    move v0, v1

    :goto_1e
    sub-int/2addr v0, v5

    add-int/lit8 v7, v0, 0x1

    const/16 v0, 0x100

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p1, v7}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p1, v5}, Lcom/a/b/g/a;->d(I)V

    move v3, v1

    move v4, v1

    :goto_2e
    if-lt v4, v7, :cond_42

    :cond_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/a/b/c/b/al;->b:Lcom/a/b/g/n;

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    move v5, v0

    goto :goto_1b

    :cond_39
    iget-object v0, p0, Lcom/a/b/c/b/al;->b:Lcom/a/b/g/n;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    goto :goto_1e

    :cond_42
    iget-object v0, p0, Lcom/a/b/c/b/al;->b:Lcom/a/b/g/n;

    invoke-virtual {v0, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    add-int v1, v5, v4

    if-le v0, v1, :cond_56

    move v0, v2

    move v1, v3

    :goto_4e
    invoke-interface {p1, v0}, Lcom/a/b/g/a;->d(I)V

    add-int/lit8 v0, v4, 0x1

    move v3, v1

    move v4, v0

    goto :goto_2e

    :cond_56
    iget-object v0, p0, Lcom/a/b/c/b/al;->c:[Lcom/a/b/c/b/h;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->i()I

    move-result v0

    sub-int/2addr v0, v6

    add-int/lit8 v1, v3, 0x1

    goto :goto_4e

    :cond_62
    const/16 v0, 0x200

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p1, v3}, Lcom/a/b/g/a;->c(I)V

    move v0, v1

    :goto_6b
    if-lt v0, v3, :cond_7e

    :goto_6d
    if-ge v1, v3, :cond_30

    iget-object v0, p0, Lcom/a/b/c/b/al;->c:[Lcom/a/b/c/b/h;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->i()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_7e
    iget-object v2, p0, Lcom/a/b/c/b/al;->b:Lcom/a/b/g/n;

    invoke-virtual {v2, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v2

    invoke-interface {p1, v2}, Lcom/a/b/g/a;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6b
.end method

.method protected b()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/c/b/al;->c:[Lcom/a/b/c/b/h;

    array-length v2, v0

    const/4 v0, 0x0

    :goto_b
    if-lt v0, v2, :cond_12

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v3, "\n    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/a/b/c/b/al;->b:Lcom/a/b/g/n;

    invoke-virtual {v3, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/a/b/c/b/al;->c:[Lcom/a/b/c/b/h;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/c/b/al;->d:Z

    return v0
.end method
