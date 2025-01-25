.class public final Lcom/a/b/e/b/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/e/d/d;
.implements Lcom/a/b/g/w;
.implements Ljava/lang/Comparable;


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final b:Ljava/lang/ThreadLocal;


# instance fields
.field private final c:I

.field private final d:Lcom/a/b/e/d/d;

.field private final e:Lcom/a/b/e/b/o;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/a/b/e/b/u;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/a/b/e/b/v;

    invoke-direct {v0}, Lcom/a/b/e/b/v;-><init>()V

    sput-object v0, Lcom/a/b/e/b/u;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reg < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput p1, p0, Lcom/a/b/e/b/u;->c:I

    iput-object p2, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    iput-object p3, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    return-void
.end method

.method synthetic constructor <init>(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;Lcom/a/b/e/b/u;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/e/b/u;-><init>(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)V

    return-void
.end method

.method public static a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/a/b/e/b/u;->d(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;
    .registers 5

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "local  == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p0, p1, p2}, Lcom/a/b/e/b/u;->d(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-virtual {v0}, Lcom/a/b/e/b/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    if-eq v0, v2, :cond_45

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4a

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    instance-of v0, v0, Lcom/a/b/e/c/ad;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    check-cast v0, Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    :goto_45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    if-eqz p1, :cond_5c

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    instance-of v0, v0, Lcom/a/b/e/c/a;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_5c
    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_45
.end method

.method static synthetic a(Lcom/a/b/e/b/u;ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/e/b/u;->e(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Z

    move-result v0

    return v0
.end method

.method public static b(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/a/b/e/b/u;->d(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/a/b/e/b/u;->f(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)I

    move-result v0

    return v0
.end method

.method private static d(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;
    .registers 5

    sget-object v0, Lcom/a/b/e/b/u;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/w;

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/b/e/b/w;->a(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)V

    sget-object v1, Lcom/a/b/e/b/u;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/b/u;

    if-nez v1, :cond_24

    invoke-virtual {v0}, Lcom/a/b/e/b/w;->a()Lcom/a/b/e/b/u;

    move-result-object v1

    sget-object v0, Lcom/a/b/e/b/u;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    if-eqz v0, :cond_24

    :goto_23
    return-object v0

    :cond_24
    move-object v0, v1

    goto :goto_23
.end method

.method private e(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Z
    .registers 5

    iget v0, p0, Lcom/a/b/e/b/u;->c:I

    if-ne v0, p1, :cond_1e

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-eq v0, p3, :cond_1c

    iget-object v0, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-virtual {v0, p3}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static f(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)I
    .registers 5

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/a/b/e/b/o;->hashCode()I

    move-result v0

    :goto_6
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;
    .registers 4

    iget-object v0, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-eq v0, p1, :cond_10

    iget-object v0, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-object p0

    :cond_11
    iget v0, p0, Lcom/a/b/e/b/u;->c:I

    iget-object v1, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-static {v0, v1, p1}, Lcom/a/b/e/b/u;->b(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object p0

    goto :goto_10
.end method

.method public a(Lcom/a/b/e/b/u;Z)Lcom/a/b/e/b/u;
    .registers 8

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    if-eqz p1, :cond_5f

    iget v1, p0, Lcom/a/b/e/b/u;->c:I

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    if-ne v1, v2, :cond_5f

    iget-object v1, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->i()Lcom/a/b/e/b/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    :cond_1e
    move-object v1, v0

    :goto_1f
    iget-object v2, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-ne v1, v2, :cond_53

    const/4 v2, 0x1

    move v3, v2

    :goto_25
    if-eqz p2, :cond_29

    if-eqz v3, :cond_5f

    :cond_29
    invoke-virtual {p0}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v4

    if-ne v2, v4, :cond_5f

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-virtual {p1}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    :goto_41
    iget-object v2, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    if-ne v0, v2, :cond_47

    if-nez v3, :cond_3

    :cond_47
    if-nez v1, :cond_58

    iget v1, p0, Lcom/a/b/e/b/u;->c:I

    invoke-static {v1, v0}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object p0

    goto :goto_3

    :cond_50
    iget-object v1, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    goto :goto_1f

    :cond_53
    const/4 v2, 0x0

    move v3, v2

    goto :goto_25

    :cond_56
    move-object v0, v2

    goto :goto_41

    :cond_58
    iget v2, p0, Lcom/a/b/e/b/u;->c:I

    invoke-static {v2, v0, v1}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object p0

    goto :goto_3

    :cond_5f
    move-object p0, v0

    goto :goto_3
.end method

.method public a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/u;
    .registers 4

    iget v0, p0, Lcom/a/b/e/b/u;->c:I

    iget-object v1, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-static {v0, p1, v1}, Lcom/a/b/e/b/u;->b(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/a/b/e/d/c;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/e/b/u;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/u;->b(Lcom/a/b/e/b/u;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v1, p0, Lcom/a/b/e/b/u;->c:I

    iget v2, p1, Lcom/a/b/e/b/u;->c:I

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b(I)Lcom/a/b/e/b/u;
    .registers 4

    iget v0, p0, Lcom/a/b/e/b/u;->c:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    iget-object v1, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-static {p1, v0, v1}, Lcom/a/b/e/b/u;->b(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object p0

    goto :goto_4
.end method

.method public b()Lcom/a/b/e/d/d;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->b()Lcom/a/b/e/d/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/a/b/e/b/u;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v1}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v1

    iget-object v2, p1, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v2}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/e/d/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    iget-object v2, p1, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-eq v1, v2, :cond_2a

    iget-object v1, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    iget-object v2, p1, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-virtual {v1, v2}, Lcom/a/b/e/b/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2a
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->c()I

    move-result v0

    return v0
.end method

.method public c(Lcom/a/b/e/b/u;)I
    .registers 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    iget v2, p0, Lcom/a/b/e/b/u;->c:I

    iget v4, p1, Lcom/a/b/e/b/u;->c:I

    if-ge v2, v4, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget v2, p0, Lcom/a/b/e/b/u;->c:I

    iget v4, p1, Lcom/a/b/e/b/u;->c:I

    if-le v2, v4, :cond_12

    move v0, v1

    goto :goto_9

    :cond_12
    if-eq p0, p1, :cond_30

    iget-object v2, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v2}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v2

    iget-object v4, p1, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v4}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/a/b/e/d/c;->a(Lcom/a/b/e/d/c;)I

    move-result v2

    if-eqz v2, :cond_28

    move v0, v2

    goto :goto_9

    :cond_28
    iget-object v2, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-nez v2, :cond_32

    iget-object v1, p1, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-nez v1, :cond_9

    :cond_30
    move v0, v3

    goto :goto_9

    :cond_32
    iget-object v0, p1, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    if-nez v0, :cond_38

    move v0, v1

    goto :goto_9

    :cond_38
    iget-object v0, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    iget-object v1, p1, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/o;->a(Lcom/a/b/e/b/o;)I

    move-result v0

    goto :goto_9
.end method

.method public c(I)Lcom/a/b/e/b/u;
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-object p0

    :cond_3
    iget v0, p0, Lcom/a/b/e/b/u;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object p0

    goto :goto_2
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/e/b/u;

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/u;->c(Lcom/a/b/e/b/u;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/b/e/b/u;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->e()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lcom/a/b/e/b/u;

    if-nez v0, :cond_21

    instance-of v0, p1, Lcom/a/b/e/b/w;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/a/b/e/b/w;

    invoke-static {p1}, Lcom/a/b/e/b/w;->a(Lcom/a/b/e/b/w;)I

    move-result v0

    invoke-static {p1}, Lcom/a/b/e/b/w;->b(Lcom/a/b/e/b/w;)Lcom/a/b/e/d/d;

    move-result-object v1

    invoke-static {p1}, Lcom/a/b/e/b/w;->c(Lcom/a/b/e/b/w;)Lcom/a/b/e/b/o;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/a/b/e/b/u;->e(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Z

    move-result v0

    goto :goto_3

    :cond_1f
    const/4 v0, 0x0

    goto :goto_3

    :cond_21
    check-cast p1, Lcom/a/b/e/b/u;

    iget v0, p1, Lcom/a/b/e/b/u;->c:I

    iget-object v1, p1, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    iget-object v2, p1, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-direct {p0, v0, v1, v2}, Lcom/a/b/e/b/u;->e(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Z

    move-result v0

    goto :goto_3
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/u;->c:I

    return v0
.end method

.method public h()Lcom/a/b/e/d/d;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/a/b/e/b/u;->c:I

    iget-object v1, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    iget-object v2, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-static {v0, v1, v2}, Lcom/a/b/e/b/u;->f(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)I

    move-result v0

    return v0
.end method

.method public i()Lcom/a/b/e/b/o;
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    return-object v0
.end method

.method public j()I
    .registers 3

    iget v0, p0, Lcom/a/b/e/b/u;->c:I

    invoke-virtual {p0}, Lcom/a/b/e/b/u;->k()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->j()I

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    invoke-interface {v0}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->l()Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/a/b/e/b/u;->c:I

    invoke-static {v0}, Lcom/a/b/e/b/u;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/a/b/e/b/u;
    .registers 4

    iget-object v1, p0, Lcom/a/b/e/b/u;->d:Lcom/a/b/e/d/d;

    instance-of v0, v1, Lcom/a/b/e/d/c;

    if-eqz v0, :cond_16

    move-object v0, v1

    check-cast v0, Lcom/a/b/e/d/c;

    :goto_9
    invoke-virtual {v0}, Lcom/a/b/e/d/c;->r()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->s()Lcom/a/b/e/d/c;

    move-result-object v0

    :cond_13
    if-ne v0, v1, :cond_1b

    :goto_15
    return-object p0

    :cond_16
    invoke-interface {v1}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    goto :goto_9

    :cond_1b
    iget v1, p0, Lcom/a/b/e/b/u;->c:I

    iget-object v2, p0, Lcom/a/b/e/b/u;->e:Lcom/a/b/e/b/o;

    invoke-static {v1, v0, v2}, Lcom/a/b/e/b/u;->b(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object p0

    goto :goto_15
.end method

.method public o()Z
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/b/e/b/u;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
