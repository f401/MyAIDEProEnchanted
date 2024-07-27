.class public Lorg/xutils/DbManager$DaoConfig;
.super Ljava/lang/Object;
.source "DbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/DbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaoConfig"
.end annotation


# instance fields
.field private allowTransaction:Z

.field private dbDir:Ljava/io/File;

.field private dbName:Ljava/lang/String;

.field private dbOpenListener:Lorg/xutils/DbManager$DbOpenListener;

.field private dbUpgradeListener:Lorg/xutils/DbManager$DbUpgradeListener;

.field private dbVersion:I

.field private tableCreateListener:Lorg/xutils/DbManager$TableCreateListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-string v0, "xUtils.db"

    iput-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    .line 136
    iput v1, p0, Lorg/xutils/DbManager$DaoConfig;->dbVersion:I

    .line 137
    iput-boolean v1, p0, Lorg/xutils/DbManager$DaoConfig;->allowTransaction:Z

    .line 143
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    if-ne p0, p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 215
    :cond_3
    check-cast p1, Lorg/xutils/DbManager$DaoConfig;

    .line 217
    iget-object v2, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    iget-object v3, p1, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 218
    :cond_4
    iget-object v2, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    if-nez v2, :cond_5

    iget-object v2, p1, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDbDir()Ljava/io/File;
    .registers 2

    .line 183
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDbOpenListener()Lorg/xutils/DbManager$DbOpenListener;
    .registers 2

    .line 199
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbOpenListener:Lorg/xutils/DbManager$DbOpenListener;

    return-object v0
.end method

.method public getDbUpgradeListener()Lorg/xutils/DbManager$DbUpgradeListener;
    .registers 2

    .line 203
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbUpgradeListener:Lorg/xutils/DbManager$DbUpgradeListener;

    return-object v0
.end method

.method public getDbVersion()I
    .registers 2

    .line 191
    iget v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbVersion:I

    return v0
.end method

.method public getTableCreateListener()Lorg/xutils/DbManager$TableCreateListener;
    .registers 2

    .line 207
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->tableCreateListener:Lorg/xutils/DbManager$TableCreateListener;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 223
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 224
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    .line 225
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowTransaction()Z
    .registers 2

    .line 195
    iget-boolean v0, p0, Lorg/xutils/DbManager$DaoConfig;->allowTransaction:Z

    return v0
.end method

.method public setAllowTransaction(Z)Lorg/xutils/DbManager$DaoConfig;
    .registers 2

    .line 163
    iput-boolean p1, p0, Lorg/xutils/DbManager$DaoConfig;->allowTransaction:Z

    .line 164
    return-object p0
.end method

.method public setDbDir(Ljava/io/File;)Lorg/xutils/DbManager$DaoConfig;
    .registers 2

    .line 146
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    .line 147
    return-object p0
.end method

.method public setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;
    .registers 3

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    .line 154
    :cond_0
    return-object p0
.end method

.method public setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;
    .registers 2

    .line 168
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->dbOpenListener:Lorg/xutils/DbManager$DbOpenListener;

    .line 169
    return-object p0
.end method

.method public setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;
    .registers 2

    .line 173
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->dbUpgradeListener:Lorg/xutils/DbManager$DbUpgradeListener;

    .line 174
    return-object p0
.end method

.method public setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;
    .registers 2

    .line 158
    iput p1, p0, Lorg/xutils/DbManager$DaoConfig;->dbVersion:I

    .line 159
    return-object p0
.end method

.method public setTableCreateListener(Lorg/xutils/DbManager$TableCreateListener;)Lorg/xutils/DbManager$DaoConfig;
    .registers 2

    .line 178
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->tableCreateListener:Lorg/xutils/DbManager$TableCreateListener;

    .line 179
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
