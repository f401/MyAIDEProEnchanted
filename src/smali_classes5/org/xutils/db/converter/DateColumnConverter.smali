.class public Lorg/xutils/db/converter/DateColumnConverter;
.super Ljava/lang/Object;
.source "DateColumnConverter.java"

# interfaces
.implements Lorg/xutils/db/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/db/converter/ColumnConverter",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 14
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/xutils/db/converter/DateColumnConverter;->fieldValue2DbValue(Ljava/util/Date;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fieldValue2DbValue(Ljava/util/Date;)Ljava/lang/Object;
    .registers 4

    .line 22
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 23
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method

.method public getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;
    .registers 2

    .line 28
    sget-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->INTEGER:Lorg/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/xutils/db/converter/DateColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Landroid/database/Cursor;I)Ljava/util/Date;
    .registers 7

    .line 17
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/util/Date;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_7
.end method
