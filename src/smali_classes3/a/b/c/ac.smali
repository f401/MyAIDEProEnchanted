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
    .registers 6

    const/16 v0, 0x16

    new-array v0, v0, [I

    sput-object v0, La/b/c/ac;->a:[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    const/4 v3, 0x1

    aput v3, v0, v1

    const/4 v4, 0x2

    const/16 v5, 0x8

    aput v4, v0, v5

    const/4 v4, 0x7

    aput v2, v0, v4

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x6

    aput v2, v0, v1

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v4, 0xb

    aput v5, v0, v4

    const/16 v5, 0x12

    aput v2, v0, v5

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0xc

    aput v4, v0, v1

    const/16 v4, 0x10

    aput v1, v0, v4

    const/16 v1, 0x13

    const/16 v5, 0xd

    aput v5, v0, v1

    const/16 v1, 0x14

    const/16 v5, 0xe

    aput v5, v0, v1

    aput v2, v0, v3

    const/16 v1, 0x15

    aput v4, v0, v1

    return-void
.end method

.method public constructor <init>(La/b/c;ILa/b/b/b;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/c/ac;->b:La/b/c;

    iput p2, p0, La/b/c/ac;->c:I

    iput-object p3, p0, La/b/c/ac;->d:La/b/b/b;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_b

    :cond_7
    invoke-virtual {p2, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    :goto_b
    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    invoke-virtual {p1, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_11

    :cond_7
    invoke-virtual {p2, p5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p3, p6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    :cond_11
    :goto_11
    return p1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, La/b/c/ac;->c:I

    return v0
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/a;

    invoke-virtual {v0, p1}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/c;)V
    .registers 5

    invoke-virtual {p2}, La/b/b/c;->b()D

    move-result-wide p1

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/c;

    invoke-virtual {v0}, La/b/b/c;->b()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/e;)V
    .registers 3

    invoke-virtual {p2}, La/b/b/e;->b()F

    move-result p1

    iget-object p2, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast p2, La/b/b/e;

    invoke-virtual {p2}, La/b/b/e;->b()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/f;)V
    .registers 3

    invoke-virtual {p2}, La/b/b/f;->b()I

    move-result p1

    iget-object p2, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast p2, La/b/b/f;

    invoke-virtual {p2}, La/b/b/f;->b()I

    move-result p2

    if-ge p1, p2, :cond_10

    const/4 p1, -0x1

    goto :goto_15

    :cond_10
    if-ne p1, p2, :cond_14

    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    const/4 p1, 0x1

    :goto_15
    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 6

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/h;

    invoke-virtual {p2}, La/b/b/h;->b()I

    move-result v1

    invoke-virtual {v0}, La/b/b/h;->b()I

    move-result v2

    if-ge v1, v2, :cond_10

    const/4 p1, -0x1

    goto :goto_28

    :cond_10
    if-le v1, v2, :cond_14

    const/4 p1, 0x1

    goto :goto_28

    :cond_14
    invoke-virtual {p2, p1}, La/b/b/h;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, La/b/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1}, La/b/b/h;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, La/b/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p2, v2, p1}, La/b/c/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_28
    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/i;)V
    .registers 6

    invoke-virtual {p2}, La/b/b/i;->b()J

    move-result-wide p1

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/i;

    invoke-virtual {v0}, La/b/b/i;->b()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_12

    const/4 p1, -0x1

    goto :goto_19

    :cond_12
    cmp-long v2, p1, v0

    if-nez v2, :cond_18

    const/4 p1, 0x0

    goto :goto_19

    :cond_18
    const/4 p1, 0x1

    :goto_19
    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/j;)V
    .registers 10

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/j;

    invoke-virtual {p2}, La/b/b/j;->b()I

    move-result v1

    invoke-virtual {v0}, La/b/b/j;->b()I

    move-result v2

    if-ge v1, v2, :cond_10

    const/4 p1, -0x1

    goto :goto_31

    :cond_10
    if-le v1, v2, :cond_14

    const/4 p1, 0x1

    goto :goto_31

    :cond_14
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

    move-result p1

    :goto_31
    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/k;)V
    .registers 4

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/k;

    invoke-virtual {p2, p1}, La/b/b/k;->a(La/b/c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1}, La/b/b/k;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/m;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/b/m;->a(La/b/c;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/m;

    invoke-virtual {v0, p1}, La/b/b/m;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/n;)V
    .registers 6

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/n;

    invoke-virtual {p2, p1}, La/b/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, La/b/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1}, La/b/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1}, La/b/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p2, v2, p1}, La/b/c/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/o;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/b/o;->a(La/b/c;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/o;

    invoke-virtual {v0, p1}, La/b/b/o;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/p;)V
    .registers 5

    iget-object p1, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast p1, La/b/b/p;

    invoke-virtual {p2}, La/b/b/p;->b()C

    move-result v0

    invoke-virtual {p1}, La/b/b/p;->b()C

    move-result v1

    if-eq v0, v1, :cond_16

    if-ge v0, v1, :cond_13

    const/4 p1, -0x1

    goto/16 :goto_91

    :cond_13
    const/4 p1, 0x1

    goto/16 :goto_91

    :cond_16
    invoke-virtual {p2}, La/b/b/p;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, La/b/b/p;->d()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p2, [Z

    if-eqz v0, :cond_2d

    check-cast p2, [Z

    array-length v0, p2

    check-cast p1, [Z

    array-length v1, p1

    invoke-static {p2, v0, p1, v1}, La/j/b;->a([ZI[ZI)I

    move-result p1

    goto :goto_91

    :cond_2d
    instance-of v0, p2, [B

    if-eqz v0, :cond_3c

    check-cast p2, [B

    array-length v0, p2

    check-cast p1, [B

    array-length v1, p1

    invoke-static {p2, v0, p1, v1}, La/j/b;->a([BI[BI)I

    move-result p1

    goto :goto_91

    :cond_3c
    instance-of v0, p2, [C

    if-eqz v0, :cond_4b

    check-cast p2, [C

    array-length v0, p2

    check-cast p1, [C

    array-length v1, p1

    invoke-static {p2, v0, p1, v1}, La/j/b;->a([CI[CI)I

    move-result p1

    goto :goto_91

    :cond_4b
    instance-of v0, p2, [S

    if-eqz v0, :cond_5a

    check-cast p2, [S

    array-length v0, p2

    check-cast p1, [S

    array-length v1, p1

    invoke-static {p2, v0, p1, v1}, La/j/b;->a([SI[SI)I

    move-result p1

    goto :goto_91

    :cond_5a
    instance-of v0, p2, [I

    if-eqz v0, :cond_69

    check-cast p2, [I

    array-length v0, p2

    check-cast p1, [I

    array-length v1, p1

    invoke-static {p2, v0, p1, v1}, La/j/b;->a([II[II)I

    move-result p1

    goto :goto_91

    :cond_69
    instance-of v0, p2, [F

    if-eqz v0, :cond_78

    check-cast p2, [F

    array-length v0, p2

    check-cast p1, [F

    array-length v1, p1

    invoke-static {p2, v0, p1, v1}, La/j/b;->a([FI[FI)I

    move-result p1

    goto :goto_91

    :cond_78
    instance-of v0, p2, [J

    if-eqz v0, :cond_87

    check-cast p2, [J

    array-length v0, p2

    check-cast p1, [J

    array-length v1, p1

    invoke-static {p2, v0, p1, v1}, La/j/b;->a([JI[JI)I

    move-result p1

    goto :goto_91

    :cond_87
    check-cast p2, [D

    array-length v0, p2

    check-cast p1, [D

    array-length v1, p1

    invoke-static {p2, v0, p1, v1}, La/j/b;->a([DI[DI)I

    move-result p1

    :goto_91
    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/b/r;->a(La/b/c;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/r;

    invoke-virtual {v0, p1}, La/b/b/r;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public a(La/b/c;La/b/b/s;)V
    .registers 3

    invoke-virtual {p2}, La/b/b/s;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast p2, La/b/b/s;

    invoke-virtual {p2}, La/b/b/s;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public b()La/b/b/b;
    .registers 2

    iget-object v0, p0, La/b/c/ac;->d:La/b/b/b;

    return-object v0
.end method

.method public b(La/b/c;La/b/b/q;)V
    .registers 11

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    check-cast v0, La/b/b/q;

    invoke-virtual {p2, p1}, La/b/b/q;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1}, La/b/b/q;->b(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1}, La/b/b/q;->c(La/b/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1}, La/b/b/q;->a(La/b/c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1}, La/b/b/q;->b(La/b/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, p1}, La/b/b/q;->c(La/b/c;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, La/b/c/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, La/b/c/ac;->f:I

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 5

    check-cast p1, La/b/c/ac;

    iget-object v0, p1, La/b/c/ac;->d:La/b/b/b;

    iput-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    iget-object v1, p0, La/b/c/ac;->d:La/b/b/b;

    const/4 v2, 0x1

    if-ne v1, v0, :cond_16

    iget p1, p1, La/b/c/ac;->c:I

    iget v0, p0, La/b/c/ac;->c:I

    if-ge v0, p1, :cond_12

    goto :goto_2b

    :cond_12
    if-ne v0, p1, :cond_36

    const/4 v2, 0x0

    goto :goto_36

    :cond_16
    invoke-virtual {v1}, La/b/b/b;->a()I

    move-result p1

    iget-object v0, p0, La/b/c/ac;->e:La/b/b/b;

    invoke-virtual {v0}, La/b/b/b;->a()I

    move-result v0

    if-eq p1, v0, :cond_2d

    sget-object v1, La/b/c/ac;->a:[I

    aget p1, v1, p1

    aget v0, v1, v0

    if-lt p1, v0, :cond_2b

    goto :goto_36

    :cond_2b
    :goto_2b
    const/4 v2, -0x1

    goto :goto_36

    :cond_2d
    iget-object p1, p0, La/b/c/ac;->d:La/b/b/b;

    iget-object v0, p0, La/b/c/ac;->b:La/b/c;

    invoke-virtual {p1, v0, p0}, La/b/b/b;->a(La/b/c;La/b/b/a/f;)V

    iget v2, p0, La/b/c/ac;->f:I

    :cond_36
    :goto_36
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, La/b/c/ac;->b()La/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, p1

    check-cast v1, La/b/c/ac;

    invoke-virtual {v1}, La/b/c/ac;->b()La/b/b/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, p1}, La/b/c/ac;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    return p1
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
