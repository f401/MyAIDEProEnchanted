.class public final Lcom/s1243808733/android/dx/dex/file/AnnotationItem;
.super Lcom/s1243808733/android/dx/dex/file/OffsettedItem;
.source "AnnotationItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;
    }
.end annotation


# static fields
.field private static final ALIGNMENT:I = 0x1

.field private static final TYPE_ID_SORTER:Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;

.field private static final VISIBILITY_BUILD:I = 0x0

.field private static final VISIBILITY_RUNTIME:I = 0x1

.field private static final VISIBILITY_SYSTEM:I = 0x2


# instance fields
.field private final annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

.field private encodedForm:[B

.field private type:Lcom/s1243808733/android/dx/dex/file/TypeIdItem;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->TYPE_ID_SORTER:Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 6

    const/4 v1, 0x0

    .line 107
    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    move-object v0, v1

    .line 114
    check-cast v0, Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->type:Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    .line 115
    check-cast v1, [B

    iput-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->encodedForm:[B

    .line 116
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void
.end method

.method static synthetic access$L1000006(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->type:Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    return-object v0
.end method

.method static synthetic access$S1000006(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;Lcom/s1243808733/android/dx/dex/file/TypeIdItem;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->type:Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    return-void
.end method

.method public static sortByTypeIdIndex([Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/s1243808733/android/dx/dex/file/AnnotationItem;",
            ")V"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->TYPE_ID_SORTER:Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 148
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->type:Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    .line 149
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/rop/annotation/Annotation;)V

    return-void
.end method

.method public annotateTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getVisibility()Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 184
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    .line 181
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    .line 182
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 184
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/s1243808733/android/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 134
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    iget-object v1, p1, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->hashCode()I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 122
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/Section;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 157
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 158
    new-instance v1, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 160
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Z)V

    .line 161
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->encodedForm:[B

    .line 164
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->encodedForm:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 192
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getVisibility()Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    move-result-object v1

    .line 195
    if-eqz v0, :cond_0

    .line 196
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " annotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 197
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "  visibility: VISBILITY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 200
    :cond_0
    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    if-ne v1, v2, :cond_1

    .line 201
    invoke-interface {p2, v5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    .line 210
    :goto_0
    if-eqz v0, :cond_4

    .line 216
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;

    invoke-direct {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 217
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0, v1, v4}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Z)V

    .line 219
    :goto_1
    return-void

    .line 201
    :cond_1
    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    if-ne v1, v2, :cond_2

    .line 202
    invoke-interface {p2, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    if-ne v1, v2, :cond_3

    .line 203
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    goto :goto_0

    .line 206
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->encodedForm:[B

    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write([B)V

    goto :goto_1
.end method
