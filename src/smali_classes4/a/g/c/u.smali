.class public La/g/c/u;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/l;
.implements La/b/a/d/o;
.implements La/b/b/a/f;
.implements La/b/d/a/d;
.implements La/b/g/aq;


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:I

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:La/b/d/a/d;

.field private final j:La/b/c/u;

.field private final k:La/b/g/aq;

.field private final l:La/b/a/d/i;

.field private final m:La/b/a/d/w;

.field private n:La/b/k;

.field private o:La/b/n;

.field private p:La/b/c/ad;

.field private q:La/b/c/al;

.field private r:I

.field private s:Z

.field private t:Ljava/util/Stack;

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "maximum.inlined.code.length"

    const-string v1, "8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, La/g/c/u;->a:I

    const-string v0, "maximum.inlined.code.length"

    const-string v1, "32"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, La/g/c/u;->b:I

    const-string v0, "maximum.resulting.code.length"

    const-string v1, "7000"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, La/g/c/u;->c:I

    const-string v0, "maximum.resulting.code.length"

    const-string v1, "2000"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, La/g/c/u;->d:I

    return-void
.end method

.method public constructor <init>(ZZZZLa/b/d/a/d;)V
    .registers 13

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/c/u;

    invoke-direct {v0}, La/b/c/u;-><init>()V

    iput-object v0, p0, La/g/c/u;->j:La/b/c/u;

    new-instance v0, La/g/l;

    new-instance v1, La/b/a/d/a;

    new-instance v2, La/b/d/a/a;

    new-instance v3, La/b/d/a/e;

    const/4 v4, 0x2

    new-array v4, v4, [La/b/d/a/d;

    const/4 v5, 0x0

    new-instance v6, La/g/b/at;

    invoke-direct {v6}, La/g/b/at;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, La/g/b/a;

    invoke-direct {v6}, La/g/b/a;-><init>()V

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, La/b/d/a/e;-><init>([La/b/d/a/d;)V

    invoke-direct {v2, v3}, La/b/d/a/a;-><init>(La/b/d/a/d;)V

    invoke-direct {v1, v2}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-direct {v0, v1}, La/g/l;-><init>(La/b/g/aq;)V

    iput-object v0, p0, La/g/c/u;->k:La/b/g/aq;

    new-instance v0, La/b/d/a/a;

    new-instance v1, La/g/b/p;

    invoke-direct {v1}, La/g/b/p;-><init>()V

    invoke-direct {v0, v1}, La/b/d/a/a;-><init>(La/b/d/a/d;)V

    iput-object v0, p0, La/g/c/u;->l:La/b/a/d/i;

    new-instance v0, La/b/a/d/w;

    invoke-direct {v0}, La/b/a/d/w;-><init>()V

    iput-object v0, p0, La/g/c/u;->m:La/b/a/d/w;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, La/g/c/u;->t:Ljava/util/Stack;

    iput-boolean p1, p0, La/g/c/u;->e:Z

    iput-boolean p2, p0, La/g/c/u;->f:Z

    iput-boolean p3, p0, La/g/c/u;->g:Z

    iput-boolean p4, p0, La/g/c/u;->h:Z

    iput-object p5, p0, La/g/c/u;->i:La/b/d/a/d;

    return-void
.end method

.method private a(La/b/c;La/b/j;)V
    .registers 15

    const/16 v4, 0x3a

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, La/b/j;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_37

    move v0, v1

    :goto_11
    invoke-static {v3}, La/b/f/i;->t(Ljava/lang/String;)I

    invoke-static {v3}, La/b/f/i;->u(Ljava/lang/String;)I

    move-result v6

    if-eqz v0, :cond_1b

    move v1, v2

    :cond_1b
    new-array v7, v6, [Ljava/lang/String;

    new-instance v5, La/b/f/q;

    invoke-direct {v5, v3}, La/b/f/q;-><init>(Ljava/lang/String;)V

    move v3, v2

    :goto_23
    if-ge v3, v6, :cond_39

    invoke-virtual {v5}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v8}, La/b/f/i;->v(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_34

    add-int/lit8 v3, v3, 0x1

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_37
    move v0, v2

    goto :goto_11

    :cond_39
    iget-object v3, p0, La/g/c/u;->j:La/b/c/u;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v3, v5}, La/b/c/u;->a(I)V

    add-int/lit8 v3, v6, -0x1

    move v5, v3

    :goto_43
    if-ltz v5, :cond_73

    aget-object v3, v7, v5

    if-eqz v3, :cond_63

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_88

    move v3, v4

    :goto_51
    iget-object v8, p0, La/g/c/u;->j:La/b/c/u;

    sub-int v9, v6, v5

    add-int/lit8 v9, v9, -0x1

    new-instance v10, La/b/d/k;

    iget v11, p0, La/g/c/u;->y:I

    add-int/2addr v11, v1

    add-int/2addr v11, v5

    invoke-direct {v10, v3, v11}, La/b/d/k;-><init>(BI)V

    invoke-virtual {v8, v9, v10}, La/b/c/u;->a(ILa/b/d/c;)V

    :cond_63
    add-int/lit8 v3, v5, -0x1

    move v5, v3

    goto :goto_43

    :sswitch_67
    const/16 v3, 0x36

    goto :goto_51

    :sswitch_6a
    const/16 v3, 0x37

    goto :goto_51

    :sswitch_6d
    const/16 v3, 0x38

    goto :goto_51

    :sswitch_70
    const/16 v3, 0x39

    goto :goto_51

    :cond_73
    if-nez v0, :cond_81

    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    new-instance v1, La/b/d/k;

    iget v2, p0, La/g/c/u;->y:I

    invoke-direct {v1, v4, v2}, La/b/d/k;-><init>(BI)V

    invoke-virtual {v0, v6, v1}, La/b/c/u;->a(ILa/b/d/c;)V

    :cond_81
    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v0}, La/b/c/u;->b()V

    return-void

    nop

    :sswitch_data_88
    .sparse-switch
        0x42 -> :sswitch_67
        0x43 -> :sswitch_67
        0x44 -> :sswitch_70
        0x46 -> :sswitch_6d
        0x49 -> :sswitch_67
        0x4a -> :sswitch_6a
        0x53 -> :sswitch_67
        0x5a -> :sswitch_67
    .end sparse-switch
.end method

.method private c(La/b/c;La/b/j;La/b/a/d;)V
    .registers 10

    const/16 v5, 0x2e

    const/4 v4, 0x0

    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    iget v1, p3, La/b/a/d;->e:I

    invoke-virtual {v0, v1}, La/b/c/u;->a(I)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    iget v1, p3, La/b/a/d;->e:I

    invoke-virtual {v0, v1}, La/b/c/u;->b(I)V

    iget-object v0, p0, La/g/c/u;->q:La/b/c/al;

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/a/d/l;)V

    iput-boolean v4, p0, La/g/c/u;->B:Z

    iput v4, p0, La/g/c/u;->D:I

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->b(La/b/c;La/b/j;La/b/a/d/i;)V

    iget-boolean v0, p0, La/g/c/u;->B:Z

    if-nez v0, :cond_64

    iget-boolean v0, p0, La/g/c/u;->s:Z

    if-eqz v0, :cond_ad

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":0:0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_53
    iget-object v1, p0, La/g/c/u;->j:La/b/c/u;

    iget v2, p0, La/g/c/u;->D:I

    new-instance v3, La/b/a/j;

    invoke-direct {v3, v4, v4, v0}, La/b/a/j;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, La/b/c/u;->a(ILa/b/a/m;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/g/c/u;->D:I

    :cond_64
    iget-boolean v0, p0, La/g/c/u;->s:Z

    if-eqz v0, :cond_a7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":0:0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/g/c/u;->j:La/b/c/u;

    iget v2, p0, La/g/c/u;->D:I

    new-instance v3, La/b/a/j;

    iget v4, p3, La/b/a/d;->e:I

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5, v0}, La/b/a/j;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, La/b/c/u;->a(ILa/b/a/m;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/g/c/u;->D:I

    :cond_a7
    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v0}, La/b/c/u;->b()V

    return-void

    :cond_ad
    const/4 v0, 0x0

    goto :goto_53
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/b/q;)V
    .registers 3

    invoke-virtual {p2, p0}, La/b/b/q;->a(La/b/g/aq;)V

    return-void
.end method

.method public a(La/b/c;La/b/i;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 8

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, La/g/c/u;->b(La/b/c;La/b/j;La/b/a/d;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "Unexpected error while inlining method:"

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Target class   = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/g/c/u;->n:La/b/k;

    invoke-virtual {v2}, La/b/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Target method  = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/g/c/u;->o:La/b/n;

    iget-object v3, p0, La/g/c/u;->n:La/b/k;

    invoke-virtual {v2, v3}, La/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/g/c/u;->o:La/b/n;

    iget-object v3, p0, La/g/c/u;->n:La/b/k;

    invoke-virtual {v2, v3}, La/b/n;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    iget-boolean v1, p0, La/g/c/u;->s:Z

    if-eqz v1, :cond_a8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Inlined class  = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Inlined method = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    :cond_a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Exception      = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v0, "Not inlining this method"

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-byte v0, p5, La/b/d/b;->c:B

    packed-switch v0, :pswitch_data_78

    :cond_7
    :goto_7
    :pswitch_7  #0xffffffba
    iget-boolean v0, p0, La/g/c/u;->s:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, La/g/c/u;->p:La/b/c/ad;

    iget v1, p5, La/b/d/b;->a:I

    invoke-virtual {v0, p1, v1}, La/b/c/ad;->a(La/b/c;I)I

    move-result v0

    iput v0, p5, La/b/d/b;->a:I

    :cond_15
    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v0, p4, p5}, La/b/c/u;->a(ILa/b/d/c;)V

    :cond_1a
    :goto_1a
    return-void

    :pswitch_1b  #0xffffffbb
    iget v0, p0, La/g/c/u;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/g/c/u;->x:I

    goto :goto_7

    :pswitch_22  #0xffffffb6, 0xffffffb7, 0xffffffb8, 0xffffffb9
    iput-boolean v2, p0, La/g/c/u;->z:Z

    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v0, p4}, La/b/c/u;->b(I)V

    iget-boolean v0, p0, La/g/c/u;->s:Z

    if-nez v0, :cond_75

    iget-object v0, p0, La/g/c/u;->m:La/b/a/d/w;

    invoke-virtual {v0, p4}, La/b/a/d/w;->a(I)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, La/g/c/u;->m:La/b/a/d/w;

    invoke-virtual {v0, p4}, La/b/a/d/w;->c(I)I

    move-result v0

    if-nez v0, :cond_75

    move v0, v1

    :goto_3e
    iput-boolean v0, p0, La/g/c/u;->u:Z

    iget v0, p0, La/g/c/u;->y:I

    iget v3, p3, La/b/a/d;->d:I

    add-int/2addr v0, v3

    iput v0, p0, La/g/c/u;->y:I

    iput-boolean v2, p0, La/g/c/u;->v:Z

    iput v2, p0, La/g/c/u;->w:I

    invoke-virtual {p3, p1, p2, p4, p0}, La/b/a/d;->a(La/b/c;La/b/j;ILa/b/a/d/l;)V

    iget v0, p0, La/g/c/u;->w:I

    if-lez v0, :cond_54

    iget-boolean v1, p0, La/g/c/u;->v:Z

    :cond_54
    iput-boolean v1, p0, La/g/c/u;->v:Z

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    iget v0, p0, La/g/c/u;->y:I

    iget v1, p3, La/b/a/d;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, La/g/c/u;->y:I

    iget-boolean v0, p0, La/g/c/u;->z:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, La/g/c/u;->i:La/b/d/a/d;

    if-eqz v0, :cond_1a

    iget-object v0, p0, La/g/c/u;->i:La/b/d/a/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, La/b/d/a/d;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V

    goto :goto_1a

    :cond_75
    move v0, v2

    goto :goto_3e

    nop

    :pswitch_data_78
    .packed-switch -0x4a
        :pswitch_22  #ffffffb6
        :pswitch_22  #ffffffb7
        :pswitch_22  #ffffffb8
        :pswitch_22  #ffffffb9
        :pswitch_7  #ffffffba
        :pswitch_1b  #ffffffbb
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 7

    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v0, p4, p5}, La/b/c/u;->a(ILa/b/d/c;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 9

    iget-boolean v0, p0, La/g/c/u;->s:Z

    if-eqz v0, :cond_9

    iget-byte v0, p5, La/b/d/h;->c:B

    packed-switch v0, :pswitch_data_2c

    :cond_9
    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v0, p4, p5}, La/b/c/u;->a(ILa/b/d/c;)V

    :goto_e
    return-void

    :pswitch_f  #0xffffffac, 0xffffffad, 0xffffffae, 0xffffffaf, 0xffffffb0, 0xffffffb1
    iget v0, p3, La/b/a/d;->e:I

    add-int/lit8 v0, v0, -0x1

    if-ge p4, v0, :cond_25

    new-instance v0, La/b/d/a;

    const/16 v1, -0x38

    iget v2, p3, La/b/a/d;->e:I

    sub-int/2addr v2, p4

    invoke-direct {v0, v1, v2}, La/b/d/a;-><init>(BI)V

    iget-object v1, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v1, p4, v0}, La/b/c/u;->a(ILa/b/d/c;)V

    goto :goto_e

    :cond_25
    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v0, p4}, La/b/c/u;->b(I)V

    goto :goto_e

    nop

    :pswitch_data_2c
    .packed-switch -0x54
        :pswitch_f  #ffffffac
        :pswitch_f  #ffffffad
        :pswitch_f  #ffffffae
        :pswitch_f  #ffffffaf
        :pswitch_f  #ffffffb0
        :pswitch_f  #ffffffb1
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 8

    iget-boolean v0, p0, La/g/c/u;->s:Z

    if-eqz v0, :cond_b

    iget v0, p5, La/b/d/k;->b:I

    iget v1, p0, La/g/c/u;->y:I

    add-int/2addr v0, v1

    iput v0, p5, La/b/d/k;->b:I

    :cond_b
    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v0, p4, p5}, La/b/c/u;->a(ILa/b/d/c;)V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V
    .registers 7

    iget v0, p0, La/g/c/u;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/g/c/u;->w:I

    iget-boolean v1, p0, La/g/c/u;->v:Z

    iget v0, p4, La/b/a/h;->d:I

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    or-int/2addr v0, v1

    iput-boolean v0, p0, La/g/c/u;->v:Z

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/m;)V
    .registers 9

    :try_start_0
    invoke-virtual {p4}, La/b/a/m;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p4}, La/b/a/m;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_b
    if-eqz v1, :cond_27

    new-instance v0, La/b/a/j;

    iget v2, p4, La/b/a/m;->b:I

    iget v3, p4, La/b/a/m;->c:I

    invoke-direct {v0, v2, v3, v1}, La/b/a/j;-><init>(IILjava/lang/String;)V

    :goto_16
    iget-object v1, p0, La/g/c/u;->j:La/b/c/u;

    iget v2, p0, La/g/c/u;->D:I

    invoke-virtual {v1, v2, v0}, La/b/c/u;->a(ILa/b/a/m;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/g/c/u;->D:I

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, La/g/c/u;->C:Ljava/lang/String;

    move-object v1, v0

    goto :goto_b

    :cond_27
    new-instance v0, La/b/a/m;

    iget v1, p4, La/b/a/m;->b:I

    iget v2, p4, La/b/a/m;->c:I

    invoke-direct {v0, v1, v2}, La/b/a/m;-><init>(II)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_16

    :catch_31
    move-exception v0

    goto :goto_22
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/n;)V
    .registers 8

    const/16 v2, 0x3a

    iget-boolean v0, p0, La/g/c/u;->s:Z

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, La/b/a/n;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, La/b/a/n;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_45
    iput-object v0, p0, La/g/c/u;->C:Ljava/lang/String;

    invoke-virtual {p4, p1, p2, p3, p0}, La/b/a/n;->a(La/b/c;La/b/j;La/b/a/d;La/b/a/d/o;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/g/c/u;->B:Z

    return-void

    :cond_4e
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 6

    invoke-virtual {p2}, La/b/n;->a()I

    move-result v0

    invoke-static {p2}, La/g/f;->a(La/b/j;)Z

    move-result v1

    if-nez v1, :cond_eb

    and-int/lit8 v1, v0, 0x1a

    if-eqz v1, :cond_eb

    and-int/lit16 v0, v0, 0x520

    if-nez v0, :cond_eb

    invoke-virtual {p2, p1}, La/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    iget-object v0, p0, La/g/c/u;->o:La/b/n;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, La/g/c/u;->n:La/b/k;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    :cond_2e
    iget-object v0, p0, La/g/c/u;->t:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    iget-object v0, p0, La/g/c/u;->n:La/b/k;

    iget v0, v0, La/b/k;->a:I

    iget v1, p1, La/b/k;->a:I

    if-lt v0, v1, :cond_eb

    invoke-static {p2}, La/g/b/at;->a(La/b/j;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {p2}, La/g/b/i;->a(La/b/j;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_4a
    iget-object v0, p0, La/g/c/u;->n:La/b/k;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    :cond_52
    invoke-static {p2}, La/g/b/b;->a(La/b/j;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget v0, p0, La/g/c/u;->x:I

    if-nez v0, :cond_eb

    :cond_5c
    iget-boolean v0, p0, La/g/c/u;->g:Z

    if-nez v0, :cond_8c

    invoke-static {p2}, La/g/b/a;->a(La/b/j;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, La/g/c/u;->n:La/b/k;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    :cond_6e
    invoke-static {p2}, La/g/b/a;->b(La/b/j;)Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-virtual {p1}, La/b/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/g/c/u;->n:La/b/k;

    invoke-virtual {v1}, La/b/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/f/i;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    :cond_8c
    invoke-static {p2}, La/g/b/a;->c(La/b/j;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, La/g/c/u;->n:La/b/k;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    :cond_9a
    invoke-static {p2}, La/g/b/au;->a(La/b/j;)Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-boolean v0, p0, La/g/c/u;->v:Z

    if-eqz v0, :cond_eb

    :cond_a4
    invoke-static {p2}, La/g/b/c;->a(La/b/j;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-boolean v0, p0, La/g/c/u;->u:Z

    if-eqz v0, :cond_eb

    :cond_ae
    invoke-static {p2}, La/g/b/x;->a(La/b/j;)Z

    move-result v0

    if-nez v0, :cond_eb

    iget-object v0, p0, La/g/c/u;->n:La/b/k;

    invoke-static {v0, p1, p2}, La/g/b/am;->a(La/b/c;La/b/c;La/b/i;)Z

    move-result v0

    if-nez v0, :cond_eb

    iget-boolean v0, p0, La/g/c/u;->s:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, La/g/c/u;->s:Z

    iget-object v1, p0, La/g/c/u;->t:Ljava/util/Stack;

    invoke-virtual {v1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1, p0}, La/b/n;->a(La/b/k;La/b/a/d/i;)V

    iget-object v1, p0, La/g/c/u;->o:La/b/n;

    invoke-static {v1}, La/g/f;->a(La/b/j;)Z

    move-result v1

    if-nez v1, :cond_de

    iget-object v1, p0, La/g/c/u;->o:La/b/n;

    invoke-static {v1}, La/g/b/ai;->b(La/b/j;)La/g/b/ai;

    move-result-object v1

    invoke-static {p2}, La/g/b/q;->a(La/b/j;)La/g/b/q;

    move-result-object v2

    invoke-virtual {v1, v2}, La/g/b/ai;->a(La/g/b/q;)V

    :cond_de
    iget-object v1, p0, La/g/c/u;->l:La/b/a/d/i;

    invoke-virtual {p2, p1, v1}, La/b/n;->a(La/b/k;La/b/a/d/i;)V

    iput-boolean v0, p0, La/g/c/u;->s:Z

    iget-object v0, p0, La/g/c/u;->t:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_ea
    :goto_ea
    return-void

    :cond_eb
    invoke-virtual {p2, p1}, La/b/n;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    iget v0, p0, La/g/c/u;->x:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/g/c/u;->x:I

    goto :goto_ea
.end method

.method public b(La/b/c;La/b/j;La/b/a/d;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, La/g/c/u;->s:Z

    if-nez v0, :cond_63

    move-object v0, p1

    check-cast v0, La/b/k;

    iput-object v0, p0, La/g/c/u;->n:La/b/k;

    move-object v0, p2

    check-cast v0, La/b/n;

    iput-object v0, p0, La/g/c/u;->o:La/b/n;

    new-instance v0, La/b/c/ad;

    iget-object v3, p0, La/g/c/u;->n:La/b/k;

    invoke-direct {v0, v3}, La/b/c/ad;-><init>(La/b/k;)V

    iput-object v0, p0, La/g/c/u;->p:La/b/c/ad;

    new-instance v0, La/b/c/al;

    iget-object v3, p0, La/g/c/u;->n:La/b/k;

    iget-object v4, p0, La/g/c/u;->j:La/b/c/u;

    invoke-direct {v0, v3, v4}, La/b/c/al;-><init>(La/b/k;La/b/c/u;)V

    iput-object v0, p0, La/g/c/u;->q:La/b/c/al;

    iget v0, p3, La/b/a/d;->e:I

    iput v0, p0, La/g/c/u;->r:I

    iget-object v0, p0, La/g/c/u;->t:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "<init>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    move v0, v1

    :goto_3b
    iput v0, p0, La/g/c/u;->x:I

    iput-boolean v2, p0, La/g/c/u;->A:Z

    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v0}, La/b/c/u;->a()V

    iget-object v0, p0, La/g/c/u;->m:La/b/a/d/w;

    invoke-virtual {v0, p1, p2, p3}, La/b/a/d/w;->a(La/b/c;La/b/j;La/b/a/d;)V

    invoke-direct {p0, p1, p2, p3}, La/g/c/u;->c(La/b/c;La/b/j;La/b/a/d;)V

    iget-boolean v0, p0, La/g/c/u;->A:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, La/g/c/u;->j:La/b/c/u;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/u;->a(La/b/c;La/b/j;La/b/a/d;)V

    iget-object v0, p0, La/g/c/u;->k:La/b/g/aq;

    invoke-interface {p2, p1, v0}, La/b/j;->a(La/b/c;La/b/g/aq;)V

    :cond_5a
    iput-object v5, p0, La/g/c/u;->n:La/b/k;

    iput-object v5, p0, La/g/c/u;->o:La/b/n;

    iput-object v5, p0, La/g/c/u;->p:La/b/c/ad;

    :cond_60
    :goto_60
    return-void

    :cond_61
    move v0, v2

    goto :goto_3b

    :cond_63
    iget-boolean v0, p0, La/g/c/u;->h:Z

    if-eqz v0, :cond_8c

    invoke-static {p2}, La/g/b/p;->a(La/b/j;)I

    move-result v0

    if-ne v0, v1, :cond_60

    :goto_6d
    iget v2, p0, La/g/c/u;->r:I

    iget v3, p3, La/b/a/d;->e:I

    iget-boolean v0, p0, La/g/c/u;->e:Z

    if-eqz v0, :cond_9a

    sget v0, La/g/c/u;->d:I

    :goto_77
    add-int/2addr v2, v3

    if-ge v2, v0, :cond_60

    iget v0, p0, La/g/c/u;->r:I

    iget v2, p3, La/b/a/d;->e:I

    add-int/2addr v0, v2

    iput v0, p0, La/g/c/u;->r:I

    invoke-direct {p0, p1, p2}, La/g/c/u;->a(La/b/c;La/b/j;)V

    invoke-direct {p0, p1, p2, p3}, La/g/c/u;->c(La/b/c;La/b/j;La/b/a/d;)V

    iput-boolean v1, p0, La/g/c/u;->z:Z

    iput-boolean v1, p0, La/g/c/u;->A:Z

    goto :goto_60

    :cond_8c
    iget v2, p3, La/b/a/d;->e:I

    iget-boolean v0, p0, La/g/c/u;->f:Z

    if-eqz v0, :cond_97

    sget v0, La/g/c/u;->b:I

    :goto_94
    if-gt v2, v0, :cond_60

    goto :goto_6d

    :cond_97
    sget v0, La/g/c/u;->a:I

    goto :goto_94

    :cond_9a
    sget v0, La/g/c/u;->c:I

    goto :goto_77
.end method
