.class public Lorg/c/a/a/c/a/a/a/c/l;
.super Lorg/c/a/a/c/a/a/a/c/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/c/a/a/c/a/a/a/c/b;-><init>(Lorg/c/a/a/c/a/a/a/c/b;Lorg/c/a/a/b/d/d/u;)V

    return-void
.end method


# virtual methods
.method public a(I)Lorg/c/a/a/c/a/a/a/c/a;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/l;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/l;->b:[Lorg/c/a/a/c/a/a/a/c/a;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/l;->d:Lorg/c/a/a/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/l;->d:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/c/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/c/b;->c()V

    goto :goto_0
.end method
