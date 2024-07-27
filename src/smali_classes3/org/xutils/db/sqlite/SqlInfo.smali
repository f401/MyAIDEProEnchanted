.class public final Lorg/xutils/db/sqlite/SqlInfo;
.super Ljava/lang/Object;
.source "SqlInfo.java"


# instance fields
.field private bindArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private sql:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public addBindArg(Lorg/xutils/common/util/KeyValue;)V
    .registers 3

    .line 50
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public addBindArgs(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .registers 8

    .line 66
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 67
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v1, v0, :cond_1

    .line 69
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 70
    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 80
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v3, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lorg/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lorg/xutils/db/converter/ColumnConverter;

    move-result-object v3

    .line 75
    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-interface {v3, v0}, Lorg/xutils/db/converter/ColumnConverter;->fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    invoke-interface {v3}, Lorg/xutils/db/converter/ColumnConverter;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v3

    .line 77
    sget-object v4, Lorg/xutils/db/sqlite/SqlInfo$1;->$SwitchMap$org$xutils$db$sqlite$ColumnDbType:[I

    invoke-virtual {v3}, Lorg/xutils/db/sqlite/ColumnDbType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 91
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 88
    :pswitch_0
    check-cast v0, [B

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_1

    .line 85
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 82
    :pswitch_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_1

    .line 79
    :pswitch_3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_1

    .line 96
    :cond_1
    return-object v2

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBindArgs()[Ljava/lang/Object;
    .registers 4

    .line 100
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 107
    :cond_1
    return-object v0
.end method

.method public getBindArgsAsStrArray()[Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    .line 111
    .line 112
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    iget-object v0, v0, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_1
    aput-object v0, v3, v2

    .line 114
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 119
    :cond_2
    return-object v1
.end method

.method public getSql()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public setSql(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    .line 47
    return-void
.end method
