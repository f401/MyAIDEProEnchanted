.class public Lorg/a/a/a/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/a/c/m;->a:Ljava/lang/Object;

    iput-object p2, p0, Lorg/a/a/a/c/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v1, p1, Lorg/a/a/a/c/m;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/a/a/a/c/m;

    sget-object v1, Lorg/a/a/a/c/l;->a:Lorg/a/a/a/c/l;

    iget-object v2, p0, Lorg/a/a/a/c/m;->a:Ljava/lang/Object;

    iget-object v3, p1, Lorg/a/a/a/c/m;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/a/a/a/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/a/a/a/c/l;->a:Lorg/a/a/a/c/l;

    iget-object v2, p0, Lorg/a/a/a/c/m;->b:Ljava/lang/Object;

    iget-object v3, p1, Lorg/a/a/a/c/m;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/a/a/a/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lorg/a/a/a/c/k;->a()I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/c/m;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a/c/m;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->a(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/a/a/a/c/k;->b(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/a/a/a/c/m;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/a/a/a/c/m;->b:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
