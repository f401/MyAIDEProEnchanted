.class Lcom/s1243808733/android/dx/command/grep/Grep$100000000;
.super Ljava/lang/Object;
.source "Grep.java"

# interfaces
.implements Lcom/s1243808733/android/dx/io/CodeReader$Visitor;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/command/grep/Grep;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/command/grep/Grep;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/grep/Grep$100000000;->this$0:Lcom/s1243808733/android/dx/command/grep/Grep;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/command/grep/Grep$100000000;)Lcom/s1243808733/android/dx/command/grep/Grep;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep$100000000;->this$0:Lcom/s1243808733/android/dx/command/grep/Grep;

    return-object v0
.end method


# virtual methods
.method public visit([Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;)V
    .registers 5
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

    .line 51
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/grep/Grep$100000000;->this$0:Lcom/s1243808733/android/dx/command/grep/Grep;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/io/instructions/DecodedInstruction;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/command/grep/Grep;->access$1000009(Lcom/s1243808733/android/dx/command/grep/Grep;I)V

    return-void
.end method
