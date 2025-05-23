.class public Lorg/objectweb/asm/tree/LookupSwitchInsnNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;


# instance fields
.field public dflt:Lorg/objectweb/asm/tree/LabelNode;

.field public keys:Ljava/util/List;

.field public labels:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/tree/LabelNode;[I[Lorg/objectweb/asm/tree/LabelNode;)V
    .registers 8

    const/4 v1, 0x0

    const/16 v0, 0xab

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    iput-object p1, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    if-nez p2, :cond_30

    move v0, v1

    :goto_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    if-nez p3, :cond_32

    move v0, v1

    :goto_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    if-eqz p2, :cond_34

    :goto_1e
    array-length v0, p2

    if-ge v1, v0, :cond_34

    iget-object v0, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    aget v3, p2, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_30
    array-length v0, p2

    goto :goto_b

    :cond_32
    array-length v0, p3

    goto :goto_15

    :cond_34
    if-eqz p3, :cond_3f

    iget-object v0, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3f
    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    move v1, v2

    :goto_a
    array-length v0, v3

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_1f
    iget-object v0, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/objectweb/asm/Label;

    :goto_27
    array-length v0, v1

    if-ge v2, v0, :cond_3b

    iget-object v0, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3b
    iget-object v0, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->acceptAnnotations(Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 6

    new-instance v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    invoke-static {v1, p1}, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->clone(Lorg/objectweb/asm/tree/LabelNode;Ljava/util/Map;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-static {v3, p1}, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->clone(Ljava/util/List;Ljava/util/Map;)[Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;-><init>(Lorg/objectweb/asm/tree/LabelNode;[I[Lorg/objectweb/asm/tree/LabelNode;)V

    iget-object v1, v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    iget-object v2, p0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p0}, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->cloneAnnotations(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method
