.class Landroidj/support/v4/widget/CursorFilter;
.super Landroid/widget/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field mClient:Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/widget/CursorFilter;->mClient:Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/CursorFilter;->mClient:Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/CursorFilter;->mClient:Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v0, p1}, Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_15
    return-object v1

    :cond_16
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_15
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/widget/CursorFilter;->mClient:Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;

    invoke-interface {v0}, Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_17

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v1, v0, :cond_17

    iget-object v1, p0, Landroidj/support/v4/widget/CursorFilter;->mClient:Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    :cond_17
    return-void
.end method
