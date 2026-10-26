.class public final Lcom/s1243808733/android/dx/merge/DexMerger;
.super Ljava/lang/Object;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger;,
        Lcom/s1243808733/android/dx/merge/DexMerger$IdMerger$UnsortedValue;,
        Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;
    }
.end annotation


# static fields
.field private static final DBG_ADVANCE_LINE:B = 0x2t

.field private static final DBG_ADVANCE_PC:B = 0x1t

.field private static final DBG_END_LOCAL:B = 0x5t

.field private static final DBG_END_SEQUENCE:B = 0x0t

.field private static final DBG_RESTART_LOCAL:B = 0x6t

.field private static final DBG_SET_EPILOGUE_BEGIN:B = 0x8t

.field private static final DBG_SET_FILE:B = 0x9t

.field private static final DBG_SET_PROLOGUE_END:B = 0x7t

.field private static final DBG_START_LOCAL:B = 0x3t

.field private static final DBG_START_LOCAL_EXTENDED:B = 0x4t


# instance fields
.field private final annotationOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final annotationSetOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final codeOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final collisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

.field private compactWasteThreshold:I

.field private final contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

.field private final context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

.field private final debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final dexOut:Lcom/s1243808733/android/dex/Dex;

.field private final dexes:[Lcom/s1243808733/android/dex/Dex;

.field private final encodedArrayOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final headerOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

.field private final instructionTransformer:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

.field private final mapListOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final stringDataOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final typeListOut:Lcom/s1243808733/android/dex/Dex$Section;

.field private final writerSizes:Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;


# direct methods
.method static bridge synthetic -$$Nest$fgetannotationOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetannotationSetOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetannotationSetRefListOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetannotationsDirectoryOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetclassDataOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetcodeOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetcontentsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetdebugInfoOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetdexes(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetencodedArrayOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->encodedArrayOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetheaderOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->headerOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetidsDefsOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetindexMaps(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dx/merge/IndexMap;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmapListOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->mapListOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetstringDataOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->stringDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgettypeListOut(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->typeListOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method public constructor <init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;-><init>([Lcom/s1243808733/android/dex/Dex;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/s1243808733/android/dx/merge/DexMerger;-><init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)V

    return-void
.end method

.method private constructor <init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->compactWasteThreshold:I

    .line 97
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    .line 98
    iput-object p2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->collisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    .line 99
    iput-object p3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    .line 100
    iput-object p4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->writerSizes:Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;

    .line 102
    new-instance v0, Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/Dex;-><init>(I)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    .line 104
    array-length v0, p1

    new-array v0, v0, [Lcom/s1243808733/android/dx/merge/IndexMap;

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    const/4 v0, 0x0

    .line 105
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    new-instance v2, Lcom/s1243808733/android/dx/merge/IndexMap;

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/s1243808733/android/dx/merge/IndexMap;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/TableOfContents;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->instructionTransformer:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    .line 110
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetheader(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "header"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->headerOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 111
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetidsDefs(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "ids defs"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 113
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    .line 114
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    .line 116
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 117
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v2, 0x1

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 118
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetmapList(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "map list"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->mapListOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 120
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 121
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgettypeList(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "type list"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->typeListOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 123
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 124
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetannotationsSetRefList(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "annotation set ref list"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 127
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSets:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 128
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetannotationsSet(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "annotation sets"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 130
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 131
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetclassData(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "class data"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 133
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->codes:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 134
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetcode(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "code"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 136
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->stringDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 137
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetstringData(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "string data"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->stringDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 139
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->debugInfos:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 140
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetdebugInfo(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "debug info"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 142
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 143
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetannotation(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "annotation"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 145
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 146
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetencodedArray(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "encoded array"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->encodedArrayOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 148
    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationsDirectories:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v2

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 149
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->-$$Nest$fgetannotationsDirectory(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v2

    const-string v3, "annotations directory"

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 152
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iget v2, v0, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->dataSize:I

    return-void
.end method

.method private getSortedTypes()[Lcom/s1243808733/android/dx/merge/SortableType;
    .locals 7

    const/4 v1, 0x0

    .line 613
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v4, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array v2, v4, [Lcom/s1243808733/android/dx/merge/SortableType;

    move v0, v1

    .line 614
    :goto_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 615
    aget-object v3, v3, v0

    iget-object v5, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    aget-object v5, v5, v0

    invoke-direct {p0, v2, v3, v5}, Lcom/s1243808733/android/dx/merge/DexMerger;->readSortableTypes([Lcom/s1243808733/android/dx/merge/SortableType;Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_2

    .line 626
    aget-object v5, v2, v3

    if-eqz v5, :cond_1

    .line 627
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/merge/SortableType;->isDepthAssigned()Z

    move-result v6

    if-nez v6, :cond_1

    .line 628
    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/merge/SortableType;->tryAssignDepth([Lcom/s1243808733/android/dx/merge/SortableType;)Z

    move-result v5

    and-int/2addr v0, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_0

    .line 637
    sget-object v0, Lcom/s1243808733/android/dx/merge/SortableType;->NULLS_LAST_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 640
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 642
    invoke-static {v2, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/merge/SortableType;

    :goto_2
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1182
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1183
    invoke-static {}, Lcom/s1243808733/android/dx/merge/DexMerger;->printUsage()V

    .line 1192
    :goto_0
    return-void

    .line 1187
    :cond_0
    array-length v1, p0

    const/4 v0, 0x1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lcom/s1243808733/android/dex/Dex;

    .line 1188
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1189
    add-int/lit8 v2, v0, -0x1

    new-instance v3, Lcom/s1243808733/android/dex/Dex;

    new-instance v4, Ljava/io/File;

    aget-object v5, p0, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/io/File;)V

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1191
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger;

    sget-object v2, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    new-instance v3, Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {v3}, Lcom/s1243808733/android/dx/command/dexer/DxContext;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;-><init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->merge()Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    .line 1192
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex;->writeTo(Ljava/io/File;)V

    goto :goto_0
.end method

.method private mergeAnnotations()V
    .locals 2

    .line 577
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$9;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$9;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 593
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$9;->mergeUnsorted()V

    return-void
.end method

.method private mergeApiLevels()I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 382
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 383
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v2

    iget v2, v2, Lcom/s1243808733/android/dex/TableOfContents;->apiLevel:I

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private mergeCallSiteIds()V
    .locals 2

    .line 482
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$5;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$5;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 502
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$5;->mergeSorted()V

    return-void
.end method

.method private mergeClassDefs()V
    .locals 6

    .line 597
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->getSortedTypes()[Lcom/s1243808733/android/dx/merge/SortableType;

    move-result-object v1

    .line 598
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v2

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 599
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    array-length v2, v1

    iput v2, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 601
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 602
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/merge/SortableType;->getDex()Lcom/s1243808733/android/dex/Dex;

    move-result-object v4

    .line 603
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/merge/SortableType;->getClassDef()Lcom/s1243808733/android/dex/ClassDef;

    move-result-object v5

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/merge/SortableType;->getIndexMap()Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v3

    invoke-direct {p0, v4, v5, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformClassDef(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/ClassDef;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mergeDexes()Lcom/s1243808733/android/dex/Dex;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeStringIds()V

    .line 161
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeTypeIds()V

    .line 162
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeTypeLists()V

    .line 163
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeProtoIds()V

    .line 164
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeFieldIds()V

    .line 165
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeMethodIds()V

    .line 166
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeMethodHandles()V

    .line 167
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeAnnotations()V

    .line 168
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->unionAnnotationSetsAndDirectories()V

    .line 169
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeCallSiteIds()V

    .line 170
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeClassDefs()V

    .line 173
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->sections:[Lcom/s1243808733/android/dex/TableOfContents$Section;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->header:Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 177
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->header:Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 178
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getLength()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->fileSize:I

    .line 179
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/TableOfContents;->computeSizesFromOffsets()V

    .line 180
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->headerOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeApiLevels()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/TableOfContents;->writeHeader(Lcom/s1243808733/android/dex/Dex$Section;I)V

    .line 181
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->mapListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/TableOfContents;->writeMap(Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 184
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->writeHashes()V

    .line 186
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    return-object v0
.end method

.method private mergeFieldIds()V
    .locals 2

    .line 530
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$7;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$7;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 549
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$7;->mergeSorted()V

    return-void
.end method

.method private mergeMethodHandles()V
    .locals 2

    .line 506
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$6;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$6;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 526
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$6;->mergeUnsorted()V

    return-void
.end method

.method private mergeMethodIds()V
    .locals 2

    .line 553
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$8;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$8;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 573
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$8;->mergeSorted()V

    return-void
.end method

.method private mergeProtoIds()V
    .locals 2

    .line 458
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$4;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$4;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 478
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$4;->mergeSorted()V

    return-void
.end method

.method private mergeStringIds()V
    .locals 2

    .line 392
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$1;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$1;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 410
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$1;->mergeSorted()V

    return-void
.end method

.method private mergeTypeIds()V
    .locals 2

    .line 414
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$2;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$2;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 434
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$2;->mergeSorted()V

    return-void
.end method

.method private mergeTypeLists()V
    .locals 2

    .line 438
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$3;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->typeListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$3;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 454
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$3;->mergeUnsorted()V

    return-void
.end method

.method private static printUsage()V
    .locals 2

    .line 1196
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: DexMerger <out.dex> <a.dex> <b.dex> ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1197
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1198
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "If a class is defined in several dex, the class found in the first dex will be used."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private readSortableTypes([Lcom/s1243808733/android/dx/merge/SortableType;Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 5

    .line 652
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/ClassDef;

    .line 653
    new-instance v2, Lcom/s1243808733/android/dx/merge/SortableType;

    invoke-direct {v2, p2, p3, v0}, Lcom/s1243808733/android/dx/merge/SortableType;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/ClassDef;)V

    invoke-virtual {p3, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjust(Lcom/s1243808733/android/dx/merge/SortableType;)Lcom/s1243808733/android/dx/merge/SortableType;

    move-result-object v2

    .line 655
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/merge/SortableType;->getTypeIndex()I

    move-result v3

    .line 656
    aget-object v4, p1, v3

    if-nez v4, :cond_1

    .line 657
    aput-object v2, p1, v3

    goto :goto_0

    .line 658
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->collisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    sget-object v3, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    if-eq v2, v3, :cond_0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple dex files define "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dex/DexException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private transformAnnotationDirectories(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 4

    .line 707
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationsDirectories:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 708
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget v0, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v2

    const/4 v0, 0x0

    .line 710
    :goto_0
    iget v3, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ge v0, v3, :cond_0

    .line 711
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationDirectory(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformAnnotationDirectory(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 7

    const/4 v0, 0x0

    .line 761
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/s1243808733/android/dex/TableOfContents;->annotationsDirectories:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 762
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 764
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v2

    .line 763
    invoke-virtual {p2, v1, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->putAnnotationDirectoryOffset(II)V

    .line 766
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotationSet(I)I

    move-result v1

    .line 767
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 769
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 770
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 772
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    .line 773
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 775
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v4

    .line 776
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 780
    iget-object v5, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 783
    iget-object v5, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotationSet(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 788
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 791
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 792
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotationSet(I)I

    move-result v5

    .line 791
    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v4, :cond_2

    .line 797
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 800
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 801
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotationSetRefList(I)I

    move-result v2

    .line 800
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private transformAnnotationSet(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/Dex$Section;)V
    .locals 4

    .line 809
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSets:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 810
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 811
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->putAnnotationSetOffset(II)V

    .line 813
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 814
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 817
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotation(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformAnnotationSetRefList(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/Dex$Section;)V
    .locals 4

    .line 825
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 826
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 828
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    .line 827
    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->putAnnotationSetRefListOffset(II)V

    .line 830
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 831
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 833
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotationSet(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformAnnotationSetRefLists(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 4

    .line 697
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 698
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget v0, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v2

    const/4 v0, 0x0

    .line 700
    :goto_0
    iget v3, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ge v0, v3, :cond_0

    .line 701
    invoke-direct {p0, p2, v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationSetRefList(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/Dex$Section;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformAnnotationSets(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 4

    .line 687
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSets:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 688
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget v0, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v2

    const/4 v0, 0x0

    .line 690
    :goto_0
    iget v3, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ge v0, v3, :cond_0

    .line 691
    invoke-direct {p0, p2, v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationSet(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/Dex$Section;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformCatchHandlers(Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/Code$CatchHandler;)[I
    .locals 4

    .line 931
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    .line 932
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v2, p2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 933
    array-length v0, p2

    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 934
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 935
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v3

    sub-int/2addr v3, v1

    aput v3, v2, v0

    .line 936
    aget-object v3, p2, v0

    invoke-direct {p0, v3, p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformEncodedCatchHandler(Lcom/s1243808733/android/dex/Code$CatchHandler;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private transformClassData(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/ClassData;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 6

    .line 838
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 840
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassData;->getStaticFields()[Lcom/s1243808733/android/dex/ClassData$Field;

    move-result-object v0

    .line 841
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassData;->getInstanceFields()[Lcom/s1243808733/android/dex/ClassData$Field;

    move-result-object v1

    .line 842
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassData;->getDirectMethods()[Lcom/s1243808733/android/dex/ClassData$Method;

    move-result-object v2

    .line 843
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassData;->getVirtualMethods()[Lcom/s1243808733/android/dex/ClassData$Method;

    move-result-object v3

    .line 845
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v5, v0

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 846
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v5, v1

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 847
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v5, v2

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 848
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v5, v3

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 850
    invoke-direct {p0, p3, v0}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformFields(Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/ClassData$Field;)V

    .line 851
    invoke-direct {p0, p3, v1}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformFields(Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/ClassData$Field;)V

    .line 852
    invoke-direct {p0, p1, p3, v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformMethods(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/ClassData$Method;)V

    .line 853
    invoke-direct {p0, p1, p3, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformMethods(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/ClassData$Method;)V

    return-void
.end method

.method private transformClassDef(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/ClassDef;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 732
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 733
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getAccessFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 734
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getSupertypeIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 735
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getInterfacesOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 737
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getSourceFileIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v0

    .line 738
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 740
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getAnnotationsOffset()I

    move-result v0

    .line 741
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p3, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotationDirectory(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 743
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getClassDataOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 752
    :goto_0
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/ClassDef;->getStaticValuesOffset()I

    move-result v0

    .line 753
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p3, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustEncodedArray(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 748
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dex/Dex;->readClassData(Lcom/s1243808733/android/dex/ClassDef;)Lcom/s1243808733/android/dex/ClassData;

    move-result-object v0

    .line 749
    invoke-direct {p0, p1, v0, p3}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformClassData(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/ClassData;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    goto :goto_0
.end method

.method private transformCode(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Code;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 6

    const/4 v5, 0x0

    .line 886
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->codes:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 887
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 889
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Code;->getRegistersSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 890
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Code;->getInsSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 891
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Code;->getOutsSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 893
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Code;->getTries()[Lcom/s1243808733/android/dex/Code$Try;

    move-result-object v0

    .line 894
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Code;->getCatchHandlers()[Lcom/s1243808733/android/dex/Code$CatchHandler;

    move-result-object v1

    .line 895
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v3, v0

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 897
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Code;->getDebugInfoOffset()I

    move-result v2

    if-eqz v2, :cond_2

    .line 899
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v4}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 900
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformDebugInfoItem(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    .line 905
    :goto_0
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Code;->getInstructions()[S

    move-result-object v2

    .line 906
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->instructionTransformer:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-virtual {v3, p3, v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->transform(Lcom/s1243808733/android/dx/merge/IndexMap;[S)[S

    move-result-object v2

    .line 907
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 908
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dex/Dex$Section;->write([S)V

    .line 910
    array-length v3, v0

    if-lez v3, :cond_1

    .line 911
    array-length v2, v2

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 912
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeShort(S)V

    .line 920
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v2

    .line 921
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dex/Dex$Section;->skip(I)V

    .line 922
    invoke-direct {p0, p3, v1}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformCatchHandlers(Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/Code$CatchHandler;)[I

    move-result-object v1

    .line 923
    invoke-direct {p0, v2, v0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformTries(Lcom/s1243808733/android/dex/Dex$Section;[Lcom/s1243808733/android/dex/Code$Try;[I)V

    :cond_1
    return-void

    .line 902
    :cond_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    goto :goto_0
.end method

.method private transformDebugInfoItem(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 4

    .line 962
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->debugInfos:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 963
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 964
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 966
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 967
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 970
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128p1()I

    move-result v2

    .line 971
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128p1(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 982
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readByte()B

    move-result v0

    .line 983
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeByte(I)V

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 991
    :pswitch_0
    return-void

    .line 1015
    :pswitch_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 1016
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    goto :goto_1

    .line 1001
    :pswitch_2
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 1002
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 1003
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128p1()I

    move-result v1

    .line 1004
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128p1(I)V

    .line 1005
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128p1()I

    move-result v1

    .line 1006
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128p1(I)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1008
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128p1()I

    move-result v0

    .line 1009
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128p1(I)V

    goto :goto_1

    .line 995
    :pswitch_3
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readSleb128()I

    move-result v0

    .line 996
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeSleb128(I)V

    goto :goto_1

    .line 990
    :pswitch_4
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 991
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    goto :goto_1

    .line 1020
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128p1()I

    move-result v0

    .line 1021
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128p1(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private transformEncodedCatchHandler(Lcom/s1243808733/android/dex/Code$CatchHandler;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 7

    const/4 v6, -0x1

    .line 1033
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Code$CatchHandler;->getCatchAllAddress()I

    move-result v1

    .line 1034
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Code$CatchHandler;->getTypeIndexes()[I

    move-result-object v2

    .line 1035
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Code$CatchHandler;->getAddresses()[I

    move-result-object v3

    if-eq v1, v6, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v4, v2

    neg-int v4, v4

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeSleb128(I)V

    .line 1040
    :goto_0
    const/4 v0, 0x0

    .line 1043
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 1044
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    aget v5, v2, v0

    invoke-virtual {p2, v5}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 1045
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    aget v5, v3, v0

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v4, v2

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeSleb128(I)V

    goto :goto_0

    .line 1045
    :cond_1
    if-eq v1, v6, :cond_2

    .line 1049
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    :cond_2
    return-void
.end method

.method private transformFields(Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/ClassData$Field;)V
    .locals 6

    const/4 v1, 0x0

    .line 858
    array-length v3, p2

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p2, v0

    .line 859
    invoke-virtual {v4}, Lcom/s1243808733/android/dex/ClassData$Field;->getFieldIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v1

    .line 860
    iget-object v5, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    sub-int v2, v1, v2

    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 862
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v4}, Lcom/s1243808733/android/dex/ClassData$Field;->getAccessFlags()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformMethods(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/ClassData$Method;)V
    .locals 7

    const/4 v1, 0x0

    .line 868
    array-length v4, p3

    move v0, v1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, p3, v3

    .line 869
    invoke-virtual {v5}, Lcom/s1243808733/android/dex/ClassData$Method;->getMethodIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v2

    .line 870
    iget-object v6, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    sub-int v0, v2, v0

    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 873
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v5}, Lcom/s1243808733/android/dex/ClassData$Method;->getAccessFlags()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 875
    invoke-virtual {v5}, Lcom/s1243808733/android/dex/ClassData$Method;->getCodeOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 880
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->alignToFourBytesWithZeroFill()V

    .line 879
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    iget-object v6, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v6}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 880
    invoke-virtual {p1, v5}, Lcom/s1243808733/android/dex/Dex;->readCode(Lcom/s1243808733/android/dex/ClassData$Method;)Lcom/s1243808733/android/dex/Code;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformCode(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Code;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private transformStaticValues(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 1055
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->encodedArrayOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->putEncodedArrayValueOffset(II)V

    .line 1056
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readEncodedArray()Lcom/s1243808733/android/dex/EncodedValue;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustEncodedArray(Lcom/s1243808733/android/dex/EncodedValue;)Lcom/s1243808733/android/dex/EncodedValue;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->encodedArrayOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/EncodedValue;->writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V

    return-void
.end method

.method private transformStaticValues(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .locals 4

    .line 717
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v0

    iget-object v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

    .line 718
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget v0, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex;->open(I)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v2

    const/4 v0, 0x0

    .line 720
    :goto_0
    iget v3, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-ge v0, v3, :cond_0

    .line 721
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformStaticValues(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformTries(Lcom/s1243808733/android/dex/Dex$Section;[Lcom/s1243808733/android/dex/Code$Try;[I)V
    .locals 4

    .line 943
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 944
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Code$Try;->getStartAddress()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 945
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Code$Try;->getInstructionCount()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 946
    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Code$Try;->getCatchHandlerIndex()I

    move-result v2

    aget v2, p3, v2

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unionAnnotationSetsAndDirectories()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    .line 672
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 673
    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationSets(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 675
    :goto_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 676
    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationSetRefLists(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 678
    :goto_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 679
    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationDirectories(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 681
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 682
    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformStaticValues(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public merge()Lcom/s1243808733/android/dex/Dex;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 191
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 226
    :goto_0
    return-object v0

    .line 192
    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 197
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeDexes()Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;)V

    .line 205
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->writerSizes:Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 206
    iget v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->compactWasteThreshold:I

    if-le v2, v3, :cond_2

    .line 207
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    new-instance v3, Lcom/s1243808733/android/dex/Dex;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/s1243808733/android/dex/Dex;-><init>(I)V

    sget-object v6, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->FAIL:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    iget-object v7, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    new-instance v8, Lcom/s1243808733/android/dx/merge/DexMerger;

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/s1243808733/android/dex/Dex;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v3, v9, v0

    invoke-direct {v8, v9, v6, v7, v1}, Lcom/s1243808733/android/dx/merge/DexMerger;-><init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)V

    .line 209
    invoke-direct {v8}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeDexes()Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    .line 211
    invoke-virtual {v3}, Lcom/s1243808733/android/dex/Dex;->getLength()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr v3, v6

    .line 212
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->getLength()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x44800000    # 1024.0f

    div-float/2addr v6, v7

    int-to-float v2, v2

    const/high16 v7, 0x44800000    # 1024.0f

    div-float/2addr v2, v7

    .line 213
    const-string v7, "Result compacted from %.1fKiB to %.1fKiB to save %.1fKiB%n"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v8, v3

    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v3

    invoke-virtual {v1, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 216
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const/4 v1, 0x0

    .line 217
    :goto_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 218
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v3, v2, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    add-int/lit8 v2, v1, 0x1

    .line 219
    iget-object v8, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    aget-object v8, v8, v1

    .line 220
    invoke-virtual {v8}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v8

    iget-object v8, v8, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v8, v8, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    iget-object v9, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    aget-object v1, v9, v1

    .line 221
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getLength()I

    move-result v1

    int-to-float v1, v1

    const/high16 v9, 0x44800000    # 1024.0f

    div-float/2addr v1, v9

    .line 218
    const-string v9, "Merged dex #%d (%d defs/%.1fKiB)%n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v11

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v10, v8

    invoke-virtual {v3, v9, v10}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move v1, v2

    goto :goto_1

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    .line 224
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v2

    iget-object v2, v2, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 225
    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->getLength()I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x44800000    # 1024.0f

    div-float/2addr v3, v8

    sub-long v4, v6, v4

    long-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v4, v5

    .line 226
    const-string v5, "Result is %d defs/%.1fKiB. Took %.1fs%n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_0
.end method

.method public setCompactWasteThreshold(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->compactWasteThreshold:I

    return-void
.end method
