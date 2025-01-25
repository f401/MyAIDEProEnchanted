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
    .registers 4
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
    .registers 6

    .line 93
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

    invoke-static {v0}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->-$$Nest$fgetmethodIds(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 95
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->val$out:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

    invoke-static {v2}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->-$$Nest$mlocation(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": method reference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$2;->val$dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/Dex;->methodIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result p1

    invoke-static {p1}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_52
    return-void
.end method
