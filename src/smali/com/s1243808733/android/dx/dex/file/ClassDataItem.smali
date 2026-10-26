.class public final Lcom/s1243808733/android/dx/dex/file/ClassDataItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "ClassDataItem.java"


# instance fields
.field private final directMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation
.end field

.field private encodedForm:[B

.field private final instanceFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedField;",
            ">;"
        }
    .end annotation
.end field

.field private final staticFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedField;",
            ">;"
        }
    .end annotation
.end field

.field private final staticValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedField;",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field

.field private staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

.field private final thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private final virtualMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;)V
    .locals 3

    const/16 v2, 0x14

    .line 75
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "thisClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeList(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/s1243808733/android/dx/dex/file/EncodedMember;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 393
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 405
    :cond_0
    return-void

    .line 400
    :cond_1
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    :cond_2
    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 405
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedMember;

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/s1243808733/android/dx/dex/file/EncodedMember;->encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;II)I

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private encodeOutput(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 3

    .line 340
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->offsetString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " class data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 344
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 347
    :cond_0
    const-string v1, "static_fields"

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 348
    const-string v1, "instance_fields"

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 349
    const-string v1, "direct_methods"

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 350
    const-string v1, "virtual_methods"

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1, p2, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 352
    const-string v1, "static_fields"

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 353
    const-string v1, "instance_fields"

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 354
    const-string v1, "direct_methods"

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 355
    const-string v1, "virtual_methods"

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_1

    .line 358
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->endAnnotation()V

    :cond_1
    return-void
.end method

.method private static encodeSize(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V
    .locals 4

    .line 373
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v1, "  %-21s %08x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 378
    :cond_0
    invoke-interface {p1, p3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    return-void
.end method

.method private makeStaticValuesConstant()Lcom/s1243808733/android/dx/rop/cst/CstArray;
    .locals 6

    .line 279
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 286
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v0

    :goto_0
    if-lez v3, :cond_0

    .line 288
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    .line 289
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 290
    instance-of v1, v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    if-eqz v1, :cond_1

    .line 292
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    :cond_0
    if-nez v3, :cond_3

    const/4 v0, 0x0

    .line 318
    :goto_1
    return-object v0

    .line 292
    :cond_1
    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 307
    :cond_3
    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-direct {v4, v3}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v3, :cond_5

    .line 309
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    .line 310
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    if-nez v1, :cond_4

    .line 312
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/Zeroes;->zeroFor(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 314
    :cond_4
    invoke-virtual {v4, v2, v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 316
    :cond_5
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->setImmutable()V

    .line 318
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-direct {v0, v4}, Lcom/s1243808733/android/dx/rop/cst/CstArray;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V

    goto :goto_1
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->getStaticValuesConstant()Lcom/s1243808733/android/dx/rop/cst/CstArray;

    .line 228
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    .line 229
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 235
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    .line 236
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_1

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    .line 243
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_2

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 249
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    .line 250
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public addDirectMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addInstanceField(Lcom/s1243808733/android/dx/dex/file/EncodedField;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addStaticField(Lcom/s1243808733/android/dx/dex/file/EncodedField;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "static fields already sorted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addVirtualMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public debugPrint(Ljava/io/Writer;Z)V
    .locals 6

    const/4 v1, 0x0

    .line 198
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Writers;->printWriterFor(Ljava/io/Writer;)Ljava/io/PrintWriter;

    move-result-object v3

    .line 200
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v1

    .line 201
    :goto_0
    if-ge v0, v2, :cond_0

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  sfields["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  ifields["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 211
    :goto_2
    if-ge v2, v4, :cond_2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "  dmeths["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    invoke-virtual {v0, v3, p2}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->debugPrint(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "  vmeths["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    invoke-virtual {v0, v3, p2}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->debugPrint(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    return-void
.end method

.method public getMethods()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method public getStaticValuesConstant()Lcom/s1243808733/android/dx/rop/cst/CstArray;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->makeStaticValuesConstant()Lcom/s1243808733/android/dx/rop/cst/CstArray;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .locals 1

    .line 93
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .locals 2

    .line 326
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 328
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeOutput(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 329
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodedForm:[B

    .line 330
    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .locals 1

    .line 412
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeOutput(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 422
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodedForm:[B

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write([B)V

    goto :goto_0
.end method
