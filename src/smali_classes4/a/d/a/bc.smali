.class public La/d/a/bc;
.super La/d/a/ap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/d/a/ap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;La/b/c;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public a(La/d/a/ap;)La/d/a/ap;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/ap;->a(La/d/a/bc;)La/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;La/b/c;La/d/a/be;Z)La/d/a/ap;
    .registers 6

    const/4 v0, 0x1

    invoke-interface {p3, p1, p2, v0, v0}, La/d/a/be;->b(Ljava/lang/String;La/b/c;ZZ)La/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public b(La/d/a/ap;)I
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/ap;->b(La/d/a/bc;)I

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const-string v0, "java/lang/Object"

    return-object v0
.end method

.method public f()La/b/c;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    const-string v0, "Ljava/lang/Object;"

    return-object v0
.end method

.method public m()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "a"

    return-object v0
.end method
