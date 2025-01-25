.class Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;
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
    name = "CallSiteVisitor"
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    return-void
.end method


# virtual methods
.method public visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 7

    .line 129
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    move-result p1

    .line 130
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetindexMap(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustCallSite(I)I

    move-result p1

    .line 131
    iget-object v0, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v0}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetmappedInstructions(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$CallSiteVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fputmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;I)V

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->withIndex(I)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object p1

    aput-object p1, v0, v2

    return-void
.end method
