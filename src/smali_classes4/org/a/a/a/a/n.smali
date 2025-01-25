.class public abstract Lorg/a/a/a/a/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;


# instance fields
.field public b:Lorg/a/a/a/a/a;

.field public c:I

.field public d:I

.field public e:Z

.field protected final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BASIC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RULE_START"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "BLOCK_START"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PLUS_BLOCK_START"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STAR_BLOCK_START"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TOKEN_START"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RULE_STOP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BLOCK_END"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STAR_LOOP_BACK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "STAR_LOOP_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PLUS_LOOP_BACK"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LOOP_END"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/a/n;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/a/n;->b:Lorg/a/a/a/a/a;

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a/n;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/a/a/n;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/a/a/n;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lorg/a/a/a/a/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lorg/a/a/a/a/bl;
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/a/n;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/bl;

    return-object v0
.end method

.method public a(ILorg/a/a/a/a/bl;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/a/a/a/a/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p2}, Lorg/a/a/a/a/bl;->b()Z

    move-result v0

    iput-boolean v0, p0, Lorg/a/a/a/a/n;->e:Z

    :cond_10
    :goto_10
    iget-object v0, p0, Lorg/a/a/a/a/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_45

    move v0, v1

    :goto_1d
    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/a/a/a/a/n;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_24
    return-void

    :cond_25
    iget-boolean v0, p0, Lorg/a/a/a/a/n;->e:Z

    invoke-virtual {p2}, Lorg/a/a/a/a/bl;->b()Z

    move-result v3

    if-eq v0, v3, :cond_10

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "ATN state %d has both epsilon and non-epsilon transitions.\n"

    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p0, Lorg/a/a/a/a/n;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iput-boolean v1, p0, Lorg/a/a/a/a/n;->e:Z

    goto :goto_10

    :cond_45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/bl;

    iget-object v4, v0, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    iget v4, v4, Lorg/a/a/a/a/n;->c:I

    iget-object v5, p2, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    iget v5, v5, Lorg/a/a/a/a/n;->c:I

    if-ne v4, v5, :cond_16

    invoke-virtual {v0}, Lorg/a/a/a/a/bl;->c()Lorg/a/a/a/c/j;

    move-result-object v4

    if-eqz v4, :cond_71

    invoke-virtual {p2}, Lorg/a/a/a/a/bl;->c()Lorg/a/a/a/c/j;

    move-result-object v4

    if-eqz v4, :cond_71

    invoke-virtual {v0}, Lorg/a/a/a/a/bl;->c()Lorg/a/a/a/c/j;

    move-result-object v4

    invoke-virtual {p2}, Lorg/a/a/a/a/bl;->c()Lorg/a/a/a/c/j;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/a/a/a/c/j;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    move v0, v2

    goto :goto_1d

    :cond_71
    invoke-virtual {v0}, Lorg/a/a/a/a/bl;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lorg/a/a/a/a/bl;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_1d
.end method

.method public a(Lorg/a/a/a/a/bl;)V
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/a/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/a/a/a/a/n;->a(ILorg/a/a/a/a/bl;)V

    return-void
.end method

.method public b(I)Lorg/a/a/a/a/bl;
    .registers 3

    iget-object v0, p0, Lorg/a/a/a/a/n;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/bl;

    return-object v0
.end method

.method public b(ILorg/a/a/a/a/bl;)V
    .registers 4

    iget-object v0, p0, Lorg/a/a/a/a/n;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lorg/a/a/a/a/n;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/a/a/a/a/n;

    if-eqz v1, :cond_e

    iget v1, p0, Lorg/a/a/a/a/n;->c:I

    check-cast p1, Lorg/a/a/a/a/n;

    iget v2, p1, Lorg/a/a/a/a/n;->c:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/a/n;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lorg/a/a/a/a/n;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
