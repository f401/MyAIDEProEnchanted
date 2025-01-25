.class public final Lcom/a/b/e/c/aa;
.super Lcom/a/b/e/c/a;


# static fields
.field public static final a:Lcom/a/b/e/c/aa;


# instance fields
.field private final b:Lcom/a/b/e/c/ad;

.field private final c:Lcom/a/b/e/c/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/a/b/e/c/aa;

    new-instance v1, Lcom/a/b/e/c/ad;

    const-string v2, "TYPE"

    invoke-direct {v1, v2}, Lcom/a/b/e/c/ad;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/a/b/e/c/ad;

    const-string v3, "Ljava/lang/Class;"

    invoke-direct {v2, v3}, Lcom/a/b/e/c/ad;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/a/b/e/c/aa;-><init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)V

    sput-object v0, Lcom/a/b/e/c/aa;->a:Lcom/a/b/e/c/aa;

    return-void
.end method

.method public constructor <init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)V
    .registers 5

    invoke-direct {p0}, Lcom/a/b/e/c/a;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/a/b/e/c/aa;->b:Lcom/a/b/e/c/ad;

    iput-object p2, p0, Lcom/a/b/e/c/aa;->c:Lcom/a/b/e/c/ad;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/aa;->b:Lcom/a/b/e/c/ad;

    return-object v0
.end method

.method protected b(Lcom/a/b/e/c/a;)I
    .registers 4

    check-cast p1, Lcom/a/b/e/c/aa;

    iget-object v0, p0, Lcom/a/b/e/c/aa;->b:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/c/aa;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ad;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/a/b/e/c/aa;->c:Lcom/a/b/e/c/ad;

    iget-object v1, p1, Lcom/a/b/e/c/aa;->c:Lcom/a/b/e/c/ad;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/ad;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    goto :goto_c
.end method

.method public b()Lcom/a/b/e/c/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/aa;->c:Lcom/a/b/e/c/ad;

    return-object v0
.end method

.method public c()Lcom/a/b/e/d/c;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/c/aa;->c:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/d/c;->a(Ljava/lang/String;)Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/e/c/aa;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/c/aa;->c:Lcom/a/b/e/c/ad;

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/c/aa;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/b/e/c/aa;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/a/b/e/c/aa;

    iget-object v1, p0, Lcom/a/b/e/c/aa;->b:Lcom/a/b/e/c/ad;

    iget-object v2, p1, Lcom/a/b/e/c/aa;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v1, v2}, Lcom/a/b/e/c/ad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/a/b/e/c/aa;->c:Lcom/a/b/e/c/ad;

    iget-object v2, p1, Lcom/a/b/e/c/aa;->c:Lcom/a/b/e/c/ad;

    invoke-virtual {v1, v2}, Lcom/a/b/e/c/ad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final f()Z
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/c/aa;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "nat"

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/e/c/aa;->b:Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/b/e/c/aa;->c:Lcom/a/b/e/c/ad;

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/e/c/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
