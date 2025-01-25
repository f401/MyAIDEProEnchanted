.class public Lorg/objectweb/asm/commons/CodeSizeEvaluator;
.super Lorg/objectweb/asm/MethodVisitor;

# interfaces
.implements Lorg/objectweb/asm/Opcodes;


# instance fields
.field private maxSize:I

.field private minSize:I


# direct methods
.method protected constructor <init>(ILorg/objectweb/asm/MethodVisitor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;)V
    .registers 3

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/commons/CodeSizeEvaluator;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1f

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    :goto_10
    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1e
    return-void

    :cond_1f
    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    goto :goto_10
.end method


# virtual methods
.method public getMaxSize()I
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    return v0
.end method

.method public getMinSize()I
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    return v0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public visitIincInsn(II)V
    .registers 4

    const/16 v0, 0xff

    if-gt p1, v0, :cond_c

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_c

    const/16 v0, -0x80

    if-ge p2, v0, :cond_22

    :cond_c
    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    :goto_18
    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    :cond_21
    return-void

    :cond_22
    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    goto :goto_18
.end method

.method public visitInsn(I)V
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :cond_15
    return-void
.end method

.method public visitIntInsn(II)V
    .registers 4

    const/16 v0, 0x11

    if-ne p1, v0, :cond_1a

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    :goto_10
    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_19
    return-void

    :cond_1a
    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    goto :goto_10
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_e

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_1e

    :cond_e
    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    :goto_14
    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    :cond_1d
    return-void

    :cond_1e
    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    goto :goto_14
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1e

    :cond_8
    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    :goto_14
    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :cond_1d
    return-void

    :cond_1e
    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    goto :goto_14
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 6

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    :cond_1d
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_18

    const/4 v5, 0x1

    :goto_f
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :cond_18
    const/4 v5, 0x0

    goto :goto_f
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_a

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_9
    return-void

    :cond_a
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :cond_15
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 7

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    array-length v1, p4

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    array-length v1, p4

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    :cond_1d
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_15
    return-void
.end method

.method public visitVarInsn(II)V
    .registers 4

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1d

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1d

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    :goto_13
    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_1c
    return-void

    :cond_1d
    const/16 v0, 0x100

    if-lt p2, v0, :cond_2e

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    goto :goto_13

    :cond_2e
    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->minSize:I

    iget v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/commons/CodeSizeEvaluator;->maxSize:I

    goto :goto_13
.end method
