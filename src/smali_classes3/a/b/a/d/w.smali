.class public La/b/a/d/w;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/l;
.implements La/b/d/a/d;


# instance fields
.field private a:[Z

.field private b:[I

.field private c:[I

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    const/16 v0, 0x1fa0

    new-array v1, v0, [Z

    iput-object v1, p0, La/b/a/d/w;->a:[Z

    new-array v1, v0, [I

    iput-object v1, p0, La/b/a/d/w;->b:[I

    new-array v0, v0, [I

    iput-object v0, p0, La/b/a/d/w;->c:[I

    return-void
.end method

.method private a(La/b/c;La/b/j;La/b/a/d;I)V
    .registers 13

    iget v0, p0, La/b/a/d/w;->e:I

    iget v1, p0, La/b/a/d/w;->f:I

    if-ge v1, v0, :cond_8

    iput v0, p0, La/b/a/d/w;->f:I

    :cond_8
    :goto_8
    iget-object v1, p0, La/b/a/d/w;->a:[Z

    aget-boolean v2, v1, p4

    if-nez v2, :cond_93

    const/4 v2, 0x1

    aput-boolean v2, v1, p4

    iget-object v1, p0, La/b/a/d/w;->b:[I

    iget v2, p0, La/b/a/d/w;->e:I

    aput v2, v1, p4

    iget-object v1, p3, La/b/a/d;->f:[B

    invoke-static {v1, p4}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v2

    iget v1, p0, La/b/a/d/w;->e:I

    invoke-virtual {v2, p1}, La/b/d/c;->a(La/b/c;)I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, La/b/a/d/w;->e:I

    if-ltz v1, :cond_4c

    invoke-virtual {v2, p1}, La/b/d/c;->b(La/b/c;)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, La/b/a/d/w;->e:I

    iget-object v3, p0, La/b/a/d/w;->c:[I

    aput v1, v3, p4

    iget v3, p0, La/b/a/d/w;->f:I

    if-ge v3, v1, :cond_39

    iput v1, p0, La/b/a/d/w;->f:I

    :cond_39
    invoke-virtual {v2, p4}, La/b/d/c;->a(I)I

    move-result v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    iget-boolean v2, p0, La/b/a/d/w;->d:Z

    if-eqz v2, :cond_4a

    goto :goto_93

    :cond_4a
    add-int/2addr p4, v1

    goto :goto_8

    :cond_4c
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack size becomes negative after instruction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, p4}, La/b/d/c;->b(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " in ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_93
    :goto_93
    iput v0, p0, La/b/a/d/w;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, La/b/a/d/w;->f:I

    return v0
.end method

.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, La/b/a/d/w;->b(La/b/c;La/b/j;La/b/a/d;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p3

    const-string v0, "Unexpected error while computing stack sizes:"

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Class       = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Method      = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Exception   = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La/j/l;->a(Ljava/lang/String;)V

    throw p3
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 11

    iget-byte v0, p5, La/b/d/a;->c:B

    iget v1, p5, La/b/d/a;->a:I

    add-int/2addr v1, p4

    invoke-direct {p0, p1, p2, p3, v1}, La/b/a/d/w;->a(La/b/c;La/b/j;La/b/a/d;I)V

    const/16 v1, -0x37

    const/4 v2, 0x1

    const/16 v3, -0x58

    if-eq v0, v3, :cond_11

    if-ne v0, v1, :cond_1e

    :cond_11
    iget v4, p0, La/b/a/d/w;->e:I

    sub-int/2addr v4, v2

    iput v4, p0, La/b/a/d/w;->e:I

    invoke-virtual {p5, p4}, La/b/d/a;->a(I)I

    move-result p5

    add-int/2addr p5, p4

    invoke-direct {p0, p1, p2, p3, p5}, La/b/a/d/w;->a(La/b/c;La/b/j;La/b/a/d;I)V

    :cond_1e
    const/16 p1, -0x59

    if-eq v0, p1, :cond_2c

    const/16 p1, -0x38

    if-eq v0, p1, :cond_2c

    if-eq v0, v3, :cond_2c

    if-ne v0, v1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :cond_2c
    :goto_2c
    iput-boolean v2, p0, La/b/a/d/w;->d:Z

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 6

    const/4 p1, 0x0

    iput-boolean p1, p0, La/b/a/d/w;->d:Z

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 6

    iget-byte p1, p5, La/b/d/h;->c:B

    const/16 p2, -0x54

    if-eq p1, p2, :cond_21

    const/16 p2, -0x53

    if-eq p1, p2, :cond_21

    const/16 p2, -0x52

    if-eq p1, p2, :cond_21

    const/16 p2, -0x51

    if-eq p1, p2, :cond_21

    const/16 p2, -0x50

    if-eq p1, p2, :cond_21

    const/16 p2, -0x4f

    if-eq p1, p2, :cond_21

    const/16 p2, -0x41

    if-ne p1, p2, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p1, 0x1

    :goto_22
    iput-boolean p1, p0, La/b/a/d/w;->d:Z

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/i;)V
    .registers 9

    iget-object v0, p5, La/b/d/i;->d:[I

    const/4 v1, 0x0

    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_f

    aget v2, v0, v1

    add-int/2addr v2, p4

    invoke-direct {p0, p1, p2, p3, v2}, La/b/a/d/w;->a(La/b/c;La/b/j;La/b/a/d;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    iget p5, p5, La/b/d/i;->b:I

    add-int/2addr p5, p4

    invoke-direct {p0, p1, p2, p3, p5}, La/b/a/d/w;->a(La/b/c;La/b/j;La/b/a/d;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, La/b/a/d/w;->d:Z

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 6

    iget-byte p1, p5, La/b/d/k;->c:B

    const/16 p2, -0x57

    if-ne p1, p2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    iput-boolean p1, p0, La/b/a/d/w;->d:Z

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, La/b/a/d/w;->e:I

    iget p4, p4, La/b/a/h;->c:I

    invoke-direct {p0, p1, p2, p3, p4}, La/b/a/d/w;->a(La/b/c;La/b/j;La/b/a/d;I)V

    return-void
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, La/b/a/d/w;->a:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public b(I)I
    .registers 5

    iget-object v0, p0, La/b/a/d/w;->a:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_b

    iget-object v0, p0, La/b/a/d/w;->b:[I

    aget p1, v0, p1

    return p1

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stack size before unreachable instruction offset ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(La/b/c;La/b/j;La/b/a/d;)V
    .registers 7

    iget v0, p3, La/b/a/d;->e:I

    iget-object v1, p0, La/b/a/d/w;->a:[Z

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, La/j/b;->a([ZIZ)[Z

    move-result-object v1

    iput-object v1, p0, La/b/a/d/w;->a:[Z

    iget-object v1, p0, La/b/a/d/w;->b:[I

    invoke-static {v1, v0, v2}, La/j/b;->b([III)[I

    move-result-object v1

    iput-object v1, p0, La/b/a/d/w;->b:[I

    iget-object v1, p0, La/b/a/d/w;->c:[I

    invoke-static {v1, v0, v2}, La/j/b;->b([III)[I

    move-result-object v0

    iput-object v0, p0, La/b/a/d/w;->c:[I

    iput v2, p0, La/b/a/d/w;->e:I

    iput v2, p0, La/b/a/d/w;->f:I

    invoke-direct {p0, p1, p2, p3, v2}, La/b/a/d/w;->a(La/b/c;La/b/j;La/b/a/d;I)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/a/d/l;)V

    return-void
.end method

.method public c(I)I
    .registers 5

    iget-object v0, p0, La/b/a/d/w;->a:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_b

    iget-object v0, p0, La/b/a/d/w;->c:[I

    aget p1, v0, p1

    return p1

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stack size after unreachable instruction offset ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
