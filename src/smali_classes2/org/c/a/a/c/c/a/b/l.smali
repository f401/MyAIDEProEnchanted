.class Lorg/c/a/a/c/c/a/b/l;
.super Lorg/c/a/a/b/f/k;


# instance fields
.field protected f:Lorg/c/a/a/b/c/h;

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/f/k;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/c/a/a/c/c/a/b/l;->f:Lorg/c/a/a/b/c/h;

    iput-object p3, p0, Lorg/c/a/a/c/c/a/b/l;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/c/a/b/l;->f:Lorg/c/a/a/b/c/h;

    iget-object v1, p0, Lorg/c/a/a/c/c/a/b/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/c/a/a/b/c/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/c/c/a/b/l;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/c/a/b/l;->g:Ljava/lang/String;

    goto :goto_0
.end method
