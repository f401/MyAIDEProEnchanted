.class Landroidj/support/v4/widget/CursorAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/CursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/widget/CursorAdapter;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/CursorAdapter;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidj/support/v4/widget/CursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidj/support/v4/widget/CursorAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidj/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidj/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter$MyDataSetObserver;->this$0:Landroidj/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroidj/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
