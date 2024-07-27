.class Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;
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
    name = "MethodAndProtoVisitor"
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;)Lcom/s1243808733/android/dx/merge/InstructionTransformer;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    return-object v0
.end method


# virtual methods
.method public visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 9
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

    .line 119
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    move-result v0

    .line 120
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getProtoIndex()S

    move-result v1

    .line 121
    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$L1000001(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v3}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$L1000002(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-static {v3, v5}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$S1000002(Lcom/s1243808733/android/dx/merge/InstructionTransformer;I)V

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v3}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$L1000003(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v3}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$L1000003(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustProto(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->withProtoIndex(II)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    aput-object v0, v2, v4

    return-void
.end method
