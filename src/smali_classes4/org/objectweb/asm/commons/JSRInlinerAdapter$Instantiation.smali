.class Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;
.super Ljava/util/AbstractMap;


# instance fields
.field final previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

.field public final rangeTable:Ljava/util/Map;

.field public final returnLabel:Lorg/objectweb/asm/tree/LabelNode;

.field public final subroutine:Ljava/util/BitSet;

.field final this$0:Lorg/objectweb/asm/commons/JSRInlinerAdapter;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/commons/JSRInlinerAdapter;Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V
    .registers 11

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lorg/objectweb/asm/commons/JSRInlinerAdapter;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    iput-object p2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    iput-object p3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    move-object v0, p2

    :goto_12
    if-eqz v0, :cond_34

    iget-object v1, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    if-ne v1, p3, :cond_31

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Recursive invocation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_12

    :cond_34
    if-eqz p2, :cond_68

    new-instance v0, Lorg/objectweb/asm/tree/LabelNode;

    invoke-direct {v0}, Lorg/objectweb/asm/tree/LabelNode;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/objectweb/asm/tree/LabelNode;

    :goto_3d
    iget-object v0, p1, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    move-object v1, v2

    :goto_46
    if-ge v3, v4, :cond_73

    iget-object v0, p1, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6b

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    if-nez v1, :cond_5f

    new-instance v1, Lorg/objectweb/asm/tree/LabelNode;

    invoke-direct {v1}, Lorg/objectweb/asm/tree/LabelNode;-><init>()V

    :cond_5f
    iget-object v5, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    :goto_64
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_46

    :cond_68
    iput-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/objectweb/asm/tree/LabelNode;

    goto :goto_3d

    :cond_6b
    invoke-virtual {p0, v3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v0

    if-ne v0, p0, :cond_64

    move-object v1, v2

    goto :goto_64

    :cond_73
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public findOwner(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    :cond_9
    return-object p0

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lorg/objectweb/asm/commons/JSRInlinerAdapter;

    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    :goto_16
    if-eqz v0, :cond_9

    iget-object v1, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object p0, v0

    :cond_21
    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_16
.end method

.method public bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->get(Ljava/lang/Object;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/objectweb/asm/tree/LabelNode;
    .registers 3

    check-cast p1, Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v0

    return-object v0
.end method

.method public gotoLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->this$0:Lorg/objectweb/asm/commons/JSRInlinerAdapter;

    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v0

    iget-object v0, v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    return-object v0
.end method

.method public rangeLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->rangeTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    return-object v0
.end method
