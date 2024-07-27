.class public Lorg/objectweb/asm/util/CheckAnnotationAdapter;
.super Lorg/objectweb/asm/AnnotationVisitor;


# instance fields
.field private end:Z

.field private final named:Z


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/AnnotationVisitor;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Z)V

    return-void
.end method

.method constructor <init>(Lorg/objectweb/asm/AnnotationVisitor;Z)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(ILorg/objectweb/asm/AnnotationVisitor;)V

    iput-boolean p2, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->named:Z

    return-void
.end method

.method private checkEnd()V
    .registers 3

    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->end:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkName(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->named:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Annotation value name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->checkEnd()V

    invoke-direct {p0, p1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->checkName(Ljava/lang/String;)V

    instance-of v0, p2, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/objectweb/asm/Type;

    if-nez v0, :cond_0

    instance-of v0, p2, [B

    if-nez v0, :cond_0

    instance-of v0, p2, [Z

    if-nez v0, :cond_0

    instance-of v0, p2, [C

    if-nez v0, :cond_0

    instance-of v0, p2, [S

    if-nez v0, :cond_0

    instance-of v0, p2, [I

    if-nez v0, :cond_0

    instance-of v0, p2, [J

    if-nez v0, :cond_0

    instance-of v0, p2, [F

    if-nez v0, :cond_0

    instance-of v0, p2, [D

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid annotation value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p2, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid annotation value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 5

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->checkEnd()V

    invoke-direct {p0, p1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->checkName(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/objectweb/asm/util/CheckAnnotationAdapter;

    invoke-direct {v1, v0}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 5

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->checkEnd()V

    invoke-direct {p0, p1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->checkName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/objectweb/asm/util/CheckAnnotationAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;Z)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    goto :goto_0
.end method

.method public visitEnd()V
    .registers 2

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->checkEnd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->end:Z

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->checkEnd()V

    invoke-direct {p0, p1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->checkName(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid enum value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;->av:Lorg/objectweb/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
