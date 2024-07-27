.class final Lorg/xutils/db/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;
    .registers 6

    .line 43
    new-instance v1, Lorg/xutils/db/table/DbModel;

    invoke-direct {v1}, Lorg/xutils/db/table/DbModel;-><init>()V

    .line 44
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    .line 45
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 46
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/xutils/db/table/DbModel;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-object v1
.end method

.method public static getEntity(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->createEntity()Ljava/lang/Object;

    move-result-object v2

    .line 30
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->getColumnMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 31
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    .line 32
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 33
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/table/ColumnEntity;

    .line 35
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, v2, p1, v1}, Lorg/xutils/db/table/ColumnEntity;->setValueFromCursor(Ljava/lang/Object;Landroid/database/Cursor;I)V

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 39
    :cond_1
    return-object v2
.end method
