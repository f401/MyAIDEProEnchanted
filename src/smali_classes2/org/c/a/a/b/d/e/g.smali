.class public Lorg/c/a/a/b/d/e/g;
.super Lorg/c/a/a/b/d/e/m;


# static fields
.field static final c:Z


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/d/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/b/d/e/g;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lorg/c/a/a/b/d/e/m;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/e/g;->a:Ljava/lang/String;

    iput p2, p0, Lorg/c/a/a/b/d/e/g;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Lorg/c/a/a/b/d/e/l;
    .registers 4

    sget-boolean v0, Lorg/c/a/a/b/d/e/g;->c:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/c/a/a/b/d/e/g;->b:I

    if-ne v0, p1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lorg/c/a/a/b/d/e/g;

    iget-object v1, p0, Lorg/c/a/a/b/d/e/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/c/a/a/b/d/e/g;-><init>(Ljava/lang/String;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public a(Lorg/c/a/a/b/d/e/u;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/e/u;->a(Lorg/c/a/a/b/d/e/g;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/e/g;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    check-cast p1, Lorg/c/a/a/b/d/e/g;

    iget v2, p0, Lorg/c/a/a/b/d/e/g;->b:I

    iget v3, p1, Lorg/c/a/a/b/d/e/g;->b:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/c/a/a/b/d/e/g;->a:Ljava/lang/String;

    iget-object v3, p1, Lorg/c/a/a/b/d/e/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/b/d/e/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/c/a/a/b/d/e/g;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GenericType{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/e/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
