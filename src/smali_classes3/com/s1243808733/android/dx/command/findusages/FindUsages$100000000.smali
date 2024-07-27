.class Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;
.super Ljava/lang/Object;
.source "FindUsages.java"

# interfaces
.implements Lcom/s1243808733/android/dx/io/CodeReader$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

.field private final val$dex:Lcom/s1243808733/android/dex/Dex;

.field private final val$out:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/command/findusages/FindUsages;Ljava/io/PrintWriter;Lcom/s1243808733/android/dex/Dex;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;->this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

    iput-object p2, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;->val$out:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;->val$dex:Lcom/s1243808733/android/dex/Dex;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;)Lcom/s1243808733/android/dx/command/findusages/FindUsages;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;->this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

    return-object v0
.end method


# virtual methods
.method public visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 11
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

    .line 82
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;->this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

    invoke-static {v1}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->access$L1000002(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;->val$out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;->this$0:Lcom/s1243808733/android/dx/command/findusages/FindUsages;

    invoke-static {v7}, Lcom/s1243808733/android/dx/command/findusages/FindUsages;->access$1000009(Lcom/s1243808733/android/dx/command/findusages/FindUsages;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": field reference "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/s1243808733/android/dx/command/findusages/FindUsages$100000000;->val$dex:Lcom/s1243808733/android/dex/Dex;

    invoke-virtual {v6}, Lcom/s1243808733/android/dex/Dex;->fieldIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dex/FieldId;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/io/OpcodeInfo;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
