.class public Lorg/objectweb/asm/commons/LocalVariablesSorter;
.super Lorg/objectweb/asm/MethodVisitor;


# static fields
.field private static final OBJECT_TYPE:Lorg/objectweb/asm/Type;

.field static class$org$objectweb$asm$commons$LocalVariablesSorter:Ljava/lang/Class;


# instance fields
.field private changed:Z

.field protected final firstLocal:I

.field private mapping:[I

.field private newLocals:[Ljava/lang/Object;

.field protected nextLocal:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->_clinit_()V

    const-string v0, "java/lang/Object"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0, p1, p4}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mapping:[I

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    invoke-static {p3}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v2

    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    :goto_19
    iput v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    :goto_1b
    array-length v0, v2

    if-ge v1, v0, :cond_2e

    iget v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2c
    move v0, v1

    goto :goto_19

    :cond_2e
    iget v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    iput v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->firstLocal:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V
    .registers 6

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/objectweb/asm/commons/LocalVariablesSorter;-><init>(IILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/commons/LocalVariablesSorter;->class$org$objectweb$asm$commons$LocalVariablesSorter:Ljava/lang/Class;

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_13
    return-void
.end method

.method private static _clinit_()V
    .registers 1

    const-string v0, "org.objectweb.asm.commons.LocalVariablesSorter"

    invoke-static {v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->class$org$objectweb$asm$commons$LocalVariablesSorter:Ljava/lang/Class;

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private remap(ILorg/objectweb/asm/Type;)I
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->firstLocal:I

    if-gt v0, v1, :cond_b

    :goto_a
    return p1

    :cond_b
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mapping:[I

    array-length v0, v0

    if-lt v1, v0, :cond_2a

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [I

    iget-object v3, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mapping:[I

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mapping:[I

    :cond_2a
    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mapping:[I

    aget v0, v0, v1

    if-nez v0, :cond_44

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocalMapping(Lorg/objectweb/asm/Type;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->setLocalType(ILorg/objectweb/asm/Type;)V

    iget-object v2, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mapping:[I

    add-int/lit8 v3, v0, 0x1

    aput v3, v2, v1

    :goto_3d
    if-eq v0, p1, :cond_42

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->changed:Z

    :cond_42
    move p1, v0

    goto :goto_a

    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_3d
.end method

.method private setFrameLocal(ILjava/lang/Object;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_17

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    :cond_17
    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method


# virtual methods
.method public newLocal(Lorg/objectweb/asm/Type;)I
    .registers 4

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocalMapping(Lorg/objectweb/asm/Type;)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->setLocalType(ILorg/objectweb/asm/Type;)V

    invoke-direct {p0, v1, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->setFrameLocal(ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->changed:Z

    return v1

    :pswitch_19  #0x1, 0x2, 0x3, 0x4, 0x5
    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    goto :goto_b

    :pswitch_1c  #0x6
    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    goto :goto_b

    :pswitch_1f  #0x7
    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    goto :goto_b

    :pswitch_22  #0x8
    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    goto :goto_b

    :pswitch_25  #0x9
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_19  #00000001
        :pswitch_19  #00000002
        :pswitch_19  #00000003
        :pswitch_19  #00000004
        :pswitch_19  #00000005
        :pswitch_1c  #00000006
        :pswitch_1f  #00000007
        :pswitch_22  #00000008
        :pswitch_25  #00000009
    .end packed-switch
.end method

.method protected newLocalMapping(Lorg/objectweb/asm/Type;)I
    .registers 5

    iget v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    iget v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    return v0
.end method

.method protected setLocalType(ILorg/objectweb/asm/Type;)V
    .registers 3

    return-void
.end method

.method protected updateNewLocals([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 14

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClassReader.accept() should be called with EXPAND_FRAMES flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->changed:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    array-length v0, v0

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    array-length v1, v6

    invoke-static {v0, v3, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->updateNewLocals([Ljava/lang/Object;)V

    move v4, v3

    move v5, v3

    :goto_2d
    if-ge v4, p2, :cond_79

    aget-object v1, p3, v4

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v0, :cond_39

    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v0, :cond_55

    :cond_39
    const/4 v0, 0x2

    move v2, v0

    :goto_3b
    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    if-eq v1, v0, :cond_4e

    sget-object v0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v7, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    if-ne v1, v7, :cond_58

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    :cond_47
    :goto_47
    invoke-direct {p0, v5, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remap(ILorg/objectweb/asm/Type;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->setFrameLocal(ILjava/lang/Object;)V

    :cond_4e
    add-int/lit8 v0, v4, 0x1

    add-int v1, v5, v2

    move v4, v0

    move v5, v1

    goto :goto_2d

    :cond_55
    const/4 v0, 0x1

    move v2, v0

    goto :goto_3b

    :cond_58
    sget-object v7, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    if-ne v1, v7, :cond_5f

    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_47

    :cond_5f
    sget-object v7, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-ne v1, v7, :cond_66

    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_47

    :cond_66
    sget-object v7, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v7, :cond_6d

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_47

    :cond_6d
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_47

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    goto :goto_47

    :cond_79
    move v2, v3

    move v0, v3

    move v1, v3

    :goto_7c
    iget-object v3, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_a9

    iget-object v4, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v1, v4, v1

    if-eqz v1, :cond_a1

    sget-object v4, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    if-eq v1, v4, :cond_a1

    iget-object v2, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    aput-object v1, v2, v0

    add-int/lit8 v2, v0, 0x1

    sget-object v4, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v4, :cond_9b

    sget-object v4, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v4, :cond_b7

    :cond_9b
    add-int/lit8 v1, v3, 0x1

    :goto_9d
    add-int/lit8 v3, v0, 0x1

    move v0, v3

    goto :goto_7c

    :cond_a1
    iget-object v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    sget-object v4, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v4, v1, v0

    move v1, v3

    goto :goto_9d

    :cond_a9
    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mv:Lorg/objectweb/asm/MethodVisitor;

    iget-object v3, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    move v1, p1

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    iput-object v6, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocals:[Ljava/lang/Object;

    goto/16 :goto_1a

    :cond_b7
    move v1, v3

    goto :goto_9d
.end method

.method public visitIincInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mv:Lorg/objectweb/asm/MethodVisitor;

    sget-object v1, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {p0, p1, v1}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remap(ILorg/objectweb/asm/Type;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .registers 14

    invoke-static {p2}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-direct {p0, p6, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remap(ILorg/objectweb/asm/Type;)I

    move-result v6

    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mv:Lorg/objectweb/asm/MethodVisitor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 16

    invoke-static {p6}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v1

    array-length v0, p5

    new-array v5, v0, [I

    const/4 v0, 0x0

    :goto_8
    array-length v2, v5

    if-ge v0, v2, :cond_16

    aget v2, p5, v0

    invoke-direct {p0, v2, v1}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remap(ILorg/objectweb/asm/Type;)I

    move-result v2

    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitMaxs(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mv:Lorg/objectweb/asm/MethodVisitor;

    iget v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method

.method public visitVarInsn(II)V
    .registers 5

    sparse-switch p1, :sswitch_data_1c

    sget-object v0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    :goto_5
    iget-object v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-direct {p0, p2, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remap(ILorg/objectweb/asm/Type;)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void

    :sswitch_f
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_5

    :sswitch_12
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_5

    :sswitch_15
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_5

    :sswitch_18
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_5

    nop

    :sswitch_data_1c
    .sparse-switch
        0x15 -> :sswitch_18
        0x16 -> :sswitch_f
        0x17 -> :sswitch_15
        0x18 -> :sswitch_12
        0x36 -> :sswitch_18
        0x37 -> :sswitch_f
        0x38 -> :sswitch_15
        0x39 -> :sswitch_12
    .end sparse-switch
.end method
