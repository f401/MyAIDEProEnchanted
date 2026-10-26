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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationSetOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final annotationSetRefListOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
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
            "Ljava/util/HashMap",
            "<",
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
            "Ljava/util/HashMap",
            "<",
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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/TableOfContents;)V
    .locals 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    .line 79
    iget-object v0, p2, Lcom/s1243808733/android/dex/TableOfContents;->stringIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->stringIds:[I

    .line 80
    iget-object v0, p2, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeIds:[S

    .line 81
    iget-object v0, p2, Lcom/s1243808733/android/dex/TableOfContents;->protoIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->protoIds:[S

    .line 82
    iget-object v0, p2, Lcom/s1243808733/android/dex/TableOfContents;->fieldIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->fieldIds:[S

    .line 83
    iget-object v0, p2, Lcom/s1243808733/android/dex/TableOfContents;->methodIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->methodIds:[S

    .line 84
    iget-object v0, p2, Lcom/s1243808733/android/dex/TableOfContents;->callSiteIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->callSiteIds:[I

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->methodHandleIds:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeListOffsets:Ljava/util/HashMap;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationOffsets:Ljava/util/HashMap;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetOffsets:Ljava/util/HashMap;

    .line 89
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetRefListOffsets:Ljava/util/HashMap;

    .line 90
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationDirectoryOffsets:Ljava/util/HashMap;

    .line 91
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->encodedArrayValueOffset:Ljava/util/HashMap;

    .line 97
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v1, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v2, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v3, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public adjust(Lcom/s1243808733/android/dex/Annotation;)Lcom/s1243808733/android/dex/Annotation;
    .locals 5

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

    move-result v2

    .line 276
    new-instance v3, Lcom/s1243808733/android/dex/Annotation;

    new-instance v4, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    invoke-direct {v3, v1, v2, v4}, Lcom/s1243808733/android/dex/Annotation;-><init>(Lcom/s1243808733/android/dex/Dex;BLcom/s1243808733/android/dex/EncodedValue;)V

    return-object v3
.end method

.method public adjust(Lcom/s1243808733/android/dex/CallSiteId;)Lcom/s1243808733/android/dex/CallSiteId;
    .locals 3

    .line 216
    new-instance v0, Lcom/s1243808733/android/dex/CallSiteId;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/CallSiteId;->getCallSiteOffset()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustEncodedArray(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dex/CallSiteId;-><init>(Lcom/s1243808733/android/dex/Dex;I)V

    return-object v0
.end method

.method public adjust(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassDef;
    .locals 11

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
    new-instance v0, Lcom/s1243808733/android/dex/ClassDef;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getStaticValuesOffset()I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/s1243808733/android/dex/ClassDef;-><init>(Lcom/s1243808733/android/dex/Dex;IIIIIIIII)V

    return-object v0
.end method

.method public adjust(Lcom/s1243808733/android/dex/FieldId;)Lcom/s1243808733/android/dex/FieldId;
    .locals 5

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

    move-result v4

    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/s1243808733/android/dex/FieldId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v3
.end method

.method public adjust(Lcom/s1243808733/android/dex/MethodHandle;)Lcom/s1243808733/android/dex/MethodHandle;
    .locals 6

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

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getFieldOrMethodId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v4

    .line 227
    :goto_0
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getUnused2()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dex/MethodHandle;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;III)V

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getFieldOrMethodId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v4

    goto :goto_0
.end method

.method public adjust(Lcom/s1243808733/android/dex/MethodId;)Lcom/s1243808733/android/dex/MethodId;
    .locals 5

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

    move-result v4

    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/s1243808733/android/dex/MethodId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v3
.end method

.method public adjust(Lcom/s1243808733/android/dex/ProtoId;)Lcom/s1243808733/android/dex/ProtoId;
    .locals 5

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

    move-result v4

    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustTypeListOffset(I)I

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/s1243808733/android/dex/ProtoId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v3
.end method

.method public adjust(Lcom/s1243808733/android/dx/merge/SortableType;)Lcom/s1243808733/android/dx/merge/SortableType;
    .locals 4

    .line 254
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getDex()Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    .line 255
    new-instance v1, Lcom/s1243808733/android/dx/merge/SortableType;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getIndexMap()Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getClassDef()Lcom/s1243808733/android/dex/ClassDef;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassDef;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/s1243808733/android/dx/merge/SortableType;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/ClassDef;)V

    return-object v1
.end method

.method public adjustAnnotation(I)I
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustAnnotationDirectory(I)I
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationDirectoryOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustAnnotationSet(I)I
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustAnnotationSetRefList(I)I
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetRefListOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustCallSite(I)I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->callSiteIds:[I

    aget v0, v0, p1

    return v0
.end method

.method public adjustEncodedArray(I)I
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->encodedArrayValueOffset:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustEncodedArray(Lcom/s1243808733/android/dex/EncodedValue;)Lcom/s1243808733/android/dex/EncodedValue;
    .locals 4

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
    new-instance v1, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    return-object v1
.end method

.method public adjustEncodedValue(Lcom/s1243808733/android/dex/EncodedValue;)Lcom/s1243808733/android/dex/EncodedValue;
    .locals 3

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
    new-instance v1, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    return-object v1
.end method

.method public adjustField(I)I
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->fieldIds:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustMethod(I)I
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->methodIds:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustMethodHandle(I)I
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->methodHandleIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustProto(I)I
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->protoIds:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustString(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->stringIds:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public adjustType(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 150
    :goto_0
    return v0

    :cond_0
    const v0, 0xffff

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeIds:[S

    aget-short v1, v1, p1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public adjustTypeList(Lcom/s1243808733/android/dex/TypeList;)Lcom/s1243808733/android/dex/TypeList;
    .locals 3

    .line 154
    sget-object v0, Lcom/s1243808733/android/dex/TypeList;->EMPTY:Lcom/s1243808733/android/dex/TypeList;

    if-ne p1, v0, :cond_0

    .line 161
    :goto_0
    return-object p1

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/TypeList;->getTypes()[S

    move-result-object v0

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    const/4 v1, 0x0

    .line 158
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 159
    aget-short v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_1
    new-instance p1, Lcom/s1243808733/android/dex/TypeList;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {p1, v1, v0}, Lcom/s1243808733/android/dex/TypeList;-><init>(Lcom/s1243808733/android/dex/Dex;[S)V

    goto :goto_0
.end method

.method public adjustTypeListOffset(I)I
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeListOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public putAnnotationDirectoryOffset(II)V
    .locals 3

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationDirectoryOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public putAnnotationOffset(II)V
    .locals 3

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public putAnnotationSetOffset(II)V
    .locals 3

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public putAnnotationSetRefListOffset(II)V
    .locals 3

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetRefListOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public putEncodedArrayValueOffset(II)V
    .locals 3

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->encodedArrayValueOffset:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public putTypeListOffset(II)V
    .locals 3

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeListOffsets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
