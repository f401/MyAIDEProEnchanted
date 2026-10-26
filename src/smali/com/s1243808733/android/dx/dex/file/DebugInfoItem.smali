.class public Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "DebugInfoItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x1

.field private static final ENABLE_ENCODER_SELF_CHECK:Z


# instance fields
.field private final code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

.field private encoded:[B

.field private final isStatic:Z

.field private final ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/DalvCode;ZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V
    .locals 2

    .line 44
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    .line 51
    iput-boolean p2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->isStatic:Z

    .line 52
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Z)[B
    .locals 1

    .line 141
    invoke-direct/range {p0 .. p5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->encode0(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private encode0(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Z)[B
    .locals 8

    .line 172
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getPositions()Lcom/s1243808733/android/dx/dex/code/PositionList;

    move-result-object v1

    .line 173
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getLocals()Lcom/s1243808733/android/dx/dex/code/LocalList;

    move-result-object v2

    .line 174
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->code:Lcom/s1243808733/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvCode;->getInsns()Lcom/s1243808733/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v4

    .line 176
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v5

    .line 178
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;

    iget-boolean v6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->isStatic:Z

    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;-><init>(Lcom/s1243808733/android/dx/dex/code/PositionList;Lcom/s1243808733/android/dx/dex/code/LocalList;Lcom/s1243808733/android/dx/dex/file/DexFile;IIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->convert()[B

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->convertAndAnnotate(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Z)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 0

    return-void
.end method

.method public annotateTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;)V
    .locals 6

    .line 98
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Z)[B

    return-void
.end method

.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    .line 108
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Z)[B

    return-void
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .locals 1

    .line 58
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .locals 6

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->encoded:[B

    .line 74
    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->setWriteSize(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while placing debug info for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->ref:Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    .line 77
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 6

    const/4 v2, 0x0

    .line 114
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->offsetString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " debug info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 121
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Z)[B

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoItem;->encoded:[B

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write([B)V

    return-void
.end method
