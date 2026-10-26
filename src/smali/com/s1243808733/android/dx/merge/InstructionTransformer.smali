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
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)I
    .locals 1

    iget v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedAt:I

    return v0
.end method

.method static bridge synthetic -$$Nest$fgetmappedInstructions(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fputmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;I)V
    .locals 0

    iput p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedAt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smjumboCheck(ZI)V
    .locals 0

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->jumboCheck(ZI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/s1243808733/android/dx/io/CodeReader;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/io/CodeReader;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    .line 35
    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;

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
    .locals 2

    if-nez p0, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    .line 137
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot merge new index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " into a non-jumbo instruction!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public transform(Lcom/s1243808733/android/dx/merge/IndexMap;[S)[S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/s1243808733/android/dex/DexException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-static {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->decodeAll([S)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v1

    .line 47
    array-length v2, v1

    .line 49
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 50
    new-array v3, v2, [Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    iput-object v3, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    .line 51
    iput v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedAt:I

    .line 52
    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->visitAll([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V

    .line 54
    new-instance v1, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;-><init>(I)V

    .line 55
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->encode(Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 62
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->getArray()[S

    move-result-object v0

    return-object v0
.end method
