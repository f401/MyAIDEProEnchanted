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
.field final this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    return-void
.end method


# virtual methods
.method public visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetmappedInstructions(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$GenericVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fputmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;I)V

    aput-object p2, v0, v2

    return-void
.end method
