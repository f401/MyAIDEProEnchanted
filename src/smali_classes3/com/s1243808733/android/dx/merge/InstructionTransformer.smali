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
.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/s1243808733/android/dx/io/CodeReader;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/io/CodeReader;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    .line 35
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setAllVisitors(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 36
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$StringVisitor;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$StringVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setStringVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 37
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$TypeVisitor;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$TypeVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setTypeVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 38
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$FieldVisitor;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$FieldVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setFieldVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 39
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setMethodVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 40
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setMethodAndProtoVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    .line 41
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->reader:Lcom/s1243808733/android/dx/io/CodeReader;

    new-instance v1, Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/io/CodeReader;->setCallSiteVisitor(Lcom/s1243808733/android/dx/io/CodeReader$Visitor;)V

    return-void
.end method

.method static synthetic access$1000004(ZI)V
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->jumboCheck(ZI)V

    return-void
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedAt:I

    return v0
.end method

.method static synthetic access$L1000003(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)Lcom/s1243808733/android/dx/merge/IndexMap;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    return-object v0
.end method

.method static synthetic access$S1000001(Lcom/s1243808733/android/dx/merge/InstructionTransformer;[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedInstructions:[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/s1243808733/android/dx/merge/InstructionTransformer;I)V
    .registers 2

    iput p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->mappedAt:I

    return-void
.end method

.method static synthetic access$S1000003(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/IndexMap;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    return-void
.end method

.method private static jumboCheck(ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    .line 136
    if-nez p0, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_0

    .line 137
    new-instance v0, Lcom/s1243808733/android/dex/DexIndexOverflowException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot merge new index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " into a non-jumbo instruction!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public transform(Lcom/s1243808733/android/dx/merge/IndexMap;[S)[S
    .registers 7

    const/4 v0, 0x0

    .line 45
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

    .line 57
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 61
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/merge/IndexMap;

    iput-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->indexMap:Lcom/s1243808733/android/dx/merge/IndexMap;

    .line 62
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/io/instructions/ShortArrayCodeOutput;->getArray()[S

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    aget-object v3, v2, v0

    .line 56
    if-eqz v3, :cond_1

    .line 57
    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->encode(Lcom/s1243808733/android/dx/io/instructions/CodeOutput;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
