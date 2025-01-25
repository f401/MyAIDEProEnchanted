.class public La/ak;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/h;


# direct methods
.method public constructor <init>(La/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/ak;->a:La/h;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, La/am;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, La/am;-><init>(La/al;)V

    iget-object v2, p0, La/ak;->a:La/h;

    iget-wide v2, v2, La/h;->h:J

    invoke-virtual {v1, v2, v3}, La/am;->a(J)V

    iget-object v2, p0, La/ak;->a:La/h;

    iget-object v2, v2, La/h;->b:La/d;

    iget-object v3, p0, La/ak;->a:La/h;

    iget-object v3, v3, La/h;->c:La/d;

    if-eqz v2, :cond_31

    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v2}, La/d;->b()I

    move-result v5

    if-ge v4, v5, :cond_31

    invoke-virtual {v2, v4}, La/d;->a(I)La/e;

    move-result-object v5

    invoke-virtual {v5}, La/e;->b()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5}, La/e;->c()Z

    move-result v5

    invoke-virtual {v1, v6, v5}, La/am;->a(Ljava/io/File;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_31
    if-eqz v3, :cond_48

    const/4 v2, 0x0

    :goto_34
    invoke-virtual {v3}, La/d;->b()I

    move-result v4

    if-ge v2, v4, :cond_48

    invoke-virtual {v3, v2}, La/d;->a(I)La/e;

    move-result-object v4

    invoke-virtual {v4}, La/e;->b()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, La/am;->a(Ljava/io/File;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_48
    iget-object v2, p0, La/ak;->a:La/h;

    iget-object v2, v2, La/h;->y:Ljava/io/File;

    invoke-virtual {v1, v2}, La/am;->a(Ljava/io/File;)V

    iget-object v2, p0, La/ak;->a:La/h;

    iget-object v2, v2, La/h;->z:Ljava/net/URL;

    invoke-virtual {v1, v2}, La/am;->a(Ljava/net/URL;)V

    iget-object v2, p0, La/ak;->a:La/h;

    iget-object v2, v2, La/h;->A:Ljava/net/URL;

    invoke-virtual {v1, v2}, La/am;->a(Ljava/net/URL;)V

    iget-object v2, p0, La/ak;->a:La/h;

    iget-object v2, v2, La/h;->B:Ljava/net/URL;

    invoke-virtual {v1, v2}, La/am;->a(Ljava/net/URL;)V

    iget-object v2, p0, La/ak;->a:La/h;

    iget-object v2, v2, La/h;->j:Ljava/io/File;

    invoke-virtual {v1, v2}, La/am;->b(Ljava/io/File;)V

    iget-object v2, p0, La/ak;->a:La/h;

    iget-object v2, v2, La/h;->l:Ljava/io/File;

    invoke-virtual {v1, v2}, La/am;->b(Ljava/io/File;)V

    iget-object v2, p0, La/ak;->a:La/h;

    iget-object v2, v2, La/h;->x:Ljava/io/File;

    invoke-virtual {v1, v2}, La/am;->b(Ljava/io/File;)V

    iget-object v2, p0, La/ak;->a:La/h;

    iget-object v2, v2, La/h;->V:Ljava/io/File;

    invoke-virtual {v1, v2}, La/am;->b(Ljava/io/File;)V

    iget-object v2, p0, La/ak;->a:La/h;

    iget-object v2, v2, La/h;->W:Ljava/io/File;

    invoke-virtual {v1, v2}, La/am;->b(Ljava/io/File;)V
    :try_end_87
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_87} :catch_8e

    const-string v0, "The output seems up to date"

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_8f

    :catch_8e
    move-exception v1

    :goto_8f
    return v0
.end method
