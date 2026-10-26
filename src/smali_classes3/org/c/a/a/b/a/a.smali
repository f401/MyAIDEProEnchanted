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
    .locals 0

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
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/a/a;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/b/a/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/a/c;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lorg/c/a/a/b/a/a;->c:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/c/a/a/b/a/a;->k:Ljava/util/List;

    return-void
.end method

.method public a(Lorg/c/a/a/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/c/a/a/b/a/a;->j:Lorg/c/a/a/b/a/a;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/a/a;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/c/a/a/b/a/a;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public g()[Lorg/c/a/a/b/a/c;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->g:[Lorg/c/a/a/b/a/c;

    return-object v0
.end method

.method public h()[Lorg/c/a/a/b/a/d;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->h:[Lorg/c/a/a/b/a/d;

    return-object v0
.end method

.method public i()Lorg/c/a/a/b/a/a;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->j:Lorg/c/a/a/b/a/a;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/a/a;->k:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
