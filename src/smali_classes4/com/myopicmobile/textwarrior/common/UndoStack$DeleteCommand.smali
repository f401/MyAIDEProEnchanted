.class Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;
.super Lcom/myopicmobile/textwarrior/common/UndoStack$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/common/UndoStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteCommand"
.end annotation


# instance fields
.field private final this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/common/UndoStack;III)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;-><init>(Lcom/myopicmobile/textwarrior/common/UndoStack;)V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    iput p2, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_start:I

    iput p3, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_length:I

    iput p4, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_group:I

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;)Lcom/myopicmobile/textwarrior/common/UndoStack;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    return-object v0
.end method


# virtual methods
.method public findRedoPosition()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_start:I

    return v0
.end method

.method public findUndoPosition()I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_start:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public merge(IIJ)Z
    .registers 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    iget-wide v2, v1, Lcom/myopicmobile/textwarrior/common/UndoStack;->_lastEditTime:J

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-gez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    iget-wide v2, v1, Lcom/myopicmobile/textwarrior/common/UndoStack;->_lastEditTime:J

    sub-long v2, p3, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v1, v2, v4

    if-gez v1, :cond_a

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_start:I

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_length:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_a

    iput p1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_start:I

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_length:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_length:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->access$1000006(Lcom/myopicmobile/textwarrior/common/UndoStack;)V

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public recordData()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/common/UndoStack;->access$L1000000(Lcom/myopicmobile/textwarrior/common/UndoStack;)Lcom/myopicmobile/textwarrior/common/TextBuffer;

    move-result-object v1

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_length:I

    invoke-virtual {v1, v2}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->gapSubSequence(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_data:Ljava/lang/String;

    return-void
.end method

.method public redo()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->access$L1000000(Lcom/myopicmobile/textwarrior/common/UndoStack;)Lcom/myopicmobile/textwarrior/common/TextBuffer;

    move-result-object v1

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_start:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_length:I

    int-to-long v4, v6

    invoke-virtual/range {v1 .. v6}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->delete(IIJZ)V

    return-void
.end method

.method public undo()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_data:Ljava/lang/String;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;->recordData()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->access$L1000000(Lcom/myopicmobile/textwarrior/common/UndoStack;)Lcom/myopicmobile/textwarrior/common/TextBuffer;

    move-result-object v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_length:I

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->shiftGapStart(I)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->access$L1000000(Lcom/myopicmobile/textwarrior/common/UndoStack;)Lcom/myopicmobile/textwarrior/common/TextBuffer;

    move-result-object v1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_start:I

    int-to-long v4, v6

    invoke-virtual/range {v1 .. v6}, Lcom/myopicmobile/textwarrior/common/TextBuffer;->insert([CIJZ)V

    goto :goto_13
.end method
