.class Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;
.super Ljava/lang/Object;
.source "InstructionTransformer.java"

# interfaces
.implements Lcom/s1243808733/android/dx/io/CodeReader$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/merge/InstructionTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodVisitor"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    return-void
.end method


# virtual methods
.method public visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 7

    .line 108
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    move-result p1

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetindexMap(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result p1

    .line 110
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 111
    :goto_19
    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$smjumboCheck(ZI)V

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetmappedInstructions(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fputmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;I)V

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object p1

    aput-object p1, v0, v2

    return-void
.end method
