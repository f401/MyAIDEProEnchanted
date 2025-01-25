.class public Lorg/c/a/a/b/d/e/k;
.super Lorg/c/a/a/b/d/e/m;


# static fields
.field public static final a:Lorg/c/a/a/b/d/e/k;

.field public static final b:Lorg/c/a/a/b/d/e/k;

.field public static final c:Lorg/c/a/a/b/d/e/k;

.field public static final d:Lorg/c/a/a/b/d/e/k;

.field public static final e:Lorg/c/a/a/b/d/e/k;

.field public static final f:Lorg/c/a/a/b/d/e/k;

.field public static final g:Lorg/c/a/a/b/d/e/k;

.field public static final h:Lorg/c/a/a/b/d/e/k;

.field public static final i:Lorg/c/a/a/b/d/e/k;

.field public static final j:Lorg/c/a/a/b/d/e/k;

.field public static final k:Lorg/c/a/a/b/d/e/k;

.field public static final l:Lorg/c/a/a/b/d/e/k;

.field public static final m:Lorg/c/a/a/b/d/e/k;

.field public static final n:Lorg/c/a/a/b/d/e/k;

.field public static final o:Lorg/c/a/a/b/d/e/k;

.field public static final p:Lorg/c/a/a/b/d/e/k;

.field public static final q:Lorg/c/a/a/b/d/e/k;

.field static final x:Z


# instance fields
.field protected r:Ljava/lang/String;

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x70

    const/16 v7, 0x60

    const/16 v6, 0x42

    const/4 v1, 0x1

    const/16 v5, 0x40

    const-class v0, Lorg/c/a/a/b/d/e/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_e7

    move v0, v1

    :goto_12
    sput-boolean v0, Lorg/c/a/a/b/d/e/k;->x:Z

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v2, "boolean"

    invoke-direct {v0, v2, v1, v1, v1}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->a:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "byte"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3, v8}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->b:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "char"

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->c:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "double"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->d:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "float"

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->e:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "int"

    const/16 v2, 0x72

    invoke-direct {v0, v1, v5, v2, v5}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->f:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "long"

    const/16 v2, 0x80

    const/16 v3, 0x80

    const/16 v4, 0x80

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->g:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "short"

    const/16 v2, 0x20

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->h:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "void"

    const/16 v2, 0x100

    const/16 v3, 0x100

    const/16 v4, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->i:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "maybe_char"

    invoke-direct {v0, v1, v6, v6, v6}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->j:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "maybe_short"

    const/16 v2, 0x62

    const/16 v3, 0x62

    const/16 v4, 0x62

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->k:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "maybe_byte"

    const/16 v2, 0x72

    const/16 v3, 0x72

    const/16 v4, 0x72

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->l:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "maybe_boolean"

    const/16 v2, 0x73

    const/16 v3, 0x73

    const/16 v4, 0x73

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->m:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "maybe_negative_byte"

    invoke-direct {v0, v1, v8, v8, v8}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->n:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "maybe_negative_short"

    invoke-direct {v0, v1, v7, v7, v7}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->o:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "maybe_int"

    invoke-direct {v0, v1, v5, v5, v5}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->p:Lorg/c/a/a/b/d/e/k;

    new-instance v0, Lorg/c/a/a/b/d/e/k;

    const-string v1, "maybe_negative_boolean"

    const/16 v2, 0x71

    const/16 v3, 0x71

    const/16 v4, 0x71

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/c/a/a/b/d/e/k;->q:Lorg/c/a/a/b/d/e/k;

    return-void

    :cond_e7
    const/4 v0, 0x0

    goto/16 :goto_12
.end method

.method protected constructor <init>(Ljava/lang/String;III)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIII)V
    .registers 9

    const/16 v2, 0x5b

    invoke-direct {p0}, Lorg/c/a/a/b/d/e/m;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/e/k;->r:Ljava/lang/String;

    iput p5, p0, Lorg/c/a/a/b/d/e/k;->s:I

    iput p2, p0, Lorg/c/a/a/b/d/e/k;->t:I

    iput p3, p0, Lorg/c/a/a/b/d/e/k;->u:I

    iput p4, p0, Lorg/c/a/a/b/d/e/k;->v:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p5, :pswitch_data_7c

    const/4 v0, 0x0

    :goto_18
    if-lt v0, p5, :cond_34

    :goto_1a
    :pswitch_1a  #0x0
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3a

    const/16 v0, 0x44

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/b/d/e/k;->w:Ljava/lang/String;

    return-void

    :pswitch_2a  #0x1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    :pswitch_2e  #0x2
    const-string v0, "[["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_3a
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_44

    const/16 v0, 0x46

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_44
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_4e

    const/16 v0, 0x4a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_4e
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_58

    const/16 v0, 0x5a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_58
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_62

    const/16 v0, 0x42

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_62
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_6c

    const/16 v0, 0x43

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_6c
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_76

    const/16 v0, 0x53

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_76
    const/16 v0, 0x49

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_2a  #00000001
        :pswitch_2e  #00000002
    .end packed-switch
.end method

.method protected constructor <init>(Lorg/c/a/a/b/d/e/k;I)V
    .registers 9

    iget-object v1, p1, Lorg/c/a/a/b/d/e/k;->r:Ljava/lang/String;

    iget v2, p1, Lorg/c/a/a/b/d/e/k;->t:I

    iget v3, p1, Lorg/c/a/a/b/d/e/k;->u:I

    iget v4, p1, Lorg/c/a/a/b/d/e/k;->v:I

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/e/k;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lorg/c/a/a/b/d/e/l;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/c/a/a/b/d/e/k;->b(I)Lorg/c/a/a/b/d/e/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/d/e/u;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/e/u;->a(Lorg/c/a/a/b/d/e/k;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/k;->r:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Lorg/c/a/a/b/d/e/k;
    .registers 3

    sget-boolean v0, Lorg/c/a/a/b/d/e/k;->x:Z

    if-nez v0, :cond_c

    if-gez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lorg/c/a/a/b/d/e/k;->s:I

    if-ne v0, p1, :cond_11

    :goto_10
    return-object p0

    :cond_11
    new-instance v0, Lorg/c/a/a/b/d/e/k;

    invoke-direct {v0, p0, p1}, Lorg/c/a/a/b/d/e/k;-><init>(Lorg/c/a/a/b/d/e/k;I)V

    move-object p0, v0

    goto :goto_10
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/e/k;->s:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/k;->w:Ljava/lang/String;

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
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    check-cast p1, Lorg/c/a/a/b/d/e/k;

    iget v2, p0, Lorg/c/a/a/b/d/e/k;->s:I

    iget v3, p1, Lorg/c/a/a/b/d/e/k;->s:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/c/a/a/b/d/e/k;->t:I

    iget v3, p1, Lorg/c/a/a/b/d/e/k;->t:I

    if-eq v2, v3, :cond_4

    goto :goto_5
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/e/k;->t:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/c/a/a/b/d/e/k;->s:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/c/a/a/b/d/e/k;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/e/k;->u:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/e/k;->v:I

    return v0
.end method

.method public m_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lorg/c/a/a/b/d/e/k;->s:I

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrimitiveType{primitive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/e/k;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrimitiveType{primitive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/e/k;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dimension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/c/a/a/b/d/e/k;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method
