.class La/b/c/ac;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements Ljava/lang/Comparable;


# static fields
.field private static final a:[I


# instance fields
.field private final b:La/b/c;

.field private final c:I

.field private final d:La/b/b/b;

.field private e:La/b/b/b;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x16

    new-array v0, v0, [I

    sput-object v0, La/b/c/ac;->a:[I

    const/4 v1, 0x0

    aput v1, v0, v4

    aput v3, v0, v5

    const/16 v1, 0x8

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    aput v5, v0, v6

    aput v6, v0, v7

    const/16 v1, 0x9

    aput v7, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v1, v0, v3

    const/16 v1, 0x15

    const/16 v2, 0x10

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(La/b/c;ILa/b/b/b;)V
    .locals 0

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/c/ac;->b:La/b/c;

    iput p2, p0, La/b/c/ac;->c:I

    iput-object p3, p0, La/b/c/ac;->d:La/b/b/b;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2, p5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3, p6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, La/b/c/ac;->c:I

    return v0
.end method

.method public a(La/b/c;La/b/b/a;)V
    .locals 2

    invoke-virtual {p2, p1}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/a;

    invoke-virtual {v0, p1}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/c;)V
    .locals 4

    invoke-virtual {p2}, La/b/b/c;->b()D

    move-result-wide v2

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/c;

    invoke-virtual {v0}, La/b/b/c;->b()D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/e;)V
    .locals 2

    invoke-virtual {p2}, La/b/b/e;->b()F

    move-result v1

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/e;

    invoke-virtual {v0}, La/b/b/e;->b()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/f;)V
    .locals 2

    invoke-virtual {p2}, La/b/b/f;->b()I

    move-result v1

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/f;

    invoke-virtual {v0}, La/b/b/f;->b()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, La/b/c/ac;->f:I

    return-void

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(La/b/c;La/b/b/h;)V
    .locals 4

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/h;

    invoke-virtual {p2}, La/b/b/h;->b()I

    move-result v1

    invoke-virtual {v0}, La/b/b/h;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, La/b/c/ac;->f:I

    return-void

    :cond_0
    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, La/b/b/h;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, La/b/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, La/b/b/h;->a(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1}, La/b/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v3, v0}, La/b/c/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(La/b/c;La/b/b/i;)V
    .locals 5

    invoke-virtual {p2}, La/b/b/i;->b()J

    move-result-wide v2

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/i;

    invoke-virtual {v0}, La/b/b/i;->b()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, La/b/c/ac;->f:I

    return-void

    :cond_0
    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(La/b/c;La/b/b/j;)V
    .locals 7

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/j;

    invoke-virtual {p2}, La/b/b/j;->b()I

    move-result v1

    invoke-virtual {v0}, La/b/b/j;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, La/b/c/ac;->f:I

    return-void

    :cond_0
    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, La/b/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, La/b/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1}, La/b/b/j;->c(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1}, La/b/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1}, La/b/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1}, La/b/b/j;->c(La/b/c;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, La/b/c/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(La/b/c;La/b/b/k;)V
    .locals 2

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/k;

    invoke-virtual {p2, p1}, La/b/b/k;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, La/b/b/k;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/m;)V
    .locals 2

    invoke-virtual {p2, p1}, La/b/b/m;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/m;

    invoke-virtual {v0, p1}, La/b/b/m;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/n;)V
    .locals 4

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/n;

    invoke-virtual {p2, p1}, La/b/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, La/b/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, La/b/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1}, La/b/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v3, v0}, La/b/c/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/o;)V
    .locals 2

    invoke-virtual {p2, p1}, La/b/b/o;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/o;

    invoke-virtual {v0, p1}, La/b/b/o;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/p;)V
    .locals 4

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/p;

    invoke-virtual {p2}, La/b/b/p;->b()C

    move-result v1

    invoke-virtual {v0}, La/b/b/p;->b()C

    move-result v2

    if-eq v1, v2, :cond_1

    if-ge v1, v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, La/b/c/ac;->f:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, La/b/b/p;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, La/b/b/p;->d()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v1, [Z

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, [Z

    array-length v3, v0

    move-object v1, v2

    check-cast v1, [Z

    array-length v2, v1

    invoke-static {v0, v3, v1, v2}, La/j/b;->a([ZI[ZI)I

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, v1, [B

    if-eqz v0, :cond_3

    check-cast v1, [B

    array-length v0, v1

    check-cast v2, [B

    array-length v3, v2

    invoke-static {v1, v0, v2, v3}, La/j/b;->a([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v0, v1, [C

    if-eqz v0, :cond_4

    check-cast v1, [C

    array-length v0, v1

    check-cast v2, [C

    array-length v3, v2

    invoke-static {v1, v0, v2, v3}, La/j/b;->a([CI[CI)I

    move-result v0

    goto :goto_0

    :cond_4
    instance-of v0, v1, [S

    if-eqz v0, :cond_5

    check-cast v1, [S

    array-length v0, v1

    check-cast v2, [S

    array-length v3, v2

    invoke-static {v1, v0, v2, v3}, La/j/b;->a([SI[SI)I

    move-result v0

    goto :goto_0

    :cond_5
    instance-of v0, v1, [I

    if-eqz v0, :cond_6

    check-cast v1, [I

    array-length v0, v1

    check-cast v2, [I

    array-length v3, v2

    invoke-static {v1, v0, v2, v3}, La/j/b;->a([II[II)I

    move-result v0

    goto :goto_0

    :cond_6
    instance-of v0, v1, [F

    if-eqz v0, :cond_7

    check-cast v1, [F

    array-length v0, v1

    check-cast v2, [F

    array-length v3, v2

    invoke-static {v1, v0, v2, v3}, La/j/b;->a([FI[FI)I

    move-result v0

    goto :goto_0

    :cond_7
    instance-of v0, v1, [J

    if-eqz v0, :cond_8

    check-cast v1, [J

    array-length v0, v1

    check-cast v2, [J

    array-length v3, v2

    invoke-static {v1, v0, v2, v3}, La/j/b;->a([JI[JI)I

    move-result v0

    goto :goto_0

    :cond_8
    check-cast v1, [D

    array-length v0, v1

    check-cast v2, [D

    array-length v3, v2

    invoke-static {v1, v0, v2, v3}, La/j/b;->a([DI[DI)I

    move-result v0

    goto/16 :goto_0
.end method

.method public a(La/b/c;La/b/b/r;)V
    .locals 2

    invoke-virtual {p2, p1}, La/b/b/r;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/r;

    invoke-virtual {v0, p1}, La/b/b/r;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/s;)V
    .locals 2

    invoke-virtual {p2}, La/b/b/s;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/s;

    invoke-virtual {v0}, La/b/b/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public b()La/b/b/b;
    .locals 1

    iget-object v0, p0, La/b/c/ac;->d:La/b/b/b;

    return-object v0
.end method

.method public b(La/b/c;La/b/b/q;)V
    .locals 7

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/q;

    invoke-virtual {p2, p1}, La/b/b/q;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, La/b/b/q;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1}, La/b/b/q;->c(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1}, La/b/b/q;->a(La/b/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1}, La/b/b/q;->b(La/b/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1}, La/b/b/q;->c(La/b/c;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, La/b/c/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, La/b/c/ac;

    iget-object v1, p1, La/b/c/ac;->d:La/b/b/b;

    iput-object v1, p0, La/b/c/ac;->e:La/b/b/b;

    iget-object v2, p0, La/b/c/ac;->d:La/b/b/b;

    const/4 v0, 0x1

    if-ne v2, v1, :cond_3

    iget v1, p1, La/b/c/ac;->c:I

    iget v2, p0, La/b/c/ac;->c:I

    if-ge v2, v1, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-ne v2, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, La/b/b/b;->a()I

    move-result v1

    iget-object v2, p0, La/b/c/ac;->e:La/b/b/b;

    invoke-virtual {v2}, La/b/b/b;->a()I

    move-result v2

    if-eq v1, v2, :cond_4

    sget-object v3, La/b/c/ac;->a:[I

    aget v1, v3, v1

    aget v2, v3, v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_4
    iget-object v0, p0, La/b/c/ac;->d:La/b/b/b;

    iget-object v1, p0, La/b/c/ac;->b:La/b/c;

    invoke-virtual {v0, v1, p0}, La/b/b/b;->a(La/b/c;La/b/b/a/f;)V

    iget v0, p0, La/b/c/ac;->f:I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/b/c/ac;->b()La/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, p1

    check-cast v0, La/b/c/ac;

    invoke-virtual {v0}, La/b/c/ac;->b()La/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, La/b/c/ac;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
