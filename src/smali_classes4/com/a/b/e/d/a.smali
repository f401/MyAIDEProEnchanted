.class public final Lcom/a/b/e/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/a/b/e/d/c;

.field private final d:Lcom/a/b/e/d/b;

.field private e:Lcom/a/b/e/d/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/a/b/e/d/a;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/a/b/e/d/c;Lcom/a/b/e/d/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "returnType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p3, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameterTypes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/a/b/e/d/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/b/e/d/a;->c:Lcom/a/b/e/d/c;

    iput-object p3, p0, Lcom/a/b/e/d/a;->d:Lcom/a/b/e/d/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/e/d/a;->e:Lcom/a/b/e/d/b;

    return-void
.end method

.method public static a(Lcom/a/b/e/d/c;I)Lcom/a/b/e/d/a;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_d
    if-lt v0, p1, :cond_24

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/e/d/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/d/a;->a(Ljava/lang/String;)Lcom/a/b/e/d/a;

    move-result-object v0

    return-object v0

    :cond_24
    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static a(Ljava/lang/String;)Lcom/a/b/e/d/a;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sget-object v0, Lcom/a/b/e/d/a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/a;

    if-eqz v0, :cond_15

    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, Lcom/a/b/e/d/a;->b(Ljava/lang/String;)Lcom/a/b/e/d/a;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/d/a;->b(Lcom/a/b/e/d/a;)Lcom/a/b/e/d/a;

    move-result-object v0

    goto :goto_14
.end method

.method public static a(Ljava/lang/String;Lcom/a/b/e/d/c;ZZ)Lcom/a/b/e/d/a;
    .registers 6

    invoke-static {p0}, Lcom/a/b/e/d/a;->a(Ljava/lang/String;)Lcom/a/b/e/d/a;

    move-result-object v0

    if-eqz p2, :cond_7

    :goto_6
    return-object v0

    :cond_7
    if-eqz p3, :cond_10

    const v1, 0x7fffffff

    invoke-virtual {p1, v1}, Lcom/a/b/e/d/c;->a(I)Lcom/a/b/e/d/c;

    move-result-object p1

    :cond_10
    invoke-virtual {v0, p1}, Lcom/a/b/e/d/a;->a(Lcom/a/b/e/d/c;)Lcom/a/b/e/d/a;

    move-result-object v0

    goto :goto_6
.end method

.method private static b(Lcom/a/b/e/d/a;)Lcom/a/b/e/d/a;
    .registers 3

    sget-object v0, Lcom/a/b/e/d/a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/a/b/e/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/a;

    if-eqz v0, :cond_f

    :goto_e
    return-object v0

    :cond_f
    move-object v0, p0

    goto :goto_e
.end method

.method public static b(Ljava/lang/String;)Lcom/a/b/e/d/a;
    .registers 8

    const/4 v1, 0x0

    sget-object v0, Lcom/a/b/e/d/a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/a;

    if-eqz v0, :cond_c

    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0}, Lcom/a/b/e/d/a;->c(Ljava/lang/String;)[Lcom/a/b/e/d/c;

    move-result-object v5

    const/4 v2, 0x1

    move v0, v1

    :goto_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x29

    if-ne v4, v3, :cond_6b

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/b/e/d/c;->b(Ljava/lang/String;)Lcom/a/b/e/d/c;

    move-result-object v2

    new-instance v3, Lcom/a/b/e/d/b;

    invoke-direct {v3, v0}, Lcom/a/b/e/d/b;-><init>(I)V

    :goto_29
    if-lt v1, v0, :cond_63

    new-instance v0, Lcom/a/b/e/d/a;

    invoke-direct {v0, p0, v2, v3}, Lcom/a/b/e/d/a;-><init>(Ljava/lang/String;Lcom/a/b/e/d/c;Lcom/a/b/e/d/b;)V

    goto :goto_b

    :cond_31
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_37
    const/16 v6, 0x5b

    if-eq v4, v6, :cond_31

    const/16 v6, 0x4c

    if-ne v4, v6, :cond_60

    const/16 v4, 0x3b

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_50

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    add-int/lit8 v3, v3, 0x1

    :goto_52
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/b/e/d/c;->a(Ljava/lang/String;)Lcom/a/b/e/d/c;

    move-result-object v2

    aput-object v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_12

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :cond_63
    aget-object v4, v5, v1

    invoke-virtual {v3, v1, v4}, Lcom/a/b/e/d/b;->a(ILcom/a/b/e/d/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_6b
    move v3, v2

    goto :goto_37
.end method

.method private static c(Ljava/lang/String;)[Lcom/a/b/e/d/c;
    .registers 8

    const/16 v6, 0x29

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/4 v2, 0x1

    move v0, v1

    :goto_19
    if-lt v2, v3, :cond_29

    :goto_1b
    if-eqz v1, :cond_21

    add-int/lit8 v2, v3, -0x1

    if-ne v1, v2, :cond_3c

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_50

    const/16 v5, 0x41

    if-lt v4, v5, :cond_39

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_39

    add-int/lit8 v0, v0, 0x1

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-array v0, v0, [Lcom/a/b/e/d/c;

    return-object v0

    :cond_50
    move v1, v2

    goto :goto_1b
.end method


# virtual methods
.method public a(Lcom/a/b/e/d/a;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/a/b/e/d/a;->c:Lcom/a/b/e/d/c;

    iget-object v2, p1, Lcom/a/b/e/d/a;->c:Lcom/a/b/e/d/c;

    invoke-virtual {v1, v2}, Lcom/a/b/e/d/c;->a(Lcom/a/b/e/d/c;)I

    move-result v1

    if-eqz v1, :cond_10

    move v0, v1

    goto :goto_3

    :cond_10
    iget-object v1, p0, Lcom/a/b/e/d/a;->d:Lcom/a/b/e/d/b;

    invoke-virtual {v1}, Lcom/a/b/e/d/b;->d_()I

    move-result v3

    iget-object v1, p1, Lcom/a/b/e/d/a;->d:Lcom/a/b/e/d/b;

    invoke-virtual {v1}, Lcom/a/b/e/d/b;->d_()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    :goto_21
    if-lt v2, v5, :cond_27

    if-ge v3, v4, :cond_3f

    const/4 v0, -0x1

    goto :goto_3

    :cond_27
    iget-object v1, p0, Lcom/a/b/e/d/a;->d:Lcom/a/b/e/d/b;

    invoke-virtual {v1, v2}, Lcom/a/b/e/d/b;->b(I)Lcom/a/b/e/d/c;

    move-result-object v1

    iget-object v6, p1, Lcom/a/b/e/d/a;->d:Lcom/a/b/e/d/b;

    invoke-virtual {v6, v2}, Lcom/a/b/e/d/b;->b(I)Lcom/a/b/e/d/c;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/a/b/e/d/c;->a(Lcom/a/b/e/d/c;)I

    move-result v1

    if-eqz v1, :cond_3b

    move v0, v1

    goto :goto_3

    :cond_3b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_21

    :cond_3f
    if-le v3, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public a(Lcom/a/b/e/d/c;)Lcom/a/b/e/d/a;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/a/b/e/d/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/d/a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/e/d/a;->d:Lcom/a/b/e/d/b;

    invoke-virtual {v1, p1}, Lcom/a/b/e/d/b;->c(Lcom/a/b/e/d/c;)Lcom/a/b/e/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/b;->c_()V

    new-instance v2, Lcom/a/b/e/d/a;

    iget-object v3, p0, Lcom/a/b/e/d/a;->c:Lcom/a/b/e/d/c;

    invoke-direct {v2, v0, v3, v1}, Lcom/a/b/e/d/a;-><init>(Ljava/lang/String;Lcom/a/b/e/d/c;Lcom/a/b/e/d/b;)V

    invoke-static {v2}, Lcom/a/b/e/d/a;->b(Lcom/a/b/e/d/a;)Lcom/a/b/e/d/a;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/a/b/e/d/c;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/d/a;->c:Lcom/a/b/e/d/c;

    return-object v0
.end method

.method public c()Lcom/a/b/e/d/b;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/d/a;->d:Lcom/a/b/e/d/b;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/e/d/a;

    invoke-virtual {p0, p1}, Lcom/a/b/e/d/a;->a(Lcom/a/b/e/d/a;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/a/b/e/d/b;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/e/d/a;->e:Lcom/a/b/e/d/b;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/a/b/e/d/a;->d:Lcom/a/b/e/d/b;

    invoke-virtual {v0}, Lcom/a/b/e/d/b;->d_()I

    move-result v4

    new-instance v0, Lcom/a/b/e/d/b;

    invoke-direct {v0, v4}, Lcom/a/b/e/d/b;-><init>(I)V

    move v2, v1

    move v3, v1

    :goto_12
    if-lt v3, v4, :cond_1b

    if-eqz v2, :cond_31

    :goto_16
    iput-object v0, p0, Lcom/a/b/e/d/a;->e:Lcom/a/b/e/d/b;

    :cond_18
    iget-object v0, p0, Lcom/a/b/e/d/a;->e:Lcom/a/b/e/d/b;

    return-object v0

    :cond_1b
    iget-object v1, p0, Lcom/a/b/e/d/a;->d:Lcom/a/b/e/d/b;

    invoke-virtual {v1, v3}, Lcom/a/b/e/d/b;->b(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->m()Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v2, 0x1

    sget-object v1, Lcom/a/b/e/d/c;->f:Lcom/a/b/e/d/c;

    :cond_2a
    invoke-virtual {v0, v3, v1}, Lcom/a/b/e/d/b;->a(ILcom/a/b/e/d/c;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_12

    :cond_31
    iget-object v0, p0, Lcom/a/b/e/d/a;->d:Lcom/a/b/e/d/b;

    goto :goto_16
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lcom/a/b/e/d/a;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/a/b/e/d/a;->b:Ljava/lang/String;

    check-cast p1, Lcom/a/b/e/d/a;

    iget-object v1, p1, Lcom/a/b/e/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/d/a;->b:Ljava/lang/String;

    return-object v0
.end method
