.class La/b/c/p;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/m;


# instance fields
.field final a:La/b/c/o;

.field private final b:Ljava/lang/Object;

.field private final c:La/b/c/j;


# direct methods
.method public constructor <init>(La/b/c/o;La/b/c/j;)V
    .registers 3

    iput-object p1, p0, La/b/c/p;->a:La/b/c/o;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/c/p;->b:Ljava/lang/Object;

    iput-object p2, p0, La/b/c/p;->c:La/b/c/j;

    return-void
.end method

.method private a(La/b/a/l;)V
    .registers 3

    iget-object v0, p0, La/b/c/p;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, La/b/a/l;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private b(La/b/a/l;)Z
    .registers 3

    invoke-virtual {p1}, La/b/a/l;->f()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, La/b/c/p;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/k;)V
    .registers 6

    invoke-virtual {p2, p1, p0}, La/b/a/k;->a(La/b/c;La/b/a/d/m;)V

    new-instance p1, La/b/c/ap;

    invoke-direct {p1, p2}, La/b/c/ap;-><init>(La/b/a/k;)V

    iget v0, p2, La/b/a/k;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1e

    iget-object v1, p2, La/b/a/k;->d:[La/b/a/l;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, La/b/c/p;->b(La/b/a/l;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p1, v1}, La/b/c/ap;->a(La/b/a/l;)V

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1e
    iget p1, p2, La/b/a/k;->c:I

    if-nez p1, :cond_29

    iget-object p1, p0, La/b/c/p;->c:La/b/c/j;

    const-string p2, "InnerClasses"

    invoke-virtual {p1, p2}, La/b/c/j;->b(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public a(La/b/c;La/b/a/l;)V
    .registers 6

    move-object v0, p1

    check-cast v0, La/b/k;

    iget v1, p2, La/b/a/l;->a:I

    invoke-virtual {v0, v1}, La/b/k;->l(I)La/b/b/b;

    move-result-object v1

    check-cast v1, La/b/b/a;

    iget v2, p2, La/b/a/l;->b:I

    invoke-virtual {v0, v2}, La/b/k;->l(I)La/b/b/b;

    move-result-object v0

    check-cast v0, La/b/b/a;

    invoke-virtual {p0, v1, p1}, La/b/c/p;->a(La/b/b/a;La/b/c;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {p0, v0, p1}, La/b/c/p;->a(La/b/b/a;La/b/c;)Z

    move-result p1

    if-eqz p1, :cond_22

    :cond_1f
    invoke-direct {p0, p2}, La/b/c/p;->a(La/b/a/l;)V

    :cond_22
    return-void
.end method

.method public a(La/b/b/a;La/b/c;)Z
    .registers 3

    if-eqz p1, :cond_10

    invoke-virtual {p1, p2}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java/lang/invoke/MethodHandles"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
