.class public La/e/s;
.super Ljava/lang/Object;

# interfaces
.implements La/e/o;


# instance fields
.field private final a:La/j/n;

.field private final b:Ljava/util/Set;

.field private final c:La/e/o;

.field private final d:La/e/o;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/j/n;La/e/o;La/e/o;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La/e/s;->b:Ljava/util/Set;

    iput-object p1, p0, La/e/s;->a:La/j/n;

    iput-object p2, p0, La/e/s;->c:La/e/o;

    iput-object p3, p0, La/e/s;->d:La/e/o;

    iput-object p4, p0, La/e/s;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;La/e/o;La/e/o;)V
    .registers 6

    const/4 v1, 0x0

    new-instance v0, La/j/n;

    invoke-direct {v0}, La/j/n;-><init>()V

    invoke-direct {p0, v0, p2, p3, v1}, La/e/s;-><init>(La/j/n;La/e/o;La/e/o;Ljava/lang/String;)V

    iget-object v0, p0, La/e/s;->a:La/j/n;

    invoke-virtual {v0, v1, p1}, La/j/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private a(La/e/g;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, La/e/s;->a:La/j/n;

    invoke-virtual {v0, p2}, La/j/n;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, La/e/s;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, La/e/s;->e:Ljava/lang/String;

    if-eqz v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, La/e/s;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_37
    new-instance v3, La/e/ah;

    invoke-direct {v3, p1, v1}, La/e/ah;-><init>(La/e/g;Ljava/lang/String;)V

    iget-object v1, p0, La/e/s;->d:La/e/o;

    invoke-interface {v1, v3}, La/e/o;->b(La/e/g;)Ljava/io/OutputStream;

    iget-object v1, p0, La/e/s;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, La/e/s;->c(La/e/g;)V

    goto :goto_c

    :cond_4a
    move-object v1, v0

    goto :goto_37

    :cond_4c
    return-void
.end method

.method private c(La/e/g;)V
    .registers 6

    invoke-interface {p1}, La/e/g;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/e/s;->e:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, La/e/s;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, La/e/s;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_20
    invoke-direct {p0, p1, v0}, La/e/s;->a(La/e/g;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, La/e/s;->c:La/e/o;

    invoke-interface {v0}, La/e/o;->a()V

    return-void
.end method

.method public a(La/e/g;)Z
    .registers 3

    iget-object v0, p0, La/e/s;->c:La/e/o;

    invoke-interface {v0, p1}, La/e/o;->a(La/e/g;)Z

    move-result v0

    return v0
.end method

.method public a(La/e/g;La/e/g;)Z
    .registers 4

    iget-object v0, p0, La/e/s;->c:La/e/o;

    invoke-interface {v0, p1, p2}, La/e/o;->a(La/e/g;La/e/g;)Z

    move-result v0

    return v0
.end method

.method public b(La/e/g;)Ljava/io/OutputStream;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/e/s;->a(La/e/g;Ljava/lang/String;)V

    invoke-direct {p0, p1}, La/e/s;->c(La/e/g;)V

    iget-object v0, p0, La/e/s;->c:La/e/o;

    invoke-interface {v0, p1}, La/e/o;->b(La/e/g;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
