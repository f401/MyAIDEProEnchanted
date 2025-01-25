.class public Lcom/a/b/a/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/a/b/n;


# instance fields
.field private final a:Lcom/a/b/g/e;

.field private final b:Lcom/a/b/a/e/j;


# direct methods
.method public constructor <init>(Lcom/a/b/g/e;Lcom/a/b/a/e/j;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "observer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    iput-object p2, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    return-void
.end method

.method private a(IIIJ)V
    .registers 12

    const/4 v2, 0x1

    if-ne p3, v2, :cond_2e

    const-string v0, " // "

    move-object v1, v0

    :goto_6
    if-ne p3, v2, :cond_32

    long-to-int v0, p4

    invoke-static {v0}, Lcom/a/b/g/k;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    iget-object v2, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v3, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, p2, p3, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    return-void

    :cond_2e
    const-string v0, " #"

    move-object v1, v0

    goto :goto_6

    :cond_32
    invoke-static {p4, p5}, Lcom/a/b/g/k;->b(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method private b(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    invoke-virtual {v0, p1}, Lcom/a/b/g/e;->e(I)I

    move-result v1

    invoke-static {v1}, Lcom/a/b/a/b/j;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc4

    if-ne v1, v2, :cond_31

    iget-object v1, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/a/b/g/e;->e(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/a/b/a/b/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(IIII)V
    .registers 11

    const/4 v2, 0x1

    if-ne p3, v2, :cond_45

    const-string v0, " // "

    :goto_5
    iget-object v1, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    invoke-virtual {v1, p2}, Lcom/a/b/g/e;->e(I)I

    move-result v1

    if-eq p3, v2, :cond_11

    const/16 v2, 0x10

    if-ne v1, v2, :cond_48

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/a/b/g/k;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_24
    iget-object v2, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v3, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, p2, p3, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    return-void

    :cond_45
    const-string v0, " "

    goto :goto_5

    :cond_48
    const/16 v2, 0x11

    if-ne v1, v2, :cond_60

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/a/b/g/k;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/a/b/g/k;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_24
.end method

.method private b(IIIJ)V
    .registers 12

    const/4 v0, 0x1

    if-eq p3, v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p5}, Lcom/a/b/g/k;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    iget-object v1, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v2, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " // "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p2, p3, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    return-void

    :cond_41
    const-string v0, ""

    goto :goto_16
.end method

.method private c(IIII)V
    .registers 10

    const/4 v0, 0x1

    if-eq p3, v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    iget-object v1, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v2, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " // "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p2, p3, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    return-void

    :cond_41
    const-string v0, ""

    goto :goto_16
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(III)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v1, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    invoke-direct {p0, p2}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    return-void
.end method

.method public a(IIII)V
    .registers 10

    const/4 v0, 0x3

    if-gt p3, v0, :cond_2a

    invoke-static {p4}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iget-object v1, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v2, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p2, p3, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    return-void

    :cond_2a
    invoke-static {p4}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public a(IIIILcom/a/b/e/d/c;I)V
    .registers 15

    const/4 v4, 0x3

    const/4 v0, 0x1

    if-gt p3, v4, :cond_72

    invoke-static {p4}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_9
    if-ne p3, v0, :cond_78

    :goto_b
    const-string v1, ""

    const/16 v2, 0x84

    if-ne p1, v2, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, ", #"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gt p3, v4, :cond_7a

    invoke-static {p6}, Lcom/a/b/g/k;->i(I)Ljava/lang/String;

    move-result-object v1

    :goto_1e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_26
    const-string v2, ""

    invoke-virtual {p5}, Lcom/a/b/e/d/c;->l()Z

    move-result v4

    if-eqz v4, :cond_45

    if-eqz v0, :cond_7f

    const-string v2, ","

    :goto_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " category-2"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_45
    iget-object v4, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v5, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_82

    const-string v0, " // "

    :goto_5a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, p2, p3, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    return-void

    :cond_72
    invoke-static {p4}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_9

    :cond_78
    const/4 v0, 0x0

    goto :goto_b

    :cond_7a
    invoke-static {p6}, Lcom/a/b/g/k;->h(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_7f
    const-string v2, " //"

    goto :goto_32

    :cond_82
    const-string v0, " "

    goto :goto_5a
.end method

.method public a(IIILcom/a/b/a/b/ao;I)V
    .registers 11

    const/16 v4, 0xa

    invoke-virtual {p4}, Lcom/a/b/a/b/ao;->a()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x14

    add-int/lit8 v0, v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, p2}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " // padding: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_32
    if-lt v0, v1, :cond_50

    const-string v0, "  default: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/a/b/a/b/ao;->b()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v1, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    return-void

    :cond_50
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Lcom/a/b/a/b/ao;->a(I)I

    move-result v3

    invoke-static {v3}, Lcom/a/b/g/k;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Lcom/a/b/a/b/ao;->b(I)I

    move-result v3

    invoke-static {v3}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method public a(IIILcom/a/b/e/c/a;I)V
    .registers 12

    instance-of v0, p4, Lcom/a/b/e/c/s;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/a/b/a/d/d;->a(IIILcom/a/b/e/d/c;)V

    :goto_8
    return-void

    :cond_9
    instance-of v0, p4, Lcom/a/b/e/c/p;

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/a/b/a/d/d;->b(IIII)V

    goto :goto_8

    :cond_11
    instance-of v0, p4, Lcom/a/b/e/c/w;

    if-eqz v0, :cond_23

    check-cast p4, Lcom/a/b/e/c/w;

    invoke-virtual {p4}, Lcom/a/b/e/c/w;->n()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/b/a/d/d;->a(IIIJ)V

    goto :goto_8

    :cond_23
    instance-of v0, p4, Lcom/a/b/e/c/o;

    if-eqz v0, :cond_31

    check-cast p4, Lcom/a/b/e/c/o;

    invoke-virtual {p4}, Lcom/a/b/e/c/o;->j()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/a/b/a/d/d;->c(IIII)V

    goto :goto_8

    :cond_31
    instance-of v0, p4, Lcom/a/b/e/c/l;

    if-eqz v0, :cond_43

    check-cast p4, Lcom/a/b/e/c/l;

    invoke-virtual {p4}, Lcom/a/b/e/c/l;->k()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/b/a/d/d;->b(IIIJ)V

    goto :goto_8

    :cond_43
    const-string v0, ""

    if-eqz p5, :cond_62

    const/16 v0, 0xc5

    if-ne p1, v0, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_62
    :goto_62
    iget-object v1, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v2, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p2, p3, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    goto :goto_8

    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_62
.end method

.method public a(IIILcom/a/b/e/d/c;)V
    .registers 8

    iget-object v0, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v1, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    invoke-direct {p0, p2}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    return-void
.end method

.method public a(IILcom/a/b/e/c/ae;Ljava/util/ArrayList;)V
    .registers 11

    const/4 v0, 0x1

    if-ne p2, v0, :cond_32

    const-string v0, " // "

    :goto_5
    invoke-virtual {p3}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/d/d;->b:Lcom/a/b/a/e/j;

    iget-object v3, p0, Lcom/a/b/a/d/d;->a:Lcom/a/b/g/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/a/b/a/d/d;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, p1, p2, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    return-void

    :cond_32
    const-string v0, " "

    goto :goto_5
.end method
