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
.method static bridge synthetic -$$Nest$fgettype(Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->type:Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;-><init>(Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter-IA;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->TYPE_ID_SORTER:Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 5

    .line 107
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_12

    .line 113
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 114
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->type:Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    .line 115
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->encodedForm:[B

    .line 116
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void

    .line 110
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotation == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static sortByTypeIdIndex([Lcom/s1243808733/android/dx/dex/file/AnnotationItem;)V
    .registers 2

    .line 93
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->TYPE_ID_SORTER:Lcom/s1243808733/android/dx/dex/file/AnnotationItem$TypeIdSorter;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

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
    .registers 8

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    .line 177
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getVisibility()Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getNameValuePairs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;

    .line 181
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v3

    .line 182
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->constantToHuman(Lcom/s1243808733/android/dx/rop/cst/Constant;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-interface {p1, v1, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_4d

    :cond_84
    return-void
.end method

.method protected compareTo0(Lcom/s1243808733/android/dx/dex/file/OffsettedItem;)I
    .registers 3

    .line 134
    check-cast p1, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    iget-object p1, p1, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->compareTo(Lcom/s1243808733/android/dx/rop/annotation/Annotation;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->hashCode()I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 122
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
    .registers 5

    .line 157
    new-instance p2, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 158
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/Section;->getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 160
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Z)V

    .line 161
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->encodedForm:[B

    .line 164
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 9

    .line 192
    invoke-interface {p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/Annotation;->getVisibility()Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_37

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->offsetString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  visibility: VISBILITY_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 200
    :cond_37
    sget-object v4, Lcom/s1243808733/android/dx/dex/file/AnnotationItem$1;->$SwitchMap$com$s1243808733$android$dx$rop$annotation$AnnotationVisibility:[I

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v3, :cond_57

    const/4 v2, 0x2

    if-eq v1, v2, :cond_53

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4b

    .line 203
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    goto :goto_5a

    .line 206
    :cond_4b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_53
    invoke-interface {p2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    goto :goto_5a

    .line 201
    :cond_57
    invoke-interface {p2, v2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeByte(I)V

    :goto_5a
    if-eqz v0, :cond_67

    .line 216
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;

    invoke-direct {v0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;-><init>(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 217
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->annotation:Lcom/s1243808733/android/dx/rop/annotation/Annotation;

    invoke-virtual {v0, p1, v3}, Lcom/s1243808733/android/dx/dex/file/ValueEncoder;->writeAnnotation(Lcom/s1243808733/android/dx/rop/annotation/Annotation;Z)V

    goto :goto_6c

    .line 219
    :cond_67
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/AnnotationItem;->encodedForm:[B

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->write([B)V

    :goto_6c
    return-void
.end method
