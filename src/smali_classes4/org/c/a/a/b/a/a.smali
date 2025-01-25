.class public Lorg/c/a/a/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:[Ljava/lang/String;

.field protected g:[Lorg/c/a/a/b/a/c;

.field protected h:[Lorg/c/a/a/b/a/d;

.field protected i:Ljava/util/Map;

.field protected j:Lorg/c/a/a/b/a/a;

.field protected k:Ljava/util/List;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lorg/c/a/a/b/a/c;[Lorg/c/a/a/b/a/d;Ljava/util/Map;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/a/a;->a:I

    iput p2, p0, Lorg/c/a/a/b/a/a;->b:I

    iput p3, p0, Lorg/c/a/a/b/a/a;->c:I

    iput-object p4, p0, Lorg/c/a/a/b/a/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lorg/c/a/a/b/a/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lorg/c/a/a/b/a/a;->f:[Ljava/lang/String;

    iput-object p7, p0, Lorg/c/a/a/b/a/a;->g:[Lorg/c/a/a/b/a/c;

    iput-object p8, p0, Lorg/c/a/a/b/a/a;->h:[Lorg/c/a/a/b/a/d;

    iput-object p9, p0, Lorg/c/a/a/b/a/a;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/a;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->i:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/c/a/a/b/a/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/a/c;

    goto :goto_5
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/b/a/a;->c:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/a/a;->k:Ljava/util/List;

    return-void
.end method

.method public a(Lorg/c/a/a/b/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/a/a;->j:Lorg/c/a/a/b/a/a;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/a;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/a;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public g()[Lorg/c/a/a/b/a/c;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->g:[Lorg/c/a/a/b/a/c;

    return-object v0
.end method

.method public h()[Lorg/c/a/a/b/a/d;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->h:[Lorg/c/a/a/b/a/d;

    return-object v0
.end method

.method public i()Lorg/c/a/a/b/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->j:Lorg/c/a/a/b/a/a;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->k:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassFile{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
