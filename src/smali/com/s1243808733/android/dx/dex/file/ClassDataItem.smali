.class public final Lcom/s1243808733/android/dx/dex/file/ClassDataItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "ClassDataItem.java"


# instance fields
.field private final directMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation
.end field

.field private encodedForm:[B

.field private final instanceFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedField;",
            ">;"
        }
    .end annotation
.end field

.field private final staticFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedField;",
            ">;"
        }
    .end annotation
.end field

.field private final staticValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
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
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;)V
    .registers 4

    .line 75
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_34

    .line 81
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->thisClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    .line 83
    new-instance p1, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    .line 87
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    return-void

    .line 78
    :cond_34
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "thisClass == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static encodeList(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/s1243808733/android/dx/dex/file/EncodedMember;",
            ">;)V"
        }
    .end annotation

    .line 393
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 400
    :cond_7
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    :cond_24
    const/4 p2, 0x0

    :goto_25
    if-ge v2, v0, :cond_34

    .line 405
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/EncodedMember;

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/s1243808733/android/dx/dex/file/EncodedMember;->encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;II)I

    move-result p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_34
    return-void
.end method

.method private encodeOutput(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 9

    .line 340
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_28

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
    :cond_28
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "static_fields"

    invoke-static {p1, p2, v2, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 348
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "instance_fields"

    invoke-static {p1, p2, v3, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 349
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v4, "direct_methods"

    invoke-static {p1, p2, v4, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 350
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v5, "virtual_methods"

    invoke-static {p1, p2, v5, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    .line 352
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-static {p1, p2, v2, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 353
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-static {p1, p2, v3, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 354
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-static {p1, p2, v4, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 355
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-static {p1, p2, v5, v1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_6d

    .line 358
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->endAnnotation()V

    :cond_6d
    return-void
.end method

.method private static encodeSize(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V
    .registers 5

    .line 373
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 374
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_size:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 375
    nop

    .line 374
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const/4 p0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p0

    const-string p0, "  %-21s %08x"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 378
    :cond_2e
    invoke-interface {p1, p3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    return-void
.end method

.method private makeStaticValuesConstant()Lcom/s1243808733/android/dx/rop/cst/CstArray;
    .registers 7

    .line 279
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 286
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_b
    if-lez v0, :cond_36

    .line 288
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    .line 289
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 290
    instance-of v2, v1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    if-eqz v2, :cond_30

    .line 292
    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_33

    goto :goto_32

    :cond_30
    if-eqz v1, :cond_33

    :goto_32
    goto :goto_36

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_36
    :goto_36
    if-nez v0, :cond_3a

    const/4 v0, 0x0

    return-object v0

    .line 307
    :cond_3a
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;-><init>(I)V

    const/4 v2, 0x0

    :goto_40
    if-ge v2, v0, :cond_66

    .line 309
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    .line 310
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/rop/cst/Constant;

    if-nez v4, :cond_60

    .line 312
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->getRef()Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/cst/Zeroes;->zeroFor(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v4

    .line 314
    :cond_60
    invoke-virtual {v1, v2, v4}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 316
    :cond_66
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray$List;->setImmutable()V

    .line 318
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstArray;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstArray;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstArray$List;)V

    return-object v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 227
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->getStaticValuesConstant()Lcom/s1243808733/android/dx/rop/cst/CstArray;

    .line 228
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    .line 229
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_11

    .line 233
    :cond_21
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    .line 234
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 235
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/EncodedField;

    .line 236
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedField;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_34

    .line 240
    :cond_44
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    .line 241
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    .line 243
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_57

    .line 247
    :cond_67
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 248
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 249
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    .line 250
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    goto :goto_7a

    :cond_8a
    return-void
.end method

.method public addDirectMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 156
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 153
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addInstanceField(Lcom/s1243808733/android/dx/dex/file/EncodedField;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 143
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 140
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "field == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addStaticField(Lcom/s1243808733/android/dx/dex/file/EncodedField;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 4

    if-eqz p1, :cond_19

    .line 124
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    if-nez v0, :cond_11

    .line 129
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 125
    :cond_11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "static fields already sorted"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVirtualMethod(Lcom/s1243808733/android/dx/dex/file/EncodedMethod;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 166
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public debugPrint(Ljava/io/Writer;Z)V
    .registers 9

    .line 198
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Writers;->printWriterFor(Ljava/io/Writer;)Ljava/io/PrintWriter;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 201
    :goto_c
    const-string v3, "]: "

    if-ge v2, v0, :cond_30

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  sfields["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 205
    :cond_30
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v0, :cond_59

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  ifields["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 210
    :cond_59
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    .line 211
    :goto_60
    const-string v3, "]:"

    if-ge v2, v0, :cond_86

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  dmeths["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    invoke-virtual {v3, p1, p2}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->debugPrint(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 216
    :cond_86
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_8c
    if-ge v1, v0, :cond_b0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  vmeths["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;

    invoke-virtual {v2, p1, p2}, Lcom/s1243808733/android/dx/dex/file/EncodedMethod;->debugPrint(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    :cond_b0
    return-void
.end method

.method public getMethods()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
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
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_12

    .line 264
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->makeStaticValuesConstant()Lcom/s1243808733/android/dx/rop/cst/CstArray;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    .line 267
    :cond_12
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/s1243808733/android/dx/rop/cst/CstArray;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 93
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 3

    .line 326
    new-instance p2, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 328
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeOutput(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 329
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodedForm:[B

    .line 330
    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 4

    .line 412
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodeOutput(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    goto :goto_f

    .line 422
    :cond_a
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ClassDataItem;->encodedForm:[B

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write([B)V

    :goto_f
    return-void
.end method
