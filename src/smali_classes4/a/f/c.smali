.class public La/f/c;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/m;
.implements La/b/b/a/f;
.implements La/b/g/s;


# instance fields
.field private final a:La/f/g;

.field private final b:La/f/g;

.field private final c:Z

.field private final d:La/j/t;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Ljava/util/Set;

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Map;

.field private final k:Ljava/util/Map;

.field private final l:Ljava/util/Map;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>(La/b/b;La/b/b;La/f/g;La/f/g;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    const/16 v2, 0x2f

    const/4 v1, 0x0

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La/f/c;->h:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/f/c;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/f/c;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/f/c;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/f/c;->l:Ljava/util/Map;

    iput-object p3, p0, La/f/c;->a:La/f/g;

    iput-object p4, p0, La/f/c;->b:La/f/g;

    if-eqz p7, :cond_46

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    :cond_46
    if-eqz p8, :cond_5f

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    :cond_5f
    iput-boolean p5, p0, La/f/c;->c:Z

    if-nez p6, :cond_86

    move-object v0, v1

    :goto_64
    iput-object v0, p0, La/f/c;->d:La/j/t;

    iput-object p7, p0, La/f/c;->e:Ljava/lang/String;

    iput-object p8, p0, La/f/c;->f:Ljava/lang/String;

    iput-boolean p9, p0, La/f/c;->g:Z

    iget-object v0, p0, La/f/c;->i:Ljava/util/Map;

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, La/f/e;

    invoke-direct {v0, p0, v1}, La/f/e;-><init>(La/f/c;La/f/d;)V

    invoke-virtual {p1, v0}, La/b/b;->a(La/b/g/s;)V

    new-instance v0, La/f/e;

    invoke-direct {v0, p0, v1}, La/f/e;-><init>(La/f/c;La/f/d;)V

    invoke-virtual {p2, v0}, La/b/b;->a(La/b/g/s;)V

    return-void

    :cond_86
    new-instance v0, La/j/j;

    new-instance v2, La/j/h;

    invoke-direct {v2}, La/j/h;-><init>()V

    invoke-direct {v0, v2}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v0, p6}, La/j/j;->a(Ljava/util/List;)La/j/t;

    move-result-object v0

    goto :goto_64
.end method

.method static synthetic a(La/f/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, La/f/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, La/f/c;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_40

    iget-object v0, p0, La/f/c;->d:La/j/t;

    if-eqz v0, :cond_2a

    iget-object v1, p0, La/f/c;->d:La/j/t;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_21
    invoke-virtual {v1, v0}, La/j/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :goto_27
    return-object p1

    :cond_28
    move-object v0, p1

    goto :goto_21

    :cond_2a
    iget-object v0, p0, La/f/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object p1, p0, La/f/c;->f:Ljava/lang/String;

    goto :goto_27

    :cond_31
    iget-object v0, p0, La/f/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, La/f/c;->e:Ljava/lang/String;

    :goto_37
    invoke-direct {p0, v0}, La/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/f/c;->i:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    move-object p1, v0

    goto :goto_27

    :cond_42
    invoke-static {p1}, La/b/f/i;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method private a(Ljava/lang/String;La/f/t;)Ljava/lang/String;
    .registers 5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, La/f/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/f/c;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method static synthetic a(La/f/c;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, La/f/c;->h:Ljava/util/Set;

    return-object v0
.end method

.method static a(La/b/c;Ljava/lang/String;)V
    .registers 2

    invoke-interface {p0, p1}, La/b/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_10

    :goto_d
    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    :cond_10
    if-ge v1, v2, :cond_1d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_d

    :cond_1d
    const/4 v0, 0x1

    goto :goto_d
.end method

.method static b(La/b/c;)Ljava/lang/String;
    .registers 3

    invoke-interface {p0}, La/b/c;->f()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic b(La/f/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La/f/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, La/f/c;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/t;

    if-nez v0, :cond_21

    new-instance v1, La/f/aa;

    iget-boolean v0, p0, La/f/c;->c:Z

    invoke-direct {v1, v0}, La/f/aa;-><init>(Z)V

    iget-object v0, p0, La/f/c;->b:La/f/g;

    if-eqz v0, :cond_26

    new-instance v0, La/f/g;

    iget-object v2, p0, La/f/c;->b:La/f/g;

    invoke-direct {v0, v2, v1}, La/f/g;-><init>(La/f/g;La/f/t;)V

    :goto_1c
    iget-object v1, p0, La/f/c;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    invoke-direct {p0, p1, v0}, La/f/c;->a(Ljava/lang/String;La/f/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    move-object v0, v1

    goto :goto_1c
.end method

.method private b(Ljava/lang/String;La/f/t;)Ljava/lang/String;
    .registers 6

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, La/f/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/f/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/f/c;->h:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, La/f/c;->a:La/f/g;

    if-eqz v2, :cond_2e

    iget-boolean v2, p0, La/f/c;->c:Z

    if-nez v2, :cond_2e

    iget-object v2, p0, La/f/c;->h:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2e
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, La/f/c;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/t;

    if-nez v0, :cond_21

    new-instance v1, La/f/aa;

    iget-boolean v0, p0, La/f/c;->c:Z

    invoke-direct {v1, v0}, La/f/aa;-><init>(Z)V

    iget-object v0, p0, La/f/c;->a:La/f/g;

    if-eqz v0, :cond_26

    new-instance v0, La/f/g;

    iget-object v2, p0, La/f/c;->a:La/f/g;

    invoke-direct {v0, v2, v1}, La/f/g;-><init>(La/f/g;La/f/t;)V

    :goto_1c
    iget-object v1, p0, La/f/c;->k:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    invoke-direct {p0, p1, v0}, La/f/c;->b(Ljava/lang/String;La/f/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    move-object v0, v1

    goto :goto_1c
.end method

.method static synthetic c(La/f/c;)Z
    .registers 2

    iget-boolean v0, p0, La/f/c;->g:Z

    return v0
.end method

.method static synthetic d(La/f/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La/f/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, La/f/c;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f/t;

    if-nez v0, :cond_14

    new-instance v0, La/f/v;

    invoke-direct {v0}, La/f/v;-><init>()V

    iget-object v1, p0, La/f/c;->l:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    invoke-direct {p0, p1, v0}, La/f/c;->b(Ljava/lang/String;La/f/t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, La/f/c;->c:Z

    if-eqz v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method

.method static synthetic e(La/f/c;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, La/f/c;->i:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/g;)V
    .registers 5

    invoke-virtual {p2, p0}, La/b/a/g;->a(La/b/g/s;)V

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, La/b/a/g;->c:I

    invoke-interface {p1, v1}, La/b/c;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, La/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, La/f/c;->n:Z

    return-void
.end method

.method public a(La/b/c;La/b/a/k;)V
    .registers 3

    invoke-virtual {p2, p1, p0}, La/b/a/k;->a(La/b/c;La/b/a/d/m;)V

    return-void
.end method

.method public a(La/b/c;La/b/a/l;)V
    .registers 6

    iget v0, p2, La/b/a/l;->a:I

    iget v1, p2, La/b/a/l;->b:I

    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    invoke-interface {p1, v0}, La/b/c;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {p1, v1, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    invoke-interface {p1, v1}, La/b/c;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, La/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, La/f/c;->n:Z

    :cond_23
    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 3

    invoke-virtual {p2, p0}, La/b/b/a;->a(La/b/g/s;)V

    return-void
.end method

.method public a(La/b/e;)V
    .registers 3

    invoke-virtual {p1}, La/b/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f/c;->m:Ljava/lang/String;

    return-void
.end method

.method public a(La/b/k;)V
    .registers 4

    invoke-static {p1}, La/f/c;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/f/c;->m:Ljava/lang/String;

    iget-object v0, p0, La/f/c;->m:Ljava/lang/String;

    if-nez v0, :cond_39

    invoke-virtual {p1, p0}, La/b/k;->a(La/b/a/d/i;)V

    iget-object v0, p0, La/f/c;->m:Ljava/lang/String;

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/f/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    iget-object v1, p0, La/f/c;->m:Ljava/lang/String;

    if-eqz v1, :cond_47

    iget-boolean v1, p0, La/f/c;->n:Z

    if-eqz v1, :cond_47

    invoke-direct {p0, v0}, La/f/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_32
    iput-object v0, p0, La/f/c;->m:Ljava/lang/String;

    iget-object v0, p0, La/f/c;->m:Ljava/lang/String;

    invoke-static {p1, v0}, La/f/c;->a(La/b/c;Ljava/lang/String;)V

    :cond_39
    return-void

    :cond_3a
    invoke-virtual {p1}, La/b/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_47
    invoke-direct {p0, v0}, La/f/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32
.end method
