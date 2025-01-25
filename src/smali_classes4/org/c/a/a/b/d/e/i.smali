.class public Lorg/c/a/a/b/d/e/i;
.super Lorg/c/a/a/b/d/e/m;


# static fields
.field public static final c:Lorg/c/a/a/b/d/e/i;

.field public static final d:Lorg/c/a/a/b/d/e/i;

.field public static final e:Lorg/c/a/a/b/d/e/i;

.field public static final f:Lorg/c/a/a/b/d/e/i;

.field public static final g:Lorg/c/a/a/b/d/e/i;

.field public static final h:Lorg/c/a/a/b/d/e/i;

.field public static final i:Lorg/c/a/a/b/d/e/i;

.field public static final j:Lorg/c/a/a/b/d/e/i;

.field public static final k:Lorg/c/a/a/b/d/e/i;

.field public static final l:Lorg/c/a/a/b/d/e/i;

.field public static final m:Lorg/c/a/a/b/d/e/i;

.field public static final n:Lorg/c/a/a/b/d/e/i;

.field public static final o:Lorg/c/a/a/b/d/e/i;

.field public static final p:Lorg/c/a/a/b/d/e/i;

.field static final w:Z


# instance fields
.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Lorg/c/a/a/b/d/e/e;

.field protected u:I

.field protected v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-class v0, Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c2

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/c/a/a/b/d/e/i;->w:Z

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Boolean"

    const-string v2, "java.lang.Boolean"

    const-string v3, "Boolean"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->c:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Byte"

    const-string v2, "java.lang.Byte"

    const-string v3, "Byte"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->d:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Character"

    const-string v2, "java.lang.Character"

    const-string v3, "Character"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->e:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Class"

    const-string v2, "java.lang.Class"

    const-string v3, "Class"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->f:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Double"

    const-string v2, "java.lang.Double"

    const-string v3, "Double"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->g:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Float"

    const-string v2, "java.lang.Float"

    const-string v3, "Float"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->h:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Integer"

    const-string v2, "java.lang.Integer"

    const-string v3, "Integer"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->i:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Long"

    const-string v2, "java.lang.Long"

    const-string v3, "Long"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->j:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Math"

    const-string v2, "java.lang.Math"

    const-string v3, "Math"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->k:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Object"

    const-string v2, "java.lang.Object"

    const-string v3, "Object"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->l:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Short"

    const-string v2, "java.lang.Short"

    const-string v3, "Short"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->m:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/String"

    const-string v2, "java.lang.String"

    const-string v3, "String"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->n:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    const-string v1, "java/lang/Throwable"

    const-string v2, "java.lang.Throwable"

    const-string v3, "Throwable"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->o:Lorg/c/a/a/b/d/e/i;

    new-instance v0, Lorg/c/a/a/b/d/e/j;

    const-string v1, "java/lang/Object"

    const-string v2, "java.lang.Object"

    const-string v3, "Object"

    invoke-direct {v0, v1, v2, v3}, Lorg/c/a/a/b/d/e/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/c/a/a/b/d/e/i;->p:Lorg/c/a/a/b/d/e/i;

    return-void

    :cond_c2
    const/4 v0, 0x0

    goto/16 :goto_9
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;I)V
    .registers 11

    const/16 v4, 0x3b

    invoke-direct {p0}, Lorg/c/a/a/b/d/e/m;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/e/i;->q:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/b/d/e/i;->r:Ljava/lang/String;

    iput-object p3, p0, Lorg/c/a/a/b/d/e/i;->s:Ljava/lang/String;

    iput-object p4, p0, Lorg/c/a/a/b/d/e/i;->t:Lorg/c/a/a/b/d/e/e;

    iput p5, p0, Lorg/c/a/a/b/d/e/i;->u:I

    sget-boolean v0, Lorg/c/a/a/b/d/e/i;->w:Z

    if-nez v0, :cond_23

    if-eqz p1, :cond_1d

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_23
    packed-switch p5, :pswitch_data_96

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    new-array v2, p5, [C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const-string v2, "\u0000"

    const-string v3, "["

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/b/d/e/i;->v:Ljava/lang/String;

    :goto_52
    return-void

    :pswitch_53  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/b/d/e/i;->v:Ljava/lang/String;

    goto :goto_52

    :pswitch_69  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/b/d/e/i;->v:Ljava/lang/String;

    goto :goto_52

    :pswitch_7f  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[[L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/a/b/d/e/i;->v:Ljava/lang/String;

    goto :goto_52

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_53  #00000000
        :pswitch_69  #00000001
        :pswitch_7f  #00000002
    .end packed-switch
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/e/e;)Lorg/c/a/a/b/d/e/i;
    .registers 8

    new-instance v0, Lorg/c/a/a/b/d/e/i;

    iget-object v1, p0, Lorg/c/a/a/b/d/e/i;->q:Ljava/lang/String;

    iget-object v2, p0, Lorg/c/a/a/b/d/e/i;->r:Ljava/lang/String;

    iget-object v3, p0, Lorg/c/a/a/b/d/e/i;->s:Ljava/lang/String;

    iget v5, p0, Lorg/c/a/a/b/d/e/i;->u:I

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;I)V

    return-object v0
.end method

.method public a(I)Lorg/c/a/a/b/d/e/l;
    .registers 8

    sget-boolean v0, Lorg/c/a/a/b/d/e/i;->w:Z

    if-nez v0, :cond_c

    if-gez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    iget v0, p0, Lorg/c/a/a/b/d/e/i;->u:I

    if-ne v0, p1, :cond_11

    :goto_10
    return-object p0

    :cond_11
    new-instance v0, Lorg/c/a/a/b/d/e/i;

    iget-object v1, p0, Lorg/c/a/a/b/d/e/i;->q:Ljava/lang/String;

    iget-object v2, p0, Lorg/c/a/a/b/d/e/i;->r:Ljava/lang/String;

    iget-object v3, p0, Lorg/c/a/a/b/d/e/i;->s:Ljava/lang/String;

    iget-object v4, p0, Lorg/c/a/a/b/d/e/i;->t:Lorg/c/a/a/b/d/e/e;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/d/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/e;I)V

    move-object p0, v0

    goto :goto_10
.end method

.method public a(Lorg/c/a/a/b/d/e/u;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/e/u;->a(Lorg/c/a/a/b/d/e/i;)V

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/d/e/i;->u:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/i;->v:Ljava/lang/String;

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

    check-cast p1, Lorg/c/a/a/b/d/e/i;

    iget v2, p0, Lorg/c/a/a/b/d/e/i;->u:I

    iget v3, p1, Lorg/c/a/a/b/d/e/i;->u:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/c/a/a/b/d/e/i;->q:Ljava/lang/String;

    iget-object v3, p1, Lorg/c/a/a/b/d/e/i;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/i;->q:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/b/d/e/i;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/c/a/a/b/d/e/i;->u:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/i;->r:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/i;->s:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lorg/c/a/a/b/d/e/e;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/e/i;->t:Lorg/c/a/a/b/d/e/e;

    return-object v0
.end method

.method public l()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectType{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/c/a/a/b/d/e/i;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/c/a/a/b/d/e/i;->t:Lorg/c/a/a/b/d/e/e;

    if-eqz v1, :cond_21

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/b/d/e/i;->t:Lorg/c/a/a/b/d/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_21
    iget v1, p0, Lorg/c/a/a/b/d/e/i;->u:I

    if-lez v1, :cond_30

    const-string v1, ", dimension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/c/a/a/b/d/e/i;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_30
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
