.class public La/d/a/aw;
.super La/d/a/ap;


# static fields
.field private static final a:Z


# instance fields
.field protected final b:Ljava/lang/String;

.field protected final c:La/b/c;

.field protected final d:Z

.field protected final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "allow.incomplete.class.hierarchy"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, La/d/a/aw;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/lang/String;La/b/c;ZZ)V
    .registers 5

    invoke-direct {p0}, La/d/a/ap;-><init>()V

    iput-object p1, p0, La/d/a/aw;->b:Ljava/lang/String;

    iput-object p2, p0, La/d/a/aw;->c:La/b/c;

    iput-boolean p3, p0, La/d/a/aw;->d:Z

    iput-boolean p4, p0, La/d/a/aw;->e:Z

    return-void
.end method

.method private a(La/b/c;Ljava/util/Set;)I
    .registers 6

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/c;

    invoke-interface {p1, v0}, La/b/c;->c(La/b/c;)Z

    move-result v0

    if-eqz v0, :cond_1c

    add-int/lit8 v0, v1, 0x1

    :goto_1a
    move v1, v0

    goto :goto_6

    :cond_1c
    move v0, v1

    goto :goto_1a

    :cond_1e
    return v1
.end method

.method private a(La/b/c;La/b/c;Z)La/b/c;
    .registers 16

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    if-nez p3, :cond_21

    move v1, v6

    :goto_b
    if-nez p3, :cond_23

    move v2, v6

    :goto_e
    new-instance v5, La/b/g/h;

    invoke-direct {v5, v8}, La/b/g/h;-><init>(Ljava/util/Set;)V

    move-object v0, p1

    move v3, p3

    invoke-interface/range {v0 .. v5}, La/b/c;->a(ZZZZLa/b/g/s;)V

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-nez v9, :cond_5c

    if-eqz p3, :cond_25

    :cond_20
    return-object v7

    :cond_21
    move v1, v4

    goto :goto_b

    :cond_23
    move v2, v4

    goto :goto_e

    :cond_25
    invoke-interface {p1}, La/b/c;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find any super classes of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] (not even immediate super class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, La/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    if-nez p3, :cond_b0

    move v1, v6

    :goto_64
    if-nez p3, :cond_b2

    move v2, v6

    :goto_67
    new-instance v5, La/b/g/h;

    invoke-direct {v5, v10}, La/b/g/h;-><init>(Ljava/util/Set;)V

    move-object v0, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, La/b/c;->a(ZZZZLa/b/g/s;)V

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_b4

    if-nez p3, :cond_20

    invoke-interface {p2}, La/b/c;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find any super classes of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] (not even immediate super class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, La/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b0
    move v1, v4

    goto :goto_64

    :cond_b2
    move v2, v4

    goto :goto_67

    :cond_b4
    invoke-interface {v8, v10}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_bf

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_bf
    const/4 v2, -0x1

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v1, v7

    :goto_c5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/c;

    invoke-direct {p0, v0, v8}, La/d/a/aw;->a(La/b/c;Ljava/util/Set;)I

    move-result v3

    if-lt v2, v3, :cond_e9

    if-ne v2, v3, :cond_178

    if-eqz v1, :cond_178

    invoke-interface {v1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, La/b/c;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_178

    :cond_e9
    move v2, v3

    :goto_ea
    move-object v1, v0

    goto :goto_c5

    :cond_ec
    if-nez v1, :cond_176

    const/4 v0, 0x2

    new-array v0, v0, [La/b/c;

    aput-object p1, v0, v4

    aput-object p2, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_fd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_176

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/c;

    const-string v3, "java/lang/Object"

    invoke-interface {v0}, La/b/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    move-object v7, v0

    :goto_116
    if-nez v7, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find common super class of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] (with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " known super classes) and ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] (with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " known super classes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15d
    invoke-interface {v0}, La/b/c;->a()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_fd

    const-string v3, "java/lang/Object"

    invoke-interface {v0}, La/b/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    invoke-interface {v0}, La/b/c;->e()La/b/c;

    move-result-object v7

    goto :goto_116

    :cond_176
    move-object v7, v1

    goto :goto_116

    :cond_178
    move-object v0, v1

    goto/16 :goto_ea
.end method

.method private static a(La/d/a/aw;ZZ)La/d/a/ap;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, La/d/a/aw;

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, La/d/a/aw;->d:Z

    if-ne v0, p1, :cond_11

    invoke-virtual {p0, p2}, La/d/a/aw;->a(Z)La/d/a/ap;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, La/d/a/aw;

    iget-object v1, p0, La/d/a/aw;->b:Ljava/lang/String;

    iget-object v2, p0, La/d/a/aw;->c:La/b/c;

    invoke-direct {v0, v1, v2, p1, p2}, La/d/a/aw;-><init>(Ljava/lang/String;La/b/c;ZZ)V

    goto :goto_10
.end method


# virtual methods
.method public a(Ljava/lang/String;La/b/c;)I
    .registers 12

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v3, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v3, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {v3}, La/b/f/i;->g(Ljava/lang/String;)I

    move-result v5

    invoke-static {p1}, La/b/f/i;->g(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    if-lez v7, :cond_40

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, La/b/f/i;->a(C)Z

    move-result v8

    if-nez v8, :cond_32

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, La/b/f/i;->a(C)Z

    move-result v8

    if-eqz v8, :cond_40

    :cond_32
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v0, p0, La/d/a/aw;->e:Z

    if-eqz v0, :cond_3e

    move v0, v1

    goto :goto_7

    :cond_3e
    move v0, v2

    goto :goto_7

    :cond_40
    if-ne v5, v7, :cond_46

    invoke-static {v4}, La/b/f/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_46
    if-ne v6, v7, :cond_4c

    invoke-static {v3}, La/b/f/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4c
    if-le v5, v6, :cond_54

    invoke-static {v3}, La/b/f/i;->h(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_54
    if-ge v5, v6, :cond_5c

    invoke-static {v4}, La/b/f/i;->h(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5c
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    const-string v4, "java/lang/Object"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    if-le v5, v6, :cond_74

    :cond_6c
    iget-boolean v0, p0, La/d/a/aw;->e:Z

    if-eqz v0, :cond_72

    move v0, v1

    goto :goto_7

    :cond_72
    move v0, v2

    goto :goto_7

    :cond_74
    if-ge v5, v6, :cond_78

    move v0, v1

    goto :goto_7

    :cond_78
    iget-object v3, p0, La/d/a/aw;->c:La/b/c;

    if-eqz v3, :cond_b3

    if-nez p2, :cond_80

    move v0, v1

    goto :goto_7

    :cond_80
    iget-object v3, p0, La/d/a/aw;->c:La/b/c;

    invoke-interface {v3, p2}, La/b/c;->c(La/b/c;)Z

    move-result v3

    if-eqz v3, :cond_8f

    iget-boolean v0, p0, La/d/a/aw;->e:Z

    if-nez v0, :cond_b3

    move v0, v2

    goto/16 :goto_7

    :cond_8f
    iget-object v2, p0, La/d/a/aw;->c:La/b/c;

    invoke-interface {v2}, La/b/c;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_7

    iget-object v2, p0, La/d/a/aw;->c:La/b/c;

    invoke-interface {v2}, La/b/c;->a()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_b3

    invoke-interface {p2}, La/b/c;->a()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_b3

    iget-object v2, p0, La/d/a/aw;->c:La/b/c;

    invoke-interface {p2, v2}, La/b/c;->c(La/b/c;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_b3
    move v0, v1

    goto/16 :goto_7
.end method

.method public a(La/d/a/ap;)La/d/a/ap;
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/ap;->a(La/d/a/aw;)La/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(La/d/a/aw;)La/d/a/ap;
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, La/d/a/aw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    iget-object v4, p0, La/d/a/aw;->b:Ljava/lang/String;

    iget-object v5, p1, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v4, :cond_14

    if-nez v5, :cond_14

    sget-object p0, La/d/a/ax;->f:La/d/a/ap;

    goto :goto_8

    :cond_14
    if-nez v4, :cond_1b

    invoke-virtual {p1, v2}, La/d/a/aw;->a(Z)La/d/a/ap;

    move-result-object p0

    goto :goto_8

    :cond_1b
    if-nez v5, :cond_22

    invoke-virtual {p0, v2}, La/d/a/aw;->a(Z)La/d/a/ap;

    move-result-object p0

    goto :goto_8

    :cond_22
    iget-boolean v0, p0, La/d/a/aw;->d:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p1, La/d/a/aw;->d:Z

    if-eqz v0, :cond_3f

    :cond_2a
    move v0, v2

    :goto_2b
    iget-boolean v3, p0, La/d/a/aw;->e:Z

    if-nez v3, :cond_33

    iget-boolean v3, p1, La/d/a/aw;->e:Z

    if-eqz v3, :cond_34

    :cond_33
    move v1, v2

    :cond_34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-static {p0, v0, v1}, La/d/a/aw;->a(La/d/a/aw;ZZ)La/d/a/ap;

    move-result-object p0

    goto :goto_8

    :cond_3f
    move v0, v1

    goto :goto_2b

    :cond_41
    invoke-static {v4}, La/b/f/i;->g(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5}, La/b/f/i;->g(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ne v6, v7, :cond_a6

    iget-object v6, p0, La/d/a/aw;->c:La/b/c;

    iget-object v7, p1, La/d/a/aw;->c:La/b/c;

    if-eqz v6, :cond_ca

    if-eqz v7, :cond_ca

    invoke-interface {v6, v7}, La/b/c;->c(La/b/c;)Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-static {p1, v2, v1}, La/d/a/aw;->a(La/d/a/aw;ZZ)La/d/a/ap;

    move-result-object p0

    goto :goto_8

    :cond_62
    invoke-interface {v7, v6}, La/b/c;->c(La/b/c;)Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-static {p0, v2, v1}, La/d/a/aw;->a(La/d/a/aw;ZZ)La/d/a/ap;

    move-result-object p0

    goto :goto_8

    :cond_6d
    const/4 v2, 0x0

    :try_start_6e
    invoke-direct {p0, v6, v7, v2}, La/d/a/aw;->a(La/b/c;La/b/c;Z)La/b/c;

    move-result-object v4

    invoke-interface {v4}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "java/lang/Object"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    const/4 v2, 0x1

    invoke-direct {p0, v6, v7, v2}, La/d/a/aw;->a(La/b/c;La/b/c;Z)La/b/c;

    move-result-object v2

    if-eqz v2, :cond_86

    move-object v4, v2

    :cond_86
    new-instance p0, La/d/a/aw;

    if-nez v3, :cond_9c

    invoke-interface {v4}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    :goto_8e
    invoke-direct {p0, v2, v4, v0, v1}, La/d/a/aw;-><init>(Ljava/lang/String;La/b/c;ZZ)V
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_91} :catch_93

    goto/16 :goto_8

    :catch_93
    move-exception v0

    sget-boolean v1, La/d/a/aw;->a:Z

    if-eqz v1, :cond_a5

    sget-object p0, La/d/a/c;->e:La/d/a/ap;

    goto/16 :goto_8

    :cond_9c
    :try_start_9c
    invoke-interface {v4}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, La/b/f/i;->a(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9c .. :try_end_a3} :catch_93

    move-result-object v2

    goto :goto_8e

    :cond_a5
    throw v0

    :cond_a6
    if-le v6, v7, :cond_b8

    invoke-static {v5}, La/b/f/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-static {p1, v2, v1}, La/d/a/aw;->a(La/d/a/aw;ZZ)La/d/a/ap;

    move-result-object p0

    goto/16 :goto_8

    :cond_b8
    if-ge v6, v7, :cond_ca

    invoke-static {v4}, La/b/f/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-static {p0, v2, v1}, La/d/a/aw;->a(La/d/a/aw;ZZ)La/d/a/ap;

    move-result-object p0

    goto/16 :goto_8

    :cond_ca
    if-lez v3, :cond_fc

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, La/b/f/i;->a(C)Z

    move-result v0

    if-nez v0, :cond_e0

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, La/b/f/i;->a(C)Z

    move-result v0

    if-eqz v0, :cond_fc

    :cond_e0
    add-int/lit8 v0, v3, -0x1

    :goto_e2
    if-eqz v0, :cond_f2

    new-instance p0, La/d/a/aw;

    const-string v3, "java/lang/Object"

    invoke-static {v3, v0}, La/b/f/i;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v2, v1}, La/d/a/aw;-><init>(Ljava/lang/String;La/b/c;ZZ)V

    goto/16 :goto_8

    :cond_f2
    if-eqz v1, :cond_f8

    sget-object p0, La/d/a/ax;->g:La/d/a/ap;

    goto/16 :goto_8

    :cond_f8
    sget-object p0, La/d/a/ax;->h:La/d/a/ap;

    goto/16 :goto_8

    :cond_fc
    move v0, v3

    goto :goto_e2
.end method

.method public a(Ljava/lang/String;La/b/c;La/d/a/be;Z)La/d/a/ap;
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_d
    if-nez p4, :cond_1c

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, La/d/a/aw;->a(Ljava/lang/String;La/b/c;)I

    move-result v0

    if-ne v0, v1, :cond_1c

    :cond_1b
    :goto_1b
    return-object p0

    :cond_1c
    iget-boolean v0, p0, La/d/a/aw;->e:Z

    invoke-interface {p3, p1, p2, v1, v0}, La/d/a/be;->b(Ljava/lang/String;La/b/c;ZZ)La/d/a/ap;

    move-result-object p0

    goto :goto_1b
.end method

.method public a(Z)La/d/a/ap;
    .registers 7

    iget-boolean v0, p0, La/d/a/aw;->e:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, La/d/a/aw;

    iget-object v1, p0, La/d/a/aw;->b:Ljava/lang/String;

    iget-object v2, p0, La/d/a/aw;->c:La/b/c;

    iget-boolean v3, p0, La/d/a/aw;->d:Z

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, La/d/a/aw;-><init>(Ljava/lang/String;La/b/c;ZZ)V

    move-object p0, v0

    goto :goto_4
.end method

.method public b(La/d/a/ap;)I
    .registers 3

    invoke-virtual {p1, p0}, La/d/a/ap;->b(La/d/a/aw;)I

    move-result v0

    return v0
.end method

.method public b(La/d/a/aw;)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v2, :cond_12

    iget-object v2, p1, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v2, :cond_c

    const/4 v0, 0x1

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-boolean v2, p1, La/d/a/aw;->e:Z

    if-eqz v2, :cond_b

    :cond_10
    move v0, v1

    goto :goto_b

    :cond_12
    iget-object v2, p1, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v2, :cond_1b

    iget-boolean v2, p0, La/d/a/aw;->e:Z

    if-nez v2, :cond_10

    goto :goto_b

    :cond_1b
    iget-boolean v2, p0, La/d/a/aw;->d:Z

    if-nez v2, :cond_10

    iget-boolean v2, p1, La/d/a/aw;->d:Z

    if-nez v2, :cond_10

    iget-object v2, p0, La/d/a/aw;->b:Ljava/lang/String;

    iget-object v3, p1, La/d/a/aw;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_b
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e(La/d/a/ae;La/d/a/be;)La/d/a/ap;
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    sget-object v0, La/d/a/ax;->f:La/d/a/ap;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    invoke-static {v0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, La/d/a/ax;->g:La/d/a/ap;

    goto :goto_7

    :cond_13
    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/d/a/aw;->c:La/b/c;

    invoke-interface {p2, v0, v1, v2, v2}, La/d/a/be;->a(Ljava/lang/String;La/b/c;ZZ)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v0

    goto :goto_7
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_6

    :cond_4
    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, La/d/a/ap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast p1, La/d/a/aw;

    iget-object v2, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v2, :cond_17

    iget-object v2, p1, La/d/a/aw;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_17
    iget-boolean v2, p0, La/d/a/aw;->d:Z

    iget-boolean v3, p1, La/d/a/aw;->d:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, La/d/a/aw;->e:Z

    iget-boolean v3, p1, La/d/a/aw;->e:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, La/d/a/aw;->b:Ljava/lang/String;

    iget-object v3, p1, La/d/a/aw;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5
.end method

.method public f()La/b/c;
    .registers 2

    iget-object v0, p0, La/d/a/aw;->c:La/b/c;

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, La/d/a/aw;->d:Z

    return v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v1, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v1, :cond_f

    :goto_d
    xor-int/2addr v0, v2

    return v0

    :cond_f
    iget-object v1, p0, La/d/a/aw;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget-boolean v1, p0, La/d/a/aw;->d:Z

    if-eqz v1, :cond_21

    move v1, v0

    :goto_1a
    iget-boolean v4, p0, La/d/a/aw;->e:Z

    if-eqz v4, :cond_23

    :goto_1e
    xor-int/2addr v1, v3

    xor-int/2addr v0, v1

    goto :goto_d

    :cond_21
    const/4 v1, 0x1

    goto :goto_1a

    :cond_23
    const/4 v0, 0x2

    goto :goto_1e
.end method

.method public final k()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "Ljava/lang/Object;"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    invoke-static {v0}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    goto :goto_6

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/a/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public m()I
    .registers 2

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, La/d/a/aw;->e:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, La/d/a/aw;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "n"

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/d/a/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, La/d/a/aw;->c:La/b/c;

    if-nez v0, :cond_35

    const-string v0, "?"

    :goto_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, La/d/a/aw;->d:Z

    if-eqz v0, :cond_38

    const-string v0, ""

    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, La/d/a/aw;->e:Z

    if-eqz v0, :cond_3b

    const-string v0, ""

    :goto_2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_35
    const-string v0, ""

    goto :goto_18

    :cond_38
    const-string v0, "="

    goto :goto_22

    :cond_3b
    const-string v0, "!"

    goto :goto_2c
.end method
