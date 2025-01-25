.class public final Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;
.super Lcom/s1243808733/android/dx/dex/file/IndexedItem;
.source "MethodHandleItem.java"


# instance fields
.field private final ITEM_SIZE:I

.field private final methodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;-><init>()V

    .line 32
    const/16 v0, 0x8

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->ITEM_SIZE:I

    .line 43
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->methodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    return-void
.end method

.method private getTargetIndex(Lcom/s1243808733/android/dx/dex/file/DexFile;)I
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->methodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getRef()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->methodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->isAccessor()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 92
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getFieldIds()Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;

    move-result-object p1

    .line 93
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;)I

    move-result p1

    return p1

    .line 94
    :cond_19
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->methodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->isInvocation()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 95
    instance-of v1, v0, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz v1, :cond_2b

    .line 96
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;->toMethodRef()Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-result-object v0

    .line 98
    :cond_2b
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodIds()Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;

    move-result-object p1

    .line 99
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MethodIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;)I

    move-result p1

    return p1

    .line 101
    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unhandled invocation type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3

    .line 61
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getMethodHandles()Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->methodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/MethodHandlesSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;)V

    return-void
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 49
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_METHOD_HANDLE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public writeSize()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 11

    .line 68
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->getTargetIndex(Lcom/s1243808733/android/dx/dex/file/DexFile;)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->methodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleType()I

    move-result v1

    .line 70
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d4

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->indexString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->methodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "type:     "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {p2, v5, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "reserved: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->methodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getRef()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->methodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->isAccessor()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "fieldId:  "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v5, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_c1

    .line 79
    :cond_a9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "methodId: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v5, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 81
    :goto_c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v5, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 83
    :cond_d4
    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 84
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 85
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/MethodHandleItem;->getTargetIndex(Lcom/s1243808733/android/dx/dex/file/DexFile;)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 86
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    return-void
.end method
