.class public La/b/b/j;
.super La/b/b/b;


# instance fields
.field public a:I

.field public b:I

.field public c:La/b/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, La/b/b/b;-><init>()V

    iput p1, p0, La/b/b/j;->a:I

    iput p2, p0, La/b/b/j;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public a(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/b/j;->b:I

    invoke-interface {p1, v0}, La/b/c;->h(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(La/b/c;La/b/b/a/f;)V
    .registers 3

    invoke-interface {p2, p1, p0}, La/b/b/a/f;->a(La/b/c;La/b/b/j;)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, La/b/b/j;->a:I

    return v0
.end method

.method public b(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/b/j;->b:I

    invoke-interface {p1, v0}, La/b/c;->i(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .registers 2

    iget v0, p0, La/b/b/j;->b:I

    return v0
.end method

.method public c(La/b/c;)Ljava/lang/String;
    .registers 3

    iget v0, p0, La/b/b/j;->b:I

    invoke-interface {p1, v0}, La/b/c;->j(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
