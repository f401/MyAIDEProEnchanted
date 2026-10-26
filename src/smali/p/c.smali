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
    .locals 1

    sget-object v0, Lq/b;->n:Lq/b;

    sput-object v0, Lp/c;->a:Lq/a;

    return-void
.end method

.method public constructor <init>(Lc/t;)V
    .locals 5

    sget-object v0, Lp/c;->a:Lq/a;

    .line 21
    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object v0, p0, Lp/c;->d:Lq/a;

    invoke-virtual {p1}, Lc/t;->p()I

    move-result v0

    new-array v0, v0, [Lp/b;

    iput-object v0, p0, Lp/c;->e:[Lp/b;

    invoke-virtual {p1}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lp/c;->e:[Lp/b;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 22
    instance-of v1, v0, Lp/b;

    if-eqz v1, :cond_0

    check-cast v0, Lp/b;

    .line 23
    :goto_1
    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 22
    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lp/b;

    invoke-static {v0}, Lc/v;->c(Ljava/lang/Object;)Lc/v;

    move-result-object v0

    invoke-direct {v1, v0}, Lp/b;-><init>(Lc/v;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 23
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13

    sget-object v1, Lp/c;->a:Lq/a;

    move-object v0, v1

    .line 1
    check-cast v0, Lq/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v5, Lq/d;

    const/16 v2, 0x2c

    invoke-direct {v5, p1, v2}, Lq/d;-><init>(Ljava/lang/String;C)V

    .line 4
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v5}, Lq/d;->e()Z

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    invoke-virtual {v5}, Lq/d;->f()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_8

    new-instance v7, Lq/d;

    const/16 v3, 0x2b

    invoke-direct {v7, v2, v3}, Lq/d;-><init>(Ljava/lang/String;C)V

    new-instance v2, Lq/d;

    invoke-virtual {v7}, Lq/d;->f()Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x3d

    invoke-direct {v2, v3, v8}, Lq/d;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v2}, Lq/d;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lq/d;->e()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lq/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lq/b;->q(Ljava/lang/String;)Lc/n;

    move-result-object v2

    invoke-virtual {v7}, Lq/d;->e()Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    :goto_1
    invoke-virtual {v8, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v3}, Lq/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lq/d;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lq/d;

    invoke-virtual {v7}, Lq/d;->f()Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x3d

    invoke-direct {v2, v3, v10}, Lq/d;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v2}, Lq/d;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lq/d;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lq/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lq/b;->q(Ljava/lang/String;)Lc/n;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v10, v7, [Lc/n;

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-eq v3, v7, :cond_2

    invoke-virtual {v8, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/n;

    aput-object v2, v10, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v11, v8, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-eq v3, v8, :cond_3

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v11, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 7
    :cond_3
    new-array v3, v8, [Lc/e;

    const/4 v2, 0x0

    :goto_4
    if-eq v2, v8, :cond_4

    aget-object v9, v10, v2

    aget-object v12, v11, v2

    invoke-virtual {v0, v9, v12}, Lq/a;->d(Lc/n;Ljava/lang/String;)Lc/e;

    move-result-object v9

    aput-object v9, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 8
    :cond_4
    new-array v8, v7, [Lp/a;

    move v2, v4

    :goto_5
    if-eq v2, v7, :cond_5

    new-instance v4, Lp/a;

    aget-object v9, v10, v2

    aget-object v11, v3, v2

    invoke-direct {v4, v9, v11}, Lp/a;-><init>(Lc/n;Lc/e;)V

    aput-object v4, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 9
    :cond_5
    new-instance v2, Lp/b;

    invoke-direct {v2, v8}, Lp/b;-><init>([Lp/a;)V

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 10
    :cond_6
    invoke-static {v3}, Lq/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v2, v3}, Lq/a;->d(Lc/n;Ljava/lang/String;)Lc/e;

    move-result-object v3

    .line 12
    new-instance v4, Lp/b;

    invoke-direct {v4, v2, v3}, Lp/b;-><init>(Lc/n;Lc/e;)V

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 13
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v3, Lq/d;

    const/16 v4, 0x3d

    invoke-direct {v3, v2, v4}, Lq/d;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v3}, Lq/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lq/d;->e()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lq/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lq/b;->q(Ljava/lang/String;)Lc/n;

    move-result-object v2

    invoke-static {v3}, Lq/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v2, v3}, Lq/a;->d(Lc/n;Ljava/lang/String;)Lc/e;

    move-result-object v3

    .line 15
    new-instance v4, Lp/b;

    invoke-direct {v4, v2, v3}, Lp/b;-><init>(Lc/n;Lc/e;)V

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 16
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badly formatted directory string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_a
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v5, v4, [Lp/b;

    move v3, v2

    :goto_6
    if-eq v3, v4, :cond_b

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/b;

    aput-object v2, v5, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_b
    new-instance v2, Lp/c;

    invoke-direct {v2, v0, v5}, Lp/c;-><init>(Lq/a;[Lp/b;)V

    .line 18
    invoke-virtual {v2}, Lp/c;->g()[Lp/b;

    move-result-object v0

    .line 19
    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object v0, p0, Lp/c;->e:[Lp/b;

    .line 20
    iput-object v1, p0, Lp/c;->d:Lq/a;

    return-void
.end method

.method public constructor <init>(Lq/a;[Lp/b;)V
    .locals 0

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p2, p0, Lp/c;->e:[Lp/b;

    iput-object p1, p0, Lp/c;->d:Lq/a;

    return-void
.end method

.method public static f(Ljava/lang/Object;)Lp/c;
    .locals 2

    instance-of v0, p0, Lp/c;

    if-eqz v0, :cond_0

    check-cast p0, Lp/c;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lp/c;

    invoke-static {p0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lp/c;-><init>(Lc/t;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lp/c;

    if-nez v0, :cond_1

    instance-of v0, p1, Lc/t;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {p0}, Lp/c;->l()Lc/s;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lp/c;->d:Lq/a;

    new-instance v1, Lp/c;

    check-cast p1, Lc/e;

    invoke-interface {p1}, Lc/e;->l()Lc/s;

    move-result-object v3

    invoke-static {v3}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v3

    invoke-direct {v1, v3}, Lp/c;-><init>(Lc/t;)V

    invoke-virtual {v0, p0, v1}, Lq/a;->b(Lp/c;Lp/c;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public final g()[Lp/b;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lp/c;->e:[Lp/b;

    array-length v1, v0

    new-array v2, v1, [Lp/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public final hashCode()I
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lp/c;->b:Z

    if-eqz v0, :cond_0

    iget v2, p0, Lp/c;->c:I

    .line 11
    :goto_0
    return v2

    .line 4294967295
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp/c;->b:Z

    iget-object v0, p0, Lp/c;->d:Lq/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p0}, Lp/c;->g()[Lp/b;

    move-result-object v5

    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, v5

    if-eq v0, v3, :cond_2

    aget-object v3, v5, v0

    invoke-virtual {v3}, Lp/b;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v5, v0

    invoke-virtual {v3}, Lp/b;->c()[Lp/a;

    move-result-object v6

    move v3, v1

    move v4, v2

    :goto_2
    array-length v2, v6

    if-eq v3, v2, :cond_3

    aget-object v2, v6, v3

    .line 2
    iget-object v2, v2, Lp/a;->a:Lc/n;

    .line 3
    invoke-virtual {v2}, Lc/n;->hashCode()I

    move-result v2

    aget-object v7, v6, v3

    .line 4
    iget-object v7, v7, Lp/a;->b:Lc/e;

    .line 5
    xor-int/2addr v2, v4

    invoke-static {v7}, Lq/c;->f(Lc/e;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lq/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 6
    :cond_1
    aget-object v3, v5, v0

    invoke-virtual {v3}, Lp/b;->b()Lp/a;

    move-result-object v3

    .line 7
    iget-object v3, v3, Lp/a;->a:Lc/n;

    .line 8
    invoke-virtual {v3}, Lc/n;->hashCode()I

    move-result v3

    aget-object v4, v5, v0

    invoke-virtual {v4}, Lp/b;->b()Lp/a;

    move-result-object v4

    .line 9
    iget-object v4, v4, Lp/a;->b:Lc/e;

    .line 10
    xor-int/2addr v2, v3

    invoke-static {v4}, Lq/c;->f(Lc/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lq/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iput v2, p0, Lp/c;->c:I

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_3
.end method

.method public final l()Lc/s;
    .locals 2

    new-instance v0, Lc/bc;

    iget-object v1, p0, Lp/c;->e:[Lp/b;

    invoke-direct {v0, v1}, Lc/bc;-><init>([Lc/e;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lp/c;->d:Lq/a;

    check-cast v0, Lq/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lp/c;->g()[Lp/b;

    move-result-object v8

    move v1, v2

    move v3, v4

    :goto_0
    array-length v5, v8

    if-ge v3, v5, :cond_4

    if-eqz v1, :cond_0

    move v1, v4

    :goto_1
    aget-object v5, v8, v3

    iget-object v9, v0, Lq/b;->p:Ljava/util/Hashtable;

    .line 2
    invoke-virtual {v5}, Lp/b;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lp/b;->c()[Lp/a;

    move-result-object v10

    move v5, v2

    move v6, v4

    :goto_2
    array-length v11, v10

    if-eq v6, v11, :cond_3

    if-eqz v5, :cond_1

    move v5, v4

    :goto_3
    aget-object v11, v10, v6

    invoke-static {v7, v11, v9}, Lq/c;->a(Ljava/lang/StringBuffer;Lp/a;Ljava/util/Hashtable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1
    :cond_0
    const/16 v5, 0x2c

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2
    :cond_1
    const/16 v11, 0x2b

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lp/b;->b()Lp/a;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lp/b;->b()Lp/a;

    move-result-object v5

    invoke-static {v7, v5, v9}, Lq/c;->a(Ljava/lang/StringBuffer;Lp/a;Ljava/util/Hashtable;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
