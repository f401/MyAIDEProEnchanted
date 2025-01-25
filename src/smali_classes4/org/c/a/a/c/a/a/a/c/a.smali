.class public abstract Lorg/c/a/a/c/a/a/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/c/a/a/a/c/f;


# static fields
.field static final j:Z


# instance fields
.field protected a:Lorg/c/a/a/c/a/a/a/c/b;

.field protected b:Lorg/c/a/a/c/a/a/a/c/a;

.field protected c:Z

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:I

.field protected i:Lorg/c/a/a/d/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/a/a/a/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/c/a/a/a/c/a;->j:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->i:Lorg/c/a/a/d/c;

    if-nez p2, :cond_18

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->c:Z

    iput p1, p0, Lorg/c/a/a/c/a/a/a/c/a;->d:I

    iput p2, p0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    iput p2, p0, Lorg/c/a/a/c/a/a/a/c/a;->f:I

    iput p3, p0, Lorg/c/a/a/c/a/a/a/c/a;->h:I

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->i:Lorg/c/a/a/d/c;

    if-nez p2, :cond_1a

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->c:Z

    iput p1, p0, Lorg/c/a/a/c/a/a/a/c/a;->d:I

    iput p2, p0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    iput p2, p0, Lorg/c/a/a/c/a/a/a/c/a;->f:I

    iput-object p3, p0, Lorg/c/a/a/c/a/a/a/c/a;->g:Ljava/lang/String;

    iput p4, p0, Lorg/c/a/a/c/a/a/a/c/a;->h:I

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(IILjava/lang/String;IZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->i:Lorg/c/a/a/d/c;

    iput-boolean p5, p0, Lorg/c/a/a/c/a/a/a/c/a;->c:Z

    iput p1, p0, Lorg/c/a/a/c/a/a/a/c/a;->d:I

    iput p2, p0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    iput p2, p0, Lorg/c/a/a/c/a/a/a/c/a;->f:I

    iput-object p3, p0, Lorg/c/a/a/c/a/a/a/c/a;->g:Ljava/lang/String;

    iput p4, p0, Lorg/c/a/a/c/a/a/a/c/a;->h:I

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/c/a/a/a/c/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->a:Lorg/c/a/a/c/a/a/a/c/b;

    return-object v0
.end method

.method public a(I)V
    .registers 3

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/c/a;->j:Z

    if-nez v0, :cond_e

    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->f:I

    if-le p1, v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iput p1, p0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/c/a;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/c/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/c/a;->b:Lorg/c/a/a/c/a/a/a/c/a;

    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/c/b;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/c/a;->a:Lorg/c/a/a/c/a/a/a/c/b;

    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/c/g;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->i:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/c/a/a/c/a/a/a/c/a;->c:Z

    return-void
.end method

.method public abstract a(Lorg/c/a/a/b/d/e/l;)Z
.end method

.method public b()Lorg/c/a/a/c/a/a/a/c/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->b:Lorg/c/a/a/c/a/a/a/c/a;

    return-object v0
.end method

.method public b(I)V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    if-le v0, p1, :cond_6

    iput p1, p0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    :cond_6
    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->f:I

    if-ge v0, p1, :cond_c

    iput p1, p0, Lorg/c/a/a/c/a/a/a/c/a;->f:I

    :cond_c
    return-void
.end method

.method public abstract b(Lorg/c/a/a/b/d/e/l;)V
.end method

.method public abstract b(Lorg/c/a/a/c/a/a/a/c/a;)Z
.end method

.method public abstract c(Lorg/c/a/a/b/d/e/l;)V
.end method

.method public abstract c(Lorg/c/a/a/c/a/a/a/c/a;)V
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->c:Z

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->d:I

    return v0
.end method

.method public abstract d(Lorg/c/a/a/c/a/a/a/c/a;)V
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->e:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->h:I

    return v0
.end method

.method public i()Lorg/c/a/a/d/c;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/a;->i:Lorg/c/a/a/d/c;

    return-object v0
.end method
