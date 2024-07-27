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
.method public constructor <init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;)V
    .registers 5
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

.method constructor <init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 105
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 108
    new-instance v0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->instructionTransformer:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    .line 110
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000104(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "header"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->headerOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 111
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000105(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

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
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->mapList:Lcom/s1243808733/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000106(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "map list"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->mapListOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000107(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "type list"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->typeListOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 123
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 124
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000115(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "annotation set ref list"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSets:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000114(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "annotation sets"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 130
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->classDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000108(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "class data"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 133
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->codes:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 134
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000109(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "code"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->stringDatas:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000110(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "string data"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->stringDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 139
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->debugInfos:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000111(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "debug info"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotations:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 143
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000116(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "annotation"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 145
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->encodedArrays:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 146
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000112(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "encoded array"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->encodedArrayOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 148
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationsDirectories:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->off:I

    .line 149
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-static {p4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->access$L1000113(Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)I

    move-result v1

    const-string v2, "annotations directory"

    invoke-virtual {v0, v1, v2}, Lcom/s1243808733/android/dex/Dex;->appendSection(ILjava/lang/String;)Lcom/s1243808733/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    .line 152
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex;->getNextSectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget v2, v2, Lcom/s1243808733/android/dex/TableOfContents;->dataOff:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents;->dataSize:I

    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    new-instance v2, Lcom/s1243808733/android/dx/merge/IndexMap;

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/s1243808733/android/dx/merge/IndexMap;-><init>(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/TableOfContents;)V

    aput-object v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dex/Dex;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/android/dx/merge/DexMerger;)[Lcom/s1243808733/android/dx/merge/IndexMap;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    return-object v0
.end method

.method static synthetic access$L1000006(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->headerOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000008(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->mapListOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000009(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->typeListOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000010(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000011(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000012(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->stringDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000013(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000014(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->encodedArrayOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000015(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000016(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000017(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000018(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/Dex$Section;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationOut:Lcom/s1243808733/android/dex/Dex$Section;

    return-object v0
.end method

.method static synthetic access$L1000019(Lcom/s1243808733/android/dx/merge/DexMerger;)Lcom/s1243808733/android/dex/TableOfContents;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    return-object v0
.end method

.method private getSortedTypes()[Lcom/s1243808733/android/dx/merge/SortableType;
    .registers 7

    const/4 v1, 0x0

    .line 613
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->typeIds:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    new-array v3, v0, [Lcom/s1243808733/android/dx/merge/SortableType;

    move v0, v1

    .line 614
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 625
    :cond_0
    const/4 v0, 0x1

    move v2, v1

    .line 628
    :goto_1
    array-length v4, v3

    if-lt v2, v4, :cond_2

    .line 631
    if-eqz v0, :cond_0

    .line 637
    sget-object v0, Lcom/s1243808733/android/dx/merge/SortableType;->NULLS_LAST_ORDER:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 640
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 641
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    invoke-static {v3, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/merge/SortableType;

    :goto_2
    return-object v0

    .line 615
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    aget-object v4, v4, v0

    invoke-direct {p0, v3, v2, v4}, Lcom/s1243808733/android/dx/merge/DexMerger;->readSortableTypes([Lcom/s1243808733/android/dx/merge/SortableType;Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_2
    aget-object v4, v3, v2

    .line 627
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/merge/SortableType;->isDepthAssigned()Z

    move-result v5

    if-nez v5, :cond_3

    .line 628
    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/merge/SortableType;->tryAssignDepth([Lcom/s1243808733/android/dx/merge/SortableType;)Z

    move-result v4

    and-int/2addr v0, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 641
    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Lcom/s1243808733/android/dex/Dex;

    .line 1188
    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 1191
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

    .line 1189
    :cond_1
    add-int/lit8 v2, v0, -0x1

    new-instance v3, Lcom/s1243808733/android/dex/Dex;

    new-instance v4, Ljava/io/File;

    aget-object v5, p0, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/s1243808733/android/dex/Dex;-><init>(Ljava/io/File;)V

    aput-object v3, v1, v2

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private mergeAnnotations()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 577
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$100000008;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000008;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$100000008;->mergeUnsorted()V

    return-void
.end method

.method private mergeApiLevels()I
    .registers 4

    .line 381
    const/4 v0, -0x1

    .line 382
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 388
    return v0

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v2

    iget v2, v2, Lcom/s1243808733/android/dex/TableOfContents;->apiLevel:I

    .line 384
    if-ge v0, v2, :cond_1

    move v0, v2

    .line 382
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private mergeCallSiteIds()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 482
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$100000004;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000004;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$100000004;->mergeSorted()V

    return-void
.end method

.method private mergeClassDefs()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    const/4 v0, 0x0

    .line 603
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    .line 601
    :cond_0
    aget-object v2, v1, v0

    .line 602
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/merge/SortableType;->getDex()Lcom/s1243808733/android/dex/Dex;

    move-result-object v3

    .line 603
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/merge/SortableType;->getClassDef()Lcom/s1243808733/android/dex/ClassDef;

    move-result-object v4

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/merge/SortableType;->getIndexMap()Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v2

    invoke-direct {p0, v3, v4, v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformClassDef(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/ClassDef;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private mergeDexes()Lcom/s1243808733/android/dex/Dex;
    .registers 4
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 530
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$100000006;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000006;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$100000006;->mergeSorted()V

    return-void
.end method

.method private mergeMethodHandles()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 506
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$100000005;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000005;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$100000005;->mergeUnsorted()V

    return-void
.end method

.method private mergeMethodIds()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 553
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$100000007;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000007;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$100000007;->mergeSorted()V

    return-void
.end method

.method private mergeProtoIds()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 458
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$100000003;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000003;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$100000003;->mergeSorted()V

    return-void
.end method

.method private mergeStringIds()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 392
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$100000000;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000000;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$100000000;->mergeSorted()V

    return-void
.end method

.method private mergeTypeIds()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 414
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$100000001;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->idsDefsOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000001;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$100000001;->mergeSorted()V

    return-void
.end method

.method private mergeTypeLists()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 438
    new-instance v0, Lcom/s1243808733/android/dx/merge/DexMerger$100000002;

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->typeListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-direct {v0, p0, p0, v1}, Lcom/s1243808733/android/dx/merge/DexMerger$100000002;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dx/merge/DexMerger;Lcom/s1243808733/android/dex/Dex$Section;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/merge/DexMerger$100000002;->mergeUnsorted()V

    return-void
.end method

.method private static printUsage()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/s1243808733/android/dx/merge/SortableType;",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

    .line 652
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex;->classDefs()Ljava/lang/Iterable;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 659
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 652
    :cond_1
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

    if-nez v4, :cond_2

    .line 657
    aput-object v2, p1, v3

    goto :goto_0

    .line 658
    :cond_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->collisionPolicy:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    sget-object v3, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    if-eq v2, v3, :cond_0

    .line 659
    new-instance v1, Lcom/s1243808733/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Multiple dex files define "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/ClassDef;->getTypeIndex()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private transformAnnotationDirectories(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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

    .line 710
    const/4 v0, 0x0

    :goto_0
    iget v3, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-lt v0, v3, :cond_1

    :cond_0
    return-void

    .line 711
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationDirectory(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private transformAnnotationDirectory(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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

    .line 763
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v2

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

    .line 778
    :goto_0
    if-lt v1, v2, :cond_0

    move v1, v0

    .line 786
    :goto_1
    if-lt v1, v3, :cond_1

    .line 795
    :goto_2
    if-lt v0, v4, :cond_2

    return-void

    .line 780
    :cond_0
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

    .line 778
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 791
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotationSet(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 786
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 797
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 800
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationsDirectoryOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotationSetRefList(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private transformAnnotationSet(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            ")V"
        }
    .end annotation

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

    .line 816
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 817
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotation(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private transformAnnotationSetRefList(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            ")V"
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->contentsOut:Lcom/s1243808733/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/s1243808733/android/dex/TableOfContents;->annotationSetRefLists:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    .line 826
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->assertFourByteAligned()V

    .line 827
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->putAnnotationSetRefListOffset(II)V

    .line 830
    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 831
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 832
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 833
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->annotationSetRefListOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2}, Lcom/s1243808733/android/dex/Dex$Section;->readInt()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustAnnotationSet(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private transformAnnotationSetRefLists(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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

    .line 700
    const/4 v0, 0x0

    :goto_0
    iget v3, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-lt v0, v3, :cond_1

    :cond_0
    return-void

    .line 701
    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationSetRefList(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private transformAnnotationSets(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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

    .line 690
    const/4 v0, 0x0

    :goto_0
    iget v3, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-lt v0, v3, :cond_1

    :cond_0
    return-void

    .line 691
    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationSet(Lcom/s1243808733/android/dx/merge/IndexMap;Lcom/s1243808733/android/dex/Dex$Section;)V

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private transformCatchHandlers(Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/Code$CatchHandler;)[I
    .registers 7

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

    .line 934
    const/4 v0, 0x0

    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_0

    .line 938
    return-object v2

    .line 935
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v3

    sub-int/2addr v3, v1

    aput v3, v2, v0

    .line 936
    aget-object v3, p2, v0

    invoke-direct {p0, v3, p1}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformEncodedCatchHandler(Lcom/s1243808733/android/dex/Code$CatchHandler;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private transformClassData(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/ClassData;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dex/ClassData;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dex/ClassDef;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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

    .line 744
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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dex/Code;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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

    .line 898
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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

    .line 969
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 982
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readByte()B

    move-result v0

    .line 983
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeByte(I)V

    .line 985
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 987
    :pswitch_1
    return-void

    .line 970
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128p1()I

    move-result v2

    .line 971
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128p1(I)V

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 990
    :pswitch_2
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 991
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    goto :goto_1

    .line 995
    :pswitch_3
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readSleb128()I

    move-result v0

    .line 996
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeSleb128(I)V

    goto :goto_1

    .line 1001
    :pswitch_4
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

    .line 1007
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

    .line 1015
    :pswitch_5
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 1016
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    goto :goto_1

    .line 1020
    :pswitch_6
    invoke-virtual {p1}, Lcom/s1243808733/android/dex/Dex$Section;->readUleb128p1()I

    move-result v0

    .line 1021
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->debugInfoOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustString(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128p1(I)V

    goto :goto_1

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private transformEncodedCatchHandler(Lcom/s1243808733/android/dex/Code$CatchHandler;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Code$CatchHandler;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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

    .line 1037
    if-eq v1, v6, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v4, v2

    neg-int v4, v4

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeSleb128(I)V

    .line 1043
    :goto_0
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_2

    .line 1048
    if-eq v1, v6, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    :cond_0
    return-void

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    array-length v4, v2

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dex/Dex$Section;->writeSleb128(I)V

    goto :goto_0

    .line 1044
    :cond_2
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    aget v5, v2, v0

    invoke-virtual {p2, v5}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 1045
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    aget v5, v3, v0

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private transformFields(Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/ClassData$Field;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "[",
            "Lcom/s1243808733/android/dex/ClassData$Field;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 862
    :goto_0
    array-length v1, p2

    if-lt v2, v1, :cond_0

    return-void

    .line 858
    :cond_0
    aget-object v3, p2, v2

    .line 859
    invoke-virtual {v3}, Lcom/s1243808733/android/dex/ClassData$Field;->getFieldIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustField(I)I

    move-result v1

    .line 860
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    sub-int v0, v1, v0

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 862
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/ClassData$Field;->getAccessFlags()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0
.end method

.method private transformMethods(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;[Lcom/s1243808733/android/dex/ClassData$Method;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            "[",
            "Lcom/s1243808733/android/dex/ClassData$Method;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    move v3, v1

    .line 880
    :goto_0
    array-length v2, p3

    if-lt v3, v2, :cond_0

    return-void

    .line 868
    :cond_0
    aget-object v4, p3, v3

    .line 869
    invoke-virtual {v4}, Lcom/s1243808733/android/dex/ClassData$Method;->getMethodIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v2

    .line 870
    iget-object v5, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    sub-int v0, v2, v0

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 873
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v4}, Lcom/s1243808733/android/dex/ClassData$Method;->getAccessFlags()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 875
    invoke-virtual {v4}, Lcom/s1243808733/android/dex/ClassData$Method;->getCodeOffset()I

    move-result v0

    if-nez v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 880
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_0

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex$Section;->alignToFourBytesWithZeroFill()V

    .line 879
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->classDataOut:Lcom/s1243808733/android/dex/Dex$Section;

    iget-object v5, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->codeOut:Lcom/s1243808733/android/dex/Dex$Section;

    invoke-virtual {v5}, Lcom/s1243808733/android/dex/Dex$Section;->getPosition()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/s1243808733/android/dex/Dex$Section;->writeUleb128(I)V

    .line 880
    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dex/Dex;->readCode(Lcom/s1243808733/android/dex/ClassData$Method;)Lcom/s1243808733/android/dex/Code;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformCode(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dex/Code;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    goto :goto_1
.end method

.method private transformStaticValues(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex;",
            "Lcom/s1243808733/android/dx/merge/IndexMap;",
            ")V"
        }
    .end annotation

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

    .line 720
    const/4 v0, 0x0

    :goto_0
    iget v3, v1, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    if-lt v0, v3, :cond_1

    :cond_0
    return-void

    .line 721
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformStaticValues(Lcom/s1243808733/android/dex/Dex$Section;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private transformTries(Lcom/s1243808733/android/dex/Dex$Section;[Lcom/s1243808733/android/dex/Code$Try;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            "[",
            "Lcom/s1243808733/android/dex/Code$Try;",
            "[I)V"
        }
    .end annotation

    .line 943
    const/4 v0, 0x0

    .line 946
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    return-void

    .line 943
    :cond_0
    aget-object v1, p2, v0

    .line 944
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Code$Try;->getStartAddress()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeInt(I)V

    .line 945
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Code$Try;->getInstructionCount()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 946
    invoke-virtual {v1}, Lcom/s1243808733/android/dex/Code$Try;->getCatchHandlerIndex()I

    move-result v1

    aget v1, p3, v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dex/Dex$Section;->writeUnsignedShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private unionAnnotationSetsAndDirectories()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    .line 672
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 675
    :goto_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 678
    :goto_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 681
    :goto_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v0, v0

    if-lt v1, v0, :cond_3

    return-void

    .line 673
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationSets(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationSetRefLists(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 679
    :cond_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformAnnotationDirectories(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->indexMaps:[Lcom/s1243808733/android/dx/merge/IndexMap;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/merge/DexMerger;->transformStaticValues(Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/IndexMap;)V

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public merge()Lcom/s1243808733/android/dex/Dex;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 228
    :goto_0
    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 193
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dex/Dex;

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 197
    invoke-direct {p0}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeDexes()Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;-><init>(Lcom/s1243808733/android/dx/merge/DexMerger;)V

    .line 205
    iget-object v4, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->writerSizes:Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->size()I

    move-result v4

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;->size()I

    move-result v5

    sub-int/2addr v4, v5

    .line 206
    iget v5, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->compactWasteThreshold:I

    if-le v4, v5, :cond_2

    .line 207
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    new-instance v5, Lcom/s1243808733/android/dex/Dex;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/s1243808733/android/dex/Dex;-><init>(I)V

    sget-object v6, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->FAIL:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    iget-object v7, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    new-instance v8, Lcom/s1243808733/android/dx/merge/DexMerger;

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/s1243808733/android/dex/Dex;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v5, v9, v0

    invoke-direct {v8, v9, v6, v7, v1}, Lcom/s1243808733/android/dx/merge/DexMerger;-><init>([Lcom/s1243808733/android/dex/Dex;Lcom/s1243808733/android/dx/merge/CollisionPolicy;Lcom/s1243808733/android/dx/command/dexer/DxContext;Lcom/s1243808733/android/dx/merge/DexMerger$WriterSizes;)V

    .line 209
    invoke-direct {v8}, Lcom/s1243808733/android/dx/merge/DexMerger;->mergeDexes()Lcom/s1243808733/android/dex/Dex;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v5, "Result compacted from %.1fKiB to %.1fKiB to save %.1fKiB%n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Float;

    iget-object v9, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexOut:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v9}, Lcom/s1243808733/android/dex/Dex;->getLength()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x44800000    # 1024.0f

    div-float/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Float;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->getLength()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x44800000    # 1024.0f

    div-float/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Float;

    int-to-float v4, v4

    const/high16 v9, 0x44800000    # 1024.0f

    div-float/2addr v4, v9

    invoke-direct {v8, v4}, Ljava/lang/Float;-><init>(F)V

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 216
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v1, 0x0

    .line 217
    :goto_1
    iget-object v6, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    array-length v6, v6

    if-lt v1, v6, :cond_3

    .line 223
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v6, "Result is %d defs/%.1fKiB. Took %.1fs%n"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v10

    iget-object v10, v10, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v10, v10, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Float;

    invoke-virtual {v0}, Lcom/s1243808733/android/dex/Dex;->getLength()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/Float;-><init>(F)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Float;

    sub-long v2, v4, v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    invoke-direct {v9, v2}, Ljava/lang/Float;-><init>(F)V

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_0

    .line 218
    :cond_3
    iget-object v6, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->context:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    iget-object v6, v6, Lcom/s1243808733/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v7, "Merged dex #%d (%d defs/%.1fKiB)%n"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/Integer;

    add-int/lit8 v11, v1, 0x1

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    iget-object v11, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Lcom/s1243808733/android/dex/Dex;->getTableOfContents()Lcom/s1243808733/android/dex/TableOfContents;

    move-result-object v11

    iget-object v11, v11, Lcom/s1243808733/android/dex/TableOfContents;->classDefs:Lcom/s1243808733/android/dex/TableOfContents$Section;

    iget v11, v11, Lcom/s1243808733/android/dex/TableOfContents$Section;->size:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/Float;

    iget-object v11, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->dexes:[Lcom/s1243808733/android/dex/Dex;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Lcom/s1243808733/android/dex/Dex;->getLength()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x44800000    # 1024.0f

    div-float/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/Float;-><init>(F)V

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public setCompactWasteThreshold(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 156
    iput p1, p0, Lcom/s1243808733/android/dx/merge/DexMerger;->compactWasteThreshold:I

    return-void
.end method
