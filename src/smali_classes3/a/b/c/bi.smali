.class public La/b/c/bi;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/b/a/f;
.implements La/b/d/a/d;


# instance fields
.field private final a:La/b/c/v;

.field private b:La/b/c;

.field private c:La/b/c;

.field private d:La/b/i;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/v;

    invoke-direct {v0}, La/b/c/v;-><init>()V

    iput-object v0, p0, La/b/c/bi;->a:La/b/c/v;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 3

    iget-object p1, p2, La/b/b/a;->b:La/b/c;

    iput-object p1, p0, La/b/c/bi;->b:La/b/c;

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/q;)V
    .registers 4

    invoke-virtual {p2, p1}, La/b/b/q;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p2, La/b/b/q;->c:La/b/c;

    iput-object p1, p0, La/b/c/bi;->b:La/b/c;

    goto :goto_14

    :cond_f
    iget v0, p2, La/b/b/q;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    :goto_14
    iget-object p1, p2, La/b/b/q;->c:La/b/c;

    iput-object p1, p0, La/b/c/bi;->c:La/b/c;

    iget-object p1, p2, La/b/b/q;->e:La/b/i;

    iput-object p1, p0, La/b/c/bi;->d:La/b/i;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 6

    iget-object v0, p0, La/b/c/bi;->a:La/b/c/v;

    iget v1, p3, La/b/a/d;->e:I

    invoke-virtual {v0, v1}, La/b/c/v;->a(I)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/b/c/bi;->a:La/b/c/v;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 9

    iget p2, p5, La/b/d/b;->a:I

    const/4 p3, 0x0

    iput-object p3, p0, La/b/c/bi;->d:La/b/i;

    invoke-interface {p1, p2, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget-object p3, p0, La/b/c/bi;->b:La/b/c;

    if-eqz p3, :cond_a4

    iget-object p3, p0, La/b/c/bi;->d:La/b/i;

    if-eqz p3, :cond_a4

    iget-byte p3, p5, La/b/d/b;->c:B

    iget-object v0, p0, La/b/c/bi;->d:La/b/i;

    invoke-interface {v0}, La/b/i;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2c

    const/16 p1, -0x48

    if-eq p3, p1, :cond_a4

    new-instance p3, La/b/d/b;

    invoke-direct {p3, p1, p2}, La/b/d/b;-><init>(BI)V

    :goto_25
    iget-object p1, p0, La/b/c/bi;->a:La/b/c/v;

    invoke-virtual {p1, p4, p3}, La/b/c/v;->b(ILa/b/d/c;)V

    goto/16 :goto_a4

    :cond_2c
    iget-object v0, p0, La/b/c/bi;->d:La/b/i;

    invoke-interface {v0}, La/b/i;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/16 v1, -0x49

    if-nez v0, :cond_98

    iget-object v0, p0, La/b/c/bi;->d:La/b/i;

    iget-object v2, p0, La/b/c/bi;->c:La/b/c;

    invoke-interface {v0, v2}, La/b/i;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<init>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_98

    :cond_49
    iget-object v0, p0, La/b/c/bi;->b:La/b/c;

    invoke-interface {v0}, La/b/c;->a()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7c

    iget-object p1, p0, La/b/c/bi;->d:La/b/i;

    iget-object v0, p0, La/b/c/bi;->c:La/b/c;

    invoke-interface {p1, v0}, La/b/i;->b(La/b/c;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, La/b/f/i;->b(Ljava/lang/String;Z)I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    if-ne p3, v1, :cond_6e

    iget-object v0, p0, La/b/c/bi;->d:La/b/i;

    invoke-interface {v0}, La/b/i;->a()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a4

    :cond_6e
    const/16 v0, -0x47

    if-ne p3, v0, :cond_76

    iget p3, p5, La/b/d/b;->b:I

    if-eq p3, p1, :cond_a4

    :cond_76
    new-instance p3, La/b/d/b;

    invoke-direct {p3, v0, p2, p1}, La/b/d/b;-><init>(BII)V

    goto :goto_25

    :cond_7c
    const/16 p5, -0x4a

    if-eq p3, p5, :cond_a4

    if-ne p3, v1, :cond_92

    iget-object p3, p0, La/b/c/bi;->b:La/b/c;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_92

    iget-object p3, p0, La/b/c/bi;->b:La/b/c;

    invoke-interface {p1, p3}, La/b/c;->b(La/b/c;)Z

    move-result p1

    if-nez p1, :cond_a4

    :cond_92
    new-instance p1, La/b/d/b;

    invoke-direct {p1, p5, p2}, La/b/d/b;-><init>(BI)V

    goto :goto_9f

    :cond_98
    :goto_98
    if-eq p3, v1, :cond_a4

    new-instance p1, La/b/d/b;

    invoke-direct {p1, v1, p2}, La/b/d/b;-><init>(BI)V

    :goto_9f
    iget-object p2, p0, La/b/c/bi;->a:La/b/c/v;

    invoke-virtual {p2, p4, p1}, La/b/c/v;->b(ILa/b/d/c;)V

    :cond_a4
    :goto_a4
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method
