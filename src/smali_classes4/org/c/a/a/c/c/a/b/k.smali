.class public Lorg/c/a/a/c/c/a/b/k;
.super Lorg/c/a/a/d/c;


# static fields
.field static final c:Z


# instance fields
.field protected a:I

.field final b:Lorg/c/a/a/c/c/a/b/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/c/a/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/c/c/a/b/k;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lorg/c/a/a/c/c/a/b/j;)V
    .registers 3

    iput-object p1, p0, Lorg/c/a/a/c/c/a/b/k;->b:Lorg/c/a/a/c/c/a/b/j;

    invoke-direct {p0}, Lorg/c/a/a/d/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/c/a/a/c/c/a/b/k;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    if-eqz p1, :cond_16

    iget-object v0, p0, Lorg/c/a/a/c/c/a/b/k;->b:Lorg/c/a/a/c/c/a/b/j;

    iget v0, v0, Lorg/c/a/a/c/c/a/b/j;->aB:I

    if-lt p1, v0, :cond_16

    new-instance v0, Lorg/c/a/a/b/f/h;

    invoke-direct {v0, p1}, Lorg/c/a/a/b/f/h;-><init>(I)V

    invoke-super {p0, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/c/a/a/c/c/a/b/k;->b:Lorg/c/a/a/c/c/a/b/j;

    iput p1, p0, Lorg/c/a/a/c/c/a/b/k;->a:I

    iput p1, v0, Lorg/c/a/a/c/c/a/b/j;->aB:I

    :cond_16
    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/b/n;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/c/a/b/k;->a(I)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/f/p;)Z
    .registers 3

    sget-boolean v0, Lorg/c/a/a/c/c/a/b/k;->c:Z

    if-nez v0, :cond_e

    instance-of v0, p1, Lorg/c/a/a/b/f/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-super {p0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lorg/c/a/a/b/f/p;

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/c/a/b/k;->a(Lorg/c/a/a/b/f/p;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/c/a/b/k;->a:I

    return v0
.end method
