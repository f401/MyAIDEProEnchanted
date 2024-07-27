.class public final Lcom/a/b/e/b/aa;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lcom/a/b/e/d/c;

.field private final c:Lcom/a/b/e/d/e;

.field private final d:Lcom/a/b/e/d/e;

.field private final e:I

.field private final f:Z

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/a/b/e/d/c;Lcom/a/b/e/d/e;ILjava/lang/String;)V
    .registers 14

    sget-object v4, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/a/b/e/b/aa;-><init>(ILcom/a/b/e/d/c;Lcom/a/b/e/d/e;Lcom/a/b/e/d/e;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/a/b/e/d/c;Lcom/a/b/e/d/e;Lcom/a/b/e/d/e;IZLjava/lang/String;)V
    .registers 11

    const/4 v1, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sources == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "exceptions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    if-lt p5, v0, :cond_3

    if-le p5, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid branchingness: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {p4}, Lcom/a/b/e/d/e;->d_()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq p5, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exceptions / branchingness mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput p1, p0, Lcom/a/b/e/b/aa;->a:I

    iput-object p2, p0, Lcom/a/b/e/b/aa;->b:Lcom/a/b/e/d/c;

    iput-object p3, p0, Lcom/a/b/e/b/aa;->c:Lcom/a/b/e/d/e;

    iput-object p4, p0, Lcom/a/b/e/b/aa;->d:Lcom/a/b/e/d/e;

    iput p5, p0, Lcom/a/b/e/b/aa;->e:I

    iput-boolean p6, p0, Lcom/a/b/e/b/aa;->f:Z

    iput-object p7, p0, Lcom/a/b/e/b/aa;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/a/b/e/d/c;Lcom/a/b/e/d/e;Lcom/a/b/e/d/e;Ljava/lang/String;)V
    .registers 14

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/a/b/e/b/aa;-><init>(ILcom/a/b/e/d/c;Lcom/a/b/e/d/e;Lcom/a/b/e/d/e;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/a/b/e/d/c;Lcom/a/b/e/d/e;Ljava/lang/String;)V
    .registers 13

    sget-object v4, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/a/b/e/b/aa;-><init>(ILcom/a/b/e/d/c;Lcom/a/b/e/d/e;Lcom/a/b/e/d/e;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/a/b/e/d/e;Lcom/a/b/e/d/e;)V
    .registers 12

    sget-object v2, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/a/b/e/b/aa;-><init>(ILcom/a/b/e/d/c;Lcom/a/b/e/d/e;Lcom/a/b/e/d/e;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/aa;->a:I

    return v0
.end method

.method public b()Lcom/a/b/e/d/c;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/aa;->b:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method public c()Lcom/a/b/e/d/e;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/aa;->c:Lcom/a/b/e/d/e;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/aa;->e:I

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/e/b/aa;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v2, p1, Lcom/a/b/e/b/aa;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/a/b/e/b/aa;

    iget v2, p0, Lcom/a/b/e/b/aa;->a:I

    iget v3, p1, Lcom/a/b/e/b/aa;->a:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/a/b/e/b/aa;->e:I

    iget v3, p1, Lcom/a/b/e/b/aa;->e:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/a/b/e/b/aa;->b:Lcom/a/b/e/d/c;

    iget-object v3, p1, Lcom/a/b/e/b/aa;->b:Lcom/a/b/e/d/c;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/a/b/e/b/aa;->c:Lcom/a/b/e/d/e;

    iget-object v3, p1, Lcom/a/b/e/b/aa;->c:Lcom/a/b/e/d/e;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/a/b/e/b/aa;->d:Lcom/a/b/e/d/e;

    iget-object v3, p1, Lcom/a/b/e/b/aa;->d:Lcom/a/b/e/d/e;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public f()Z
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/aa;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/aa;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/e/b/aa;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/e/b/aa;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/aa;->d:Lcom/a/b/e/d/e;

    invoke-interface {v0}, Lcom/a/b/e/d/e;->d_()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/a/b/e/b/aa;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/a/b/e/b/aa;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/b/e/b/aa;->b:Lcom/a/b/e/d/c;

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/b/e/b/aa;->c:Lcom/a/b/e/d/e;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/b/e/b/aa;->d:Lcom/a/b/e/d/e;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x20

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Rop{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/a/b/e/b/aa;->a:I

    invoke-static {v0}, Lcom/a/b/e/b/t;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/e/b/aa;->b:Lcom/a/b/e/d/c;

    sget-object v3, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    if-eq v0, v3, :cond_2

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/e/b/aa;->b:Lcom/a/b/e/d/c;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " <-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/e/b/aa;->c:Lcom/a/b/e/d/e;

    invoke-interface {v0}, Lcom/a/b/e/d/e;->d_()I

    move-result v3

    if-nez v3, :cond_3

    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v0, p0, Lcom/a/b/e/b/aa;->f:Z

    if-eqz v0, :cond_1

    const-string v0, " call"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/a/b/e/b/aa;->d:Lcom/a/b/e/d/e;

    invoke-interface {v0}, Lcom/a/b/e/d/e;->d_()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v3, " throws"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-lt v1, v0, :cond_4

    :goto_2
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/a/b/e/b/aa;->c:Lcom/a/b/e/d/e;

    invoke-interface {v4, v0}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/a/b/e/b/aa;->d:Lcom/a/b/e/d/e;

    invoke-interface {v3, v1}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v3

    sget-object v4, Lcom/a/b/e/d/c;->u:Lcom/a/b/e/d/c;

    if-ne v3, v4, :cond_5

    const-string v3, "<any>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/a/b/e/b/aa;->d:Lcom/a/b/e/d/e;

    invoke-interface {v3, v1}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/a/b/e/b/aa;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/a/b/e/b/aa;->e:I

    invoke-static {v1}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    const-string v0, " flows"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const-string v0, " returns"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    const-string v0, " gotos"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    const-string v0, " ifs"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_4
    const-string v0, " switches"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
