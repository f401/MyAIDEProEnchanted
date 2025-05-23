.class public Landroidj/support/v4/widget/SimpleCursorAdapter;
.super Landroidj/support/v4/widget/ResourceCursorAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;,
        Landroidj/support/v4/widget/SimpleCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Landroidj/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private mViewBinder:Landroidj/support/v4/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidj/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    iput-object p5, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    iput-object p4, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p3, p4}, Landroidj/support/v4/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p6}, Landroidj/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    iput-object p5, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    iput-object p4, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p3, p4}, Landroidj/support/v4/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_20

    array-length v1, p2

    iget-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    array-length v0, v0

    if-eq v0, v1, :cond_10

    :cond_c
    new-array v0, v1, [I

    iput-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_23

    iget-object v2, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    aget-object v3, p2, v0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    :cond_23
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13

    const/4 v2, 0x0

    iget-object v4, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mViewBinder:Landroidj/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    iget-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    array-length v5, v0

    iget-object v6, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    iget-object v7, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    move v3, v2

    :goto_b
    if-ge v3, v5, :cond_69

    aget v0, v7, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    if-eqz v4, :cond_67

    aget v1, v6, v3

    invoke-interface {v4, v0, p3, v1}, Landroidj/support/v4/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    :goto_1d
    if-nez v1, :cond_32

    aget v1, v6, v3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    const-string v1, ""

    :cond_29
    instance-of v8, v0, Landroid/widget/TextView;

    if-eqz v8, :cond_36

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_32
    :goto_32
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    :cond_36
    instance-of v8, v0, Landroid/widget/ImageView;

    if-eqz v8, :cond_40

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_32

    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_67
    move v1, v2

    goto :goto_1d

    :cond_69
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 5

    iput-object p2, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    iput-object p3, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    iget-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidj/support/v4/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidj/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidj/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Landroidj/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_17

    iget v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_17
    invoke-super {p0, p1}, Landroidj/support/v4/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a
.end method

.method public getCursorToStringConverter()Landroidj/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidj/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .registers 2

    iget v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Landroidj/support/v4/widget/SimpleCursorAdapter$ViewBinder;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mViewBinder:Landroidj/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public setCursorToStringConverter(Landroidj/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidj/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    return-void
.end method

.method public setStringConversionColumn(I)V
    .registers 2

    iput p1, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    return-void
.end method

.method public setViewBinder(Landroidj/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mViewBinder:Landroidj/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_7
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroidj/support/v4/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidj/support/v4/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
