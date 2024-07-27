.class public final Lorg/xutils/db/table/TableEntity;
.super Ljava/lang/Object;
.source "TableEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final columnMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final db:Lorg/xutils/DbManager;

.field private final entityType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private id:Lorg/xutils/db/table/ColumnEntity;

.field private final name:Ljava/lang/String;

.field private final onCreated:Ljava/lang/String;

.field private volatile tableCheckedStatus:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lorg/xutils/DbManager;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->db:Lorg/xutils/DbManager;

    .line 50
    iput-object p2, p0, Lorg/xutils/db/table/TableEntity;->entityType:Ljava/lang/Class;

    .line 52
    const-class v0, Lorg/xutils/db/annotation/Table;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/annotation/Table;

    .line 53
    if-eqz v0, :cond_2

    .line 56
    invoke-interface {v0}, Lorg/xutils/db/annotation/Table;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/TableEntity;->name:Ljava/lang/String;

    .line 57
    invoke-interface {v0}, Lorg/xutils/db/annotation/Table;->onCreated()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->onCreated:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->constructor:Ljava/lang/reflect/Constructor;

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {p2}, Lorg/xutils/db/table/TableUtils;->findColumnMap(Ljava/lang/Class;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->columnMap:Ljava/util/LinkedHashMap;

    .line 67
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/table/ColumnEntity;

    .line 68
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->id:Lorg/xutils/db/table/ColumnEntity;

    .line 73
    :cond_1
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing no-argument constructor for the table: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/table/TableEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing @Table on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createEntity()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createTableIfNotExists()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/xutils/db/table/TableEntity;->entityType:Ljava/lang/Class;

    monitor-enter v1

    .line 112
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-static {p0}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildCreateTableSqlInfo(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    .line 114
    iget-object v2, p0, Lorg/xutils/db/table/TableEntity;->db:Lorg/xutils/DbManager;

    invoke-interface {v2, v0}, Lorg/xutils/DbManager;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 115
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    .line 117
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->onCreated:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->db:Lorg/xutils/DbManager;

    iget-object v2, p0, Lorg/xutils/db/table/TableEntity;->onCreated:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xutils/DbManager;->execNonQuery(Ljava/lang/String;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->db:Lorg/xutils/DbManager;

    invoke-interface {v0}, Lorg/xutils/DbManager;->getDaoConfig()Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/DbManager$DaoConfig;->getTableCreateListener()Lorg/xutils/DbManager$TableCreateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 122
    if-eqz v0, :cond_2

    .line 124
    :try_start_1
    iget-object v2, p0, Lorg/xutils/db/table/TableEntity;->db:Lorg/xutils/DbManager;

    invoke-interface {v0, v2, p0}, Lorg/xutils/DbManager$TableCreateListener;->onTableCreated(Lorg/xutils/DbManager;Lorg/xutils/db/table/TableEntity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 125
    :catchall_1
    move-exception v0

    .line 126
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getColumnMap()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->columnMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDb()Lorg/xutils/DbManager;
    .registers 2

    .line 134
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->db:Lorg/xutils/DbManager;

    return-object v0
.end method

.method public getEntityType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->entityType:Ljava/lang/Class;

    return-object v0
.end method

.method public getId()Lorg/xutils/db/table/ColumnEntity;
    .registers 2

    .line 150
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->id:Lorg/xutils/db/table/ColumnEntity;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnCreated()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->onCreated:Ljava/lang/String;

    return-object v0
.end method

.method setTableCheckedStatus(Z)V
    .registers 3

    .line 158
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    .line 159
    return-void
.end method

.method public tableIsExists()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists(Z)Z

    move-result v0

    return v0
.end method

.method public tableIsExists(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->db:Lorg/xutils/DbManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/db/table/TableEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_3

    .line 91
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 93
    if-lez v0, :cond_2

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    .line 95
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 101
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 105
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    .line 106
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->tableCheckedStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 102
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->name:Ljava/lang/String;

    return-object v0
.end method
