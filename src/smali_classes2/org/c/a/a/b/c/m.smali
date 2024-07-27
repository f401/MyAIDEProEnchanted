.class public Lorg/c/a/a/b/c/m;
.super Lorg/c/a/a/b/b/c;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# static fields
.field static final d:Z


# instance fields
.field protected c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/c/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/b/c/m;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4

    invoke-static {p1}, Lorg/c/a/a/b/c/m;->a(Ljava/util/List;)I

    move-result v0

    invoke-static {p1}, Lorg/c/a/a/b/c/m;->b(Ljava/util/List;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/c/a/a/b/b/c;-><init>(II)V

    sget-boolean v0, Lorg/c/a/a/b/c/m;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/c/a/a/b/c/m;->a:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Uses \'TokensFragment\' instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/c/a/a/b/c/m;->c:Ljava/util/List;

    return-void
.end method

.method protected static a(Ljava/util/List;)I
    .registers 4

    new-instance v1, Lorg/c/a/a/b/c/n;

    invoke-direct {v1}, Lorg/c/a/a/b/c/n;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/f/p;

    invoke-interface {v0, v1}, Lorg/c/a/a/b/f/p;->a(Lorg/c/a/a/b/f/q;)V

    iget v0, v1, Lorg/c/a/a/b/c/n;->a:I

    if-eqz v0, :cond_0

    iget v0, v1, Lorg/c/a/a/b/c/n;->a:I

    iget v1, v1, Lorg/c/a/a/b/c/n;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected static b(Ljava/util/List;)I
    .registers 4

    new-instance v2, Lorg/c/a/a/b/c/n;

    invoke-direct {v2}, Lorg/c/a/a/b/c/n;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/f/p;

    invoke-interface {v0, v2}, Lorg/c/a/a/b/f/p;->a(Lorg/c/a/a/b/f/q;)V

    iget v0, v2, Lorg/c/a/a/b/c/n;->a:I

    if-eqz v0, :cond_1

    iget v0, v2, Lorg/c/a/a/b/c/n;->a:I

    iget v1, v2, Lorg/c/a/a/b/c/n;->b:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/m;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/c/m;->c:Ljava/util/List;

    return-object v0
.end method
