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
    .registers 7

    const/4 v3, 0x0

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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationOffsets:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetOffsets:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetRefListOffsets:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationDirectoryOffsets:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->encodedArrayValueOffset:Ljava/util/HashMap;

    .line 97
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeListOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationDirectoryOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->encodedArrayValueOffset:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public adjust(Lcom/s1243808733/android/dex/Annotation;)Lcom/s1243808733/android/dex/Annotation;
    .registers 7

    .line 272
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>(I)V

    .line 273
    new-instance v1, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;

    invoke-direct {v1, p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;-><init>(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/util/ByteOutput;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Annotation;->getReader()Lcom/s1243808733/android/dex/EncodedValueReader;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->access$1000008(Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/s1243808733/android/dex/EncodedValueReader;)V

    .line 275
    new-instance v1, Lcom/s1243808733/android/dex/Annotation;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Annotation;->getVisibility()B

    move-result v3

    new-instance v4, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Lcom/s1243808733/android/dex/Annotation;-><init>(Lcom/s1243808733/android/dex/Dex;BLcom/s1243808733/android/dex/EncodedValue;)V

    return-object v1
.end method

.method public adjust(Lcom/s1243808733/android/dex/CallSiteId;)Lcom/s1243808733/android/dex/CallSiteId;
    .registers 5

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
    .registers 13

    .line 246
    new-instance v0, Lcom/s1243808733/android/dex/ClassDef;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getAccessFlags()I

    move-result v4

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getInterfacesOffset()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustTypeListOffset(I)I

    move-result v6

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getSourceFileIndex()I

    move-result v7

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getAnnotationsOffset()I

    move-result v8

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getClassDataOffset()I

    move-result v9

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ClassDef;->getStaticValuesOffset()I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/s1243808733/android/dex/ClassDef;-><init>(Lcom/s1243808733/android/dex/Dex;IIIIIIIII)V

    return-object v0
.end method

.method public adjust(Lcom/s1243808733/android/dex/FieldId;)Lcom/s1243808733/android/dex/FieldId;
    .registers 7

    .line 231
    new-instance v0, Lcom/s1243808733/android/dex/FieldId;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/FieldId;->getDeclaringClassIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/FieldId;->getTypeIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/FieldId;->getNameIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dex/FieldId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v0
.end method

.method public adjust(Lcom/s1243808733/android/dex/MethodHandle;)Lcom/s1243808733/android/dex/MethodHandle;
    .registers 8

    .line 220
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getMethodHandleType()Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getUnused1()I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getMethodHandleType()Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getFieldOrMethodId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v4

    :goto_0
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getUnused2()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dex/MethodHandle;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;III)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodHandle;->getFieldOrMethodId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v4

    goto :goto_0
.end method

.method public adjust(Lcom/s1243808733/android/dex/MethodId;)Lcom/s1243808733/android/dex/MethodId;
    .registers 7

    .line 209
    new-instance v0, Lcom/s1243808733/android/dex/MethodId;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodId;->getDeclaringClassIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodId;->getProtoIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustProto(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/MethodId;->getNameIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dex/MethodId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v0
.end method

.method public adjust(Lcom/s1243808733/android/dex/ProtoId;)Lcom/s1243808733/android/dex/ProtoId;
    .registers 7

    .line 239
    new-instance v0, Lcom/s1243808733/android/dex/ProtoId;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ProtoId;->getShortyIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ProtoId;->getReturnTypeIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/ProtoId;->getParametersOffset()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustTypeListOffset(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dex/ProtoId;-><init>(Lcom/s1243808733/android/dex/Dex;III)V

    return-object v0
.end method

.method public adjust(Lcom/s1243808733/android/dx/merge/SortableType;)Lcom/s1243808733/android/dx/merge/SortableType;
    .registers 6

    .line 254
    new-instance v0, Lcom/s1243808733/android/dx/merge/SortableType;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getDex()Lcom/s1243808733/android/dex/Dex;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getIndexMap()Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/merge/SortableType;->getClassDef()Lcom/s1243808733/android/dex/ClassDef;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassDef;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/merge/SortableType;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/ClassDef;)V

    return-object v0
.end method

.method public adjustAnnotation(I)I
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustAnnotationDirectory(I)I
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationDirectoryOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustAnnotationSet(I)I
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustAnnotationSetRefList(I)I
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetRefListOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustCallSite(I)I
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->callSiteIds:[I

    aget v0, v0, p1

    return v0
.end method

.method public adjustEncodedArray(I)I
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->encodedArrayValueOffset:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
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

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;->access$1000009(Lcom/s1243808733/android/dx/merge/IndexMap$EncodedValueTransformer;Lcom/s1243808733/android/dex/EncodedValueReader;)V

    .line 268
    new-instance v1, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    return-object v1
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
    new-instance v1, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/EncodedValue;-><init>([B)V

    return-object v1
.end method

.method public adjustField(I)I
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->fieldIds:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustMethod(I)I
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->methodIds:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustMethodHandle(I)I
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->methodHandleIds:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public adjustProto(I)I
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->protoIds:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustString(I)I
    .registers 3

    const/4 v0, -0x1

    .line 146
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->stringIds:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public adjustType(I)I
    .registers 4

    const/4 v0, -0x1

    .line 150
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeIds:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public adjustTypeList(Lcom/s1243808733/android/dex/TypeList;)Lcom/s1243808733/android/dex/TypeList;
    .registers 5

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

    .line 158
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 161
    new-instance p1, Lcom/s1243808733/android/dex/TypeList;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->target:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {p1, v1, v0}, Lcom/s1243808733/android/dex/TypeList;-><init>(Lcom/s1243808733/android/dex/Dex;[S)V

    goto :goto_0

    .line 159
    :cond_1
    aget-short v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public adjustTypeListOffset(I)I
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeListOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public putAnnotationDirectoryOffset(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 132
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationDirectoryOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putAnnotationOffset(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 111
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putAnnotationSetOffset(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 118
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putAnnotationSetRefListOffset(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 125
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->annotationSetRefListOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putEncodedArrayValueOffset(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 139
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->encodedArrayValueOffset:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putTypeListOffset(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 104
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/IndexMap;->typeListOffsets:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
