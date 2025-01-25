.class public Lorg/c/a/a/b/d/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/c/d;


# instance fields
.field protected a:Lorg/c/a/a/b/d/e/i;

.field protected b:Lorg/c/a/a/b/d/c/g;

.field protected c:Lorg/c/a/a/b/d/c/f;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/e/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/c/b;->a:Lorg/c/a/a/b/d/e/i;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/e/i;Lorg/c/a/a/b/d/c/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/c/b;->a:Lorg/c/a/a/b/d/e/i;

    iput-object p2, p0, Lorg/c/a/a/b/d/c/b;->c:Lorg/c/a/a/b/d/c/f;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/e/i;Lorg/c/a/a/b/d/c/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/c/b;->a:Lorg/c/a/a/b/d/e/i;

    iput-object p2, p0, Lorg/c/a/a/b/d/c/b;->b:Lorg/c/a/a/b/d/c/g;

    return-void
.end method

.method protected constructor <init>(Lorg/c/a/a/b/d/e/i;Lorg/c/a/a/b/d/c/g;Lorg/c/a/a/b/d/c/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/c/b;->a:Lorg/c/a/a/b/d/e/i;

    iput-object p2, p0, Lorg/c/a/a/b/d/c/b;->b:Lorg/c/a/a/b/d/c/g;

    iput-object p3, p0, Lorg/c/a/a/b/d/c/b;->c:Lorg/c/a/a/b/d/c/f;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/c/o;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/c/o;->a(Lorg/c/a/a/b/d/c/b;)V

    return-void
.end method

.method public d()Lorg/c/a/a/b/d/e/i;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/c/b;->a:Lorg/c/a/a/b/d/e/i;

    return-object v0
.end method

.method public e()Lorg/c/a/a/b/d/c/g;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/c/b;->b:Lorg/c/a/a/b/d/c/g;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_6

    :cond_4
    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    instance-of v2, p1, Lorg/c/a/a/b/d/c/b;

    if-eqz v2, :cond_5

    check-cast p1, Lorg/c/a/a/b/d/c/b;

    iget-object v2, p0, Lorg/c/a/a/b/d/c/b;->b:Lorg/c/a/a/b/d/c/g;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lorg/c/a/a/b/d/c/b;->b:Lorg/c/a/a/b/d/c/g;

    iget-object v3, p1, Lorg/c/a/a/b/d/c/b;->b:Lorg/c/a/a/b/d/c/g;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1a
    iget-object v2, p0, Lorg/c/a/a/b/d/c/b;->c:Lorg/c/a/a/b/d/c/f;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lorg/c/a/a/b/d/c/b;->c:Lorg/c/a/a/b/d/c/f;

    iget-object v3, p1, Lorg/c/a/a/b/d/c/b;->c:Lorg/c/a/a/b/d/c/f;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_28
    iget-object v2, p0, Lorg/c/a/a/b/d/c/b;->a:Lorg/c/a/a/b/d/e/i;

    iget-object v3, p1, Lorg/c/a/a/b/d/c/b;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v2, v3}, Lorg/c/a/a/b/d/e/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5

    :cond_33
    iget-object v2, p1, Lorg/c/a/a/b/d/c/b;->b:Lorg/c/a/a/b/d/c/g;

    if-nez v2, :cond_5

    goto :goto_1a

    :cond_38
    iget-object v2, p1, Lorg/c/a/a/b/d/c/b;->c:Lorg/c/a/a/b/d/c/f;

    if-nez v2, :cond_5

    goto :goto_28
.end method

.method public f()Lorg/c/a/a/b/d/c/f;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/c/b;->c:Lorg/c/a/a/b/d/c/f;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/c/a/a/b/d/c/b;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/e/i;->hashCode()I

    move-result v2

    iget-object v0, p0, Lorg/c/a/a/b/d/c/b;->b:Lorg/c/a/a/b/d/c/g;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/c/a/a/b/d/c/b;->b:Lorg/c/a/a/b/d/c/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_11
    iget-object v3, p0, Lorg/c/a/a/b/d/c/b;->c:Lorg/c/a/a/b/d/c/f;

    if-eqz v3, :cond_1b

    iget-object v1, p0, Lorg/c/a/a/b/d/c/b;->c:Lorg/c/a/a/b/d/c/f;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1b
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_22
    move v0, v1

    goto :goto_11
.end method
