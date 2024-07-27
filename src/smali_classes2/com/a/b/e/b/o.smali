.class public Lcom/a/b/e/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lcom/a/b/e/c/ad;

.field private final b:Lcom/a/b/e/c/ad;


# direct methods
.method private constructor <init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    iput-object p2, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    return-void
.end method

.method public static a(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)Lcom/a/b/e/b/o;
    .registers 3

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/b/e/b/o;

    invoke-direct {v0, p0, p1}, Lcom/a/b/e/b/o;-><init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)V

    goto :goto_0
.end method

.method private static b(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)I
    .registers 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/a/b/e/c/ad;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/o;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    invoke-static {v0, v1}, Lcom/a/b/e/b/o;->b(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    invoke-static {v0, v1}, Lcom/a/b/e/b/o;->b(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    return-object v0
.end method

.method public b()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/e/b/o;

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/o;->a(Lcom/a/b/e/b/o;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/e/b/o;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/a/b/e/b/o;

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/o;->a(Lcom/a/b/e/b/o;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    if-nez v2, :cond_1

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
