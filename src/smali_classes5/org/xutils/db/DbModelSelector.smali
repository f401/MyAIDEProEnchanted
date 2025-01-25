.class public final Lorg/xutils/db/DbModelSelector;
.super Ljava/lang/Object;
.source "DbModelSelector.java"


# instance fields
.field private columnExpressions:[Ljava/lang/String;

.field private groupByColumnName:Ljava/lang/String;

.field private having:Lorg/xutils/db/sqlite/WhereBuilder;

.field private selector:Lorg/xutils/db/Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/db/Selector",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/xutils/db/Selector;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/Selector",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    .line 49
    iput-object p2, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lorg/xutils/db/Selector;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/Selector",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    .line 54
    iput-object p2, p0, Lorg/xutils/db/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor <init>(Lorg/xutils/db/table/TableEntity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lorg/xutils/db/Selector;->from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    .line 45
    return-void
.end method

.method static from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/DbModelSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;)",
            "Lorg/xutils/db/DbModelSelector;"
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/xutils/db/DbModelSelector;

    invoke-direct {v0, p0}, Lorg/xutils/db/DbModelSelector;-><init>(Lorg/xutils/db/table/TableEntity;)V

    return-object v0
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .registers 5

    .line 73
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    .line 74
    return-object p0
.end method

.method public and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .registers 3

    .line 78
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    .line 79
    return-object p0
.end method

.method public expr(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .registers 3

    .line 93
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->expr(Ljava/lang/String;)Lorg/xutils/db/Selector;

    .line 94
    return-object p0
.end method

.method public findAll()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 182
    :cond_d
    :goto_d
    return-object v0

    .line 168
    :cond_e
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xutils/db/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_d

    .line 171
    :try_start_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    :goto_21
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 173
    invoke-static {v1}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v2

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2f

    goto :goto_21

    .line 176
    :catchall_2f
    move-exception v0

    .line 177
    :try_start_30
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_36

    .line 179
    :catchall_36
    move-exception v0

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 180
    throw v0

    .line 179
    :cond_3b
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_d
.end method

.method public findFirst()Lorg/xutils/db/table/DbModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 159
    :cond_d
    :goto_d
    return-object v0

    .line 146
    :cond_e
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/xutils/db/DbModelSelector;->limit(I)Lorg/xutils/db/DbModelSelector;

    .line 147
    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xutils/db/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_d

    .line 150
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 151
    invoke-static {v1}, Lorg/xutils/db/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_32

    move-result-object v0

    .line 156
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_d

    :cond_2e
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_d

    .line 153
    :catchall_32
    move-exception v0

    .line 154
    :try_start_33
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_39

    .line 156
    :catchall_39
    move-exception v0

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 157
    throw v0
.end method

.method public getTable()Lorg/xutils/db/table/TableEntity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/db/table/TableEntity",
            "<*>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .registers 2

    .line 98
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public having(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .registers 2

    .line 103
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->having:Lorg/xutils/db/sqlite/WhereBuilder;

    .line 104
    return-object p0
.end method

.method public limit(I)Lorg/xutils/db/DbModelSelector;
    .registers 3

    .line 129
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    .line 130
    return-object p0
.end method

.method public offset(I)Lorg/xutils/db/DbModelSelector;
    .registers 3

    .line 134
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    .line 135
    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .registers 5

    .line 83
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    .line 84
    return-object p0
.end method

.method public or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .registers 3

    .line 88
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    .line 89
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .registers 3

    .line 116
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    .line 117
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lorg/xutils/db/DbModelSelector;
    .registers 4

    .line 124
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;

    .line 125
    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .registers 2

    .line 108
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    const-string v0, "SELECT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v2, p0, Lorg/xutils/db/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    if-eqz v2, :cond_c5

    array-length v0, v2

    if-lez v0, :cond_c5

    .line 190
    array-length v3, v2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_22

    aget-object v4, v2, v0

    .line 191
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 194
    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 202
    :goto_2b
    const-string v0, " FROM "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getWhereBuilder()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v2

    if-lez v2, :cond_61

    .line 205
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_61
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 208
    const-string v0, " GROUP BY "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->having:Lorg/xutils/db/sqlite/WhereBuilder;

    if-eqz v0, :cond_95

    invoke-virtual {v0}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v0

    if-lez v0, :cond_95

    .line 210
    const-string v0, " HAVING "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->having:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_95
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getOrderByList()Ljava/util/List;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_e4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e4

    .line 215
    const-string v2, " ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/Selector$OrderBy;

    .line 217
    invoke-virtual {v0}, Lorg/xutils/db/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ac

    .line 196
    :cond_c5
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 197
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2b

    .line 199
    :cond_d4
    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2b

    .line 219
    :cond_db
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 221
    :cond_e4
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getLimit()I

    move-result v0

    if-lez v0, :cond_108

    .line 222
    const-string v0, " LIMIT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getLimit()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const-string v0, " OFFSET "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getOffset()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    :cond_108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .registers 5

    .line 68
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    .line 69
    return-object p0
.end method

.method public where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .registers 3

    .line 63
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->selector:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    .line 64
    return-object p0
.end method
