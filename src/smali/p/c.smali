.class public final Lp/c;
.super Lc/m;
.source "SourceFile"

# interfaces
.implements Lc/d;


# static fields
.field public static a:Lq/a;


# instance fields
.field public b:Z

.field public c:I

.field public d:Lq/a;

.field public e:[Lp/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lq/b;->n:Lq/b;

    sput-object v0, Lp/c;->a:Lq/a;

    return-void
.end method

.method public constructor <init>(Lc/t;)V
    .registers 6

    sget-object v0, Lp/c;->a:Lq/a;

    .line 21
    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object v0, p0, Lp/c;->d:Lq/a;

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v0

    new-array v0, v0, [Lp/b;

    iput-object v0, p0, Lp/c;->e:[Lp/b;

    invoke-virtual {p1}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v0, 0x0

    :goto_14
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lp/c;->e:[Lp/b;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 22
    instance-of v3, v2, Lp/b;

    if-eqz v3, :cond_27

    check-cast v2, Lp/b;

    goto :goto_35

    :cond_27
    if-eqz v2, :cond_34

    new-instance v3, Lp/b;

    invoke-static {v2}, Lc/v;->c(Ljava/lang/Object;)Lc/v;

    move-result-object v2

    invoke-direct {v3, v2}, Lp/b;-><init>(Lc/v;)V

    move-object v2, v3

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    .line 23
    :goto_35
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_3a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 14

    sget-object v0, Lp/c;->a:Lq/a;

    .line 1
    move-object v1, v0

    check-cast v1, Lq/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v2, Lq/d;

    const/16 v3, 0x2c

    invoke-direct {v2, p1, v3}, Lq/d;-><init>(Ljava/lang/String;C)V

    .line 4
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    :goto_14
    invoke-virtual {v2}, Lq/d;->e()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_136

    invoke-virtual {v2}, Lq/d;->f()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const-string v7, "badly formatted directory string"

    const/16 v8, 0x3d

    if-lez v6, :cond_103

    new-instance v6, Lq/d;

    invoke-direct {v6, v3, v5}, Lq/d;-><init>(Ljava/lang/String;C)V

    new-instance v3, Lq/d;

    invoke-virtual {v6}, Lq/d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v8}, Lq/d;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v3}, Lq/d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lq/d;->e()Z

    move-result v9

    if-eqz v9, :cond_fd

    invoke-virtual {v3}, Lq/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lq/b;->q(Ljava/lang/String;)Lc/n;

    move-result-object v5

    invoke-virtual {v6}, Lq/d;->e()Z

    move-result v9

    if-eqz v9, :cond_eb

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    :goto_5f
    invoke-virtual {v9, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v3}, Lq/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lq/d;->e()Z

    move-result v3

    if-eqz v3, :cond_95

    new-instance v3, Lq/d;

    invoke-virtual {v6}, Lq/d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v8}, Lq/d;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v3}, Lq/d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lq/d;->e()Z

    move-result v11

    if-eqz v11, :cond_8f

    invoke-virtual {v3}, Lq/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lq/b;->q(Ljava/lang/String;)Lc/n;

    move-result-object v5

    goto :goto_5f

    :cond_8f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_95
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v5, v3, [Lc/n;

    const/4 v6, 0x0

    :goto_9c
    if-eq v6, v3, :cond_a9

    invoke-virtual {v9, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/n;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    .line 6
    :cond_a9
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_b0
    if-eq v8, v6, :cond_bd

    invoke-virtual {v10, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b0

    .line 7
    :cond_bd
    new-array v8, v6, [Lc/e;

    const/4 v9, 0x0

    :goto_c0
    if-eq v9, v6, :cond_cf

    aget-object v10, v5, v9

    aget-object v11, v7, v9

    invoke-virtual {v1, v10, v11}, Lq/a;->d(Lc/n;Ljava/lang/String;)Lc/e;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_c0

    .line 8
    :cond_cf
    new-array v6, v3, [Lp/a;

    :goto_d1
    if-eq v4, v3, :cond_e1

    new-instance v7, Lp/a;

    aget-object v9, v5, v4

    aget-object v10, v8, v4

    invoke-direct {v7, v9, v10}, Lp/a;-><init>(Lc/n;Lc/e;)V

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d1

    .line 9
    :cond_e1
    new-instance v3, Lp/b;

    invoke-direct {v3, v6}, Lp/b;-><init>([Lp/a;)V

    invoke-virtual {p1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 10
    :cond_eb
    invoke-static {v3}, Lq/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v1, v5, v3}, Lq/a;->d(Lc/n;Ljava/lang/String;)Lc/e;

    move-result-object v3

    .line 12
    new-instance v4, Lp/b;

    invoke-direct {v4, v5, v3}, Lp/b;-><init>(Lc/n;Lc/e;)V

    invoke-virtual {p1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 13
    :cond_fd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_103
    new-instance v4, Lq/d;

    invoke-direct {v4, v3, v8}, Lq/d;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v4}, Lq/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lq/d;->e()Z

    move-result v5

    if-eqz v5, :cond_130

    invoke-virtual {v4}, Lq/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lq/b;->q(Ljava/lang/String;)Lc/n;

    move-result-object v3

    invoke-static {v4}, Lq/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v1, v3, v4}, Lq/a;->d(Lc/n;Ljava/lang/String;)Lc/e;

    move-result-object v4

    .line 15
    new-instance v5, Lp/b;

    invoke-direct {v5, v3, v4}, Lp/b;-><init>(Lc/n;Lc/e;)V

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 16
    :cond_130
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_136
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v3, v2, [Lp/b;

    :goto_13c
    if-eq v4, v2, :cond_149

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/b;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_13c

    :cond_149
    new-instance p1, Lp/c;

    invoke-direct {p1, v1, v3}, Lp/c;-><init>(Lq/a;[Lp/b;)V

    .line 18
    invoke-virtual {p1}, Lp/c;->g()[Lp/b;

    move-result-object p1

    .line 19
    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Lp/c;->e:[Lp/b;

    .line 20
    iput-object v0, p0, Lp/c;->d:Lq/a;

    return-void
.end method

.method public constructor <init>(Lq/a;[Lp/b;)V
    .registers 3

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p2, p0, Lp/c;->e:[Lp/b;

    iput-object p1, p0, Lp/c;->d:Lq/a;

    return-void
.end method

.method public static f(Ljava/lang/Object;)Lp/c;
    .registers 2

    instance-of v0, p0, Lp/c;

    if-eqz v0, :cond_7

    check-cast p0, Lp/c;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lp/c;

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object p0

    invoke-direct {v0, p0}, Lp/c;-><init>(Lc/t;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lp/c;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    instance-of v1, p1, Lc/t;

    if-nez v1, :cond_e

    return v2

    :cond_e
    move-object v1, p1

    check-cast v1, Lc/e;

    invoke-interface {v1}, Lc/e;->l()Lc/s;

    move-result-object v1

    invoke-virtual {p0}, Lp/c;->l()Lc/s;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Lp/c;->d:Lq/a;

    new-instance v1, Lp/c;

    check-cast p1, Lc/e;

    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object p1

    invoke-static {p1}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object p1

    invoke-direct {v1, p1}, Lp/c;-><init>(Lc/t;)V

    invoke-virtual {v0, p0, v1}, Lq/a;->b(Lp/c;Lp/c;)Z

    move-result p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_36

    return p1

    :catch_36
    move-exception p1

    return v2
.end method

.method public final g()[Lp/b;
    .registers 5

    iget-object v0, p0, Lp/c;->e:[Lp/b;

    array-length v1, v0

    new-array v2, v1, [Lp/b;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public final hashCode()I
    .registers 9

    iget-boolean v0, p0, Lp/c;->b:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lp/c;->c:I

    return v0

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp/c;->b:Z

    iget-object v0, p0, Lp/c;->d:Lq/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p0}, Lp/c;->g()[Lp/b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    array-length v4, v0

    if-eq v2, v4, :cond_6d

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lp/b;->d()Z

    move-result v4

    if-eqz v4, :cond_48

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lp/b;->c()[Lp/a;

    move-result-object v4

    const/4 v5, 0x0

    :goto_28
    array-length v6, v4

    if-eq v5, v6, :cond_6a

    aget-object v6, v4, v5

    .line 2
    iget-object v6, v6, Lp/a;->a:Lc/n;

    .line 3
    invoke-virtual {v6}, Lc/n;->hashCode()I

    move-result v6

    aget-object v7, v4, v5

    .line 4
    iget-object v7, v7, Lp/a;->b:Lc/e;

    .line 5
    xor-int/2addr v3, v6

    invoke-static {v7}, Lq/c;->f(Lc/e;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lq/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 6
    :cond_48
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lp/b;->b()Lp/a;

    move-result-object v4

    .line 7
    iget-object v4, v4, Lp/a;->a:Lc/n;

    .line 8
    invoke-virtual {v4}, Lc/n;->hashCode()I

    move-result v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lp/b;->b()Lp/a;

    move-result-object v5

    .line 9
    iget-object v5, v5, Lp/a;->b:Lc/e;

    .line 10
    xor-int/2addr v3, v4

    invoke-static {v5}, Lq/c;->f(Lc/e;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lq/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 11
    :cond_6d
    iput v3, p0, Lp/c;->c:I

    return v3
.end method

.method public final l()Lc/s;
    .registers 3

    new-instance v0, Lc/bc;

    iget-object v1, p0, Lp/c;->e:[Lp/b;

    invoke-direct {v0, v1}, Lc/bc;-><init>([Lc/e;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 13

    iget-object v0, p0, Lp/c;->d:Lq/a;

    check-cast v0, Lq/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lp/c;->g()[Lp/b;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_14
    array-length v7, v2

    if-ge v5, v7, :cond_54

    if-eqz v6, :cond_1b

    const/4 v6, 0x0

    goto :goto_20

    :cond_1b
    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_20
    aget-object v7, v2, v5

    iget-object v8, v0, Lq/b;->p:Ljava/util/Hashtable;

    .line 2
    invoke-virtual {v7}, Lp/b;->d()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-virtual {v7}, Lp/b;->c()[Lp/a;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_30
    array-length v11, v7

    if-eq v9, v11, :cond_51

    if-eqz v10, :cond_37

    const/4 v10, 0x0

    goto :goto_3c

    :cond_37
    const/16 v11, 0x2b

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3c
    aget-object v11, v7, v9

    invoke-static {v1, v11, v8}, Lq/c;->a(Ljava/lang/StringBuffer;Lp/a;Ljava/util/Hashtable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_44
    invoke-virtual {v7}, Lp/b;->b()Lp/a;

    move-result-object v9

    if-eqz v9, :cond_51

    invoke-virtual {v7}, Lp/b;->b()Lp/a;

    move-result-object v7

    invoke-static {v1, v7, v8}, Lq/c;->a(Ljava/lang/StringBuffer;Lp/a;Ljava/util/Hashtable;)V

    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 3
    :cond_54
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
