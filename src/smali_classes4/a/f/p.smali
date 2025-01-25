.class public La/f/p;
.super La/b/f/w;

# interfaces
.implements La/b/g/aq;


# instance fields
.field private final a:Z

.field private final b:La/f/t;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(ZLa/f/t;Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-boolean p1, p0, La/f/p;->a:Z

    iput-object p2, p0, La/f/p;->b:La/f/t;

    iput-object p3, p0, La/f/p;->c:Ljava/util/Map;

    return-void
.end method

.method static a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 3

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v0
.end method

.method static a(La/b/i;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, La/b/f/u;->a(La/b/o;)La/b/o;

    move-result-object v0

    instance-of v1, v0, La/b/g;

    if-nez v1, :cond_15

    instance-of v1, v0, La/f/q;

    if-nez v1, :cond_15

    new-instance v1, La/f/q;

    invoke-direct {v1, p1}, La/f/q;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, La/b/o;->a(Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    invoke-interface {v0, p1}, La/b/o;->a(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method static a(La/b/i;)Z
    .registers 3

    invoke-static {p0}, La/b/f/u;->a(La/b/o;)La/b/o;

    move-result-object v0

    instance-of v1, v0, La/b/g;

    if-nez v1, :cond_c

    instance-of v0, v0, La/f/q;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static b(La/b/i;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, La/b/f/u;->a(La/b/o;)La/b/o;

    move-result-object v0

    invoke-interface {v0}, La/b/o;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static b(La/b/i;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, La/b/f/u;->a(La/b/o;)La/b/o;

    move-result-object v0

    invoke-interface {v0, p1}, La/b/o;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/i;)V
    .registers 7

    invoke-interface {p2, p1}, La/b/i;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-interface {p2, p1}, La/b/i;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, La/f/p;->a:Z

    if-nez v2, :cond_20

    const/4 v2, 0x0

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_20
    iget-object v2, p0, La/f/p;->c:Ljava/util/Map;

    invoke-static {v2, v0}, La/f/p;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, La/f/p;->b(La/b/i;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v2, p0, La/f/p;->b:La/f/t;

    invoke-interface {v2}, La/f/t;->a()V

    :cond_31
    iget-object v2, p0, La/f/p;->b:La/f/t;

    invoke-interface {v2}, La/f/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v2}, La/f/p;->b(La/b/i;Ljava/lang/String;)V

    goto :goto_a
.end method
