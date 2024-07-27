.class Lorg/c/a/a/c/a/a/c/f;
.super Lorg/c/a/a/b/d/a;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/b/d/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/c/a/a/c/a/a/c/f;)V
    .registers 2

    invoke-direct {p0}, Lorg/c/a/a/c/a/a/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lorg/c/a/a/c/a/a/c/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/c/a/a/c/f;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/c/f;->c:Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/ac;)V
    .registers 5

    iget-boolean v1, p0, Lorg/c/a/a/c/a/a/c/f;->c:Z

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/ac;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/ac;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/c/f;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/c/a/a/b/d/a/r;)V
    .registers 5

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/c/f;->c:Z

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/r;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/c/f;->c:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/c/f;->c:Z

    return v0
.end method
