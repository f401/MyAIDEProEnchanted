.class Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final this$0:Lorg/objectweb/asm/commons/TryCatchBlockSorter;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/commons/TryCatchBlockSorter;)V
    .registers 2

    iput-object p1, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->this$0:Lorg/objectweb/asm/commons/TryCatchBlockSorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blockLength(Lorg/objectweb/asm/tree/TryCatchBlockNode;)I
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->this$0:Lorg/objectweb/asm/commons/TryCatchBlockSorter;

    iget-object v0, v0, Lorg/objectweb/asm/commons/TryCatchBlockSorter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v1, p1, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->this$0:Lorg/objectweb/asm/commons/TryCatchBlockSorter;

    iget-object v1, v1, Lorg/objectweb/asm/commons/TryCatchBlockSorter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v2, p1, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v1

    sub-int v0, v1, v0

    return v0
.end method


# virtual methods
.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    check-cast p2, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->compare(Lorg/objectweb/asm/tree/TryCatchBlockNode;Lorg/objectweb/asm/tree/TryCatchBlockNode;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/objectweb/asm/tree/TryCatchBlockNode;Lorg/objectweb/asm/tree/TryCatchBlockNode;)I
    .registers 5

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->blockLength(Lorg/objectweb/asm/tree/TryCatchBlockNode;)I

    move-result v0

    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/TryCatchBlockSorter$1;->blockLength(Lorg/objectweb/asm/tree/TryCatchBlockNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
