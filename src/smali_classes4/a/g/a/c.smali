.class La/g/a/c;
.super La/b/f/w;

# interfaces
.implements La/b/d/a/d;


# instance fields
.field final a:La/g/a/a;


# direct methods
.method private constructor <init>(La/g/a/a;)V
    .registers 2

    iput-object p1, p0, La/g/a/c;->a:La/g/a/a;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/g/a/a;La/g/a/b;)V
    .registers 3

    invoke-direct {p0, p1}, La/g/a/c;-><init>(La/g/a/a;)V

    return-void
.end method

.method private a(I)I
    .registers 4

    add-int/lit8 v0, p1, -0x1

    :goto_2
    if-ltz v0, :cond_14

    iget-object v1, p0, La/g/a/c;->a:La/g/a/a;

    invoke-static {v1}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v1

    invoke-virtual {v1, p1}, La/g/a/j;->b(I)Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_10
    return v0

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private a(La/d/a/ad;I)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, La/d/a/ad;->e()I

    move-result v2

    if-lez v2, :cond_12

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_16

    invoke-virtual {p1, v1}, La/d/a/ad;->a(I)I

    move-result v3

    if-le v3, p2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    const/4 v0, 0x1

    goto :goto_12
.end method


# virtual methods
.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 8

    iget-object v0, p0, La/g/a/c;->a:La/g/a/a;

    invoke-static {v0}, La/g/a/a;->a(La/g/a/a;)La/g/a/j;

    move-result-object v0

    invoke-virtual {v0, p4}, La/g/a/j;->f(I)La/d/a/ad;

    move-result-object v0

    invoke-direct {p0, v0, p4}, La/g/a/c;->a(La/d/a/ad;I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, La/g/a/c;->a:La/g/a/a;

    invoke-direct {p0, p4}, La/g/a/c;->a(I)I

    move-result v1

    invoke-static {v0, v1, p4}, La/g/a/a;->a(La/g/a/a;II)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, La/g/a/c;->a:La/g/a/a;

    invoke-static {v0, p1, p4}, La/g/a/a;->a(La/g/a/a;La/b/c;I)V

    :cond_21
    return-void
.end method
