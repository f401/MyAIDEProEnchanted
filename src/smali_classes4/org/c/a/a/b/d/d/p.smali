.class public Lorg/c/a/a/b/d/d/p;
.super Lorg/c/a/a/b/d/d/s;


# static fields
.field static final c:Z


# instance fields
.field protected a:I

.field protected b:Lorg/c/a/a/b/d/b/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/d/d/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/b/d/d/p;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(ILorg/c/a/a/b/d/b/n;)V
    .registers 4

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/d/d/p;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/d/d/p;->b:Lorg/c/a/a/b/d/b/n;

    sget-boolean v0, Lorg/c/a/a/b/d/d/p;->c:Z

    if-nez v0, :cond_13

    if-nez p2, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/b/n;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/c/a/a/b/d/d/p;-><init>(ILorg/c/a/a/b/d/b/n;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/b/d/d/p;->a:I

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 3

    sget-boolean v0, Lorg/c/a/a/b/d/d/p;->c:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    iput-object p1, p0, Lorg/c/a/a/b/d/d/p;->b:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/p;)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/d/p;->a:I

    return v0
.end method

.method public d()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/p;->b:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReturnExpressionStatement{return "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/d/p;->b:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
