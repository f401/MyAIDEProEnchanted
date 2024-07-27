.class Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;
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
    name = "GenericVisitor"
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;)Lcom/s1243808733/android/dx/merge/InstructionTransformer;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    return-object v0
.end method


# virtual methods
.method public visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 7
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

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$L1000001(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$L1000002(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->access$S1000002(Lcom/s1243808733/android/dx/merge/InstructionTransformer;I)V

    aput-object p2, v0, v2

    return-void
.end method
