.class public Lorg/c/a/a/c/a/a/a/a/a;
.super Ljava/lang/Object;


# static fields
.field protected static final a:[Ljava/lang/String;

.field protected static final b:Lorg/c/a/a/d/c;

.field protected static final c:Lorg/c/a/a/d/c;

.field public static final d:Lorg/c/a/a/c/a/a/a/a/a;

.field public static final e:Lorg/c/a/a/c/a/a/a/a/a;

.field public static final f:Lorg/c/a/a/c/a/a/a/a/a;

.field public static final g:Lorg/c/a/a/c/a/a/a/a/a;

.field public static final h:Lorg/c/a/a/c/a/a/a/a/a;

.field public static final i:Lorg/c/a/a/c/a/a/a/a/a;

.field static final x:Z


# instance fields
.field protected j:Lorg/c/a/a/c/a/a/a/a/f;

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:Lorg/c/a/a/c/a/a/a/a/a;

.field protected p:Lorg/c/a/a/c/a/a/a/a/a;

.field protected q:Lorg/c/a/a/c/a/a/a/a/a;

.field protected r:Z

.field protected s:Lorg/c/a/a/c/a/a/a/a/a;

.field protected t:Lorg/c/a/a/c/a/a/a/a/a;

.field protected u:Lorg/c/a/a/d/c;

.field protected v:Lorg/c/a/a/d/c;

.field protected w:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/c/a/a/a/a/a;->x:Z

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "DELETED"

    aput-object v3, v0, v2

    const-string v2, "START"

    aput-object v2, v0, v1

    const-string v1, "END"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "STATEMENTS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "THROW"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "RETURN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RETURN_VALUE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SWITCH_DECLARATION"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SWITCH"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SWITCH_BREAK"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TRY_DECLARATION"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TRY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TRY_JSR"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TYPE_TRY_ECLIPSE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JSR"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RET"

    aput-object v2, v0, v1

    const-string v1, "CONDITIONAL_BRANCH"

    aput-object v1, v0, v5

    const/16 v1, 0x11

    const-string v2, "IF"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "IF_ELSE"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CONDITION"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CONDITION_OR"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CONDITION_AND"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CONDITION_TERNARY_OPERATOR"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "LOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "LOOP_START"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "LOOP_CONTINUE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "LOOP_END"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "GOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "INFINITE_GOTO"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "GOTO_IN_TERNARY_OP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TERNARY_OP"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "JUMP"

    aput-object v2, v0, v1

    sput-object v0, Lorg/c/a/a/c/a/a/a/a/a;->a:[Ljava/lang/String;

    invoke-static {}, Lorg/c/a/a/d/c;->f()Lorg/c/a/a/d/c;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/c/a/a/a/a/a;->b:Lorg/c/a/a/d/c;

    invoke-static {}, Lorg/c/a/a/d/c;->f()Lorg/c/a/a/d/c;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/c/a/a/a/a/a;->c:Lorg/c/a/a/d/c;

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/c;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/c/a/a/c/a/a/a/a/c;-><init>(I)V

    sput-object v0, Lorg/c/a/a/c/a/a/a/a/a;->d:Lorg/c/a/a/c/a/a/a/a/a;

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/c;

    const/high16 v1, 0x800000

    invoke-direct {v0, v1}, Lorg/c/a/a/c/a/a/a/a/c;-><init>(I)V

    sput-object v0, Lorg/c/a/a/c/a/a/a/a/a;->e:Lorg/c/a/a/c/a/a/a/a/a;

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/c;

    const/high16 v1, 0x1000000

    invoke-direct {v0, v1}, Lorg/c/a/a/c/a/a/a/a/c;-><init>(I)V

    sput-object v0, Lorg/c/a/a/c/a/a/a/a/a;->f:Lorg/c/a/a/c/a/a/a/a/a;

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/c;

    const/high16 v1, 0x2000000

    invoke-direct {v0, v1}, Lorg/c/a/a/c/a/a/a/a/c;-><init>(I)V

    sput-object v0, Lorg/c/a/a/c/a/a/a/a/a;->g:Lorg/c/a/a/c/a/a/a/a/a;

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/c;

    invoke-direct {v0, v4}, Lorg/c/a/a/c/a/a/a/a/c;-><init>(I)V

    sput-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    new-instance v0, Lorg/c/a/a/c/a/a/a/a/c;

    invoke-direct {v0, v5}, Lorg/c/a/a/c/a/a/a/a/c;-><init>(I)V

    sput-object v0, Lorg/c/a/a/c/a/a/a/a/a;->i:Lorg/c/a/a/c/a/a/a/a/a;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Lorg/c/a/a/c/a/a/a/a/f;IIIIZ)V
    .registers 15

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/c/a/a/c/a/a/a/a/a;-><init>(Lorg/c/a/a/c/a/a/a/a/f;IIIIZLjava/util/HashSet;)V

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/c/a/a/a/a/f;IIIIZLjava/util/HashSet;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->b:Lorg/c/a/a/d/c;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->c:Lorg/c/a/a/d/c;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->v:Lorg/c/a/a/d/c;

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->j:Lorg/c/a/a/c/a/a/a/a/f;

    iput p2, p0, Lorg/c/a/a/c/a/a/a/a/a;->k:I

    iput p3, p0, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    iput p4, p0, Lorg/c/a/a/c/a/a/a/a/a;->m:I

    iput p5, p0, Lorg/c/a/a/c/a/a/a/a/a;->n:I

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->q:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->p:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->o:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object p7, p0, Lorg/c/a/a/c/a/a/a/a/a;->w:Ljava/util/HashSet;

    iput-boolean p6, p0, Lorg/c/a/a/c/a/a/a/a/a;->r:Z

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/c/a/a/a/a/f;ILorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/c/a/a/c/a/a/a/a/a;-><init>(Lorg/c/a/a/c/a/a/a/a/f;ILorg/c/a/a/c/a/a/a/a/a;Ljava/util/HashSet;)V

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/c/a/a/a/a/f;ILorg/c/a/a/c/a/a/a/a/a;Ljava/util/HashSet;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->b:Lorg/c/a/a/d/c;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->c:Lorg/c/a/a/d/c;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->v:Lorg/c/a/a/d/c;

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->j:Lorg/c/a/a/c/a/a/a/a/f;

    iput p2, p0, Lorg/c/a/a/c/a/a/a/a/a;->k:I

    iget v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    iput v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    iget v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->m:I

    iput v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->m:I

    iget v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->n:I

    iput v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->n:I

    iget-object v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->o:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->o:Lorg/c/a/a/c/a/a/a/a/a;

    iget-object v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->p:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->p:Lorg/c/a/a/c/a/a/a/a/a;

    iget-object v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->q:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->q:Lorg/c/a/a/c/a/a/a/a/a;

    iget-boolean v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->r:Z

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->r:Z

    iget-object v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    iget-object v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    iget-object v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    iget-object v0, p3, Lorg/c/a/a/c/a/a/a/a/a;->v:Lorg/c/a/a/d/c;

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->v:Lorg/c/a/a/d/c;

    iput-object p4, p0, Lorg/c/a/a/c/a/a/a/a/a;->w:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/c/a/a/a/a/f;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->j:Lorg/c/a/a/c/a/a/a/a/f;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 6

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->b:Lorg/c/a/a/d/c;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    new-instance v1, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-direct {v1, p1, p2}, Lorg/c/a/a/c/a/a/a/a/b;-><init>(Ljava/lang/String;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    new-instance v1, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-direct {v1, p1, p2}, Lorg/c/a/a/c/a/a/a/a/b;-><init>(Ljava/lang/String;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v2

    if-ne v2, p2, :cond_1

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->o:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/a;->o:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->p:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/a;->p:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_1
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->v:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_2
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_3
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->w:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->w:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0, p1, p2}, Lorg/c/a/a/c/a/a/a/a/b;->a(Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0, p1, p2}, Lorg/c/a/a/c/a/a/a/a/e;->a(Ljava/util/HashSet;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_1
.end method

.method public a(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->o:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method

.method public a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->o:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/a;->o:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->p:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, p1, :cond_1

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/a;->p:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_1
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->v:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, p1, :cond_2

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_2
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, p1, :cond_3

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    :cond_3
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->w:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->w:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    if-eq p2, v0, :cond_4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->w:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0, p1, p2}, Lorg/c/a/a/c/a/a/a/a/b;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0, p1, p2}, Lorg/c/a/a/c/a/a/a/a/e;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_1
.end method

.method public a(Lorg/c/a/a/d/c;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->v:Lorg/c/a/a/d/c;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->r:Z

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->k:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->m:I

    return-void
.end method

.method public b(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->p:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    return v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->n:I

    return-void
.end method

.method public c(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->q:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->m:I

    return v0
.end method

.method public d(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method

.method public d(I)Z
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->n:I

    return v0
.end method

.method public e(Lorg/c/a/a/c/a/a/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->k:I

    check-cast p1, Lorg/c/a/a/c/a/a/a/a/a;

    iget v1, p1, Lorg/c/a/a/c/a/a/a/a/a;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->j:Lorg/c/a/a/c/a/a/a/a/f;

    iget v1, p0, Lorg/c/a/a/c/a/a/a/a/a;->m:I

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v0

    return v0
.end method

.method public f(Lorg/c/a/a/c/a/a/a/a/a;)Z
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->o:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->p:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->v:Lorg/c/a/a/d/c;

    invoke-virtual {v0}, Lorg/c/a/a/d/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, p1, :cond_6

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/b;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/b;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-ne v0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/e;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/e;->c()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v0

    if-ne v0, p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    if-ne v0, p1, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->j:Lorg/c/a/a/c/a/a/a/a/f;

    iget v1, p0, Lorg/c/a/a/c/a/a/a/a/a;->n:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/a/f;->a(I)I

    move-result v0

    return v0
.end method

.method public h()Lorg/c/a/a/c/a/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->o:Lorg/c/a/a/c/a/a/a/a/a;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->k:I

    return v0
.end method

.method public i()Lorg/c/a/a/c/a/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->p:Lorg/c/a/a/c/a/a/a/a/a;

    return-object v0
.end method

.method public j()Lorg/c/a/a/d/c;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->u:Lorg/c/a/a/d/c;

    return-object v0
.end method

.method public k()Lorg/c/a/a/d/c;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->v:Lorg/c/a/a/d/c;

    return-object v0
.end method

.method public l()Lorg/c/a/a/c/a/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->q:Lorg/c/a/a/c/a/a/a/a/a;

    return-object v0
.end method

.method public m()Lorg/c/a/a/c/a/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    return-object v0
.end method

.method public n()Lorg/c/a/a/c/a/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    return-object v0
.end method

.method public o()Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->w:Ljava/util/HashSet;

    return-object v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->r:Z

    return v0
.end method

.method public q()V
    .registers 3

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    sparse-switch v0, :sswitch_data_0

    sget-boolean v0, Lorg/c/a/a/c/a/a/a/a/a;->x:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid condition"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :sswitch_0
    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->r:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->r:Z

    :cond_0
    :goto_0
    return-void

    :sswitch_1
    const/high16 v0, 0x80000

    iput v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    goto :goto_0

    :sswitch_2
    const/high16 v0, 0x100000

    iput v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->s:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->t:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->q()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_2
        0x100000 -> :sswitch_1
        0x200000 -> :sswitch_0
        0x10000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public r()Ljava/lang/String;
    .registers 3

    sget-object v1, Lorg/c/a/a/c/a/a/a/a/a;->a:[Ljava/lang/String;

    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget-object v0, v1, v0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/c/a/a/c/a/a/a/a/a;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicBlock{index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/c/a/a/c/a/a/a/a/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/c/a/a/a/a/a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/c/a/a/a/a/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/c/a/a/c/a/a/a/a/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inverseCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/c/a/a/c/a/a/a/a/a;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/a;->w:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", predecessors=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/a/a;->w:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/a/a;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
