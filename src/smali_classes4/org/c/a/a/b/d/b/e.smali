.class public Lorg/c/a/a/b/d/b/e;
.super Lorg/c/a/a/b/d/b/c;


# static fields
.field static final e:Z


# instance fields
.field protected a:Lorg/c/a/a/b/d/b/n;

.field protected d:Lorg/c/a/a/b/d/b/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/d/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/b/d/b/e;->e:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(ILorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/b/n;)V
    .registers 5

    invoke-static {p2}, Lorg/c/a/a/b/d/b/e;->c(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/c/a/a/b/d/b/c;-><init>(ILorg/c/a/a/b/d/e/l;)V

    iput-object p2, p0, Lorg/c/a/a/b/d/b/e;->a:Lorg/c/a/a/b/d/b/n;

    iput-object p3, p0, Lorg/c/a/a/b/d/b/e;->d:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method protected static c(Lorg/c/a/a/b/d/b/n;)Lorg/c/a/a/b/d/e/l;
    .registers 4

    invoke-virtual {p0}, Lorg/c/a/a/b/d/b/n;->f()Lorg/c/a/a/b/d/e/l;

    move-result-object v1

    invoke-interface {v1}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v0

    sget-boolean v2, Lorg/c/a/a/b/d/b/e;->e:Z

    if-nez v2, :cond_16

    if-gtz v0, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "createItemType : negative dimension"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_16
    if-lez v0, :cond_1f

    add-int/lit8 v0, v0, -0x1

    :goto_1a
    invoke-interface {v1, v0}, Lorg/c/a/a/b/d/e/l;->a(I)Lorg/c/a/a/b/d/e/l;

    move-result-object v0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/e;->a:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/b/o;->a(Lorg/c/a/a/b/d/b/e;)V

    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/b/e;->d:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public d()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/e;->a:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public g()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/b/e;->d:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ArrayExpression{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/b/e;->a:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/b/e;->d:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
