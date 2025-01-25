.class public final Lorg/xutils/db/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/db/Selector$OrderBy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private limit:I

.field private offset:I

.field private orderByList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/db/Selector$OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private final table:Lorg/xutils/db/table/TableEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;"
        }
    .end annotation
.end field

.field private whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;


# direct methods
.method private constructor <init>(Lorg/xutils/db/table/TableEntity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lorg/xutils/db/Selector;->limit:I

    .line 41
    iput v0, p0, Lorg/xutils/db/Selector;->offset:I

    .line 44
    iput-object p1, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    .line 45
    return-void
.end method

.method static from(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/xutils/db/Selector;

    invoke-direct {v0, p0}, Lorg/xutils/db/Selector;-><init>(Lorg/xutils/db/table/TableEntity;)V

    return-object v0
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 64
    return-object p0
.end method

.method public and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 69
    return-object p0
.end method

.method public count()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 191
    iget-object v2, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v2}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 198
    :cond_a
    :goto_a
    return-wide v0

    .line 193
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v3}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\") as count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lorg/xutils/db/Selector;->select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lorg/xutils/db/DbModelSelector;->findFirst()Lorg/xutils/db/table/DbModel;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_a

    .line 196
    const-string v3, "count"

    invoke-virtual {v2, v3, v0, v1}, Lorg/xutils/db/table/DbModel;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_a
.end method

.method public expr(Ljava/lang/String;)Lorg/xutils/db/Selector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    if-nez v0, :cond_a

    .line 84
    invoke-static {}, Lorg/xutils/db/sqlite/WhereBuilder;->b()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    .line 86
    :cond_a
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->expr(Ljava/lang/String;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 87
    return-object p0
.end method

.method public findAll()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 187
    :cond_9
    :goto_9
    return-object v0

    .line 173
    :cond_a
    iget-object v1, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_9

    .line 176
    :try_start_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    :goto_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 178
    iget-object v2, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-static {v2, v1}, Lorg/xutils/db/CursorUtils;->getEntity(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    .line 179
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_2f

    goto :goto_1f

    .line 181
    :catchall_2f
    move-exception v0

    .line 182
    :try_start_30
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_36

    .line 184
    :catchall_36
    move-exception v0

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 185
    throw v0

    .line 184
    :cond_3b
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_9
.end method

.method public findFirst()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 166
    :cond_9
    :goto_9
    return-object v0

    .line 153
    :cond_a
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    .line 154
    iget-object v1, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v1}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_9

    .line 157
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 158
    iget-object v0, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-static {v0, v1}, Lorg/xutils/db/CursorUtils;->getEntity(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_32

    move-result-object v0

    .line 163
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_9

    :cond_2e
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_9

    .line 160
    :catchall_32
    move-exception v0

    .line 161
    :try_start_33
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_39

    .line 163
    :catchall_39
    move-exception v0

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 164
    throw v0
.end method

.method public getLimit()I
    .registers 2

    .line 143
    iget v0, p0, Lorg/xutils/db/Selector;->limit:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .line 147
    iget v0, p0, Lorg/xutils/db/Selector;->offset:I

    return v0
.end method

.method public getOrderByList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/db/Selector$OrderBy;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    return-object v0
.end method

.method public getTable()Lorg/xutils/db/table/TableEntity;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/db/table/TableEntity",
            "<TT;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    return-object v0
.end method

.method public getWhereBuilder()Lorg/xutils/db/sqlite/WhereBuilder;
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .registers 3

    .line 91
    new-instance v0, Lorg/xutils/db/DbModelSelector;

    invoke-direct {v0, p0, p1}, Lorg/xutils/db/DbModelSelector;-><init>(Lorg/xutils/db/Selector;Ljava/lang/String;)V

    return-object v0
.end method

.method public limit(I)Lorg/xutils/db/Selector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 121
    iput p1, p0, Lorg/xutils/db/Selector;->limit:I

    .line 122
    return-object p0
.end method

.method public offset(I)Lorg/xutils/db/Selector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 126
    iput p1, p0, Lorg/xutils/db/Selector;->offset:I

    .line 127
    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 74
    return-object p0
.end method

.method public or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 79
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    if-nez v0, :cond_c

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    .line 105
    :cond_c
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    new-instance v1, Lorg/xutils/db/Selector$OrderBy;

    invoke-direct {v1, p1}, Lorg/xutils/db/Selector$OrderBy;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    if-nez v0, :cond_c

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    .line 116
    :cond_c
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    new-instance v1, Lorg/xutils/db/Selector$OrderBy;

    invoke-direct {v1, p1, p2}, Lorg/xutils/db/Selector$OrderBy;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .registers 3

    .line 95
    new-instance v0, Lorg/xutils/db/DbModelSelector;

    invoke-direct {v0, p0, p1}, Lorg/xutils/db/DbModelSelector;-><init>(Lorg/xutils/db/Selector;[Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    const-string v0, "SELECT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v0, " FROM "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/db/Selector;->table:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v0

    if-lez v0, :cond_3f

    .line 208
    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_3f
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    if-eqz v0, :cond_76

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_76

    .line 211
    const-string v0, " ORDER BY "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v0, p0, Lorg/xutils/db/Selector;->orderByList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/Selector$OrderBy;

    .line 213
    invoke-virtual {v0}, Lorg/xutils/db/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 215
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 217
    :cond_76
    iget v0, p0, Lorg/xutils/db/Selector;->limit:I

    if-lez v0, :cond_8e

    .line 218
    const-string v0, " LIMIT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/xutils/db/Selector;->limit:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string v0, " OFFSET "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/xutils/db/Selector;->offset:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    :cond_8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 58
    invoke-static {p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    .line 59
    return-object p0
.end method

.method public where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/Selector",
            "<TT;>;"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lorg/xutils/db/Selector;->whereBuilder:Lorg/xutils/db/sqlite/WhereBuilder;

    .line 54
    return-object p0
.end method
