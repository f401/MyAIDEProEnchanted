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
.field private final this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;)Lcom/s1243808733/android/dx/merge/InstructionTransformer;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    return-object v0
.end method


# virtual methods
.method public visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;",
            "Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 108
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$L1000003(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v1

    .line 110
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    .line 111
    :goto_0
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$1000004(ZI)V

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$L1000001(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$L1000002(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$S1000002(Lcom/s1243808733/android/dx/merge/InstructionTransformer;I)V

    invoke-virtual {p2, v1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v1

    aput-object v1, v0, v3

    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
