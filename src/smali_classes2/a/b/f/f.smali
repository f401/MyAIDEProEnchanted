.class public La/b/f/f;
.super La/b/f/w;

# interfaces
.implements La/b/a/a/b/f;
.implements La/b/a/a/b/g;
.implements La/b/a/d/i;
.implements La/b/a/d/q;
.implements La/b/a/d/r;
.implements La/b/b/a/f;
.implements La/b/g/aq;
.implements La/b/g/s;


# instance fields
.field private final a:La/b/b;

.field private final b:La/b/b;

.field private final c:La/b/f/z;

.field private final d:La/b/f/z;

.field private final e:La/b/f/z;

.field private final f:La/b/f/z;

.field private final g:La/b/f/r;


# direct methods
.method public constructor <init>(La/b/b;La/b/b;)V
    .registers 10

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, La/b/f/f;-><init>(La/b/b;La/b/b;La/b/f/z;La/b/f/z;La/b/f/z;La/b/f/z;)V

    return-void
.end method

.method public constructor <init>(La/b/b;La/b/b;La/b/f/z;La/b/f/z;La/b/f/z;La/b/f/z;)V
    .registers 8

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/f/r;

    invoke-direct {v0}, La/b/f/r;-><init>()V

    iput-object v0, p0, La/b/f/f;->g:La/b/f/r;

    iput-object p1, p0, La/b/f/f;->a:La/b/b;

    iput-object p2, p0, La/b/f/f;->b:La/b/b;

    iput-object p3, p0, La/b/f/f;->c:La/b/f/z;

    iput-object p4, p0, La/b/f/f;->d:La/b/f/z;

    iput-object p5, p0, La/b/f/f;->e:La/b/f/z;

    iput-object p6, p0, La/b/f/f;->f:La/b/f/z;

    return-void
.end method

.method private a(La/b/c;Ljava/lang/String;)La/b/c;
    .registers 5

    new-instance v0, La/b/f/j;

    invoke-direct {v0, p2}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, La/b/f/j;->c()Ljava/lang/String;

    invoke-virtual {v0}, La/b/f/j;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, La/b/f/j;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->c(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(La/b/c;La/b/a/a/a;La/b/a/a/h;)V
    .registers 7

    if-eqz p2, :cond_0

    iget-object v0, p2, La/b/a/a/a;->d:[La/b/c;

    if-eqz v0, :cond_0

    iget v0, p3, La/b/a/a/h;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, La/b/a/a/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, La/b/a/a/a;->d:[La/b/c;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p3, La/b/a/a/h;->d:La/b/c;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, La/b/c;->b(Ljava/lang/String;Ljava/lang/String;)La/b/j;

    move-result-object v0

    iput-object v0, p3, La/b/a/a/h;->e:La/b/j;

    :cond_0
    return-void
.end method

.method private b(La/b/c;Ljava/lang/String;)[La/b/c;
    .registers 9

    const/4 v2, 0x0

    new-instance v4, La/b/f/j;

    invoke-direct {v4, p2}, La/b/f/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, La/b/f/j;->a()I

    move-result v5

    if-lez v5, :cond_2

    new-array v1, v5, [La/b/c;

    move v0, v2

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-virtual {v4}, La/b/f/j;->c()Ljava/lang/String;

    invoke-virtual {v4}, La/b/f/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, La/b/f/f;->c(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v2

    if-eqz v2, :cond_0

    aput-object v2, v1, v3

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(La/b/c;Ljava/lang/String;)La/b/c;
    .registers 8

    invoke-static {p2}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, La/b/f/i;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, La/b/f/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object v0, p0, La/b/f/f;->a:La/b/b;

    invoke-virtual {v0, p2}, La/b/b;->a(Ljava/lang/String;)La/b/c;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, La/b/f/f;->b:La/b/b;

    invoke-virtual {v0, p2}, La/b/b;->a(Ljava/lang/String;)La/b/c;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, La/b/f/f;->c:La/b/f/z;

    if-eqz v1, :cond_0

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/b/f/f;->c:La/b/f/z;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": can\'t find referenced class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, p2, v3}, La/b/f/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, La/b/f/f;->f:La/b/f/z;

    if-eqz v1, :cond_0

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/b/f/f;->f:La/b/f/z;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: library class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " depends on program class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, p2, v3}, La/b/f/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a/a;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/a/a/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->b(La/b/c;Ljava/lang/String;)[La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/a/a/a;->d:[La/b/c;

    invoke-virtual {p2, p1, p0}, La/b/a/a/a;->a(La/b/c;La/b/a/a/b/g;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/c;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, La/b/f/f;->b(La/b/c;La/b/a/a/a;La/b/a/a/h;)V

    invoke-virtual {p3, p1, p0}, La/b/a/a/c;->a(La/b/c;La/b/a/a/b/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/e;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, La/b/f/f;->b(La/b/c;La/b/a/a/a;La/b/a/a/h;)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/a/e;->b(La/b/c;La/b/a/a/a;La/b/a/a/b/g;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/f;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, La/b/f/f;->b(La/b/c;La/b/a/a/a;La/b/a/a/h;)V

    invoke-virtual {p3, p1}, La/b/a/a/f;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->b(La/b/c;Ljava/lang/String;)[La/b/c;

    move-result-object v0

    iput-object v0, p3, La/b/a/a/f;->b:[La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/g;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, La/b/f/f;->b(La/b/c;La/b/a/a/a;La/b/a/a/h;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a/a;La/b/a/a/i;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, La/b/f/f;->b(La/b/c;La/b/a/a/a;La/b/a/a/h;)V

    invoke-virtual {p3, p1}, La/b/a/a/i;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->b(La/b/c;Ljava/lang/String;)[La/b/c;

    move-result-object v0

    iput-object v0, p3, La/b/a/a/i;->g:[La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/a/a/d;)V
    .registers 3

    invoke-virtual {p2, p1, p0}, La/b/a/a/d;->a(La/b/c;La/b/a/a/b/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/g;)V
    .registers 10

    invoke-virtual {p2, p1}, La/b/a/g;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->c(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v1

    iput-object v1, p2, La/b/a/g;->e:La/b/c;

    iget-object v1, p2, La/b/a/g;->e:La/b/c;

    if-eqz v1, :cond_0

    iget v1, p2, La/b/a/g;->d:I

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1}, La/b/a/g;->c(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, La/b/a/g;->d(La/b/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, La/b/a/g;->e:La/b/c;

    invoke-interface {v3, v1, v2}, La/b/c;->b(Ljava/lang/String;Ljava/lang/String;)La/b/j;

    move-result-object v3

    iput-object v3, p2, La/b/a/g;->f:La/b/j;

    iget-object v3, p2, La/b/a/g;->f:La/b/j;

    if-nez v3, :cond_0

    iget-object v3, p0, La/b/f/f;->d:La/b/f/z;

    if-eqz v3, :cond_0

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, La/b/f/f;->d:La/b/f/z;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": can\'t find enclosing method \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v0, v6, v1, v2}, La/b/f/i;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in program class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v0, v1}, La/b/f/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(La/b/c;La/b/a/u;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/a/u;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->b(La/b/c;Ljava/lang/String;)[La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/a/u;->d:[La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->c(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/b/a;->b:La/b/c;

    const-string v0, "java/lang/Class"

    invoke-direct {p0, p1, v0}, La/b/f/f;->c(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/b/a;->c:La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->b(La/b/c;Ljava/lang/String;)[La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/b/h;->c:[La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/b/j;)V
    .registers 4

    const-string v0, "java/lang/invoke/MethodHandle"

    invoke-direct {p0, p1, v0}, La/b/f/f;->c(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/b/j;->c:La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/b/k;)V
    .registers 4

    const-string v0, "java/lang/invoke/MethodType"

    invoke-direct {p0, p1, v0}, La/b/f/f;->c(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/b/k;->b:La/b/c;

    invoke-virtual {p2, p1}, La/b/b/k;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->b(La/b/c;Ljava/lang/String;)[La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/b/k;->c:[La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 4

    const-string v0, "java/lang/String"

    invoke-direct {p0, p1, v0}, La/b/f/f;->c(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/b/r;->e:La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/a/b;)V
    .registers 4

    invoke-virtual {p3, p1, p0}, La/b/a/a/b;->a(La/b/c;La/b/a/a/b/g;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/a/j;)V
    .registers 4

    invoke-virtual {p3, p1, p2, p0}, La/b/a/a/j;->a(La/b/c;La/b/j;La/b/a/a/b/f;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 4

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->b(La/b/c;La/b/j;La/b/a/d/i;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/o;)V
    .registers 6

    invoke-virtual {p4, p1}, La/b/a/o;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->a(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v0

    iput-object v0, p4, La/b/a/o;->f:La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/p;)V
    .registers 5

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/p;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/q;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/q;)V
    .registers 6

    invoke-virtual {p4, p1}, La/b/a/q;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->b(La/b/c;Ljava/lang/String;)[La/b/c;

    move-result-object v0

    iput-object v0, p4, La/b/a/q;->f:[La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/r;)V
    .registers 5

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/r;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/r;)V

    return-void
.end method

.method public a(La/b/e;)V
    .registers 2

    invoke-virtual {p1, p0}, La/b/e;->a(La/b/g/aq;)V

    invoke-virtual {p1, p0}, La/b/e;->b(La/b/g/aq;)V

    return-void
.end method

.method public a(La/b/e;La/b/f;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/f;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->a(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/f;->a:La/b/c;

    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->b(La/b/c;Ljava/lang/String;)[La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/h;->a:[La/b/c;

    return-void
.end method

.method public a(La/b/k;)V
    .registers 2

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/b/a/f;)V

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/g/aq;)V

    invoke-virtual {p1, p0}, La/b/k;->b(La/b/g/aq;)V

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    return-void
.end method

.method public a(La/b/k;La/b/l;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/l;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->a(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/l;->a:La/b/c;

    invoke-virtual {p2, p1, p0}, La/b/l;->a(La/b/k;La/b/a/d/i;)V

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/b/f/f;->b(La/b/c;Ljava/lang/String;)[La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/n;->a:[La/b/c;

    invoke-virtual {p2, p1, p0}, La/b/n;->a(La/b/k;La/b/a/d/i;)V

    return-void
.end method

.method public b(La/b/c;La/b/b/q;)V
    .registers 13

    const/4 v7, 0x0

    invoke-virtual {p2, p1}, La/b/b/q;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "java/lang/Object"

    move-object v6, v0

    :goto_0
    invoke-direct {p0, p1, v6}, La/b/f/f;->c(La/b/c;Ljava/lang/String;)La/b/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, p1}, La/b/b/q;->b(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1}, La/b/b/q;->c(La/b/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, La/b/b/q;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/4 v5, 0x1

    :goto_1
    iget-object v0, p0, La/b/f/f;->g:La/b/f/r;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, La/b/f/r;->a(La/b/c;La/b/c;Ljava/lang/String;Ljava/lang/String;Z)La/b/i;

    move-result-object v0

    iput-object v0, p2, La/b/b/q;->e:La/b/i;

    iget-object v0, p0, La/b/f/f;->g:La/b/f/r;

    invoke-virtual {v0}, La/b/f/r;->a()La/b/c;

    move-result-object v0

    iput-object v0, p2, La/b/b/q;->c:La/b/c;

    iget-object v0, p2, La/b/b/q;->e:La/b/i;

    if-nez v0, :cond_0

    instance-of v2, v2, La/b/k;

    if-eqz v2, :cond_2

    iget-object v0, p0, La/b/f/f;->d:La/b/f/z;

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ": can\'t find referenced "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "field \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7, v3, v4}, La/b/f/i;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_4

    const-string v0, "program"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, La/b/f/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v6, v0}, La/b/f/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v5, v7

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, La/b/f/f;->e:La/b/f/z;

    move-object v1, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v7, v3, v4}, La/b/f/i;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v0, "library"

    goto :goto_4

    :cond_5
    move-object v6, v0

    goto/16 :goto_0
.end method
