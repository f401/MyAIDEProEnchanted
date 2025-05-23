.class public final Lorg/xutils/db/table/ColumnEntity;
.super Ljava/lang/Object;
.source "ColumnEntity.java"


# instance fields
.field protected final columnConverter:Lorg/xutils/db/converter/ColumnConverter;

.field protected final columnField:Ljava/lang/reflect/Field;

.field protected final getMethod:Ljava/lang/reflect/Method;

.field private final isAutoId:Z

.field private final isId:Z

.field protected final name:Ljava/lang/String;

.field private final property:Ljava/lang/String;

.field protected final setMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/xutils/db/annotation/Column;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Lorg/xutils/db/annotation/Column;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    iput-object p2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    .line 46
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    .line 47
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->property()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->property:Ljava/lang/String;

    .line 48
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->isId()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->isId:Z

    .line 50
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 51
    if-eqz v0, :cond_59

    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->autoGen()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {v2}, Lorg/xutils/db/table/ColumnUtils;->isAutoIdType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v1

    :goto_2e
    iput-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->isAutoId:Z

    .line 52
    invoke-static {v2}, Lorg/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lorg/xutils/db/converter/ColumnConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    .line 55
    invoke-static {p1, p2}, Lorg/xutils/db/table/ColumnUtils;->findGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    .line 56
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_47

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    :cond_47
    invoke-static {p1, p2}, Lorg/xutils/db/table/ColumnUtils;->findSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    .line 60
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_58

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    :cond_58
    return-void

    .line 51
    :cond_59
    const/4 v0, 0x0

    goto :goto_2e
.end method


# virtual methods
.method public getColumnConverter()Lorg/xutils/db/converter/ColumnConverter;
    .registers 2

    .line 155
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    return-object v0
.end method

.method public getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;
    .registers 2

    .line 159
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v0}, Lorg/xutils/db/converter/ColumnConverter;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnField()Ljava/lang/reflect/Field;
    .registers 2

    .line 151
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 86
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/ColumnEntity;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget-boolean v1, p0, Lorg/xutils/db/table/ColumnEntity;->isAutoId:Z

    if-eqz v1, :cond_21

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 88
    :cond_1f
    const/4 v0, 0x0

    .line 90
    :goto_20
    return-object v0

    :cond_21
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v1, v0}, Lorg/xutils/db/converter/ColumnConverter;->fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20
.end method

.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 115
    .line 116
    if-eqz p1, :cond_e

    .line 117
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_18

    .line 119
    const/4 v2, 0x0

    :try_start_8
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result-object v0

    .line 131
    :cond_e
    :goto_e
    return-object v0

    .line 120
    :catchall_f
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 125
    :cond_18
    :try_start_18
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    move-result-object v0

    goto :goto_e

    .line 126
    :catchall_1f
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->property:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoId()Z
    .registers 2

    .line 147
    iget-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->isAutoId:Z

    return v0
.end method

.method public isId()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->isId:Z

    return v0
.end method

.method public setAutoIdValue(Ljava/lang/Object;J)V
    .registers 8

    .line 94
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/db/table/ColumnUtils;->isInteger(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 96
    long-to-int v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 99
    :cond_15
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2c

    .line 101
    const/4 v2, 0x1

    :try_start_1a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_23

    .line 112
    :goto_22
    return-void

    .line 102
    :catchall_23
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    .line 107
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_32

    goto :goto_22

    .line 108
    :catchall_32
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public setValueFromCursor(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .registers 8

    .line 66
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v0, p2, p3}, Lorg/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 67
    if-nez v0, :cond_9

    .line 82
    :goto_8
    return-void

    .line 69
    :cond_9
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_20

    .line 71
    const/4 v2, 0x1

    :try_start_e
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_17

    goto :goto_8

    .line 72
    :catchall_17
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 77
    :cond_20
    :try_start_20
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    goto :goto_8

    .line 78
    :catchall_26
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    return-object v0
.end method
