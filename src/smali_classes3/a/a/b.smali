.class public La/a/b;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/g/s;


# instance fields
.field private final a:La/b/g/s;

.field private final b:La/b/g/aq;

.field private final c:Ljava/util/Set;

.field private d:Z


# direct methods
.method public constructor <init>(La/b/g/s;La/b/g/aq;)V
    .registers 4

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, La/a/b;->c:Ljava/util/Set;

    iput-object p1, p0, La/a/b;->a:La/b/g/s;

    iput-object p2, p0, La/a/b;->b:La/b/g/aq;

    return-void
.end method

.method private a(La/b/k;La/b/k;La/b/n;)V
    .registers 15

    new-instance v0, La/a/c;

    invoke-direct {v0, p0}, La/a/c;-><init>(La/a/b;)V

    new-instance v1, La/b/c/bf;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, La/b/c/bf;-><init>(La/b/k;La/j/v;La/b/g/aq;)V

    invoke-virtual {p3, p2, v1}, La/b/n;->a(La/b/k;La/b/g/aq;)V

    invoke-virtual {p3, p2}, La/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, La/j/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2}, La/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, La/b/k;->b(Ljava/lang/String;Ljava/lang/String;)La/b/j;

    move-result-object v0

    new-instance v1, La/b/c/ar;

    invoke-direct {v1}, La/b/c/ar;-><init>()V

    invoke-virtual {v1, p2, p3}, La/b/c/ar;->b(La/b/c;La/b/i;)La/b/c/ar;

    move-result-object p2

    invoke-virtual {p2}, La/b/c/ar;->b()[La/b/d/c;

    move-result-object v5

    invoke-virtual {v1, p1, v0}, La/b/c/ar;->a(La/b/c;La/b/i;)La/b/c/ar;

    move-result-object p2

    invoke-virtual {p2}, La/b/c/ar;->b()[La/b/d/c;

    move-result-object v7

    new-instance p2, La/b/c/v;

    invoke-direct {p2}, La/b/c/v;-><init>()V

    invoke-virtual {v1}, La/b/c/ar;->d()[La/b/b/b;

    move-result-object v6

    new-instance p3, La/b/g/d;

    new-instance v0, La/b/a/d/a;

    new-instance v1, La/g/c/v;

    new-instance v10, La/g/c/k;

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, v6

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, La/g/c/k;-><init>([La/b/b/b;[La/b/d/c;[La/b/b/b;[La/b/d/c;La/g/c/a;La/b/c/v;)V

    invoke-direct {v1, v2, p2, v10}, La/g/c/v;-><init>(La/g/c/a;La/b/c/v;La/b/d/a/d;)V

    invoke-direct {v0, v1}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-direct {p3, v0}, La/b/g/d;-><init>(La/b/g/aq;)V

    invoke-virtual {p1, p3}, La/b/k;->a(La/b/g/s;)V

    return-void
.end method

.method private a(La/b/c;La/b/c;La/b/j;)Z
    .registers 9

    new-instance v0, La/b/b/a/d;

    invoke-direct {v0}, La/b/b/a/d;-><init>()V

    new-instance v1, La/b/g/d;

    new-instance v2, La/b/a/d/a;

    new-instance v3, La/b/d/a/a;

    new-instance v4, La/a/d;

    invoke-direct {v4, p2, p3, v0}, La/a/d;-><init>(La/b/c;La/b/j;La/b/b/a/f;)V

    invoke-direct {v3, v4}, La/b/d/a/a;-><init>(La/b/d/a/d;)V

    invoke-direct {v2, v3}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-direct {v1, v2}, La/b/g/d;-><init>(La/b/g/aq;)V

    invoke-interface {p1, v1}, La/b/c;->a(La/b/g/s;)V

    invoke-virtual {v0}, La/b/b/a/d;->a()I

    move-result p1

    if-lez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1
.end method

.method private a(La/b/c;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    new-instance v0, La/b/g/al;

    invoke-direct {v0}, La/b/g/al;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, La/b/g/ay;

    invoke-direct {v6, p2, p3, v0}, La/b/g/ay;-><init>(Ljava/lang/String;Ljava/lang/String;La/b/g/aq;)V

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, La/b/c;->a(ZZZZLa/b/g/s;)V

    invoke-virtual {v0}, La/b/g/al;->a()I

    move-result p1

    if-lez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 8

    const/4 p3, 0x1

    iput-boolean p3, p0, La/a/b;->d:Z

    check-cast p1, La/b/k;

    check-cast p2, La/b/n;

    iget-object v0, p0, La/a/b;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/c;

    check-cast v1, La/b/k;

    invoke-virtual {p2, p1}, La/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1}, La/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, La/a/b;->a(La/b/c;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    new-instance v2, La/b/c/bf;

    invoke-direct {v2, v1}, La/b/c/bf;-><init>(La/b/k;)V

    invoke-virtual {p2, p1, v2}, La/b/n;->a(La/b/k;La/b/g/aq;)V

    iget-object v2, p0, La/a/b;->a:La/b/g/s;

    invoke-virtual {v1, v2}, La/b/k;->a(La/b/g/s;)V

    :cond_36
    invoke-direct {p0, v1, p1, p2}, La/a/b;->a(La/b/c;La/b/c;La/b/j;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, v1, p1, p2}, La/a/b;->a(La/b/k;La/b/k;La/b/n;)V

    iget-object v2, p0, La/a/b;->a:La/b/g/s;

    invoke-virtual {v1, v2}, La/b/k;->a(La/b/g/s;)V

    goto :goto_d

    :cond_45
    new-instance v0, La/b/g/av;

    const/4 v1, 0x2

    new-array v1, v1, [La/b/g/aq;

    new-instance v2, La/b/c/bj;

    const-string v3, "Code"

    invoke-direct {v2, v3}, La/b/c/bj;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, La/b/g/ai;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, La/b/g/ai;-><init>(I)V

    aput-object v2, v1, p3

    invoke-direct {v0, v1}, La/b/g/av;-><init>([La/b/g/aq;)V

    invoke-virtual {p2, p1, v0}, La/b/n;->a(La/b/k;La/b/g/aq;)V

    iget-object p3, p0, La/a/b;->b:La/b/g/aq;

    if-eqz p3, :cond_6a

    invoke-virtual {p2, p1, p3}, La/b/n;->a(La/b/k;La/b/g/aq;)V

    :cond_6a
    return-void
.end method

.method public a(La/b/e;)V
    .registers 2

    return-void
.end method

.method public a(La/b/k;)V
    .registers 10

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/b;->d:Z

    iget-object v1, p0, La/a/b;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v7, La/b/g/bh;

    new-instance v1, La/b/g/h;

    iget-object v2, p0, La/a/b;->c:Ljava/util/Set;

    invoke-direct {v1, v2}, La/b/g/h;-><init>(Ljava/util/Set;)V

    invoke-direct {v7, v1}, La/b/g/bh;-><init>(La/b/g/s;)V

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, La/b/k;->a(ZZZZLa/b/g/s;)V

    new-instance v1, La/b/g/d;

    new-instance v2, La/b/g/ag;

    new-instance v3, La/b/a/d/a;

    invoke-direct {v3, p0}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    const/16 v4, 0x8

    invoke-direct {v2, v0, v4, v3}, La/b/g/ag;-><init>(IILa/b/g/aq;)V

    invoke-direct {v1, v2}, La/b/g/d;-><init>(La/b/g/aq;)V

    invoke-virtual {p1, v1}, La/b/k;->a(La/b/g/s;)V

    iget-boolean v0, p0, La/a/b;->d:Z

    if-eqz v0, :cond_3c

    new-instance v0, La/b/c/ag;

    invoke-direct {v0}, La/b/c/ag;-><init>()V

    invoke-virtual {p1, v0}, La/b/k;->a(La/b/g/s;)V

    :cond_3c
    return-void
.end method
