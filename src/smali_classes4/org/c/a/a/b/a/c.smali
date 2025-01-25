.class public Lorg/c/a/a/b/a/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/a/c;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/a/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/c/a/a/b/a/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/c/a/a/b/a/c;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/c;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/b/a/c;->d:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/c/a/a/b/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/a/c;

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Field{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
