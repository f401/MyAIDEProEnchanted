.class Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;
.super Ljava/lang/Object;
.source "FindUsages.java"

# interfaces
.implements Lcom/s1243808733/android/dx/io/CodeReader$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/command/findusages/FindUsages;-><init>(Lcom/s1243808733/android/dex/Dex;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

.field final val$dex:Lcom/s1243808733/android/dex/Dex;

.field final val$out:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/command/findusages/FindUsages;Ljava/io/PrintWriter;Lcom/s1243808733/android/dex/Dex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

    iput-object p2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->val$out:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->val$dex:Lcom/s1243808733/android/dex/Dex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .locals 4

    .line 93
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->-$$Nest$fgetmethodIds(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->val$out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

    invoke-static {v3}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->-$$Nest$mlocation(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": method reference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->val$dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v3}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
