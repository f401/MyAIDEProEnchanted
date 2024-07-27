.class public Lorg/a/a/a/b/d;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lorg/a/a/a/a/c;

.field public c:[Lorg/a/a/a/b/d;

.field public d:Z

.field public e:I

.field public f:Lorg/a/a/a/a/ae;

.field public g:Z

.field public h:[Lorg/a/a/a/b/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/b/d;->a:I

    new-instance v0, Lorg/a/a/a/a/c;

    invoke-direct {v0}, Lorg/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/b/d;->b:Lorg/a/a/a/a/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/a/b/d;->d:Z

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/a/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/b/d;->a:I

    new-instance v0, Lorg/a/a/a/a/c;

    invoke-direct {v0}, Lorg/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/b/d;->b:Lorg/a/a/a/a/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/a/b/d;->d:Z

    iput-object p1, p0, Lorg/a/a/a/b/d;->b:Lorg/a/a/a/a/c;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/a/a/a/b/d;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/a/a/a/b/d;

    iget-object v0, p0, Lorg/a/a/a/b/d;->b:Lorg/a/a/a/a/c;

    iget-object v1, p1, Lorg/a/a/a/b/d;->b:Lorg/a/a/a/a/c;

    invoke-virtual {v0, v1}, Lorg/a/a/a/a/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/a/a/a/c/k;->a(I)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/b/d;->b:Lorg/a/a/a/a/c;

    invoke-virtual {v1}, Lorg/a/a/a/a/c;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/a/a/a/b/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/a/a/a/b/d;->b:Lorg/a/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/a/a/a/b/d;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/a/a/a/b/d;->h:[Lorg/a/a/a/b/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/a/a/a/b/d;->h:[Lorg/a/a/a/b/e;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v1, p0, Lorg/a/a/a/b/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
