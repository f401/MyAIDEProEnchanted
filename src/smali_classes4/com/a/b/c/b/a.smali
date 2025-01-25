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

    if-nez p2, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "user == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-nez p3, :cond_19

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "values == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal number of init values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iput-object p4, p0, Lcom/a/b/c/b/a;->c:Lcom/a/b/e/c/a;

    sget-object v0, Lcom/a/b/e/c/ae;->l:Lcom/a/b/e/c/ae;

    if-eq p4, v0, :cond_31

    sget-object v0, Lcom/a/b/e/c/ae;->k:Lcom/a/b/e/c/ae;

    if-ne p4, v0, :cond_3f

    :cond_31
    const/4 v0, 0x1

    iput v0, p0, Lcom/a/b/c/b/a;->d:I

    :goto_34
    iput-object p2, p0, Lcom/a/b/c/b/a;->a:Lcom/a/b/c/b/h;

    iput-object p3, p0, Lcom/a/b/c/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/a/b/c/b/a;->e:I

    return-void

    :cond_3f
    sget-object v0, Lcom/a/b/e/c/ae;->r:Lcom/a/b/e/c/ae;

    if-eq p4, v0, :cond_47

    sget-object v0, Lcom/a/b/e/c/ae;->m:Lcom/a/b/e/c/ae;

    if-ne p4, v0, :cond_4b

    :cond_47
    const/4 v0, 0x2

    iput v0, p0, Lcom/a/b/c/b/a;->d:I

    goto :goto_34

    :cond_4b
    sget-object v0, Lcom/a/b/e/c/ae;->q:Lcom/a/b/e/c/ae;

    if-eq p4, v0, :cond_53

    sget-object v0, Lcom/a/b/e/c/ae;->o:Lcom/a/b/e/c/ae;

    if-ne p4, v0, :cond_57

    :cond_53
    const/4 v0, 0x4

    iput v0, p0, Lcom/a/b/c/b/a;->d:I

    goto :goto_34

    :cond_57
    sget-object v0, Lcom/a/b/e/c/ae;->p:Lcom/a/b/e/c/ae;

    if-eq p4, v0, :cond_5f

    sget-object v0, Lcom/a/b/e/c/ae;->n:Lcom/a/b/e/c/ae;

    if-ne p4, v0, :cond_64

    :cond_5f
    const/16 v0, 0x8

    iput v0, p0, Lcom/a/b/c/b/a;->d:I

    goto :goto_34

    :cond_64
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

    :goto_21
    if-lt v1, v3, :cond_28

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
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

    goto :goto_21
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

    packed-switch v0, :pswitch_data_8a

    :cond_1b
    :pswitch_1b  #0x3, 0x5, 0x6, 0x7
    iget v0, p0, Lcom/a/b/c/b/a;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    rem-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_27

    invoke-interface {p1, v2}, Lcom/a/b/g/a;->a(I)V

    :cond_27
    return-void

    :pswitch_28  #0x1
    move v1, v2

    :goto_29
    if-ge v1, v3, :cond_1b

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

    goto :goto_29

    :pswitch_41  #0x2
    move v1, v2

    :goto_42
    if-ge v1, v3, :cond_1b

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

    goto :goto_42

    :pswitch_5a  #0x4
    move v1, v2

    :goto_5b
    if-ge v1, v3, :cond_1b

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

    goto :goto_5b

    :pswitch_72  #0x8
    move v1, v2

    :goto_73
    if-ge v1, v3, :cond_1b

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

    goto :goto_73

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_28  #00000001
        :pswitch_41  #00000002
        :pswitch_1b  #00000003
        :pswitch_5a  #00000004
        :pswitch_1b  #00000005
        :pswitch_1b  #00000006
        :pswitch_1b  #00000007
        :pswitch_72  #00000008
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

    :goto_f
    if-lt v1, v3, :cond_16

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
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

    goto :goto_f
.end method
