.class public Lorg/a/a/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lorg/a/a/a/a/n;

.field public final b:I

.field public c:Lorg/a/a/a/a/ax;

.field public d:I

.field public final e:Lorg/a/a/a/a/bd;


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/b;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ax;Lorg/a/a/a/a/bd;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    iget v0, p1, Lorg/a/a/a/a/b;->b:I

    iput v0, p0, Lorg/a/a/a/a/b;->b:I

    iput-object p3, p0, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    iput-object p4, p0, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    iget v0, p1, Lorg/a/a/a/a/b;->d:I

    iput v0, p0, Lorg/a/a/a/a/b;->d:I

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/a/n;ILorg/a/a/a/a/ax;Lorg/a/a/a/a/bd;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    iput p2, p0, Lorg/a/a/a/a/b;->b:I

    iput-object p3, p0, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    iput-object p4, p0, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget v0, p0, Lorg/a/a/a/a/b;->d:I

    const v1, -0x40000001  # -1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public a(Lorg/a/a/a/u;Z)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/a/a/a/a/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1b
    iget-object v1, p0, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    if-eqz v1, :cond_32

    const-string v1, ",["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    sget-object v2, Lorg/a/a/a/a/bd;->a:Lorg/a/a/a/a/bd;

    if-eq v1, v2, :cond_46

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_46
    invoke-virtual {p0}, Lorg/a/a/a/a/b;->a()I

    move-result v1

    if-lez v1, :cond_59

    const-string v1, ",up="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/a/a/a/a/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_59
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget v0, p0, Lorg/a/a/a/a/b;->d:I

    const/high16 v1, 0x40000000  # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/a/a/a/a/b;->d:I

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lorg/a/a/a/a/b;->d:I

    const v1, -0x40000001  # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lorg/a/a/a/a/b;->d:I

    goto :goto_9
.end method

.method public a(Lorg/a/a/a/a/b;)Z
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
    if-eqz p1, :cond_5

    iget-object v2, p0, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    iget v2, v2, Lorg/a/a/a/a/n;->c:I

    iget-object v3, p1, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    iget v3, v3, Lorg/a/a/a/a/n;->c:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/a/a/a/a/b;->b:I

    iget v3, p1, Lorg/a/a/a/a/b;->b:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    iget-object v3, p1, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    if-eq v2, v3, :cond_2c

    iget-object v2, p0, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    iget-object v3, p1, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    invoke-virtual {v2, v3}, Lorg/a/a/a/a/ax;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2c
    iget-object v2, p0, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    iget-object v3, p1, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/a/a/a/a/b;->b()Z

    move-result v2

    invoke-virtual {p1}, Lorg/a/a/a/a/b;->b()Z

    move-result v3

    if-eq v2, v3, :cond_4

    goto :goto_5
.end method

.method public final b()Z
    .registers 3

    iget v0, p0, Lorg/a/a/a/a/b;->d:I

    const/high16 v1, 0x40000000  # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/a/a/a/a/b;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    check-cast p1, Lorg/a/a/a/a/b;

    invoke-virtual {p0, p1}, Lorg/a/a/a/a/b;->a(Lorg/a/a/a/a/b;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/a/a/a/c/k;->a(I)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    iget v1, v1, Lorg/a/a/a/a/n;->c:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    iget v1, p0, Lorg/a/a/a/a/b;->b:I

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(II)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/a/b;->c:Lorg/a/a/a/a/ax;

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/a/b;->e:Lorg/a/a/a/a/bd;

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/a/a/a/a/b;->a(Lorg/a/a/a/u;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
