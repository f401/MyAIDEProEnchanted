.class public abstract Landroidj/support/v4/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;,
        Landroidj/support/v4/widget/CursorAdapter$MyDataSetObserver;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mChangeObserver:Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mCursor:Landroid/database/Cursor;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mCursorFilter:Landroidj/support/v4/widget/CursorFilter;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mDataSetObserver:Landroid/database/DataSetObserver;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mDataValid:Z
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mRowIDColumn:I
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Landroidj/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-eqz p3, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void

    :cond_a
    const/4 v0, 0x2

    goto :goto_6
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3

    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    iget-boolean v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p2, :cond_13

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroidj/support/v4/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_13
    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Landroidj/support/v4/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    :goto_1a
    return-object p2

    :cond_1b
    const/4 p2, 0x0

    goto :goto_1a
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursorFilter:Landroidj/support/v4/widget/CursorFilter;

    if-nez v0, :cond_b

    new-instance v0, Landroidj/support/v4/widget/CursorFilter;

    invoke-direct {v0, p0}, Landroidj/support/v4/widget/CursorFilter;-><init>(Landroidj/support/v4/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursorFilter:Landroidj/support/v4/widget/CursorFilter;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursorFilter:Landroidj/support/v4/widget/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getItemId(I)J
    .registers 5

    const-wide/16 v0, 0x0

    iget-boolean v2, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_1a
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-boolean v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    if-nez p2, :cond_37

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroidj/support/v4/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_37
    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Landroidj/support/v4/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object p2
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_45

    or-int/lit8 p3, p3, 0x2

    iput-boolean v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    :goto_b
    if-eqz p2, :cond_4f

    :goto_d
    iput-object p2, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iput-boolean v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    iput-object p1, p0, Landroidj/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_48

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_1b
    iput v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4a

    new-instance v1, Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;-><init>(Landroidj/support/v4/widget/CursorAdapter;)V

    iput-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mChangeObserver:Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;

    new-instance v1, Landroidj/support/v4/widget/CursorAdapter$MyDataSetObserver;

    invoke-direct {v1, p0}, Landroidj/support/v4/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroidj/support/v4/widget/CursorAdapter;)V

    iput-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    :goto_30
    if-eqz v0, :cond_44

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mChangeObserver:Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mChangeObserver:Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_3b
    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_44
    return-void

    :cond_45
    iput-boolean v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    goto :goto_b

    :cond_48
    const/4 v1, -0x1

    goto :goto_1b

    :cond_4a
    iput-object v3, p0, Landroidj/support/v4/widget/CursorAdapter;->mChangeObserver:Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;

    iput-object v3, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_30

    :cond_4f
    move v0, v1

    goto :goto_d
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroidj/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void

    :cond_7
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Landroidj/support/v4/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .registers 2

    iget-boolean v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    :cond_18
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_a
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mChangeObserver:Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mChangeObserver:Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_13
    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1c
    iput-object p1, p0, Landroidj/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_41

    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mChangeObserver:Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mChangeObserver:Landroidj/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_29
    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_32
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    invoke-virtual {p0}, Landroidj/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_5

    :cond_41
    const/4 v1, -0x1

    iput v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidj/support/v4/widget/CursorAdapter;->mDataValid:Z

    invoke-virtual {p0}, Landroidj/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_5
.end method
