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

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcom/a/b/e/b/o;

    invoke-direct {v0, p0, p1}, Lcom/a/b/e/b/o;-><init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)V

    goto :goto_5
.end method

.method private static b(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)I
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-nez p0, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    if-nez p1, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p0, p1}, Lcom/a/b/e/c/ad;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/o;)I
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    invoke-static {v0, v1}, Lcom/a/b/e/b/o;->b(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)I

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    invoke-static {v0, v1}, Lcom/a/b/e/b/o;->b(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)I

    move-result v0

    goto :goto_a
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

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/a/b/e/b/o;

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/o;->a(Lcom/a/b/e/b/o;)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_e

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    if-nez v2, :cond_15

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_e
    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_15
    iget-object v1, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_1a

    const-string v0, ""

    goto :goto_e

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_40

    const-string v0, ""

    :goto_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    if-nez v0, :cond_47

    const-string v0, ""

    :goto_37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_40
    iget-object v0, p0, Lcom/a/b/e/b/o;->a:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_47
    iget-object v0, p0, Lcom/a/b/e/b/o;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method
