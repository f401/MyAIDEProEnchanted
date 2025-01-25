.class public Lorg/c/a/a/b/d/e/h;
.super Lorg/c/a/a/b/d/e/i;


# static fields
.field static final b:Z


# instance fields
.field protected a:Lorg/c/a/a/b/d/e/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/b/d/e/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/b/d/e/h;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;ILorg/c/a/a/b/d/e/i;)V
    .registers 8

    invoke-direct/range {p0 .. p5}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;I)V

    iput-object p6, p0, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

    sget-boolean v0, Lorg/c/a/a/b/d/e/h;->b:Z

    if-nez v0, :cond_1e

    if-eqz p3, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p2, :cond_1e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;Lorg/c/a/a/b/d/e/i;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;)V

    iput-object p5, p0, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

    sget-boolean v0, Lorg/c/a/a/b/d/e/h;->b:Z

    if-nez v0, :cond_1e

    if-eqz p3, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p2, :cond_1e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/i;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

    sget-boolean v0, Lorg/c/a/a/b/d/e/h;->b:Z

    if-nez v0, :cond_1e

    if-eqz p3, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p2, :cond_1e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1e
    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/e/e;)Lorg/c/a/a/b/d/e/i;
    .registers 9

    new-instance v0, Lorg/c/a/a/b/d/e/h;

    iget-object v1, p0, Lorg/c/a/a/b/d/e/h;->q:Ljava/lang/String;

    iget-object v2, p0, Lorg/c/a/a/b/d/e/h;->r:Ljava/lang/String;

    iget-object v3, p0, Lorg/c/a/a/b/d/e/h;->s:Ljava/lang/String;

    iget v5, p0, Lorg/c/a/a/b/d/e/h;->u:I

    iget-object v6, p0, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/d/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;ILorg/c/a/a/b/d/e/i;)V

    return-object v0
.end method

.method public a(I)Lorg/c/a/a/b/d/e/l;
    .registers 9

    sget-boolean v0, Lorg/c/a/a/b/d/e/h;->b:Z

    if-nez v0, :cond_c

    if-gez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    new-instance v0, Lorg/c/a/a/b/d/e/h;

    iget-object v1, p0, Lorg/c/a/a/b/d/e/h;->q:Ljava/lang/String;

    iget-object v2, p0, Lorg/c/a/a/b/d/e/h;->r:Ljava/lang/String;

    iget-object v3, p0, Lorg/c/a/a/b/d/e/h;->s:Ljava/lang/String;

    iget-object v4, p0, Lorg/c/a/a/b/d/e/h;->t:Lorg/c/a/a/b/d/e/e;

    iget-object v6, p0, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/b/d/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;ILorg/c/a/a/b/d/e/i;)V

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/d/e/u;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/e/u;->a(Lorg/c/a/a/b/d/e/h;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/e/i;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

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
    instance-of v2, p1, Lorg/c/a/a/b/d/e/h;

    if-eqz v2, :cond_5

    invoke-super {p0, p1}, Lorg/c/a/a/b/d/e/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast p1, Lorg/c/a/a/b/d/e/h;

    iget-object v2, p0, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

    iget-object v3, p1, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v2, v3}, Lorg/c/a/a/b/d/e/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, Lorg/c/a/a/b/d/e/i;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/e/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/b/d/e/h;->t:Lorg/c/a/a/b/d/e/e;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InnerObjectType{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/e/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/e/h;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InnerObjectType{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/e/h;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v1}, Lorg/c/a/a/b/d/e/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/e/h;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/b/d/e/h;->t:Lorg/c/a/a/b/d/e/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method
