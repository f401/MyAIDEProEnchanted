.class public La/g/e;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/aq;


# instance fields
.field private final a:La/b/d/a/d;

.field private final b:La/b/c/v;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/g/e;-><init>(La/b/d/a/d;)V

    return-void
.end method

.method public constructor <init>(La/b/d/a/d;)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/v;

    invoke-direct {v0}, La/b/c/v;-><init>()V

    iput-object v0, p0, La/g/e;->b:La/b/c/v;

    iput-object p1, p0, La/g/e;->a:La/b/d/a/d;

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/q;)V
    .registers 5

    invoke-virtual {p2, p1}, La/b/b/q;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2, p1}, La/b/b/q;->c(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/g/e;->c:Ljava/lang/String;

    invoke-virtual {p2, p0}, La/b/b/q;->a(La/b/g/aq;)V

    :cond_15
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 6

    iget-object v0, p0, La/g/e;->b:La/b/c/v;

    iget v1, p3, La/b/a/d;->e:I

    invoke-virtual {v0, v1}, La/b/c/v;->a(I)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/g/e;->b:La/b/c/v;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p5, La/b/d/b;->c:B

    const/16 v3, -0x49

    if-ne v2, v3, :cond_30

    const/4 v2, 0x0

    iput v2, p0, La/g/e;->d:I

    iget v2, p5, La/b/d/b;->a:I

    invoke-interface {p1, v2, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget v2, p0, La/g/e;->d:I

    if-lez v2, :cond_30

    iget v2, p0, La/g/e;->d:I

    if-ne v2, v0, :cond_31

    const/4 v0, 0x3

    move v2, v0

    :goto_1a
    new-instance v0, La/b/d/h;

    invoke-direct {v0, v2}, La/b/d/h;-><init>(B)V

    iget-object v2, p0, La/g/e;->b:La/b/c/v;

    invoke-virtual {v2, p4, v0}, La/b/c/v;->a(ILa/b/d/c;)V

    iget-object v2, p0, La/g/e;->a:La/b/d/a/d;

    if-eqz v2, :cond_30

    iget-object v5, p0, La/g/e;->a:La/b/d/a/d;

    move-object v2, v1

    move-object v3, v1

    move v4, p4

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_30
    return-void

    :cond_31
    move v2, v0

    goto :goto_1a
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 3

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 5

    invoke-virtual {p2, p1}, La/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, La/g/e;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, La/g/e;->d:I

    return-void
.end method
