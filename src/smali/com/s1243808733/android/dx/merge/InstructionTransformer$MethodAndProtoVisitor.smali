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
.field final this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;-><init>(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)V

    return-void
.end method


# virtual methods
.method public visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 8

    .line 119
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    move-result p1

    .line 120
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getProtoIndex()S

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v1}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetmappedInstructions(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)[Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fputmappedAt(Lcom/s1243808733/android/dx/merge/InstructionTransformer;I)V

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetindexMap(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v2

    .line 122
    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustMethod(I)I

    move-result p1

    iget-object v2, p0, Lcom/s1243808733/android/dx/merge/InstructionTransformer$MethodAndProtoVisitor;->this$0:Lcom/s1243808733/android/dx/merge/InstructionTransformer;

    invoke-static {v2}, Lcom/s1243808733/android/dx/merge/InstructionTransformer;->-$$Nest$fgetindexMap(Lcom/s1243808733/android/dx/merge/InstructionTransformer;)Lcom/s1243808733/android/dx/merge/IndexMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/merge/IndexMap;->adjustProto(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->withProtoIndex(II)Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;

    move-result-object p1

    aput-object p1, v1, v3

    return-void
.end method
