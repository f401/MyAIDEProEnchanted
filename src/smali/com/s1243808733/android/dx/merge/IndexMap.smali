.class public final Lcom/s1243808733/android/dx/merge/IndexMap;
.super Ljava/lang/Object;
.source "IndexMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;
    }
.end annotation


# instance fields
.field private final annotationDirectoryOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationSetOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationSetRefListOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final callSiteIds:[I

.field private final encodedArrayValueOffset:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final fieldIds:[S

.field public final methodHandleIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final methodIds:[S

.field public final protoIds:[S

.field public final stringIds:[I

.field private final target:Lcom/s1243808733/android/dex/Dex;

.field public final typeIds:[S

.field private final typeListOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/TableOfContents;)V
    .registers 6

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    .line 79
    iget-object p1, p2, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p1, p1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->stringIds:[I

    .line 80
    iget-object p1, p2, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p1, p1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeIds:[S

    .line 81
    iget-object p1, p2, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p1, p1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->protoIds:[S

    .line 82
    iget-object p1, p2, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p1, p1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->fieldIds:[S

    .line 83
    iget-object p1, p2, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p1, p1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->methodIds:[S

    .line 84
    iget-object p1, p2, Lcom/s1243808733/android/dex/TableOfContents;->callSiteIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget p1, p1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->callSiteIds:[I

    .line 85
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->methodHandleIds:Ljava/util/HashMap;

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeListOffsets:Ljava/util/HashMap;

    .line 87
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationOffsets:Ljava/util/HashMap;

    .line 88
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetOffsets:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetRefListOffsets:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationDirectoryOffsets:Ljava/util/HashMap;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->encodedArrayValueOffset:Ljava/util/HashMap;

    .line 97
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p2, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v1, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public adjust(Lcom/s1243808733/android/dex/Annotation;)Lcom/s1243808733/android/dex/Annotation;
    .registers 6

    .line 272
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>(I)V

    .line 273
    new-instance v1, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;

    invoke-direct {v1, p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;-><init>(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/util/ByteOutput;)V

    .line 274
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Annotation;->getReader()Lcom/s1243808733/android/dex/EncodedValueReader;

    move-result-object v2

    .line 273
    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->-$$Nest$mtransformAnnotation(Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/s1243808733/android/dex/EncodedValueReader;)V

    .line 275
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Annotation;->getVisibility()B

    move-result p1

    .line 276
    new-instance v2, Lcom/s1243808733/android/dex/Annotation;

    new-instance v3, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    invoke-direct {v2, v1, p1, v3}, Lcom/s1243808733/android/dex/Annotation;-><init>(Lcom/s1243808733/android/dex/Dex;BLcom/s1243808733/android/dex/EncodedValue;)V

    return-object v2
.end method

.method public adjust(Lcom/s1243808733/android/dex/CallSiteId;)Lcom/s1243808733/android/dex/CallSiteId;
    .registers 4

    .line 216
    new-instance v0, Lcom/s1243808733/android/dex/CallSiteId;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/CallSiteId;->getCallSiteOffset()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustEncodedArray(I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/s1243808733/android/dex/CallSiteId;-><init>(Lcom/s1243808733/android/dex/Dex;I)V

    return-object v0
.end method

.method public adjust(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassDef;
    .registers 14

    .line 246
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v3

    .line 247
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getAccessFlags()I

    move-result v4

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v5

    .line 248
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getInterfacesOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustTypeListOffset(I)I

    move-result v6

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getSourceFileIndex()I

    move-result v7

    .line 249
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getAnnotationsOffset()I

    move-result v8

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getClassDataOffset()I

    move-result v9

    .line 250
    new-instance v11, Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getStaticValuesOffset()I

    move-result v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/s1243808733/android/dex/ClassDef;-><init>(Lcom/s1243808733/android/dex/Dex;IIIIIIIII)V

    return-object v11
.end method

.method public adjust(Lcom/s1243808733/android/dex/FieldId;)Lcom/s1243808733/android/dex/FieldId;
    .registers 6

    .line 231
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    .line 232
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/FieldId;->getDeclaringClassIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v1

    .line 233
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/FieldId;->getTypeIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v2

    .line 234
    new-instance v3, Lcom/s1243808733/android/dex/FieldId;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/FieldId;->getNameIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/s1243808733/android/dex/FieldId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v3
.end method

.method public adjust(Lcom/s1243808733/android/dex/MethodHandle;)Lcom/s1243808733/android/dex/MethodHandle;
    .registers 9

    .line 220
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    .line 222
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getMethodHandleType()Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    move-result-object v2

    .line 223
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getUnused1()I

    move-result v3

    .line 224
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getMethodHandleType()Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->isField()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 225
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getFieldOrMethodId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v0

    move v4, v0

    goto :goto_27

    .line 226
    :cond_1e
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getFieldOrMethodId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v0

    move v4, v0

    .line 227
    :goto_27
    new-instance v6, Lcom/s1243808733/android/dex/MethodHandle;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getUnused2()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dex/MethodHandle;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;III)V

    return-object v6
.end method

.method public adjust(Lcom/s1243808733/android/dex/MethodId;)Lcom/s1243808733/android/dex/MethodId;
    .registers 6

    .line 209
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    .line 210
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodId;->getDeclaringClassIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v1

    .line 211
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodId;->getProtoIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustProto(I)I

    move-result v2

    .line 212
    new-instance v3, Lcom/s1243808733/android/dex/MethodId;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodId;->getNameIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/s1243808733/android/dex/MethodId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v3
.end method

.method public adjust(Lcom/s1243808733/android/dex/ProtoId;)Lcom/s1243808733/android/dex/ProtoId;
    .registers 6

    .line 239
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    .line 240
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ProtoId;->getShortyIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v1

    .line 241
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ProtoId;->getReturnTypeIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v2

    .line 242
    new-instance v3, Lcom/s1243808733/android/dex/ProtoId;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ProtoId;->getParametersOffset()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustTypeListOffset(I)I

    move-result p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/s1243808733/android/dex/ProtoId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v3
.end method

.method public adjust(Lcom/s1243808733/android/dx/merge/SortableType;)Lcom/s1243808733/android/dx/merge/SortableType;
    .registers 5

    .line 254
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getDex()Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    .line 255
    new-instance v1, Lcom/s1243808733/android/dx/merge/SortableType;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getIndexMap()Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getClassDef()Lcom/s1243808733/android/dex/ClassDef;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassDef;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lcom/s1243808733/android/dx/merge/SortableType;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/ClassDef;)V

    return-object v1
.end method

.method public adjustAnnotation(I)I
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public adjustAnnotationDirectory(I)I
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationDirectoryOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public adjustAnnotationSet(I)I
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public adjustAnnotationSetRefList(I)I
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetRefListOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public adjustCallSite(I)I
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->callSiteIds:[I

    aget p1, v0, p1

    return p1
.end method

.method public adjustEncodedArray(I)I
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->encodedArrayValueOffset:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public adjustEncodedArray(Lcom/s1243808733/android/dex/EncodedValue;)Lcom/s1243808733/android/dex/EncodedValue;
    .registers 6

    .line 265
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>(I)V

    .line 266
    new-instance v1, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;

    invoke-direct {v1, p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;-><init>(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/util/ByteOutput;)V

    new-instance v2, Lcom/s1243808733/android/dex/EncodedValueReader;

    const/16 v3, 0x1c

    invoke-direct {v2, p1, v3}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/EncodedValue;I)V

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->-$$Nest$mtransformArray(Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/s1243808733/android/dex/EncodedValueReader;)V

    .line 268
    new-instance p1, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    return-object p1
.end method

.method public adjustEncodedValue(Lcom/s1243808733/android/dex/EncodedValue;)Lcom/s1243808733/android/dex/EncodedValue;
    .registers 5

    .line 259
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>(I)V

    .line 260
    new-instance v1, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;

    invoke-direct {v1, p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;-><init>(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/util/ByteOutput;)V

    new-instance v2, Lcom/s1243808733/android/dex/EncodedValueReader;

    invoke-direct {v2, p1}, Lcom/s1243808733/android/dex/EncodedValueReader;-><init>(Lcom/s1243808733/android/dex/EncodedValue;)V

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->transform(Lcom/s1243808733/android/dex/EncodedValueReader;)V

    .line 261
    new-instance p1, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    return-object p1
.end method

.method public adjustField(I)I
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->fieldIds:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public adjustMethod(I)I
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->methodIds:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public adjustMethodHandle(I)I
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->methodHandleIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public adjustProto(I)I
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->protoIds:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public adjustString(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_8

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->stringIds:[I

    aget v0, v0, p1

    :goto_8
    return v0
.end method

.method public adjustType(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_c

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeIds:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr v0, p1

    :goto_c
    return v0
.end method

.method public adjustTypeList(Lcom/s1243808733/android/dex/TypeList;)Lcom/s1243808733/android/dex/TypeList;
    .registers 4

    .line 154
    sget-object v0, Lcom/s1243808733/android/dex/TypeList;->EMPTY:Lcom/s1243808733/android/dex/TypeList;

    if-ne p1, v0, :cond_5

    return-object p1

    .line 157
    :cond_5
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/TypeList;->getTypes()[S

    move-result-object p1

    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    const/4 v0, 0x0

    .line 158
    :goto_10
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    .line 159
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 161
    :cond_1f
    new-instance v0, Lcom/s1243808733/android/dex/TypeList;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {v0, v1, p1}, Lcom/s1243808733/android/dex/TypeList;-><init>(Lcom/s1243808733/android/dex/Dex;[S)V

    return-object v0
.end method

.method public adjustTypeListOffset(I)I
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeListOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public putAnnotationDirectoryOffset(II)V
    .registers 4

    if-lez p1, :cond_12

    if-lez p2, :cond_12

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationDirectoryOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 133
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public putAnnotationOffset(II)V
    .registers 4

    if-lez p1, :cond_12

    if-lez p2, :cond_12

    .line 114
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 112
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public putAnnotationSetOffset(II)V
    .registers 4

    if-lez p1, :cond_12

    if-lez p2, :cond_12

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 119
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public putAnnotationSetRefListOffset(II)V
    .registers 4

    if-lez p1, :cond_12

    if-lez p2, :cond_12

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetRefListOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 126
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public putEncodedArrayValueOffset(II)V
    .registers 4

    if-lez p1, :cond_12

    if-lez p2, :cond_12

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->encodedArrayValueOffset:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 140
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public putTypeListOffset(II)V
    .registers 4

    if-lez p1, :cond_12

    if-lez p2, :cond_12

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeListOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 105
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
