.class public abstract Lcom/a/b/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/a/b/x;


# instance fields
.field private final a:Lcom/a/b/e/d/a;

.field private b:[Lcom/a/b/e/d/d;

.field private c:I

.field private d:Lcom/a/b/e/d/c;

.field private e:I

.field private f:Lcom/a/b/e/c/a;

.field private g:I

.field private h:Lcom/a/b/a/b/ao;

.field private i:Ljava/util/ArrayList;

.field private j:I

.field private k:Z

.field private l:Lcom/a/b/e/b/u;

.field private m:[Lcom/a/b/e/d/d;

.field private n:I


# direct methods
.method public constructor <init>(Lcom/a/b/e/d/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/a/b/a/b/a;->a:Lcom/a/b/e/d/a;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/a/b/e/d/d;

    iput-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/a/b/e/d/d;

    iput-object v0, p0, Lcom/a/b/a/b/a;->m:[Lcom/a/b/e/d/d;

    invoke-virtual {p0}, Lcom/a/b/a/b/a;->b()V

    return-void
.end method

.method public static a(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)V
    .registers 5

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local variable type mismatch: attempt to set or access a value of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/a/b/e/d/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " using a local variable of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/a/b/e/d/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". This is symptomatic of .class transformation tools "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "that ignore local variable information."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/a/b/e/d/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/a;->a:Lcom/a/b/e/d/a;

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/a/b/a/b/a;->e:I

    return-void
.end method

.method public final a(ILcom/a/b/e/d/c;Lcom/a/b/e/b/o;)V
    .registers 5

    invoke-static {p1, p2, p3}, Lcom/a/b/e/b/u;->b(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/b/a;->l:Lcom/a/b/e/b/u;

    return-void
.end method

.method public final a(Lcom/a/b/a/b/ao;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cases == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/a/b/a/b/a;->h:Lcom/a/b/a/b/ao;

    return-void
.end method

.method protected final a(Lcom/a/b/a/b/q;)V
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/a/b/a/b/a;->n:I

    if-gez v1, :cond_d

    new-instance v0, Lcom/a/b/a/b/al;

    const-string v1, "results never set"

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v1, p0, Lcom/a/b/a/b/a;->n:I

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v1, p0, Lcom/a/b/a/b/a;->l:Lcom/a/b/e/b/u;

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Lcom/a/b/a/b/q;->c()Lcom/a/b/a/b/v;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/a/b/a/b/a;->b(Z)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/b/a/b/v;->a(Lcom/a/b/e/b/u;)V

    goto :goto_11

    :cond_22
    invoke-virtual {p1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v1

    :goto_26
    iget v2, p0, Lcom/a/b/a/b/a;->n:I

    if-ge v0, v2, :cond_11

    iget-boolean v2, p0, Lcom/a/b/a/b/a;->k:Z

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/a/b/a/b/p;->d()V

    :cond_31
    iget-object v2, p0, Lcom/a/b/a/b/a;->m:[Lcom/a/b/e/d/d;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/a/b/a/b/p;->a(Lcom/a/b/e/d/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public final a(Lcom/a/b/a/b/q;I)V
    .registers 7

    invoke-virtual {p1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/b/a/b/a;->b()V

    iget-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    array-length v0, v0

    if-le p2, v0, :cond_12

    add-int/lit8 v0, p2, 0xa

    new-array v0, v0, [Lcom/a/b/e/d/d;

    iput-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    :cond_12
    add-int/lit8 v0, p2, -0x1

    :goto_14
    if-gez v0, :cond_19

    iput p2, p0, Lcom/a/b/a/b/a;->c:I

    return-void

    :cond_19
    iget-object v2, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    invoke-virtual {v1}, Lcom/a/b/a/b/p;->e()Lcom/a/b/e/d/d;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_14
.end method

.method public a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/a;)V
    .registers 9

    invoke-virtual {p2}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/b;->d_()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/a/b/a/b/a;->a(Lcom/a/b/a/b/q;I)V

    const/4 v0, 0x0

    :goto_c
    if-lt v0, v2, :cond_f

    return-void

    :cond_f
    invoke-virtual {v1, v0}, Lcom/a/b/e/d/b;->a(I)Lcom/a/b/e/d/c;

    move-result-object v3

    iget-object v4, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/a/b/a/b/y;->b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z

    move-result v3

    if-nez v3, :cond_5d

    new-instance v3, Lcom/a/b/a/b/al;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "at stack depth "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expected type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/a/b/e/d/b;->a(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v0, v2, v0

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public final a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/a/b/a/b/a;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v0, v0, v3

    invoke-static {p2, v0}, Lcom/a/b/a/b/y;->b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z

    move-result v0

    if-nez v0, :cond_3e

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    return-void
.end method

.method public final a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/a/b/a/b/a;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v0, v0, v3

    invoke-static {p2, v0}, Lcom/a/b/a/b/y;->b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z

    move-result v0

    if-nez v0, :cond_3f

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v0, v0, v4

    invoke-static {p3, v0}, Lcom/a/b/a/b/y;->b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z

    move-result v0

    if-nez v0, :cond_78

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v2, v2, v4

    invoke-interface {v2}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    return-void
.end method

.method public final a(Lcom/a/b/a/b/q;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)V
    .registers 11

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/a/b/a/b/a;->a(Lcom/a/b/a/b/q;I)V

    iget-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v0, v0, v3

    invoke-static {p2, v0}, Lcom/a/b/a/b/y;->b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    iget-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v0, v0, v4

    invoke-static {p3, v0}, Lcom/a/b/a/b/y;->b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z

    move-result v0

    if-nez v0, :cond_79

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v2, v2, v4

    invoke-interface {v2}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    iget-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v0, v0, v5

    invoke-static {p4, v0}, Lcom/a/b/a/b/y;->b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z

    move-result v0

    if-nez v0, :cond_b2

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b2
    return-void
.end method

.method public final a(Lcom/a/b/e/c/a;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/a/b/a/b/a;->f:Lcom/a/b/e/c/a;

    return-void
.end method

.method public final a(Lcom/a/b/e/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/a/b/a;->d:Lcom/a/b/e/d/c;

    return-void
.end method

.method protected final a(Lcom/a/b/e/d/d;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/a/b/a;->m:[Lcom/a/b/e/d/d;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/b/a/b/a;->n:I

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/a/b/a;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/a/b/a/b/a;->k:Z

    return-void
.end method

.method protected final b(Z)Lcom/a/b/e/b/u;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/b/a/b/a;->l:Lcom/a/b/e/b/u;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget v1, p0, Lcom/a/b/a/b/a;->n:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "local target with "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/a/b/a/b/a;->n:I

    if-nez v0, :cond_2c

    const-string v0, "no"

    :goto_18
    new-instance v2, Lcom/a/b/a/b/al;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    const-string v0, "multiple"

    goto :goto_18

    :cond_2f
    iget-object v1, p0, Lcom/a/b/a/b/a;->m:[Lcom/a/b/e/d/d;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/a/b/a;->l:Lcom/a/b/e/b/u;

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v3

    if-ne v2, v3, :cond_4c

    if-eqz p1, :cond_49

    iget-object v0, p0, Lcom/a/b/a/b/a;->l:Lcom/a/b/e/b/u;

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v0

    goto :goto_5

    :cond_49
    iget-object v0, p0, Lcom/a/b/a/b/a;->l:Lcom/a/b/e/b/u;

    goto :goto_5

    :cond_4c
    invoke-static {v3, v2}, Lcom/a/b/a/b/y;->b(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)Z

    move-result v4

    if-nez v4, :cond_56

    invoke-static {v2, v3}, Lcom/a/b/a/b/a;->a(Lcom/a/b/e/d/d;Lcom/a/b/e/d/d;)V

    goto :goto_5

    :cond_56
    sget-object v0, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    if-ne v3, v0, :cond_62

    iget-object v0, p0, Lcom/a/b/a/b/a;->l:Lcom/a/b/e/b/u;

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/u;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/b/a;->l:Lcom/a/b/e/b/u;

    :cond_62
    iget-object v0, p0, Lcom/a/b/a/b/a;->l:Lcom/a/b/e/b/u;

    goto :goto_5
.end method

.method public final b()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v1, p0, Lcom/a/b/a/b/a;->c:I

    iput-object v0, p0, Lcom/a/b/a/b/a;->d:Lcom/a/b/e/d/c;

    iput v1, p0, Lcom/a/b/a/b/a;->e:I

    iput-object v0, p0, Lcom/a/b/a/b/a;->f:Lcom/a/b/e/c/a;

    iput v1, p0, Lcom/a/b/a/b/a;->g:I

    iput-object v0, p0, Lcom/a/b/a/b/a;->h:Lcom/a/b/a/b/ao;

    iput-object v0, p0, Lcom/a/b/a/b/a;->i:Ljava/util/ArrayList;

    iput v2, p0, Lcom/a/b/a/b/a;->j:I

    iput-boolean v1, p0, Lcom/a/b/a/b/a;->k:Z

    iput-object v0, p0, Lcom/a/b/a/b/a;->l:Lcom/a/b/e/b/u;

    iput v2, p0, Lcom/a/b/a/b/a;->n:I

    return-void
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/a/b/a/b/a;->g:I

    return-void
.end method

.method public final b(Lcom/a/b/a/b/q;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/a/b/a;->b()V

    iget-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/a/b/q;->c()Lcom/a/b/a/b/v;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/a/b/a/b/v;->a(I)Lcom/a/b/e/d/d;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/b/a/b/a;->c:I

    iput p2, p0, Lcom/a/b/a/b/a;->j:I

    return-void
.end method

.method protected final b(Lcom/a/b/e/d/d;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/a/b/a/b/a;->m:[Lcom/a/b/e/d/d;

    iget v1, p0, Lcom/a/b/a/b/a;->n:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/a/b/a/b/a;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/b/a/b/a;->n:I

    return-void
.end method

.method protected final c()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/a;->c:I

    return v0
.end method

.method protected final c(I)Lcom/a/b/e/d/d;
    .registers 4

    iget v0, p0, Lcom/a/b/a/b/a;->c:I

    if-lt p1, v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= argCount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/a/b/a/b/a;->b:[Lcom/a/b/e/d/d;

    aget-object v0, v0, p1
    :try_end_10
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final d()Lcom/a/b/e/d/c;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/a;->d:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method protected final d(I)Lcom/a/b/e/d/d;
    .registers 4

    iget v0, p0, Lcom/a/b/a/b/a;->n:I

    if-lt p1, v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= resultCount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/a/b/a/b/a;->m:[Lcom/a/b/e/d/d;

    aget-object v0, v0, p1
    :try_end_10
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final e()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/a;->e:I

    return v0
.end method

.method protected final f()Lcom/a/b/e/c/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/a;->f:Lcom/a/b/e/c/a;

    return-object v0
.end method

.method protected final g()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/a;->g:I

    return v0
.end method

.method protected final h()Lcom/a/b/a/b/ao;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/a;->h:Lcom/a/b/a/b/ao;

    return-object v0
.end method

.method protected final i()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/a;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final j()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/a;->j:I

    return v0
.end method

.method protected final k()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/a/b/a;->n:I

    return-void
.end method

.method protected final l()I
    .registers 3

    iget v0, p0, Lcom/a/b/a/b/a;->n:I

    if-gez v0, :cond_c

    new-instance v0, Lcom/a/b/a/b/al;

    const-string v1, "results never set"

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/a/b/a/b/a;->n:I

    return v0
.end method
