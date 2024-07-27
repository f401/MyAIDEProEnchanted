.class abstract Lcom/myopicmobile/textwarrior/common/UndoStack$Command;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/common/UndoStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Command"
.end annotation


# static fields
.field public static final MERGE_TIME:J = 0x3b9aca00L


# instance fields
.field public _data:Ljava/lang/String;

.field public _group:I

.field public _length:I

.field public _start:I

.field private final this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/common/UndoStack;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    return-void
.end method

.method static access$0(Lcom/myopicmobile/textwarrior/common/UndoStack$Command;)Lcom/myopicmobile/textwarrior/common/UndoStack;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/UndoStack$Command;->this$0:Lcom/myopicmobile/textwarrior/common/UndoStack;

    return-object v0
.end method


# virtual methods
.method public abstract findRedoPosition()I
.end method

.method public abstract findUndoPosition()I
.end method

.method public abstract merge(IIJ)Z
.end method

.method public abstract recordData()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract redo()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract undo()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method
