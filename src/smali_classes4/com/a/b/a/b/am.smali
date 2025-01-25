.class public Lcom/a/b/a/b/am;
.super Ljava/lang/Object;


# static fields
.field static final a:Z


# instance fields
.field private final b:Lcom/a/b/a/b/x;

.field private final c:Lcom/a/b/a/b/k;

.field private d:Lcom/a/b/a/b/o;

.field private final e:Lcom/a/b/a/b/t;

.field private final f:Lcom/a/b/a/b/an;

.field private final g:Lcom/a/b/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/a/b/a/b/am;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/a/b/a/b/am;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/a/b/a/b/x;Lcom/a/b/a/b/o;Lcom/a/b/c/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "machine == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p3, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dexOptions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iput-object p1, p0, Lcom/a/b/a/b/am;->b:Lcom/a/b/a/b/x;

    invoke-virtual {p2}, Lcom/a/b/a/b/o;->m()Lcom/a/b/a/b/k;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/b/am;->c:Lcom/a/b/a/b/k;

    iput-object p2, p0, Lcom/a/b/a/b/am;->d:Lcom/a/b/a/b/o;

    invoke-virtual {p2}, Lcom/a/b/a/b/o;->o()Lcom/a/b/a/b/t;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/b/am;->e:Lcom/a/b/a/b/t;

    new-instance v0, Lcom/a/b/a/b/an;

    invoke-direct {v0, p0}, Lcom/a/b/a/b/an;-><init>(Lcom/a/b/a/b/am;)V

    iput-object v0, p0, Lcom/a/b/a/b/am;->f:Lcom/a/b/a/b/an;

    iput-object p3, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    invoke-virtual {p2}, Lcom/a/b/a/b/o;->b()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-direct {p0, p2}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/o;)V

    :cond_43
    return-void
.end method

.method static synthetic a()Lcom/a/b/a/b/al;
    .registers 1

    invoke-static {}, Lcom/a/b/a/b/am;->b()Lcom/a/b/a/b/al;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/a/b/am;)Lcom/a/b/a/b/x;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/am;->b:Lcom/a/b/a/b/x;

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)Lcom/a/b/e/d/c;
    .registers 3

    invoke-static {p0, p1}, Lcom/a/b/a/b/am;->b(Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .registers 7

    const/16 v4, 0x1a

    iget-object v0, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    invoke-virtual {v0, v4}, Lcom/a/b/c/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "invalid opcode %02x - invokedynamic requires --min-sdk-version >= %d (currently %d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    iget v3, v3, Lcom/a/b/c/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/am;->a(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method private a(ILcom/a/b/e/c/z;)V
    .registers 11

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x18

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    invoke-virtual {v0, v3}, Lcom/a/b/c/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    iget-boolean v0, v0, Lcom/a/b/c/a;->d:Z

    const/16 v1, 0xb8

    if-ne p1, v1, :cond_61

    iget-object v1, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/a/b/c/a;->a(I)Z

    move-result v1

    and-int/2addr v0, v1

    move v1, v0

    :goto_25
    const/16 v0, 0xb8

    if-ne p1, v0, :cond_73

    const-string v0, "static"

    :goto_2b
    if-eqz v1, :cond_76

    const-string v1, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (experimental at current API level %d)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p2}, Lcom/a/b/e/c/z;->n()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p2}, Lcom/a/b/e/c/z;->o()Lcom/a/b/e/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    iget v3, v3, Lcom/a/b/c/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/am;->b(Ljava/lang/String;)V

    goto :goto_a

    :cond_61
    sget-boolean v1, Lcom/a/b/a/b/am;->a:Z

    if-nez v1, :cond_ab

    const/16 v1, 0xb7

    if-eq p1, v1, :cond_ab

    const/16 v1, 0xb6

    if-eq p1, v1, :cond_ab

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_73
    const-string v0, "default"

    goto :goto_2b

    :cond_76
    const-string v1, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (blocked at current API level %d)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p2}, Lcom/a/b/e/c/z;->n()Lcom/a/b/e/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p2}, Lcom/a/b/e/c/z;->o()Lcom/a/b/e/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/aa;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    iget v3, v3, Lcom/a/b/c/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/am;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_ab
    move v1, v0

    goto/16 :goto_25
.end method

.method static synthetic a(Lcom/a/b/a/b/am;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/a/b/am;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/a/b/am;ILcom/a/b/e/c/z;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/a/b/a/b/am;->a(ILcom/a/b/e/c/z;)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/a/b/am;Lcom/a/b/e/c/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/a/b/am;->a(Lcom/a/b/e/c/a;)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/a/b/am;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/a/b/am;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/a/b/a/b/o;)V
    .registers 7

    const/16 v4, 0x18

    iget-object v0, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    invoke-virtual {v0, v4}, Lcom/a/b/c/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p1}, Lcom/a/b/a/b/o;->c()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "static"

    :goto_12
    const-string v1, "defining a %s interface method requires --min-sdk-version >= %d (currently %d) for interface methods: %s.%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    iget v3, v3, Lcom/a/b/c/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/a/b/a/b/o;->i()Lcom/a/b/e/c/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/a/b/a/b/o;->d()Lcom/a/b/e/c/aa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/c/aa;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/am;->b(Ljava/lang/String;)V

    :cond_49
    return-void

    :cond_4a
    const-string v0, "default"

    goto :goto_12
.end method

.method private a(Lcom/a/b/e/c/a;)V
    .registers 7

    const/16 v4, 0x1c

    iget-object v0, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    invoke-virtual {v0, v4}, Lcom/a/b/c/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "invalid constant type %s requires --min-sdk-version >= %d (currently %d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/c/a;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    iget v3, v3, Lcom/a/b/c/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/am;->a(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/a/b/a/b/al;

    const-string v1, "ERROR in %s.%s: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/a/b/a/b/am;->d:Lcom/a/b/a/b/o;

    invoke-virtual {v4}, Lcom/a/b/a/b/o;->i()Lcom/a/b/e/c/ae;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/a/b/a/b/am;->d:Lcom/a/b/a/b/o;

    invoke-virtual {v4}, Lcom/a/b/a/b/o;->d()Lcom/a/b/e/c/aa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/c/aa;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b()Lcom/a/b/a/b/al;
    .registers 2

    new-instance v0, Lcom/a/b/a/b/al;

    const-string v1, "stack mismatch: illegal top-of-stack for opcode"

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/a/b/a/b/am;)Lcom/a/b/a/b/t;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/am;->e:Lcom/a/b/a/b/t;

    return-object v0
.end method

.method private static b(Lcom/a/b/e/d/c;Lcom/a/b/e/d/c;)Lcom/a/b/e/d/c;
    .registers 3

    sget-object v0, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    if-ne p1, v0, :cond_12

    invoke-virtual {p0}, Lcom/a/b/e/d/c;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p1, Lcom/a/b/e/d/c;->j:Lcom/a/b/e/d/c;

    :cond_c
    :goto_c
    return-object p1

    :cond_d
    invoke-virtual {p0}, Lcom/a/b/e/d/c;->t()Lcom/a/b/e/d/c;

    move-result-object p1

    goto :goto_c

    :cond_12
    sget-object v0, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    if-ne p0, v0, :cond_26

    invoke-virtual {p1}, Lcom/a/b/e/d/c;->p()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->o()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_26
    sget-object v0, Lcom/a/b/e/d/c;->b:Lcom/a/b/e/d/c;

    if-ne p0, v0, :cond_31

    sget-object v0, Lcom/a/b/e/d/c;->E:Lcom/a/b/e/d/c;

    if-ne p1, v0, :cond_31

    sget-object p1, Lcom/a/b/e/d/c;->E:Lcom/a/b/e/d/c;

    goto :goto_c

    :cond_31
    invoke-virtual {p0}, Lcom/a/b/e/d/c;->t()Lcom/a/b/e/d/c;

    move-result-object p1

    goto :goto_c
.end method

.method private b(I)V
    .registers 6

    const/16 v3, 0x1a

    iget-object v0, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    invoke-virtual {v0, v3}, Lcom/a/b/c/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "invoking a signature-polymorphic requires --min-sdk-version >= %d (currently %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    iget v3, v3, Lcom/a/b/c/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/am;->a(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    const/16 v0, 0xb6

    if-eq p1, v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported signature polymorphic invocation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/a/b/a/b/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/am;->a(Ljava/lang/String;)V

    goto :goto_28
.end method

.method static synthetic b(Lcom/a/b/a/b/am;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/a/b/am;->a(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    const-string v0, "WARNING in %s.%s: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/a/b/a/b/am;->d:Lcom/a/b/a/b/o;

    invoke-virtual {v3}, Lcom/a/b/a/b/o;->i()Lcom/a/b/e/c/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/a/b/a/b/am;->d:Lcom/a/b/a/b/o;

    invoke-virtual {v3}, Lcom/a/b/a/b/o;->d()Lcom/a/b/e/c/aa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/c/aa;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/am;->g:Lcom/a/b/c/a;

    iget-object v1, v1, Lcom/a/b/c/a;->e:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/a/b/f;Lcom/a/b/a/b/q;)V
    .registers 7

    invoke-virtual {p1}, Lcom/a/b/a/b/f;->c()I

    move-result v1

    iget-object v0, p0, Lcom/a/b/a/b/am;->f:Lcom/a/b/a/b/an;

    invoke-virtual {v0, p2}, Lcom/a/b/a/b/an;->a(Lcom/a/b/a/b/q;)V

    :try_start_9
    invoke-virtual {p1}, Lcom/a/b/a/b/f;->b()I

    move-result v0

    :goto_d
    if-lt v0, v1, :cond_10

    return-void

    :cond_10
    iget-object v2, p0, Lcom/a/b/a/b/am;->c:Lcom/a/b/a/b/k;

    iget-object v3, p0, Lcom/a/b/a/b/am;->f:Lcom/a/b/a/b/an;

    invoke-virtual {v2, v0, v3}, Lcom/a/b/a/b/k;->a(ILcom/a/b/a/b/n;)I

    move-result v2

    iget-object v3, p0, Lcom/a/b/a/b/am;->f:Lcom/a/b/a/b/an;

    invoke-virtual {v3, v0}, Lcom/a/b/a/b/an;->a(I)V
    :try_end_1d
    .catch Lcom/a/b/a/b/al; {:try_start_9 .. :try_end_1d} :catch_1f

    add-int/2addr v0, v2

    goto :goto_d

    :catch_1f
    move-exception v0

    invoke-virtual {p2, v0}, Lcom/a/b/a/b/q;->a(Lcom/a/a/a/b;)V

    throw v0
.end method
