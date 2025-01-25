.class public Lorg/objectweb/asm/commons/JSRInlinerAdapter;
.super Lorg/objectweb/asm/tree/MethodNode;

# interfaces
.implements Lorg/objectweb/asm/Opcodes;


# static fields
.field static class$org$objectweb$asm$commons$JSRInlinerAdapter:Ljava/lang/Class;


# instance fields
.field final dualCitizens:Ljava/util/BitSet;

.field private final mainSubroutine:Ljava/util/BitSet;

.field private final subroutineHeads:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.commons.JSRInlinerAdapter"

    invoke-static {v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->class$org$objectweb$asm$commons$JSRInlinerAdapter:Ljava/lang/Class;

    return-void
.end method

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    iput-object p2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

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

    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;-><init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->class$org$objectweb$asm$commons$JSRInlinerAdapter:Ljava/lang/Class;

    if-eq v0, v1, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1a
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

.method private emitCode()V
    .registers 7

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    invoke-direct {v0, p0, v1, v3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lorg/objectweb/asm/commons/JSRInlinerAdapter;Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {v3}, Lorg/objectweb/asm/tree/InsnList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1f
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->emitSubroutine(Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lorg/objectweb/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1f

    :cond_30
    iput-object v3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iput-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    iput-object v5, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    return-void
.end method

.method private emitSubroutine(Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lorg/objectweb/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V
    .registers 15

    const/16 v8, 0xa7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v5

    const/4 v0, 0x0

    move-object v1, v2

    move v4, v0

    :goto_c
    if-ge v4, v5, :cond_bb

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, v4}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {p1, v4}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v3

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_30

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v0

    if-eq v0, v1, :cond_12c

    invoke-virtual {p3, v0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    :goto_2b
    add-int/lit8 v3, v4, 0x1

    move-object v1, v0

    move v4, v3

    goto :goto_c

    :cond_30
    if-eq v3, p1, :cond_34

    move-object v0, v1

    goto :goto_2b

    :cond_34
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v3

    const/16 v6, 0xa9

    if-ne v3, v6, :cond_78

    move-object v0, v2

    move-object v3, p1

    :goto_3e
    if-eqz v3, :cond_4d

    iget-object v6, v3, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4a

    iget-object v0, v3, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/objectweb/asm/tree/LabelNode;

    :cond_4a
    iget-object v3, v3, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_3e

    :cond_4d
    if-nez v0, :cond_6e

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Instruction #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is a RET not owned by any subroutine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    new-instance v3, Lorg/objectweb/asm/tree/JumpInsnNode;

    invoke-direct {v3, v8, v0}, Lorg/objectweb/asm/tree/JumpInsnNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {p3, v3}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    move-object v0, v1

    goto :goto_2b

    :cond_78
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v3

    const/16 v6, 0xa8

    if-ne v3, v6, :cond_b1

    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v3, v0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    new-instance v6, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-direct {v6, p0, p1, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lorg/objectweb/asm/commons/JSRInlinerAdapter;Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    invoke-virtual {v6, v3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v0

    new-instance v3, Lorg/objectweb/asm/tree/InsnNode;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {p3, v3}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    new-instance v3, Lorg/objectweb/asm/tree/JumpInsnNode;

    invoke-direct {v3, v8, v0}, Lorg/objectweb/asm/tree/JumpInsnNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {p3, v3}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    iget-object v0, v6, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p3, v0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto/16 :goto_2b

    :cond_b1
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    move-object v0, v1

    goto/16 :goto_2b

    :cond_bb
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c1
    :goto_c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    iget-object v2, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v2}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v2

    iget-object v3, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    if-eq v2, v3, :cond_c1

    iget-object v4, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v4}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v4

    if-eqz v2, :cond_e7

    if-eqz v3, :cond_e7

    if-nez v4, :cond_ef

    :cond_e7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ef
    new-instance v5, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    invoke-direct {v5, v2, v3, v4, v0}, Lorg/objectweb/asm/tree/TryCatchBlockNode;-><init>(Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Ljava/lang/String;)V

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    :cond_fa
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_100
    :goto_100
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/objectweb/asm/tree/LocalVariableNode;

    iget-object v0, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v4

    iget-object v0, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v5

    if-eq v4, v5, :cond_100

    new-instance v0, Lorg/objectweb/asm/tree/LocalVariableNode;

    iget-object v1, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->name:Ljava/lang/String;

    iget-object v2, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->desc:Ljava/lang/String;

    iget-object v3, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->signature:Ljava/lang/String;

    iget v6, v6, Lorg/objectweb/asm/tree/LocalVariableNode;->index:I

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;I)V

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_100

    :cond_12c
    move-object v0, v1

    goto/16 :goto_2b

    :cond_12f
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V
    .registers 11

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    move v1, v2

    :cond_5
    if-eqz v1, :cond_4a

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    iget-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v5, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v6, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v5, v6}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v5

    iget-object v6, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v0, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v6, v0}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_48

    if-ge v5, v0, :cond_48

    invoke-direct {p0, p1, v4, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    move v0, v2

    :goto_46
    move v1, v0

    goto :goto_f

    :cond_48
    move v0, v1

    goto :goto_46

    :cond_4a
    return-void
.end method

.method private markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V
    .registers 9

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    :pswitch_c  #0xa7, 0xa9, 0xaa, 0xab, 0xac, 0xad, 0xae, 0xaf, 0xb0, 0xb1, 0xbf
    return-void

    :cond_d
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p3, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    :cond_1b
    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3b

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v2, 0xa8

    if-eq v0, v2, :cond_3b

    move-object v0, v1

    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v0, v0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    :cond_3b
    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_71

    move-object v0, v1

    check-cast v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;

    iget-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v3, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v2

    invoke-direct {p0, p1, v2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    iget-object v2, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_5a
    if-ltz v3, :cond_71

    iget-object v2, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/objectweb/asm/tree/LabelNode;

    iget-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v4, v2}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v2

    invoke-direct {p0, p1, v2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_5a

    :cond_71
    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_a6

    check-cast v1, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v2, v1, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    iget-object v0, v1, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_8f
    if-ltz v2, :cond_a6

    iget-object v0, v1, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    iget-object v3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v3, v0}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_8f

    :cond_a6
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    packed-switch v0, :pswitch_data_c0

    :pswitch_b3  #0xa8, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xbb, 0xbc, 0xbd, 0xbe
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_c

    nop

    :pswitch_data_c0
    .packed-switch 0xa7
        :pswitch_c  #000000a7
        :pswitch_b3  #000000a8
        :pswitch_c  #000000a9
        :pswitch_c  #000000aa
        :pswitch_c  #000000ab
        :pswitch_c  #000000ac
        :pswitch_c  #000000ad
        :pswitch_c  #000000ae
        :pswitch_c  #000000af
        :pswitch_c  #000000b0
        :pswitch_c  #000000b1
        :pswitch_b3  #000000b2
        :pswitch_b3  #000000b3
        :pswitch_b3  #000000b4
        :pswitch_b3  #000000b5
        :pswitch_b3  #000000b6
        :pswitch_b3  #000000b7
        :pswitch_b3  #000000b8
        :pswitch_b3  #000000b9
        :pswitch_b3  #000000ba
        :pswitch_b3  #000000bb
        :pswitch_b3  #000000bc
        :pswitch_b3  #000000bd
        :pswitch_b3  #000000be
        :pswitch_c  #000000bf
    .end packed-switch
.end method

.method private markSubroutines()V
    .registers 6

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/LabelNode;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iget-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v4, v1}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V

    goto :goto_15

    :cond_37
    return-void
.end method


# virtual methods
.method public visitEnd()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->markSubroutines()V

    invoke-direct {p0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->emitCode()V

    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    :cond_17
    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/tree/MethodNode;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->getLast()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    const/16 v1, 0xa8

    if-ne p1, v1, :cond_23

    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-void
.end method
