.class public Lorg/objectweb/asm/commons/TryCatchBlockSorter;
.super Lorg/objectweb/asm/tree/MethodNode;


# direct methods
.method protected constructor <init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p2, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter;->mv:Lorg/objectweb/asm/MethodVisitor;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15

    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/commons/TryCatchBlockSorter;-><init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .registers 3

    new-instance v0, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;

    invoke-direct {v0, p0}, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;-><init>(Lorg/objectweb/asm/commons/TryCatchBlockSorter;)V

    iget-object v1, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter;->tryCatchBlocks:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    iget-object v0, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    iget-object v0, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/TryCatchBlockNode;->updateIndex(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_23
    iget-object v0, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/TryCatchBlockSorter;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    :cond_2c
    return-void
.end method
