.class final Lcom/s1243808733/android/dx/merge/InstructionTransformer;
.super Ljava/lang/Object;
.source "InstructionTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;,
        Lcom/s1243808733/android/dx/merge/InstructionTransformer$FieldVisitor;,
        Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;,
        Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;,
        Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;,
        Lcom/s1243808733/android/dx/merge/InstructionTransformer$StringVisitor;,
        Lcom/s1243808733/android/dx/merge/InstructionTransformer$TypeVisitor;
    }
.end annotation


# instance fields
.field private indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

.field private mappedAt:I

.field private mappedInstructions:[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

.field private final reader:Lcom/s1243808733/android/dx/io/CodeReader;


# direct methods
.method static bridge synthetic -$$Nest$fgetindexMap(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)Lcom/s1243808733/android/dx/merge/IndexMap;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)I
    .registers 1

    iget p0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedAt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmappedInstructions(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedAt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smjumboCheck(ZI)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->jumboCheck(ZI)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/s1243808733/android/dx/io/CodeReader;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/io/CodeReader;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    .line 35
    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor-IA;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setAllVisitors(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 36
    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$StringVisitor;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$StringVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$StringVisitor-IA;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setStringVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 37
    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$TypeVisitor;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$TypeVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$TypeVisitor-IA;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setTypeVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 38
    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$FieldVisitor;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$FieldVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$FieldVisitor-IA;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setFieldVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 39
    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor-IA;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setMethodVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 40
    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor-IA;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setMethodAndProtoVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 41
    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor-IA;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setCallSiteVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    return-void
.end method

.method private static jumboCheck(ZI)V
    .registers 3

    if-nez p0, :cond_21

    const p0, 0xffff

    if-gt p1, p0, :cond_8

    goto :goto_21

    .line 137
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot merge new index "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " into a non-jumbo instruction!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public transform(Lcom/s1243808733/android/dx/merge/IndexMap;[S)[S
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dex/DexException;
        }
    .end annotation

    .line 46
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->decodeAll([S)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object p2

    .line 47
    array-length v0, p2

    .line 49
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 50
    new-array p1, v0, [Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    .line 51
    const/4 p1, 0x0

    iput p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedAt:I

    .line 52
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/io/CodeReader;->visitAll([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V

    .line 54
    new-instance p2, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;

    invoke-direct {p2, v0}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;-><init>(I)V

    .line 55
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    array-length v1, v0

    :goto_1b
    if-ge p1, v1, :cond_27

    aget-object v2, v0, p1

    if-eqz v2, :cond_24

    .line 57
    invoke-virtual {v2, p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->encode(Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V

    :cond_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 61
    :cond_27
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 62
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->getArray()[S

    move-result-object p1

    return-object p1
.end method
