.class public abstract La/b/b/q;
.super La/b/b/b;


# instance fields
.field public a:I

.field public b:I

.field public c:La/b/c;

.field public e:La/b/i;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/b/q;->a:I

    invoke-interface {p1, v0}, La/b/c;->e(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(La/b/g/aq;)V
    .registers 4

    iget-object v0, p0, La/b/b/q;->e:La/b/i;

    if-eqz v0, :cond_9

    iget-object v1, p0, La/b/b/q;->c:La/b/c;

    invoke-interface {v0, v1, p1}, La/b/i;->a(La/b/c;La/b/g/aq;)V

    :cond_9
    return-void
.end method

.method public a(La/b/g/s;)V
    .registers 3

    iget-object v0, p0, La/b/b/q;->c:La/b/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, La/b/c;->a(La/b/g/s;)V

    :cond_7
    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, La/b/b/q;->a:I

    return v0
.end method

.method public b(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/b/q;->b:I

    invoke-interface {p1, v0}, La/b/c;->f(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .registers 2

    iget v0, p0, La/b/b/q;->b:I

    return v0
.end method

.method public c(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/b/q;->b:I

    invoke-interface {p1, v0}, La/b/c;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
