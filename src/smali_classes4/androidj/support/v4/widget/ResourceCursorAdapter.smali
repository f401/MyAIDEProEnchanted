.class public abstract Landroidj/support/v4/widget/ResourceCursorAdapter;
.super Landroidj/support/v4/widget/CursorAdapter;


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p3}, Landroidj/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput p2, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .registers 6

    invoke-direct {p0, p1, p3, p4}, Landroidj/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput p2, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Landroidj/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput p2, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mDropDownLayout:I

    return-void
.end method

.method public setViewResource(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/widget/ResourceCursorAdapter;->mLayout:I

    return-void
.end method
