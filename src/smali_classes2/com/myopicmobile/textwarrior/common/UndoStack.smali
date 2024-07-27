.class public Lcom/myopicmobile/textwarrior/common/UndoStack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myopicmobile/textwarrior/common/UndoStack$Command;,
        Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;,
        Lcom/myopicmobile/textwarrior/common/UndoStack$InsertCommand;
    }
.end annotation


# instance fields
.field private _buf:Lcom/myopicmobile/textwarrior/common/TextBuffer;

.field private _groupId:I

.field private _isBatchEdit:Z

.field _lastEditTime:J

.field private _stack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/myopicmobile/textwarrior/common/UndoStack$Command;",
            ">;"
        }
    .end annotation
.end field

.field private _top:I


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/common/TextBuffer;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_isBatchEdit:Z

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_groupId:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    const/4 v0, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_lastEditTime:J

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_buf:Lcom/myopicmobile/textwarrior/common/TextBuffer;

    return-void
.end method

.method static synthetic access$1000006(Lcom/myopicmobile/textwarrior/common/UndoStack;)V
    .registers 1

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->trimStack()V

    return-void
.end method

.method static synthetic access$L1000000(Lcom/myopicmobile/textwarrior/common/UndoStack;)Lcom/myopicmobile/textwarrior/common/TextBuffer;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_buf:Lcom/myopicmobile/textwarrior/common/TextBuffer;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/myopicmobile/textwarrior/common/UndoStack;Lcom/myopicmobile/textwarrior/common/TextBuffer;)V
    .registers 2

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_buf:Lcom/myopicmobile/textwarrior/common/TextBuffer;

    return-void
.end method

.method private push(Lcom/myopicmobile/textwarrior/common/UndoStack$Command;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/myopicmobile/textwarrior/common/UndoStack$Command;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->trimStack()V

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private trimStack()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_isBatchEdit:Z

    return-void
.end method

.method public final canRedo()Z
    .registers 3

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final canUndo()Z
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public captureDelete(IIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;

    instance-of v1, v0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->merge(IIJ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_groupId:I

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/myopicmobile/textwarrior/common/UndoStack$DeleteCommand;-><init>(Lcom/myopicmobile/textwarrior/common/UndoStack;III)V

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->push(Lcom/myopicmobile/textwarrior/common/UndoStack$Command;)V

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_isBatchEdit:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_groupId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_groupId:I

    :cond_0
    iput-wide p3, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_lastEditTime:J

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->recordData()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public captureInsert(IIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;

    instance-of v1, v0, Lcom/myopicmobile/textwarrior/common/UndoStack$InsertCommand;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->merge(IIJ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/UndoStack$InsertCommand;

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_groupId:I

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/myopicmobile/textwarrior/common/UndoStack$InsertCommand;-><init>(Lcom/myopicmobile/textwarrior/common/UndoStack;III)V

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->push(Lcom/myopicmobile/textwarrior/common/UndoStack$Command;)V

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_isBatchEdit:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_groupId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_groupId:I

    :cond_0
    iput-wide p3, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_lastEditTime:J

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->recordData()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endBatchEdit()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_isBatchEdit:Z

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_groupId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_groupId:I

    return-void
.end method

.method public isBatchEdit()Z
    .registers 2

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_isBatchEdit:Z

    return v0
.end method

.method public redo()I
    .registers 5

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;

    iget v2, v0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_group:I

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;

    iget v3, v0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_group:I

    if-eq v3, v2, :cond_1

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->findRedoPosition()I

    move-result v0

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->redo()V

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->canRedo()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public undo()I
    .registers 5

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;

    iget v2, v0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_group:I

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_stack:Ljava/util/LinkedList;

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;

    iget v3, v0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->_group:I

    if-eq v3, v2, :cond_1

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->findUndoPosition()I

    move-result v0

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->undo()V

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack;->_top:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/UndoStack;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method
