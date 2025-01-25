.class public final Lcom/a/b/a/a/c;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/a/b/a/b/k;

.field private final d:Lcom/a/b/a/b/h;

.field private final e:Lcom/a/b/a/e/b;


# direct methods
.method public constructor <init>(IILcom/a/b/a/b/k;Lcom/a/b/a/b/h;Lcom/a/b/a/e/b;)V
    .registers 8

    const-string v0, "Code"

    invoke-direct {p0, v0}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    if-gez p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxStack < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-gez p2, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxLocals < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    if-nez p3, :cond_23

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :try_start_23
    invoke-virtual {p4}, Lcom/a/b/a/b/h;->b_()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Lcom/a/b/g/u;

    const-string v1, "catches.isMutable()"

    invoke-direct {v0, v1}, Lcom/a/b/g/u;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_31} :catch_31

    :catch_31
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    :try_start_3a
    invoke-interface {p5}, Lcom/a/b/a/e/b;->b_()Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Lcom/a/b/g/u;

    const-string v1, "attributes.isMutable()"

    invoke-direct {v0, v1}, Lcom/a/b/g/u;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_48} :catch_48

    :catch_48
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    iput p1, p0, Lcom/a/b/a/a/c;->a:I

    iput p2, p0, Lcom/a/b/a/a/c;->b:I

    iput-object p3, p0, Lcom/a/b/a/a/c;->c:Lcom/a/b/a/b/k;

    iput-object p4, p0, Lcom/a/b/a/a/c;->d:Lcom/a/b/a/b/h;

    iput-object p5, p0, Lcom/a/b/a/a/c;->e:Lcom/a/b/a/e/b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/a/a/c;->c:Lcom/a/b/a/b/k;

    invoke-virtual {v0}, Lcom/a/b/a/b/k;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/a/b/a/a/c;->d:Lcom/a/b/a/b/h;

    invoke-virtual {v1}, Lcom/a/b/a/b/h;->a()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/b/a/a/c;->e:Lcom/a/b/a/e/b;

    invoke-interface {v1}, Lcom/a/b/a/e/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/a/c;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/a/c;->b:I

    return v0
.end method

.method public d()Lcom/a/b/a/b/k;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/c;->c:Lcom/a/b/a/b/k;

    return-object v0
.end method

.method public e()Lcom/a/b/a/b/h;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/c;->d:Lcom/a/b/a/b/h;

    return-object v0
.end method

.method public f()Lcom/a/b/a/e/b;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/c;->e:Lcom/a/b/a/e/b;

    return-object v0
.end method
