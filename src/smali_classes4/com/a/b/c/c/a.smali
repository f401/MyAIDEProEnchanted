.class public final Lcom/a/b/c/c/a;
.super Lcom/a/b/c/c/at;


# static fields
.field private static final a:Lcom/a/b/c/c/b;

.field private static e:[I


# instance fields
.field private final b:Lcom/a/b/e/a/a;

.field private c:Lcom/a/b/c/c/bd;

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/c/c/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/c/c/b;-><init>(Lcom/a/b/c/c/b;)V

    sput-object v0, Lcom/a/b/c/c/a;->a:Lcom/a/b/c/c/b;

    return-void
.end method

.method public constructor <init>(Lcom/a/b/e/a/a;Lcom/a/b/c/c/t;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p1, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    iput-object v2, p0, Lcom/a/b/c/c/a;->c:Lcom/a/b/c/c/bd;

    iput-object v2, p0, Lcom/a/b/c/c/a;->d:[B

    invoke-virtual {p0, p2}, Lcom/a/b/c/c/a;->a(Lcom/a/b/c/c/t;)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/c/c/a;)Lcom/a/b/c/c/bd;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/a;->c:Lcom/a/b/c/c/bd;

    return-object v0
.end method

.method public static a([Lcom/a/b/c/c/a;)V
    .registers 2

    sget-object v0, Lcom/a/b/c/c/a;->a:Lcom/a/b/c/c/b;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic c()[I
    .registers 3

    sget-object v0, Lcom/a/b/c/c/a;->e:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/a/b/e/a/b;->values()[Lcom/a/b/e/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/a/b/e/a/b;->b:Lcom/a/b/e/a/b;

    invoke-virtual {v1}, Lcom/a/b/e/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_33

    :goto_15
    :try_start_15
    sget-object v1, Lcom/a/b/e/a/b;->d:Lcom/a/b/e/a/b;

    invoke-virtual {v1}, Lcom/a/b/e/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_35

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/a/b/e/a/b;->a:Lcom/a/b/e/a/b;

    invoke-virtual {v1}, Lcom/a/b/e/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_37

    :goto_27
    :try_start_27
    sget-object v1, Lcom/a/b/e/a/b;->c:Lcom/a/b/e/a/b;

    invoke-virtual {v1}, Lcom/a/b/e/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_39

    :goto_30
    sput-object v0, Lcom/a/b/c/c/a;->e:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_15

    :catch_35
    move-exception v1

    goto :goto_1e

    :catch_37
    move-exception v1

    goto :goto_27

    :catch_39
    move-exception v1

    goto :goto_30
.end method


# virtual methods
.method protected a(Lcom/a/b/c/c/at;)I
    .registers 4

    check-cast p1, Lcom/a/b/c/c/a;

    iget-object v0, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    iget-object v1, p1, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    invoke-virtual {v0, v1}, Lcom/a/b/e/a/a;->a(Lcom/a/b/e/a/a;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->r:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method protected a(Lcom/a/b/c/c/ax;I)V
    .registers 7

    new-instance v0, Lcom/a/b/g/h;

    invoke-direct {v0}, Lcom/a/b/g/h;-><init>()V

    new-instance v1, Lcom/a/b/c/c/bi;

    invoke-virtual {p1}, Lcom/a/b/c/c/ax;->f()Lcom/a/b/c/c/t;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/b/c/c/bi;-><init>(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    iget-object v2, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/e/a/a;Z)V

    invoke-virtual {v0}, Lcom/a/b/g/h;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/a;->d:[B

    iget-object v0, p0, Lcom/a/b/c/c/a;->d:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/a/b/c/c/a;->a(I)V

    return-void
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    invoke-virtual {v1}, Lcom/a/b/e/a/a;->b()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/be;->a(Lcom/a/b/e/c/ae;)Lcom/a/b/c/c/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/a;->c:Lcom/a/b/c/c/bd;

    iget-object v0, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    invoke-static {p1, v0}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/c/c/t;Lcom/a/b/e/a/a;)V

    return-void
.end method

.method public a(Lcom/a/b/g/a;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    invoke-virtual {v1}, Lcom/a/b/e/a/a;->e()Lcom/a/b/e/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    invoke-virtual {v1}, Lcom/a/b/e/a/a;->b()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    invoke-virtual {v0}, Lcom/a/b/e/a/a;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5a

    return-void

    :cond_5a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/a/e;

    invoke-virtual {v0}, Lcom/a/b/e/a/e;->a()Lcom/a/b/e/c/ad;

    move-result-object v2

    invoke-virtual {v0}, Lcom/a/b/e/a/e;->b()Lcom/a/b/e/c/a;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/a/b/c/c/bi;->b(Lcom/a/b/e/c/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    goto :goto_53
.end method

.method protected a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    invoke-virtual {v1}, Lcom/a/b/e/a/a;->e()Lcom/a/b/e/a/b;

    move-result-object v1

    if-eqz v0, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " annotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  visibility: VISBILITY_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_3a
    invoke-static {}, Lcom/a/b/c/c/a;->c()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/a/b/e/a/b;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_6e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4f  #0x2
    invoke-interface {p2, v5}, Lcom/a/b/g/a;->a(I)V

    :goto_52
    if-eqz v0, :cond_68

    new-instance v0, Lcom/a/b/c/c/bi;

    invoke-direct {v0, p1, p2}, Lcom/a/b/c/c/bi;-><init>(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    iget-object v1, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    invoke-virtual {v0, v1, v4}, Lcom/a/b/c/c/bi;->a(Lcom/a/b/e/a/a;Z)V

    :goto_5e
    return-void

    :pswitch_5f  #0x1
    invoke-interface {p2, v4}, Lcom/a/b/g/a;->a(I)V

    goto :goto_52

    :pswitch_63  #0x3
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lcom/a/b/g/a;->a(I)V

    goto :goto_52

    :cond_68
    iget-object v0, p0, Lcom/a/b/c/c/a;->d:[B

    invoke-interface {p2, v0}, Lcom/a/b/g/a;->a([B)V

    goto :goto_5e

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5f  #00000001
        :pswitch_4f  #00000002
        :pswitch_63  #00000003
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    invoke-virtual {v0}, Lcom/a/b/e/a/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/a;->b:Lcom/a/b/e/a/a;

    invoke-virtual {v0}, Lcom/a/b/e/a/a;->hashCode()I

    move-result v0

    return v0
.end method
