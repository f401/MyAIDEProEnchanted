.class public final Lcom/a/b/e/b/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/e/b/d;

.field private final b:I

.field private c:[Lcom/a/b/g/n;

.field private d:Lcom/a/b/g/n;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/d;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "blocks == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-gez p2, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstLabel < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iput-object p1, p0, Lcom/a/b/e/b/ab;->a:Lcom/a/b/e/b/d;

    iput p2, p0, Lcom/a/b/e/b/ab;->b:I

    iput-object v0, p0, Lcom/a/b/e/b/ab;->c:[Lcom/a/b/g/n;

    iput-object v0, p0, Lcom/a/b/e/b/ab;->d:Lcom/a/b/g/n;

    return-void
.end method

.method private c()V
    .registers 14

    const/16 v12, 0xa

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/e/b/ab;->a:Lcom/a/b/e/b/d;

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->j()I

    move-result v4

    new-array v5, v4, [Lcom/a/b/g/n;

    new-instance v6, Lcom/a/b/g/n;

    invoke-direct {v6, v12}, Lcom/a/b/g/n;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/e/b/ab;->a:Lcom/a/b/e/b/d;

    invoke-virtual {v0}, Lcom/a/b/e/b/d;->d_()I

    move-result v7

    move v3, v2

    :goto_17
    if-lt v3, v7, :cond_32

    :goto_19
    if-lt v2, v4, :cond_66

    invoke-virtual {v6}, Lcom/a/b/g/n;->g()V

    invoke-virtual {v6}, Lcom/a/b/g/n;->c_()V

    iget v0, p0, Lcom/a/b/e/b/ab;->b:I

    aget-object v0, v5, v0

    if-nez v0, :cond_2d

    iget v0, p0, Lcom/a/b/e/b/ab;->b:I

    sget-object v1, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    aput-object v1, v5, v0

    :cond_2d
    iput-object v5, p0, Lcom/a/b/e/b/ab;->c:[Lcom/a/b/g/n;

    iput-object v6, p0, Lcom/a/b/e/b/ab;->d:Lcom/a/b/g/n;

    return-void

    :cond_32
    iget-object v0, p0, Lcom/a/b/e/b/ab;->a:Lcom/a/b/e/b/d;

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/d;->a(I)Lcom/a/b/e/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->a()I

    move-result v8

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/a/b/g/n;->b()I

    move-result v10

    if-nez v10, :cond_4d

    invoke-virtual {v6, v8}, Lcom/a/b/g/n;->c(I)V

    :cond_49
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_17

    :cond_4d
    move v1, v2

    :goto_4e
    if-ge v1, v10, :cond_49

    invoke-virtual {v9, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v11

    aget-object v0, v5, v11

    if-nez v0, :cond_5f

    new-instance v0, Lcom/a/b/g/n;

    invoke-direct {v0, v12}, Lcom/a/b/g/n;-><init>(I)V

    aput-object v0, v5, v11

    :cond_5f
    invoke-virtual {v0, v8}, Lcom/a/b/g/n;->c(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4e

    :cond_66
    aget-object v0, v5, v2

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Lcom/a/b/g/n;->g()V

    invoke-virtual {v0}, Lcom/a/b/g/n;->c_()V

    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method


# virtual methods
.method public a()Lcom/a/b/e/b/d;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/ab;->a:Lcom/a/b/e/b/d;

    return-object v0
.end method

.method public a(I)Lcom/a/b/g/n;
    .registers 5

    iget-object v0, p0, Lcom/a/b/e/b/ab;->d:Lcom/a/b/g/n;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/a/b/e/b/ab;->c()V

    :cond_7
    iget-object v0, p0, Lcom/a/b/e/b/ab;->c:[Lcom/a/b/g/n;

    aget-object v0, v0, p1

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such block: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/ab;->b:I

    return v0
.end method
