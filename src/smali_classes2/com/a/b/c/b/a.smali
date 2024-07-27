.class public final Lcom/a/b/c/b/a;
.super Lcom/a/b/c/b/an;


# instance fields
.field private final a:Lcom/a/b/c/b/h;

.field private final b:Ljava/util/ArrayList;

.field private final c:Lcom/a/b/e/c/a;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ad;Lcom/a/b/c/b/h;Ljava/util/ArrayList;Lcom/a/b/e/c/a;)V
    .registers 7

    sget-object v0, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {p0, p1, v0}, Lcom/a/b/c/b/an;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "user == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "values == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal number of init values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p4, p0, Lcom/a/b/c/b/a;->c:Lcom/a/b/e/c/a;

    sget-object v0, Lcom/a/b/e/c/ae;->l:Lcom/a/b/e/c/ae;

    if-eq p4, v0, :cond_3

    sget-object v0, Lcom/a/b/e/c/ae;->k:Lcom/a/b/e/c/ae;

    if-ne p4, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/a/b/c/b/a;->d:I

    :goto_0
    iput-object p2, p0, Lcom/a/b/c/b/a;->a:Lcom/a/b/c/b/h;

    iput-object p3, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/a/b/c/b/a;->e:I

    return-void

    :cond_4
    sget-object v0, Lcom/a/b/e/c/ae;->r:Lcom/a/b/e/c/ae;

    if-eq p4, v0, :cond_5

    sget-object v0, Lcom/a/b/e/c/ae;->m:Lcom/a/b/e/c/ae;

    if-ne p4, v0, :cond_6

    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/a/b/c/b/a;->d:I

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/a/b/e/c/ae;->q:Lcom/a/b/e/c/ae;

    if-eq p4, v0, :cond_7

    sget-object v0, Lcom/a/b/e/c/ae;->o:Lcom/a/b/e/c/ae;

    if-ne p4, v0, :cond_8

    :cond_7
    const/4 v0, 0x4

    iput v0, p0, Lcom/a/b/c/b/a;->d:I

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/a/b/e/c/ae;->p:Lcom/a/b/e/c/ae;

    if-eq p4, v0, :cond_9

    sget-object v0, Lcom/a/b/e/c/ae;->n:Lcom/a/b/e/c/ae;

    if-ne p4, v0, :cond_a

    :cond_9
    const/16 v0, 0x8

    iput v0, p0, Lcom/a/b/c/b/a;->d:I

    goto :goto_0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected constant type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, Lcom/a/b/c/b/a;->e:I

    iget v1, p0, Lcom/a/b/c/b/a;->d:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 7

    new-instance v0, Lcom/a/b/c/b/a;

    invoke-virtual {p0}, Lcom/a/b/c/b/a;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/b/a;->a:Lcom/a/b/c/b/h;

    iget-object v3, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/a/b/c/b/a;->c:Lcom/a/b/e/c/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/b/c/b/a;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/c/b/h;Ljava/util/ArrayList;Lcom/a/b/e/c/a;)V

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/a/b/c/b/a;->a:Lcom/a/b/c/b/h;

    invoke-virtual {v0}, Lcom/a/b/c/b/h;->i()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v1, "fill-array-data-payload // for fill-array-data @ "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\n  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    invoke-virtual {v0}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/a/b/g/a;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v0, 0x300

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->c(I)V

    iget v0, p0, Lcom/a/b/c/b/a;->d:I

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->c(I)V

    iget v0, p0, Lcom/a/b/c/b/a;->e:I

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->d(I)V

    iget v0, p0, Lcom/a/b/c/b/a;->d:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget v0, p0, Lcom/a/b/c/b/a;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    rem-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_1

    invoke-interface {p1, v2}, Lcom/a/b/g/a;->a(I)V

    :cond_1
    return-void

    :pswitch_1
    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    check-cast v0, Lcom/a/b/e/c/t;

    invoke-virtual {v0}, Lcom/a/b/e/c/t;->j()I

    move-result v0

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->a(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_2
    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    check-cast v0, Lcom/a/b/e/c/t;

    invoke-virtual {v0}, Lcom/a/b/e/c/t;->j()I

    move-result v0

    int-to-short v0, v0

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->c(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_3
    move v1, v2

    :goto_2
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    check-cast v0, Lcom/a/b/e/c/t;

    invoke-virtual {v0}, Lcom/a/b/e/c/t;->j()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/a/b/g/a;->d(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_4
    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    check-cast v0, Lcom/a/b/e/c/u;

    invoke-virtual {v0}, Lcom/a/b/e/c/u;->k()J

    move-result-wide v4

    invoke-interface {p1, v4, v5}, Lcom/a/b/g/a;->a(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected b()Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    invoke-virtual {v0}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
