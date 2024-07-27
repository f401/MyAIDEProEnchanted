.class public Lorg/objectweb/asm/tree/InsnNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .registers 3

    iget v0, p0, Lorg/objectweb/asm/tree/InsnNode;->opcode:I

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/InsnNode;->acceptAnnotations(Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 4

    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    iget v1, p0, Lorg/objectweb/asm/tree/InsnNode;->opcode:I

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {v0, p0}, Lorg/objectweb/asm/tree/InsnNode;->cloneAnnotations(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
