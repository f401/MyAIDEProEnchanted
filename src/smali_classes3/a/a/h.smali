.class public La/a/h;
.super La/b/f/w;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:La/b/b;

.field private final b:La/b/b;

.field private final c:La/j/n;

.field private final d:La/b/g/s;

.field private final e:La/b/g/aq;


# direct methods
.method public constructor <init>(La/b/b;La/b/b;La/j/n;La/b/g/s;La/b/g/aq;)V
    .registers 6

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/a/h;->a:La/b/b;

    iput-object p2, p0, La/a/h;->b:La/b/b;

    iput-object p3, p0, La/a/h;->c:La/j/n;

    iput-object p4, p0, La/a/h;->d:La/b/g/s;

    iput-object p5, p0, La/a/h;->e:La/b/g/aq;

    return-void
.end method

.method private a(La/b/k;La/b/k;Ljava/util/Set;)V
    .registers 16

    new-instance v0, La/b/c/ar;

    iget-object v1, p0, La/a/h;->a:La/b/b;

    iget-object v2, p0, La/a/h;->b:La/b/b;

    invoke-direct {v0, v1, v2}, La/b/c/ar;-><init>(La/b/b;La/b/b;)V

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    new-array v4, v1, [[[La/b/d/c;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const/4 v7, 0x2

    new-array v7, v7, [[La/b/d/c;

    invoke-virtual {p1}, La/b/k;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v5, v3}, La/b/c/ar;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    move-result-object v8

    invoke-virtual {v8}, La/b/c/ar;->b()[La/b/d/c;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {p2}, La/b/k;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v5, v3}, La/b/c/ar;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    move-result-object v3

    invoke-virtual {v3}, La/b/c/ar;->b()[La/b/d/c;

    move-result-object v3

    aput-object v3, v7, v6

    aput-object v7, v4, v2

    add-int/2addr v2, v6

    goto :goto_15

    :cond_4f
    new-instance p2, La/b/c/v;

    invoke-direct {p2}, La/b/c/v;-><init>()V

    new-instance v7, La/b/a/d/n;

    new-instance p3, La/b/a/d/h;

    iget-object v1, p0, La/a/h;->d:La/b/g/s;

    invoke-direct {p3, v1}, La/b/a/d/h;-><init>(La/b/g/s;)V

    invoke-direct {v7, p3}, La/b/a/d/n;-><init>(La/b/a/d/i;)V

    iget-object p3, p0, La/a/h;->a:La/b/b;

    new-instance v1, La/a/i;

    new-instance v8, La/b/g/d;

    new-instance v9, La/b/a/d/a;

    new-instance v10, La/g/c/v;

    new-instance v11, La/g/c/p;

    invoke-virtual {v0}, La/b/c/ar;->d()[La/b/b/b;

    move-result-object v3

    const/4 v5, 0x0

    move-object v2, v11

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, La/g/c/p;-><init>([La/b/b/b;[[[La/b/d/c;La/g/c/a;La/b/c/v;La/b/d/a/d;)V

    invoke-direct {v10, p2, v11}, La/g/c/v;-><init>(La/b/c/v;La/b/d/a/d;)V

    invoke-direct {v9, v10}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-direct {v8, v9}, La/b/g/d;-><init>(La/b/g/aq;)V

    invoke-direct {v1, p1, v8}, La/a/i;-><init>(La/b/c;La/b/g/s;)V

    invoke-virtual {p3, v1}, La/b/b;->a(La/b/g/s;)V

    return-void
.end method

.method private b(La/b/k;)La/b/k;
    .registers 11

    new-instance v7, La/b/k;

    const/high16 v1, 0x2e0000

    const/4 v2, 0x1

    const/16 v8, 0xa

    new-array v3, v8, [La/b/b/b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, La/b/k;-><init>(II[La/b/b/b;III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, La/b/k;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "$$Util"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, La/b/c/ae;

    iget-object v1, p0, La/a/h;->a:La/b/b;

    iget-object v2, p0, La/a/h;->b:La/b/b;

    invoke-direct {v0, v7, v1, v2}, La/b/c/ae;-><init>(La/b/k;La/b/b;La/b/b;)V

    invoke-virtual {v0, p1, v7}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;)I

    move-result p1

    iput p1, v7, La/b/k;->e:I

    const/4 p1, 0x0

    const-string v1, "java/lang/Object"

    invoke-virtual {v0, v1, p1}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;)I

    move-result p1

    iput p1, v7, La/b/k;->f:I

    new-instance p1, La/b/c/bm;

    invoke-direct {p1, v7}, La/b/c/bm;-><init>(La/b/k;)V

    const/4 v0, 0x2

    const-string v2, "<init>"

    const-string v3, "()V"

    invoke-virtual {p1, v0, v2, v3, v8}, La/b/c/bm;->a(ILjava/lang/String;Ljava/lang/String;I)La/b/c/ab;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/ab;->b()La/b/c/ab;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, La/b/c/ab;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ab;

    move-result-object v0

    invoke-virtual {v0}, La/b/c/ab;->i()La/b/c/ab;

    invoke-virtual {p1}, La/b/c/bm;->a()V

    return-object v7
.end method


# virtual methods
.method public a(La/b/e;)V
    .registers 2

    return-void
.end method

.method public a(La/b/k;)V
    .registers 16

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, La/b/g/d;

    new-instance v2, La/b/g/ag;

    new-instance v3, La/b/g/ae;

    new-instance v4, La/b/g/ak;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v6, v0}, La/b/g/ak;-><init>(ZZZLjava/util/Set;)V

    const/4 v7, 0x0

    invoke-direct {v3, v7, v4}, La/b/g/ae;-><init>(La/b/g/aq;La/b/g/aq;)V

    const/16 v4, 0x8

    invoke-direct {v2, v4, v5, v3}, La/b/g/ag;-><init>(IILa/b/g/aq;)V

    invoke-direct {v1, v2}, La/b/g/d;-><init>(La/b/g/aq;)V

    invoke-virtual {p1, v1}, La/b/k;->a(La/b/g/s;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ad

    invoke-direct {p0, p1}, La/a/h;->b(La/b/k;)La/b/k;

    move-result-object v1

    new-instance v2, La/b/c/bf;

    invoke-direct {v2, v1}, La/b/c/bf;-><init>(La/b/k;)V

    iget-object v3, p0, La/a/h;->e:La/b/g/aq;

    const/4 v8, 0x2

    if-eqz v3, :cond_43

    new-instance v3, La/b/g/av;

    new-array v9, v8, [La/b/g/aq;

    aput-object v2, v9, v5

    iget-object v2, p0, La/a/h;->e:La/b/g/aq;

    aput-object v2, v9, v6

    invoke-direct {v3, v9}, La/b/g/av;-><init>([La/b/g/aq;)V

    move-object v2, v3

    :cond_43
    new-instance v3, La/b/c/bh;

    invoke-direct {v3}, La/b/c/bh;-><init>()V

    new-instance v9, La/b/g/d;

    new-instance v10, La/b/g/ag;

    new-instance v11, La/b/g/ae;

    new-instance v12, La/b/g/av;

    new-array v13, v8, [La/b/g/aq;

    aput-object v2, v13, v5

    aput-object v3, v13, v6

    invoke-direct {v12, v13}, La/b/g/av;-><init>([La/b/g/aq;)V

    invoke-direct {v11, v7, v12}, La/b/g/ae;-><init>(La/b/g/aq;La/b/g/aq;)V

    invoke-direct {v10, v4, v5, v11}, La/b/g/ag;-><init>(IILa/b/g/aq;)V

    invoke-direct {v9, v10}, La/b/g/d;-><init>(La/b/g/aq;)V

    invoke-virtual {p1, v9}, La/b/k;->a(La/b/g/s;)V

    iget-object v2, p0, La/a/h;->a:La/b/b;

    invoke-virtual {v2, v1}, La/b/b;->a(La/b/c;)V

    iget-object v2, p0, La/a/h;->c:La/j/n;

    invoke-virtual {p1}, La/b/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, La/b/k;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, La/j/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, La/a/h;->a(La/b/k;La/b/k;Ljava/util/Set;)V

    new-instance v0, La/b/g/at;

    new-array v2, v8, [La/b/g/s;

    new-instance v4, La/b/f/h;

    iget-object v7, p0, La/a/h;->a:La/b/b;

    iget-object v9, p0, La/a/h;->b:La/b/b;

    invoke-direct {v4, v7, v9}, La/b/f/h;-><init>(La/b/b;La/b/b;)V

    aput-object v4, v2, v5

    new-instance v4, La/b/f/f;

    iget-object v7, p0, La/a/h;->a:La/b/b;

    iget-object v9, p0, La/a/h;->b:La/b/b;

    invoke-direct {v4, v7, v9}, La/b/f/f;-><init>(La/b/b;La/b/b;)V

    aput-object v4, v2, v6

    invoke-direct {v0, v2}, La/b/g/at;-><init>([La/b/g/s;)V

    invoke-virtual {v1, v0}, La/b/k;->a(La/b/g/s;)V

    new-instance v0, La/b/g/at;

    new-array v1, v8, [La/b/g/s;

    aput-object v3, v1, v5

    new-instance v2, La/b/c/ag;

    invoke-direct {v2}, La/b/c/ag;-><init>()V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, La/b/g/at;-><init>([La/b/g/s;)V

    invoke-virtual {p1, v0}, La/b/k;->a(La/b/g/s;)V

    :cond_ad
    return-void
.end method
